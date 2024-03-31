from flask import Flask, render_template, request, jsonify
from markupsafe import Markup
from model import predict_image
import utils
import json
import cv2
import os
import urllib.request

app = Flask(__name__)

# Set the upload folder and allowed extensions
UPLOAD_FOLDER = 'uploads'
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

# Function to fetch weather data
def fetch_weather_data(location):
    try:
        url = f"https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/{location}?unitGroup=us&key=XC52BDVEMRZ36XS9CU6G782P4&contentType=json"
        with urllib.request.urlopen(url) as response:
            result_bytes = response.read()
            result_str = result_bytes.decode('utf-8')
            weather_data = json.loads(result_str)
            return weather_data
    except Exception as e:
        print(f"Error fetching weather data: {e}")
        return None

# Function to capture image using OpenCV
def capture_image():
    try:
        capture = cv2.VideoCapture(0)
        ret, frame = capture.read()
        capture.release()
        img_path = os.path.join(app.config['UPLOAD_FOLDER'], 'captured_image.jpg')
        cv2.imwrite(img_path, frame)
        return img_path
    except Exception as e:
        print(f"Error capturing image: {e}")
        return None

# Function to check if a file has an allowed extension
def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

# Route for the home page
@app.route('/', methods=['GET', 'POST'])
def home():
    if request.method == 'POST':
        location = request.form.get('location')
        if location:
            weather_data = fetch_weather_data(location)
            if weather_data:
                return render_template('index.html', weather_data=weather_data)
            else:
                return render_template('index.html', error="Failed to fetch weather data.")
        else:
            return render_template('index.html', error="Please provide a location.")
    else:
        return render_template('index.html')

# Route for capturing image and predicting disease
@app.route('/predict', methods=['POST'])
def predict():
    if 'file' not in request.files and 'capture' not in request.form:
        return jsonify({'error': 'No file or capture data found.'}), 400

    if 'file' in request.files:
        file = request.files['file']
        if file.filename == '':
            return jsonify({'error': 'No selected file.'}), 400
        if file and allowed_file(file.filename):
            img = file.read()
        else:
            return jsonify({'error': 'File type not allowed.'}), 400
    elif 'capture' in request.form:
        img_path = capture_image()
        if img_path:
            with open(img_path, 'rb') as f:
                img = f.read()
        else:
            return jsonify({'error': 'Error capturing image.'}), 500
    else:
        return jsonify({'error': 'Invalid request.'}), 400

    try:
        prediction = predict_image(img)
        disease_name = utils.disease_dic.get(prediction)
        if disease_name:
            return render_template('display.html', result=Markup(disease_name))
        else:
            return jsonify({'error': 'Failed to predict disease.'}), 500
    except Exception as e:
        print(f"Error predicting: {e}")
        return jsonify({'error': 'Error predicting disease.'}), 500

if __name__ == "__main__":
    app.run(debug=True)