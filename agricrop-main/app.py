from flask import Flask, render_template, request
from markupsafe import Markup
import numpy as np
import pandas as pd
import pickle

app = Flask(__name__)

# Load the SVM model
with open('cropmodel2.pkl', 'rb') as file:
    svm = pickle.load(file)

# Mapping of crop codes to crop names
mapper = {
    1: 'rice', 2: 'maize', 3: 'chickpea', 4: 'kidneybeans', 5: 'pigeonpeas',
    6: 'mothbeans', 7: 'mungbean', 8: 'blackgram', 9: 'lentil', 10: 'pomegranate',
    11: 'banana', 12: 'mango', 13: 'grapes', 14: 'watermelon', 15: 'muskmelon',
    16: 'apple', 17: 'orange', 18: 'papaya', 19: 'coconut', 20: 'cotton',
    21: 'jute', 22: 'coffee'
}

# Dictionary of fertilizer recommendations based on soil conditions
fertilizer_dic = {
    'NHigh': """The N value of soil is high and might give rise to weeds.
        <br/> Please consider the following suggestions:
        ...
    """,
    'Nlow': """The N value of your soil is low.
        <br/> Please consider the following suggestions:
        ...
    """,
    'PHigh': """The P value of your soil is high.
        <br/> Please consider the following suggestions:
        ...
    """,
    'Plow': """The P value of your soil is low.
        <br/> Please consider the following suggestions:
        ...
    """,
    'KHigh': """The K value of your soil is high.
        <br/> Please consider the following suggestions:
        ...
    """,
    'Klow': """The K value of your soil is low.
        <br/> Please consider the following suggestions:
        ...
    """
}

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/dashboard')
def dashboard():
    return render_template('dashboard.html')

@app.route('/predict', methods=['GET', 'POST'])
def predict():
    if request.method == 'POST':
        # Get form data
        nitrogen = request.form['nitrogen']
        phosphorus = request.form['phosphorus']
        potassium = request.form['potassium']
        temperature = request.form['temperature']
        humidity = request.form['humidity']
        ph = request.form['ph']
        rainfall = request.form['rainfall']

        input_features = [nitrogen, phosphorus, potassium,
                          temperature, humidity, ph, rainfall]

        # Predict the crop
        inf = svm.predict([input_features])[0]
        value = mapper.get(inf, 'Unknown')

        # Retrieve fertilizer recommendations
        fertilizer_recommendations = fertilizer_dic.get('NHigh')  # Default recommendation

        # Further processing to determine the correct recommendation based on soil conditions
        # ...

        value = value.capitalize()
        return render_template('result.html', inf=Markup(fertilizer_recommendations), value=value)

    return render_template('predict.html')

if __name__ == '__main__':
    app.run(debug=True)
