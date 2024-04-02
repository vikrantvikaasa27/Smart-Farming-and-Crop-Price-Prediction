// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farm Mart',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF243536),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    'FARM\nFRIEND',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 72,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    'Welcome User!',
                    style: GoogleFonts.inter(
                      color: const Color(0xFFCDCE9F),
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Center(
              child: Text(
                'Choose Language',
                style: GoogleFonts.inter(
                  color: const Color(0xFFCDCE9F),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 256,
            ),
            Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    ),
                    child: Container(
                      height: 56,
                      width: 311,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'ENGLISH',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    ),
                    child: Container(
                      height: 56,
                      width: 311,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'TAMIL',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF243536),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    'FARM\nFRIEND',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 72,
                        fontWeight: FontWeight.w100),
                  ),
                  Text(
                    'Welcome User!',
                    style: GoogleFonts.inter(
                      color: const Color(0xFFCDCE9F),
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2,
                      fontStyle: FontStyle.italic,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 236.0),
            Center(
              child: Text('Sign in to continue',
                  style: GoogleFonts.inter(
                    color: const Color(0xFFCDCE9F),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                fillColor: const Color(0xFFD9D9D9),
                filled: true,
                hintText: 'Username',
                prefixIcon: const Icon(Icons.account_circle),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                fillColor: const Color(0xFFD9D9D9),
                filled: true,
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF375b51),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      // Handle Facebook login button press
                    },
                    icon: const Icon(Icons.facebook, color: Colors.white),
                    label: const Text('Facebook'),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      // Text color
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      // Handle Google login button press
                    },
                    icon: const Icon(Icons.g_mobiledata,
                        color: Colors.white), // Consider using Google logo
                    label: const Text('Google'),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      // Text color
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 412,
                height: 1465,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/homepage.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    _positionedButton(
                        text: 'PLANT MONITORING\nAND SOIL IRRIGATION',
                        left: 10,
                        top: 305,
                        fontWeight: FontWeight.w100,
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PLANT(),
                              ),
                            )),
                    _positionedButton(
                        text: 'CROP DETAILS\nAND RESEARCH',
                        left: 50,
                        top: 518,
                        fontWeight: FontWeight.w100,
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Links(),
                              ),
                            )),
                    _positionedButton(
                        text: 'LIVE MARKET\nPRICE',
                        left: 70,
                        top: 779.69,
                        fontWeight: FontWeight.w100,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MarketTrends()))),
                    _positionedButton(
                        text: 'FARM-HELP\nWITH BOTS',
                        left: 80,
                        top: 1000,
                        fontWeight: FontWeight.w100,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Farmhelp()))),
                    _positionedButton(
                        text: 'FARM FRIEND',
                        left: 25,
                        top: 69,
                        fontSize: 36,
                        onPressed: () {}),
                    _positionedButton(
                        text: 'Home',
                        left: 20,
                        top: 108,
                        fontSize: 64,
                        color: const Color(0xFFCDCE9E),
                        fontWeight: FontWeight.w300,
                        onPressed: () {}),
                    _positionedButton(
                        text: 'wed,April 2024',
                        left: 89,
                        top: 191,
                        fontSize: 20,
                        color: const Color(0xFF9B9595),
                        fontWeight: FontWeight.w600,
                        onPressed: () {}),
                    _positionedButton(
                        text: 'DISEASE PREDICTION',
                        left: 10,
                        top: 1268,
                        fontWeight: FontWeight.w200,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile2()))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Positioned _positionedButton({
    required String text,
    required double left,
    required double top,
    required VoidCallback onPressed,
    double fontSize = 32,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Positioned(
      left: left,
      top: top,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontStyle: FontStyle.italic,
              fontFamily: 'Inter',
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}

class PLANT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 914,
        decoration:
            const BoxDecoration(color: Color(0xff1f332b)), // Add decoration
        clipBehavior: Clip.none, // Set clipBehavior to Clip.none
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: Text(
                    'IOT Plant\nMonitoring',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5.44,
                    ),
                  ),
                ),
                Text(
                  'Notification',
                  style: _notificationTextStyle,
                ),
                const Icon(
                  Icons.notification_important,
                  size: 59,
                  color: Colors.white,
                ),
              ],
            ),

            const SizedBox(height: 42), // Adjust spacing as needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIcon(Icons.speed_outlined, 'Temprature'),
                _buildIcon(Icons.waterfall_chart_sharp, 'Water Pump'),
                _buildIcon(Icons.water_drop_outlined, 'RainFall'),
              ],
            ),
            const SizedBox(height: 42), // Adjust spacing as needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIcon(Icons.timeline_outlined, 'Humidity'),
                _buildIcon(Icons.av_timer_outlined, 'Soil Moisture'),
                _buildIcon(Icons.air, 'Oxygen'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData iconData, String text) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 79,
          color: Colors.white,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: _textStyle,
        ),
      ],
    );
  }

  final TextStyle _textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontStyle: FontStyle.italic,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    letterSpacing: 2.55,
  );

  final TextStyle _notificationTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontStyle: FontStyle.italic,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    letterSpacing: 2.55,
  );
}

class Links extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 412,
        height: 914,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            const Positioned(
              left: 147,
              top: 144,
              child: Text(
                'CROPS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Positioned.fill(
              child: Image.network(
                "https://images.squarespace-cdn.com/content/v1/61f842c669af7f077506a5cf/1643817073326-1DZGY0QUYAYOAM2IWP27/PXL_20210610_121247357.PORTRAIT.jpg",
                fit: BoxFit.fill,
              ),
            ),
            _buildOverlay(64, 457, 'Indoor Plants', context),
            _buildOverlay(64, 600, 'Long time crops', context),
            _buildOverlay(64, 327, 'Short time Crops', context),
          ],
        ),
      ),
    );
  }

  Widget _buildOverlay(
      double left, double top, String text, BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: SizedBox(
        width: 275,
        height: 53,
        child: TextButton(
          onPressed: () => _showUnderDevelopmentDialog(context),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ),
    );
  }

  void _showUnderDevelopmentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Under Development'),
          content: const Text(
            "😖",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 75),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class MarketTrends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 412,
            height: 914,
            clipBehavior: Clip.antiAlias,
            decoration: const ShapeDecoration(
              color: Color(0xff325345),
              shape: RoundedRectangleBorder(),
            ),
            child: Stack(
              children: [
                const Positioned(
                  left: 17,
                  top: 62,
                  child: Text(
                    'FARM FRIEND',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                const Positioned(
                  left: 17,
                  top: 120,
                  child: Text(
                    'Live Market \nTrends',
                    style: TextStyle(
                      color: Color(0xFFCDCE9E),
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3.20,
                    ),
                  ),
                ),
                Positioned(
                  left: -8,
                  top: 235,
                  child: Container(
                    width: 420,
                    height: 158,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildCropItem(
                            "data:image/jpeg;base64,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",
                            "Rice gram"),
                        _buildCropItem(
                            "data:image/jpeg;base64,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",
                            "Wheat"),
                        _buildCropItem(
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTEhMVFRUXFxoaFxUYGBoYFxYaFhgXGBgYGBgYHSggGB0lHxcXITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGy0lHyUtLS0vLS0tLS0tNS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYBB//EADwQAAECBAQDBQYFBAICAwAAAAECEQADBCEFEjFBBlFhEyJxgZEyQqGxwfAUI1LR4TNicvEHQ4LCFVOS/8QAGgEAAgMBAQAAAAAAAAAAAAAAAwQBAgUABv/EAC8RAAIBAwMDAgUEAgMAAAAAAAABAgMRIQQSMSJBURNhMnGBkfAUocHRYrEjQlL/2gAMAwEAAhEDEQA/ANqlUIiIyIehUWKjSI4REhjjRxxwGHgxEuOJXHHE6TCMcAjpjjhQ1cxoeITRxxxM6JkqiIJ9IkKQLxBxKhUU8QqcrJDXd/L6Q+qnZE5leQ+94zNfWsCsnvGwD6DnGPrdZ/0gMRhbJFjFe5YlkDU/t98ow2MYwpZOWyLpCRpZ3P0feLPEOJZkhDsAT8f3jKVE+zbCF9NR3dTCdh0+e8WOHMG/GTwm4Qk3IBJUT7oYWG5PLxEC5UszFBI3PzttHuPBOFJkU6RlAU11MxNySL389/BoenJUl7nRV/kU8PKKMqkqKpkhB7qlKK1IsnMAwLBOf2TdieUS41NSlOZJCkLDgggpIO46QVxPsyO+kEMoBW6cwYkcrRgsWr1Uryge0pyPZJzLQq3eB11dx1MI1oqsschku5mMcIS5SrMCdGbKNb8+W1oiwSjXUzQgDU67AaknkALxL+GBJKlJyEBWZ3DH5xquBJCcyi1n7oOw1v1Jv6cod08U+l/cDUk0je4PQokyky5Y7oGuhJOpPUxfAhsoWiRo00rYFCZMJoZLVErRJA0iIniZoYERxIgIclMOliHFMccR9lDJsuzPfl1NgH8TFvbrAafXZVqKrEFhyskOR5rI8oXqVLB6cLgPGMNK1CWSezT35q3bMCCG/wDIv4AKHKKSMUSFzllTJSciUu/sO51s5c+GWL/EONCXIUUjMqY7g9RlTbpZTdDzjzCrTNWr8s93KA6iwIT+o89YUbTeBpN9zTz+J5mY5cuXZ9fnHIEU2D1kxIXLkOg3BsHHPvF2676wor6c/BPqQ8nrZhPHSITRrGYcziOdpDVS4jU/lEHE6Vw1WsdlCO9mI44lQYcYjREqS8ccIJhwEdAjilNclhHN2yziObNCAVLISkXJJYDzgJiGOkLHZulmLKDFQ1zB9OQcc3i5iMwFiu4eyDpbdT2N9jyjN4lUyES1KCA7FjvmP06Rk6jWpvZFh6cUs9w/MxZM5BdgoAFnYLBe6XLuGYjUHoxOI4hrw/d008Izc3HVoWVS1kc7O3JWU26NuPIiTFcclLRmQ2bQ2+Og6bQCpp3OSlYajtaBddUl3MUUoKzEqSuaoBvLn1MazBsMAUE63Hmd/Ic9Ou5cxRjdgkt7suA7wDw52X50xHfIeWTfKDqW2sdepjYLq0pSALgbku4itPqwAUhIA/VodrN5RncUryQW2jFraiUp4ywmFhFvE8bSHDE2JdrA7P5xisQUVpVmPdHR/IQ6biSSwBKiS58RYeI18XgXiFb2iwBZKfiYboUZOSuS5bY3G4dRu24Gn3zvHofDFLlvGWwZAcCPQcGkMmNaHIrJ4D8g2jq45IFonKYZQEglloH1WMHPllgEbn6xVxjE8xMmSoBW6mLAX38Q3rAFM3s1FKHWoO5Vq7M2lhYRi6/XST2Un83+fn0GKVLuzYScYS4TM7pO+3nuPGCCo89qawgXN9+sGODMbzkyFlyA6D03T5ajzi2h105y2T+jJqUbK6NZLMV69aikhBAVziZSmgNi1Vax84a1OqUOlfUilSvllOVj4lq7Ka6S5KDsvnlO56a+OsCq6tStayS/eUw1soAxR4lrUT5akKbOm4O4I0I6xjEYmpLZi5G+51uefLyEKKr6sekbhZO7NFUzSFZ1XyvlDvq17+B9Yp4OsTJoz94FTkHQna24EUDOmT1BCAovYAOSry5RuuFuD1pWDOFwHyj2R0Uoam4sPjsWCVPMufAOcnPETQS1BheFBsUcoWORx5fWFDH6qX/kX9KPkowkGFCh4XEqGlMOjqREHECjlhCY5iWYmOplxxw7LD5SGjqEw9agkEnQRDdldnWOqUAHMCKytDqKtAklI6sb+Okcrq3N2fdZwcz+7t9PjGaxnEQ7A35b+MYet1rlLZDj/YdU9vIzEsVGl33c6n72jEYviRJOZTcgInxWuuQNYzlWhzFdLp1fdItHGShNmOWS56m3w5Rdo6InXUxPRYe1/jGkwfDnmIznJLN1KF1hOot7ubKQOd9njVnNQjciMXN2JMAwf8xKSCAzqmN3AAAWH6joGHi+ka6jw9KR2hDXLEly2jAaDSKSsUBWlWTImWMiUAlmfMCp3exDnnFbF+JRlITqGYkWI/tEYmpqVKsrRQ247FZBCtqtSdBoIyeM1naMnQXcb+HzhVuK9oAfhygBXVpBCJYdZO3WO0ulad3yUukOlSVzJgkSQVTFFn/SN38I9l4Q4NkSZKUzEZpmql8z9BA//j/hZNNKC1B5ywFLJ1D3y9G+kbRU0J/mG1W6rrhfv+djmrkacAkPbL4FvrFxOCy2sAnwt/EZ/E8WCRdh0jMS641E4IzHLuH25ReGtvPbCN39iHp+ndJ4N6qSElgoKHMQJxXE7mUhTKIudWiKvxdKB2aSEskuRtlFwkDVhrysNdASwsqU+XveyzuACXzHqGt0iuu1bzSpv5v+F/IGnT7sjrphlJElLZ1+0rQtzBckcrxRnTCh1nRvWFXTg5BYMw9NBAnEpxUHJBBGgOjbRlKG527DSRUViClh1G5fyDlh98oN/wDH1LMmVYmJsiUFFZ55klISPV/KMfXVYQlhrsN4JcFV0+SVTEq9r3CCUg2uU8tn1jThRstyx4ObXB67ik4o284x1biZLgkN02va/hDcd4uaSwKQq6VoDEpUMpa5IYglm+jRkK3FlqQGBuSwA22sN2+ULy00558si9hYzX3ZJvFrhnhKfVNMLS5X/wBqxY/4DVZ+HWNBwJwMFkT61PVEg+oVMHyT68h6ZLnp2SWSWAFkgDcksP2huCVNWj9yksvINwPhmVSoAkozLPtLV7R6vy6CDisqAX31bX7/AHivUYilNnuztAPEMbSAcxb9opOrGHuytmw2qvTs3pHY82ncZyAosSerGFAvWreP2J2G7EdIjgEJ49CIjYeIaTHREHDlR1MdEVq+vlyEGZNUEpHqTsANz0jmcX0wOq5pUbWZ/AdTDsLxJE+nRPQCyncHUH9PiNPERXqJ4SHGnXnGXrat1t7DVOlbIPxKZkl8zzbXyjzvFK/W9/Uwe4gxbUAxhaxRKnfX1MZ2mp+pLc/oXkhqpnO5iWmpCS5h1HT5jeNhwxw4uoVbuoHtLb4DmY1klBXYNu/ACTIbLY63YOWYksOZa3VouS6coyqS0ztizpUCCrMRk5gp7qWOrPvHrcrBJCJXZdmkp3BDknmTuYy+PYCZQVMpFJdX9WVNJMuakMwIHskDQi4AECnNTww1J7TJ4hPShDsHJKWJOoDE+GzwMqkJyJcXCbjkTraJMVRLmjtpCVS1pP5lPdSkM/eYBylxrASrxDQByolgNyXZvWFo0W3gvKXdjampLhCAVLUWSkavsBHovBnA6ZOWfO784h2PspOth0jPYNwhMQn8WpV0f1EpLTJZGUlIzBkkpKu8f02sQY9NocYkzJRVLUHZyk+0noRFtQ9qsnjuViu5eRNyi/lAHEcVFz6xFXYwCDcjbxjD8QYxsPSEYylV6Yh4pRyyTG8affyifhYqvMNtgevIRm8HpfxE5KVzAgK0JvfZI6nSN9TlMqSHASUD2SGL2/U28M1k9NTtD4n38C86jm/YbVECYlrlCScpcMo+8SLOzs/8xDIxNISTdmtvpqzdYq1tSyVFLBT95g7Ps3LX4xm6+tJGVDtubDMevSFKdF1FtZN7hGtrEqOcAjm9oBV1fbo/mekUZ9VqCohiINcK8PmoVnVZI25fzGhGjGlHdIte+ER4Bgapyu0mafLoI185SJMtSEAXFw1lNoDzgtJo7dnKRcW6eZghRcMytVntV+qEdG0J8YRdWpVqbuyIa7I8wpcEnz1gU0olLsoqOWX1dZsfAORyj0DDeBEyyhfbPNKnACQUIy3CUEhwXHtck6CNMmSkED3QGVcs2rJHJ9f4i/LKE94i6dNgH/SB4xoxm3ZvBDtFW5MoJ0yhUadaiJSj3J6sidg6ZaS4dy1+dgrUWJuIzBLyzAkEvlynu5T7N97HWztFL/kGrSZQUG7SWp0HIlZvqGNw4F2Ls+ukYSRxKtSFSsqEkEsWKZiyXLJSzIZtS503tE1F6seg6zWWa6ZX9iCCoqLXJsSwtaPP+IscmLUQSwb2eY+kcqMQOU5z3lXCRrfcvoOmpt4xUw/B5tTMdIt7yjZI8TuegvEafTWleWTpzSQMFQRYAN4n94UegSeFKdKQFFSiNS4D+TWhRo+i/Ar6p6cIeBEKFRO8HAjCmHgQkxWr69MkOrXZI1MVlNRV5cFlFt2Q7EMQRJTmmFg4A5kktFetUHdSUqIPcB6m5HIMHfpGXrMRVMWVrBKUF9AUjRgl/aO7mwbwYXi3EMzM8p1zMpdZsANgL+0HFn3EZNbUOrhcfnI3CjtywximMpoZodREqYrvpHukh8wJBSHLvz6xzHsQypCiQEqDgi6Sk6FJLZvERjsXrs9OiUSVLGUlS7qsCwPNn3gAuvm9mKdZKkJ7yAb9m+wOyS3s+fOOjTVWNn2/0E37WE8QrEqugkg87EnwvaK1NTlRcw2lpyouY0mE4aVFhYC5OwEHjCNGN2AlJydkNwvDsxAcJBLOeZ0AG8eqUEyXJlpQhmAa3TUnzjz+VXSxNEtCSNAXD6OwPUuFHqU8rmkT5gDzFAkm7Bm5Ac7RnarUyvj7B1TUY+5p5+Jgb84zGK41c5TAnGcZ2BvGfXWMCtZhdOpUz2Jgkmdxyan+rmCFpuFXcba63+MFuBuCvxChWVQNyFS0EC41zrBBubW6dWgTwfgasQnidNBFNLVYH/sUNuoEezI7oADCHk3SW2+e/wDRMnuyZzifDzLHb06CtZGWZKcZJqLq74V7wPskXB6Rjptb+HmmalLyFAjYqQXDoW3dCnYWsQbR6Bi9Zl7wIIbp6jrHlXEckqUpclRCCO+hyxKXaxN225RPqQn0SJSaVxV2LhbqS+XrAvDaCbVzCEB2uToAP3OwilhlDMqJolSgSVG52AHPoPiT4R6theFoppQly9TcndRO56ftA61SGkjaHxPj292BlJzx2MmcC/Lyeysa3u/K3l5vFRWJLKOzIC56FPlbvLSNSAbKUHfmQDyjT1UtIJy3I1PM+MZLidAWoKFlCzixtpcb9Yrpq+97Z5Is45RVl1S1lcyZ3SoAZQGDJd7NcufjFCrqSl39ecJeKq0muqzZ7ZraOfebkT5xY4YwCbXTWQPy0m6i+UePXpD+215y4Ics4KmC4XMqF2BbazuT849f4W4bMoDPY2YJHeI3C2sRpdnF76Qa4d4dlUyAmWl1NeYdercvvWC0qmSi+51PT6+cJ1as6j8ImLscl0iEjRh529NPGOzglKWSyegAGaI6ysYFyG25vzjOYzjSEJOZeXq94E5xhhLJKuyzV14zMDZ75diNXPIM3Nz6Z7G+NkgKEohWUsC9iRqH5ftGHxziZc2YoS5ihKZrDLm+pjOLn7JsBsPr16wxT0spZn9gjaXJoa/ieYUMpedalEuzZS7j9m5CA1VVKCgt3U5IcDU8/wBXm8X8G4cmzu8oZEH31an/ABTv4m3jGwo6GTTgZUgkXzqup+bnTXZo0aWnS4AVa18A3BeFAQJtSS573ZaG/wCtWr9B67RpM6UJCUAJSNAAwHlAKZxCpRISkAAkA3LtbSzfGLSpth4QaEoLEReSlyy0qfCgaZkdi246x6j2UdiyDEFUvKLBz9BqYipNQV2RGLk7IrVlWJYG5JYDrrAHGJwyqWsaC51ueXw/1F2dXJPf2Gh5va336xk8cxYn2CG2JZgeZB18IwdRqZVp27D0IKHzM9W4+UoyKPePtNoH0AP16CA5rwglSCb6Py+7+cVquSlR1zHUq+9yYiyZieX3aHqdGFjpS7lgVDvYEn0DxPRUfP1OsOpKPpB2ipHISNTB+mCbASe4fheGlaglIufh1MFcWqkyU9jK7xu+gC1tbOf0h8zf2jm8EJyfw0ppQzTFNdudvS7+AMBaalYiZOuo+0+5BLFuQ2HnrGRU1fqS3L4VwvL8hIJRV2R4YjsKczFDNNWXKjc30Pg5J84jXi+VPeLrsD4s7FvGKuLVilKCU2QN9/vSBSFuVKIyp+gtYbR0KW9OU+Xn+kWvctzZ7utRtFbCMOmYjPEtLpkputXJP7nb12imhEyqmpkyhqWA+ZV0Ee0cKYHLpZAQi51UrdStCfC1ukMStRX+T49vc5dXyCWF0KJMpMtACUpDADYbRHX1jAt9tD58/KGeMVj+IKSFBCnfc7877ePpCLnd2XIZRvlnMTr+97ZUb22+xGNxisXNWmRJBKlWIG77fzCxfEyAAB3iAAG36AfKNXwbw9+HT2s0fnLFyf8ArSbsOvP+ILihH1J5fZe/9IrObl0oI8N4Iijk3ussVqbU7JT0G0WJswtf2jr0GwETLUNgyU+zy5aQPrakC584ynOVSbby2TGJWqmF3LfOMTjFUVLyIBJJZISHUSdgBcmNN+FqKpxIDDeYfZTdm/uV0Hm2sHeGuFjTTLSwO6CqoUc0xZVqlIDZBs27XeNPTxVJbpZfgs43wCOGv+OVMJ9YMp1RKzAFB91a+Zdu7pzfSPSsKcJMmYlKZiA7JAAUlXsrAFg7G2xBHWJpCe73xmGwIFx1G+nxilxXWdnLTUS2/LUH5qQogLQ3odg6Y0Yy3rq+wCSXCJ5NYB3Cbhz5P8YHYpihQHBAA1jJY9xCFrQUFLKIKX0OhfV/3gVj2Pu7Ke320ITU5Pai6iuS3xJxSUpZBZz7W48jqfvofM8SqytRUpSlknUkkn10h9XPVMV47eMEcJ4fKyDMcDlufE7RqaXTKmvcHUqJLANoaSZOITLS53J0HidvnGwwXhyVKZS/zFjcjupPQb+J+EEKWkEoDIkADYRaXNs8PqCQrKbkTrn2gHjdSwi3MnvAHFJjqCfD7+EVqTsiIxyQyVNl5kxokG0Z6lJVNA2H0gvW1OVNrnaFaTsm2GmspDplWgEhxHYBdgN3J3hQP9Sjth6qjiULqTLSnuIuymCpjOVkA8gxyljqdoIV2JpUjPmSqWq9mLOGuxvGJqKdEuQVTJgRMD90FJLhihYbUjkLMqMYcemITlSSAbqSNAdlJD+zzECblXV1yHilBZNnjuMFKtHTdmMZLEa0rcFxvrtApNcoltRrYG3Qb7xIiUCbd7qdB4RWlpFB+5MpxtcgShzaClHSxLS0O8FKeQ2zmHlgWlJsfRUZJCQHJsA4D+ZsIOYZRFClKmBO2XLdL6MlXvAMA+8XcHwMMtU7MgJSSCCQXb2rbJ58+kcxgKUlIUSJ6AWABafL2WkHUjca67Fzn6turBxgw0YbVcgq1XCsxYPZ7HqesZ3FMRcsPWJcXxsBJQPbA002+EAASq5hHTadpbpfQo1c7NUVWdhvFComlZyIuHa3vE6AQ+qne6nzMb7/AI74UYCpmpuf6STsD756nbp4xpXVKO5/REpX6UGuAeFhTS86w85ev9o/SPr18I0VdOISyd7O7N1h6p9lC72DH2RzY+EA8VrW3jNr1bdTd2xmEexVxSvyJYHSMNjGIsCtZ8InxjE7nkN4E4HS/ipomTf6KDZP6zt5c4vp6O2LqVOPzCIqT7IOcF4I5FXUDvH+kg6JGuY9eX821E+pJUoAvc9MoHujz/aKlRWpYDN7JuxYbhvgfhBPC8JXMYgdmjmdS+4H1PxhKpKpWnuf0XZIiCSQOVMmOlIBUo2ygOfGCVDwsVEKnqc6iUCw/wDNQ1YbD1jS0lCiXZALnVdiS3MnT0aHoSlI9Tc9XYP5wxSobcss5EH4VKUgADKn3QCALWt7xuLaWiVUxLubcud/lAXHcZ7IHIylhJUEjVQD2H3sYBq4oSJSSpQzlL9128Q+0X3eES07XNlUV4TvGQx/idEv8tT5F7g6K2BG4PUxmsU4oKrJMZqoqyq6i5hmjCcneXALcojF1pKlIUE5kqOUge67sCfE+phkxRUWL/fOK4Q6nvq+ukEqGnjTVJN3F3UfBZwugDu140lNIYRSpEhIi9Jqkq0MMJqIFpst5bPA6dNZxF3PaKFQlzEOR1iopTEvAucLFbv9II147piiZTJA6NCteWEg1JZK+GLIVm1DfF9IJ1CmF9d4VJREJBIA3A6HeIKm5yiE51HO0EEcbO5RXNLwoPyMFdIJ1jsMLTsFvQLxRRKs6glOYENoXfU/fKMxPJBsHblGiqap9TaBpJWbWTyiNM5JcBqrRUpJBPR9oPUVH0jmH0t40FPTQy2LkFJII2jT4HhwBExTP7obfnFKlpg4Gj/AQekzEpUEFTIIAY3uLBy9tfhGfq9Ql/xReWFpw7s7itTMKkLQWMsK7tmWFM6C+xYCKdfWJmyyHKVgukWKkHbKdGGmmli8D8VrFSlFKjzZi7jb/XSM9U17lxrzhKMqzdmGUksAmrplTJhZLKHtWCUltCCSwd2bbrFWpqSO4m50JGnrvD8XqBM7rAnnygjw3w4qoWkaAkE/47k8n0A3d9BGnCK2qUykubR5L/A/CpnLEyak9mlix/7DqB/joTztHqdUsoR3Gf7bw2iCYuXIl5EZQWYJDas+nxgaupzIZSyW3f7v99IztRVcnuf0DU6aWCesqsqXsS2trtuYwXEOL6gHxMXMfxY+yPPrGIqyufMEmXdR16DeI01H1Jb58HVJ7VZEClKqFhAfK9yOmz+nrG34ZpFzQJciVYWL2ysWJV93gdTcMTKVIXNfIGJCSQTfUd1hvfW1o9RpJsuVKSmnTlStIIUC5UCnVzc7fYhzUbZwW34QMYOWWdwvhmTKOaY02aLhx3Ul9hsX3N7WgstwHLPyGj9VfWIKJbJ5P084q1VcNX03hVuMUEs0WJ007t1H399IF19chBzKLquA7aFnA5XA1gLinEKJQsTfmSb+cYfFuIypw8DjGdV9JN7ch3iLiQMcpZTNbUNyMYEqOxP+RLkmI5tS+sQ9opRYW+941aGn9NAp1CYMSw7xGpiwiVCpqfKGEX5UqG0khdtshlSIK0iGiORKi6QwibkEdVP2ETUqLCKUlOZT7QSEI157pW8DVONonEzSFAPaJlRUpu8snYWEECmGad1HICdt2AVXm4T1iji6FZClO1yxY82i/PPeKmdhb6xRqKkD27FtNvWFqs2547Foq0RlNjalyuyfvJT3SRfu7Fhy39eZMcK4aV/mLFzpADCsJM6aFXAfY/URv6eZLl/lhTZQCbOwNh5nYawxCnFdREqjktpaMsCFFxFBLUM3aEPty6HrCin6l9l+5X0meSS6cq1gjSUnSLNFK6QVpqEnaCccHN3K9DIvB2WEoS6vIc+giNFMEd5VgL/IAdSSY4tIJEw95wQEkWQAxD7X+JAgGprqlH3LQju+RaptASLllHpZwG2a1ufWIccniWWzBRKQT/aTsYpVNdlBAMAqmpKiSTGLTpOo3KReU74QqqeVHx5bxQr5vZjK/eO3jz5R2pn9kl9CfZTv/EQ4DhUypnJloupWp2SBqo9B+0atGkuXwdwvc5QyHclKlNchIueQ6ePjHoOHV8qjpgtGVUwuVgWGa4Sm92F/Qn3njQ0PBUiVJytmJQUrJ1VmDKPQ3s2nnGOxXh5chRCB2yVK9lX9RWncB0BAFiA5blF5zjN2eEFprarrLIcMxYzpkxUxZYXO5U5O+wH7Q+qxbN+XKSok6JAJUT4C8W8M4PV2hXm7OUR7CgO17wFlFyEkaOH3vG1wnB5ckNLQANy11eKjcxnVnCU+lXX7EuriyMThvA0+f3qhfYp1ypZUw/8AqnzfwjbYDwxSUiXkygFFnmLOZZ6lR08A3hBGbMSltH+JgXNxdpoS4ypS6r6aEEsfn8YIqjWHwVUXIMV1AhYUFuQqxDnQcuRPMbRhZFcrP+HCFIyFQSQlSQUosoSyXMw2zHSyt2YaebjAIcNfS/oekZrierExAUlYStBzOgglwxcs73AtaGFOMsdi6v3L3/zRSrJMSQrmbONQQdNtox2PY+rMoJUzKI6WLQKxvFzNSFPc2ID2UNSAbhJ1Fg0ZydWc7nlHR0t+ckSqJF2triu5J84DzZrx3Nm38ohUIep01HAtKTYrk2uYKUVPlF9TqY5Q0rd46/KLQS5CYI3ZFLXJ5TRbky4hNIMrkXiWmmbH1gSqJl3TaLktEMqVbCJtBEVJJK1PEVJ7Y3OhG7sWaSnYQqpeUE+kXjLyhooqlZ1hOw1hOlHdIYm7IsYZIZIixVAswuTYCLkiQEiI+zIUSWbbn18NoZr1lRhuf0FoR3OxQNMEi/8AB0jO1VL200Nf+Dr84P10xSjkRqdeg5xfwXBgm/L57wnooylO75Yaq9sTtBQ9khg2Y2Gn1tFDCQoziVJ7x/7CRbZ2PtE6WHkYKY9OVLSCEvlILeFxA/H7EFF1G6W2Bv5WPj8of1F7qKAUpWyHFWtlP/6A+d47GdQuoIBZR8VF/hYeEKA/p5eA/qx8lygptIO0coAl7AC5OgbeIaSlYWgbiM2bPV2ciyEqZawfeCg45MHfxHQQxUmqUdzARjudjlVUfiV93MJSCNrWB73MqOgHTqYjrq0bPYMOf3+0crwiUBLlFQSwck3JGsA6ifc3jEletPcy85W6UMqah9YozJ4SCpxbaIp8+KBBmKAAJ5AByT5axoUqJEcZOyUKmqBLkksBqb6Dxj2TgzAxSSiSHmqAKzy/tB6fMv4Z3grhKYkpnzUZSHKZagQpgGzEEWe48usbOXKWojOwGuTZzz5xTVV9vRENCONz5L1RWqUwl83J93mz7xHlclR1+X1+kcM1hf0EU51S4tbrGbOpLuybNl4zUpbR4hn11uQ6wHqsTCRcg84zWMcRj3iNdt+kRByk7RLKKNTMxYKClyjmy6hR2N+6BvteMriOPlN1Oom7HR20D7ftGVxDH1rLpJfm7wHn1ilDvk9LxqQ0u5LcrFnUUeDTzMfUok5tfLxgTVYoxcq/nygCuoIDRGgE3MNQ0sY5F5Vm+C3UVhUpwIamS1/WOplAB9IkmLcAf7g3GEC55GpUB4RPQ0+Y5lCw06xDIp8ym23g/TU7bWiSGNyMHh+G0+ZWaOVRdkjeC1NJyI6mF607YC049yGch7D75xAmW0EESyQSEk7aHaK5QczEEeNoXj1OweXSjpByhO5gxQUTARXw6nzrfYWEHygJTEV53e3wVpqyuCqss5O14Zg0k+0d7wyt7xCBqoufCLOITuxkqIIBZkk3ubC28H00MbgVaWbE9ZVBNt/lA6lqVz1mXLTYaqOz7+EZ2ZjClHvliTrsR09NNfGNdh2anl2DlWraiFa1Nynef0L0gvh2Ey0goB7wupR1V1ixh8m3m8AqbEyR2bqzEnvEAK71wbBmDxqKZDCHtHDLYPUPhENZRhaSG1iKgwpCBfvFgHNywDAeAEXlGOgw9ZCtxgpgNoUWIUWIAeK4giTkST3phypABJ0Jew0s3nZ4G0ElVPJKTrmUpmIUyiVXvdTERbK0rSqTPT2hU/stmf8ASlvZKLt4QExDFZqEKkzgVTkMELKcvaO1lsT32LOHBPXXz+qk9TiH29vzk0VTdNWYCxzEnmMPPp4QKm1z9BBzCeB6mo7y1CUh/aXdR5sjX1aPQME4PpaUBWXOsaLWylP/AGg91PkH6xdSpU4pLLQJU22ec4NwfV1TMjspZ/7Jji39qdVfAdY9J4d4QpqMOB2s5j3l7nUAIFgHbn4xZxGtUe6hYQ5Yq1IHQMxPwiWRiMtz+rcE3szeED/VOTtwhhUbZIEYhMlonduU5yyrFghJ7lsx0BF/8oqT8bTLDq72YDKznNsWby9YdxfiaBKRNLDVBB3C7KSwDnY9Gjzyrxbs5pYktb+1P+A0AtrE1YOpZo66XJta3EFtmzAWBCDbLbQ9YB4lxALhJJ09WDn1eMzV4tMWC58heAk2qI1+cRT0bl8RWVRLgOV2Mq6kwEq6kKLqOmnT94pzagktHBKeNGnQjTAOo3wJU9tA3WIVKeJVyoiyubQyrFHcalLwRpaMlJIZxqk2Pk+sNppETFg4HnA5zvhExiQTSAIiSkqLDX7+EKYq9oM4VQtci51iVhEMmw6jyj5nnBNSWESykhIvFarN2G8UbISuLDKfOvMRYQXmB1pSNyB5C5+ESUtL2cvqYbhyM04dAT9PqYz6ktw5CNg8iUAmzRnsVnFUxTahkgffUxqlslBJ0/aMxhVOZswrOgJPmrQdYtT6U5ESzgM4PSZUjoL+MPrZuoDM14utlTALFJhbKNVFmgELyl7ss2kjmESc6lTDzt4CI8cIfvFOUNY7Xueu3pBqgkZJYHSAGIpzrMas6SdPYIqXVcBUlAmZUoDOkq0tokWA6aesejGQCA+oEZfB6A9uS2g+f+o086ySTyhWXNvAaLwDKClzziSGy+e538GPnGoQm0CcBkHLnf2iT5bQXVaNGhHbBC9SV5DMkNyxMIREGBjAYUPaFHEAOkwpaphWO49yHe559b7QXRgSSvtJpzkBgSNAzHTnChR5WCwa0pMuJmhKWSn/AFzgdW4wzgbbf784UKKSk0sF4RTZjcSx/Koi+a9xdiDu7OGf0FjASbxIoTHFnAO5LwoUaNGhC3HYmU3YZWcQlaSlQd73DtGWm1jkk87eEKFDtCnFITqybIlVKiOUVxq5jsKGEkuBdstIlPy+7xJChQJu7CFaoW5YRZoUhmhQomeInXyWJ5CQ0VFzLNChRWCxc58lnDKVy58o09HJaFCizKlqeWEVsNos0wnYHSFCheu+kLS5D9Ql2A5gCHYHLBmzDsCEjy/3ChQm+BkJ45NyyFkcmHiot9YiwKiyID66+ZhQomq+lFI8kuITWsIE0KO0nudEfOFCi+iSc8lK7tE0k+Q6YGIoWLmFCjXaEkyLCCcylDdRt4WifFllQCRbMQH8bQoUZazLPn+Rl4QepZWVIA2iZSYUKNdCggIaqFCiThrx2FCjjj//2Q==",
                            "Sugarcane"),
                        _buildCropItem(
                            "data:image/jpeg;base64,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",
                            "Tomatoes"),
                        _buildCropItem(
                            "data:image/jpeg;base64,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",
                            "Potatoes"),
                        _buildCropItem(
                            "data:image/jpeg;base64,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",
                            "Carrot"),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 567,
                  child: Container(
                    width: 149,
                    height: 151,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTEhISFRUVFRAVFRUVFRAVFxUQFRUXFhUYExUYHSggGBolGxUVITEhJikrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGy0lICUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABAUCAwYBB//EADoQAAIBAgQDBAgEBgIDAAAAAAABAgMRBAUhMRJBUQZhcYETIjKRobHB0RRCcvAHI1JigqIz4RUkkv/EABoBAQADAQEBAAAAAAAAAAAAAAACAwQBBQb/xAA0EQEAAgIBAwIDBgQGAwAAAAAAAQIDESEEEjEFQRMiUTJhcYGh0RRCkfAjM1Kx4fEVksH/2gAMAwEAAhEDEQA/APuIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABzvbrGzo4VzpytJThonrKN/WXV6XenQz9TkilOZ1vhbhjdnL9lu2NWfquSkr2am03Fd07pvzuVTmvT72r4FLx9HSUe2lDi4KylSd2rv1oXV/zLVbXu0kXU6itvuU36W9eY5dHRqxnFSjJSjJJxlFppxeqaa3RezMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAPnvarFyq1NfZV1GOm3XxdvkfK9fmvmy7/ljx+7TSYrDksRhVSl6XWPrR4rLlff5F/QXvM9tvC+t+UvFRSipyvb1r3s38P1fE2xE92mvfyvoH8PaylgaaX5XUj4eu2l5KSPSxT8rys8ayS6QsUgAAAAAAAAAAAAAAAAAAAAAAAAAAVHaXNPQ0mov15pqK6dZeR5nqfWx0+LUfanx+6eOvdL5nh8c1VfF63Av9pPT5P3nzNJmldx7tUxE+WrNsZFwnu2pRXPT2W2/BHoen5Ii9YnzO0+3lvhKFWjwqP5YtXd3fn9PM9SeLNcRw63+F2LUqFWna0oVW2v7ZxVn74yPRxTw8zqI+bbtCxnAAAAAAAAAAAAAAAAAAAAAAAAABEzHHxox4peS5tmPrOtx9LTut59o+qdMc3nUPnGfZk5tzk/Wey6Lkl3HxlsmTqc03v5n+9Q9CuOKw05dlvBByqK0m3KV978l5L4tjqbzvtj24Q1E24R8lyxVoVJzWk51Lfpso/Q9LFWaxWfppC086Mv7PujOEfSqU5U5OXtRiknG0bfmXtK76Gq/qETbxxLTWeFh/DvEyjj6tK1uKnPjXSUJJJ9+ra87ntYLRqJj3Zup1NdvqBpYgAAAAAAAAAAAAAAAAAAAAAABjOolu7EMmSuON2nTsVmfCuxeaW0gvN/Y8Pq/Wppxhr+c/t/01Y+l39qXH57jXdynK7/fuPmsmbL1OTd53L06YaxXhXdnMP6STxE9VF8NJdav9XhFNPxa6M9PFWMNO/39vx+v5f7s+ef5Y/Ntz7EqMHFHmY478m/aCtNQs8ho8FGEGto/F6v4tmyeqnXYo7d22iZrhG6860W/5FKhddYSqT4vde/kyePp5y4L/WvLs27bR969yXgjP0ijFSlZSkkrtbK75mf071LJj6ilck8b1/XgyU3SdOqPvXngAAAAAAAAAAA53tR2rhgpU4yhKfGpN8LScYqyTs97u/uZC1+1ZTHNmzIO1lDFxbjxwadnGaWj7pRbi/eU26zDSdXnX4pT09/MRtexkns7l9bRaNxKqY09JOAAAAA8btucmYiNyIOIzFL2de/7Hl9R6lWvGPn72mnTzPlV4jF31bPA6nq7W5tLZTDEeFZiMZ36dTyMmW2Tx4bKYdIP/iHit240+v5pfp+5t6PBb7RmzRT5Y8rGeFhSgqdJW4VZLp/2Q6nLPd2V5n3UY69091nLywk62JjSs7L1pvkop/XYt6emqbTycQ7OlhnpbzIThtfJE19meJisalsy7CcVarGS9WpQUX32clJe6S9573pGPVr1t7wz9TPETH1U2RyaTpy9qLlB/qg3F/FHyXXYZpltX6S005jbtcDX44J81o/FH3vpXWfxXTVvPnxP4x+/l5uWnZbSQeirAAAAAAAcH/EztJKglhoaelg+OSvxKEnZKFno2lPUqyX1wuxU3zKp7DdpZqLpTU5U424JttuPLgu91z3dr22tbyOu6uuDW55ltx9P8TendYbNoy2mn3X19xDD6nE+LK8nSWr5h8z7cYaticZJp+qmkndaQjsrb21b82W5PU8VdzbysxdNbUadBlGGVOlGEeS10Wrbu2/FnynVdTbPeZb+yK8LnCVJR9mTXg/oXdLbLi5paY/Pj+ijLWtvMLfB5lyqeUuX+XTxPo+k9UmZimb/ANv3+n4+Hn5em1zT+i0PcZADyUktW0vE5a0Vjcy7ETPhErZhFezq/gYM3qOOvFOZ/RdXp7T54V2IxEpbvTpyPIz9Rkyz808fT2aqY618IWJrKK1f3Z5mbNFWmlJt4VGLxnN6LoedM2yWbqY4h7lmBlWanUTVPlHZz730j8/Df0en6X3sozZ4r8tfK7xOI4Vwx3+SLOp6jX+Hj/6ZcePuncq2vXUItt9WZqYopDTEbbcro8MHNr1qlm+v9q8r/M0fZpv3VZJ3bS0oOxqwRFas1+W6Ffhal7/A24s/w7xeP7hXandGnO1KH/sVJQa4XVlJeftf7cR4/qWOMvU2tTw14a6xx3OiwbcHdPfddT0PTqW6ae6s8T5hlyxF40tqdRSV0fS0vW8bqwzWYnUsibgAAAAAHz/t9ksKuIjOV9acVo7bOX3PG9R6i2G/y+8PR6SsWryqYUFTioxVkloj5TJltlvNreXr0rFY4aFXae53s3C6JT5q/DLqjuWPlr+DPX7UpWEq20fkZ4iK23KVo2s6NQ2Vncstqpi1NVfCiUvD46UVbR+PL7o9Pp+vvjr2zz/8/wCGe+Ctp22VMZNrRpeCRqt1WW0bif6I1w0jyhtyk9W34swXm1p3adtERWI4Y1JKO7S+Zmy5KY4+adJVibeEGvj/AOleb+x52TrJtxSPzaKdP/qVdWq5OyvKT5K7ZmpjtktxzLV8tI54hOwGRNtTr2dtVT3S75Pm+7bxPXwdF282Y83V74otsRVUVZb9PuS6jLFI7aeWfHSbcyraj5vzZhpi7Z3Plrqp683VrRprb2pfpWy83b4lsRuVn2Y26Fy1S6fM7eYm8V+jNrjaTTZqrPCmYKj0Jz4Kq6btN96T+a+hgvbWTX3NVY3RZUKt4o2YM26st66luwuK4Za7PR/c29J1Xw8nPifKrLi7qrs+heeAAAAABQdqsK3GE1+VtPwez9/zPI9Wwd9IvHs3dFk1aa/VyuJpaHymXHq34vYpbhT4ik1dkqz7LYssstnx0rc4Np+D1X77i61O+n4KL/Lff1bWtjNenHCVbMZ4/gZDH3eycxEud7Q9pq0as4U67jT4aekVFNNpcV5W4u/R8z6f0/DS+GL2rzy8vP8ALkmNus7LTqRw1P0jlOTTb4m3JXbsm99rbnmeo9R25PkiJj7llMfy8+XQ0HfX9+aHT5ZmNxH9/gqvGjEQk9puPgk/s18SzLF8ni0x+Gv+J/WSlq18xtBllkm/+SHnxJ/FGH/x8zP+ZH57aY6msR9mf0baeTQ/PVv3Rsl9zVj9PwRzkyRP9IV26y/8tU+jClTVocK621b8XzNsZemxRqkx+XLNacuSd2aq2Jb9nTvf2M2bqbX4pwnXFrygTMfa1VQMyxKhFtvYlK2sSw7P4Nwi6tRWlN3s91H8sfm/Fk9RSN/3tDJbfywtYQ+JzFjnzPmUJlvgzTHCqYeTkQmzsQq8bU/mr9C+bPP6m/zRLXhr8sp+Cnoi3pbfKz5Y5bqhrlXVe4CpxU4vut5rT6H1HS5O/DW33PMzV7bzCQaFYAAAAMKtNSTjJXTVmu4jasWiYnw7EzE7hyOZ5Y6btvF+zL6PvPmut6Cace3tL1sHURaPvUeKonkTXXEt0W3yrqVV0p8SV1tJdY/csx27fLto7o0t7ppSi7xez/fMWr2z9yuJlWZlSb2/aI9up2srZAhl1OfDUlTi5K+rW7Tsr9dkaf4nLTH2VtqFdqVm+5h0+BxDST955EWmttrb0i0aXuHrpq6PSw5azG4efekxOpbnVNE5UOweu2viS3vxy548tenNWK5iPeE+RtDg5apyISnEIeKrqKbbtYhMxC6lZlCwOAlWkqlVOME7xi07yfJtdOhOmKftWdyZYr8tV56K/lsi6KTM7lm7hs7MxHBDBzOTZLTXUmUXsnWFTWleb7rL6/U8zPbctlI1Vb4SOiN/S1+WGLLPKRUNl+FVVrk7/l/5P7nv+mz/AIEfjLD1X2043s4AAAAAGFWmpK0ldPkzlqxaNS7EzE7hQZlkF9Yaro914PmeP1XpkW5o3Yes1xZyGZYNwvxJ/vr0PCzYL45+aHpY8lbeFXRx/oW+cXvH6royOOZmNSttXayhVjUipQd0/g+jXJiYms6lW3YaknFro/mOzddOTbl7Q0djDkrNbLoncLLC1GthXcc1QyViyypVLmvHfujcMlq6bosupZXLY5dVc0Rf/VG0dfRg6UXtdHZrjt44d7rR5YSwV/zvysPgVn3S+NMezyGX007v1mtnLW3gtiVcWOk793LZr24b5TRK16oxWWqdQptlTirUyrabVNlc30nGmjE1OGLk+S1KMlk6RudIOCpuTTe7d38zH2999NOSe2ul7Qiexhpp515Kx3J5KLjKI2prvbf0+h9H6dXWCGDqZ3kTTczgAAAAAAAFL2rzOhhqDq14cavGKglHilKT2jdrld77JleWtJj5o2sx92/ll8o7RZvhaqbw9CtTl1dSCjfleHDK/LaSPDzY8Fbaisx+b18E5dbm0T+TlqWYYmlPjhOK5OLTcZd0lfX5iuLFeO2YlO9rR7w7Hs/2mp1GuL1JPRxbTT/S+fhvuefk6e+G31hKJi8Okq0ua8mZs2HugrfUtlCZlrE1lbPKZSnbUlas+aq7RtNp1bllMm/PlntSYbVIui8whouT7h7xHe40xlITeSIYjaTEhMuvLEZGFTQrtOk68qfF1fSS4FtFpy/Vyj5b+4zXmYj75a8ddR3LLB0bfvkX9Ni1yz5b7WUYnp1iIhkmWuZVPMpQv8LT4YRXRL38z6vBTsx1r9zzMlu60y2lqAAAAAAAAB8x/ifh6lfE04WfBThdWdryne7/ANUjz+q6vHitq86benxTau4cqsCopRtfrfX4s+ey9TOW83evjxxSulbnGXT9RxhJxvuo8SvfmvI9L0/JSKz3W5lk6uJm0ahFeUNNuovWe/S3JWIZesi86p4hPDh1G58rzIc+lQ/l1nKVLlJ3cqf1lHu5cuhTatbxuvEp2rp2MJqSUoNNOzTTumu5mHJj3+JW2kyjO5m5jhY3xYmkSjMN0KzW5GJtXzyrmkN0atydctZ8K5rpnxFsTCOnjJbh14rHYmDl5KZy1nYq1SqFU30nFVTmGObfo6es+b34F3/3dF5+Ndp/mt/Rox4/6N+XYKy+vV95HHjm87ky5dcQuKULHp0rEMVrbbJMledIRDPA0uKaXJavwX7Rf0OH4mWN/jKOa/bSV6fTPNAAAAAAAAAFL2myx1YcUV60b+Lj3fvqeb6l0f8AEYuPMNXSZ/h258S+d4rD63Pka91eJe73Q3ZdH1Wukvg1/wBHcs/KjMfNtpzHA8WpDFlmOFkQo8dgNDdizcozG1Zg8xrYWXqO8b6wesX9n3o3xFckcs9o06vK+1lGpZSfopdJbN90tvfYzZemtH3w5FnSUMSnzXiYJjXhZpLTObRekJpW3MjKMmhWnb4lGYiWTqsnM2c7YYqTI6tPmXdQ1168YJynJRS5t2ROtfaHdbVNXMZ1nw0U4x51GrNr+yL28X7iNprTzzK6uPXNk3LstUFt49W+85WlrzuyOTL7Qt6VOxtx00yWtttsXSrYSkVTO04hcZZQ4Y3e8tfLkfR+n4Ph4+6fM/7ezz89+62o9kw3qAAAAAAAAAAA5/Peziq3nTtGb3T9mT69z/feeZ1fp1cs99OJ/SWzB1c0jtt4cZWwtTDz/mQlFPR328U1o/I8PN0l8e4tGnpUzVvG6ykSs0eZkwzHML63V+KobjFbcpy5fMMJdnq4Lqbwj5Fl8a9XhcLxSk5W5LaLv3m7rrfAwd8Tyy4bd99a4dLT7Oej/wCCrVp9yleP/wAyujwJ6/v/AMysT/f1hvjHEeOE2lHFw2qU5r+6Di/fGVvgV/EwT7TH4T+8O9iQsyxMd6EJfpqNfBxOxOKf55/OP+XJxslntXnhKvlKm/qWR8P/AFx+qHwpZLOaz2wk/wDKcV8kzkzjj+f9D4UvHVxk9lCku5cUvfLT4EfiYo8bl3srHmWdDJLyUqsnOXWTba8OS8iNst7ceIPiVr4XOHwyjsiVMam+SZTIRsbKxpnmWy5PuiEWE5ldr7SiEjL8Nxu79lb976G/0/pfjX7rfZj9Z+n7qc+XtjUeV4mfTPOegAAAAAAAAAAABrrKLVpJNc00mn5HJiJ8uxv2ctnmX0Ur0lGm1yirRf8AitvI8vrOgx5I3Xif0bcGe9Z1bmHM1WnpzPms3S2x28al6lMkTCnxdLX1kXYr68+UpjayyfA06Kbpp+tZtttt9PAq9Rz5M+ot4hDDjrTwuqVnuePO6yunfslQoroX1rWVM3ls/DroS+FCPxJPwy6EoxRB8SRUUc+HG3O+WcaZbFIcmzZGBbFYhCZbEWROkTiOTkNMXI5Npd09pU22auk6W/UW17e8/wB+6OTJFIXOHskktj6vFjrjrFaxxDzbTNp3KTGRarbEzrj0AAAAAAAAAA8YEHGVLIhKdXKZvVZReWirlcVe5nvSto1aF1bTHhGlXlz1MV+hpPhfXPMeU7KcYvYen9P1Rg6jorUju9l1csWlcxPNvhhdFkqhiLeBk+Hak7gtSLJ1KunszRjvFlFqTHltbLpiEHlyMxo0OQ5d094iUOaGQtFpCxKK6Ntfplsj0ek6C+Xm3Ff91eTJFfxS8OfR4sdcde2sahhtMzO5T6Ui6FcpMGSclvidRZnXAAAAAAAAAB4wIWLp3ISnVzeYYW5TaF1ZUOKwTKpqtiyuq4R9COktok6DRyY3w7tY4TMuU9+vJ+PQ8vN0MxO6ePo01y/VZQrJ7M86+H2ldF22Eii3TRKfe3wxMlz95H4No8OfLLdHG9xKK2R7I+rZHEol22+iM1+968WidaW+iOmqWYLZa+Gpox9DkyTz4Qm1Y93ic576I9XB0FKczzKi+afZNoYex6MQzzKdSplkQrmUqnAnEIylU4nUZb4ok4yDgAAAAAAAAAAYThc46hV8JcjMJRZXV8svyITVOLoFbKO4jNEouh1cl7iPYl3olXIu452Jd6P/AOEktrrwK7Ya28wlGWY8H4GsufvRRboccrI6iXv4ev0XxK//AB9frLv8RLZHC13zS8jsen4/vP4iW2GW1XvN+SRZHRY49kJz2SKOS/1Xfi2y+uGtfEK5yzPusaGWpci2KITdNp4XuJxVHuSYYclpHaRCid0jtujTJac22qJ1xkg49AAAAAAAAAAAADxoDF0wMHRRzTu2EsMuhzTu2t4RdB2ncxeCXQ52u9zF4JdB2nc8/Aroc7Xe57+CXQdp3PVhF0O9rncyWFQ7TuZrDndObZqiNG2apndOMlE6Mkg49AAAAAAAAAAAAAAAAAAAAAsB5YBYBYBYBYD2wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/9k="),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 207,
                  top: 567,
                  child: Container(
                    width: 150,
                    height: 151,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            "data:image/jpeg;base64,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"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 253,
                  top: 626,
                  child: Text(
                    'Corn',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Positioned(
                  left: 0,
                  top: 415,
                  child: SizedBox(width: 420, height: 167),
                ),
                Positioned(
                  left: 311,
                  top: 78,
                  child: Container(
                    width: 65,
                    height: 42,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://png.pngtree.com/png-clipart/20200225/original/pngtree-add-to-cart-icon-in-neon-style-png-image_5276802.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 57,
                  top: 626,
                  child: Text(
                    'Bannana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCropItem(String imageUrl, String cropName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 158,
        height: 158,
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(75),
          ),
        ),
        child: Center(
          child: Text(
            cropName,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

class Farmhelp extends StatefulWidget {
  @override
  _FarmhelpState createState() => _FarmhelpState();
}

class _FarmhelpState extends State<Farmhelp> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const NetworkImage(
                      "https://www.shutterstock.com/image-photo/tractor-spraying-pesticides-on-soybean-600nw-653708227.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'FARM FRIEND',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Farm Help',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3.20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Chat UI
          Container(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 100, 224, 108),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 107, 161, 100),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(_messageController.text);
                  },
                ),
              ],
            ),
          ),
          // Display Messages
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 188, 255, 165),
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 50, 131, 0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Text(
                        _messages[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
        _messageController.clear();
      });
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}

class Profile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff325345),
        ),
        child: Stack(
          children: [
            const Positioned(
              left: 46,
              top: 82,
              child: Text(
                'disease scanning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 46,
              top: 187,
              child: Container(
                width: 313,
                height: 56,
                // color: const Color(0xFFD9D9D9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              left: 216,
              top: 206,
              child: Text(
                '35 C',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              left: 87,
              top: 198,
              child: Text(
                'coimbatore,18\nparty cloudy 22 C',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 275,
              top: 196,
              child: Container(
                width: 50,
                height: 36,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/1779/1779940.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 37,
              top: 317,
              child: Container(
                width: 155,
                height: 95,
                // color: const Color(0xFFD9D9D9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              left: 47,
              top: 372,
              child: Text(
                'Fertilizer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 215,
              top: 317,
              child: Container(
                width: 155,
                height: 98,
                // color: const Color(0xFFD9D9D9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 227,
              top: 325,
              child: Container(
                width: 45,
                height: 47,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn1.iconfinder.com/data/icons/insect-and-pest-control/500/Pest-insect-ban-control_3-512.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 372,
              top: 361,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 229,
              top: 372,
              child: Text(
                'pests and\n disease',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 217,
              top: 468,
              child: Container(
                width: 155,
                height: 90,
                // color: const Color(0xFFD9D9D9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 41,
              top: 468,
              child: Container(
                width: 155,
                height: 90,
                // color: const Color(0xFFD9D9D9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              left: 48,
              top: 510,
              child: Text(
                'cultivatation\n Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              left: 227,
              top: 507,
              child: Text(
                'pests and disease \nAlert',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 41,
              top: 663,
              child: Container(
                width: 333,
                height: 165,
                // color: const Color(0xFFD9D9D9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              left: 271,
              top: 746,
              child: Text(
                'medicine',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              left: 182,
              top: 746,
              child: Text(
                'Diagnosis',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              left: 58,
              top: 604,
              child: Text(
                'Heal your crop',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 77,
              top: 698,
              child: Container(
                width: 54,
                height: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/01/07/57/91/360_F_107579101_QVlTG43Fwg9Q6ggwF436MPIBTVpaKKtb.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 188,
              top: 691,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/9733/9733748.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 280,
              top: 692,
              child: Container(
                width: 50,
                height: 49,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://w7.pngwing.com/pngs/313/516/png-transparent-stethoscope-icon-stethoscope-icon-medical-icons-medical-icon-medicine-doctor-diagnosis-diagnose-clinic-thumbnail.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 60,
              top: 746,
              child: Text(
                'Take picture',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 76,
              top: 784,
              child: Container(
                width: 262,
                height: 29,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              left: 154,
              top: 783,
              child: TextButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Under Development'),
                      content: const Text(
                        "😖",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 75),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                ),
                child: const Text(
                  'Take a picture',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 192,
              top: 361,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Positioned(
              left: 188,
              top: 520,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_sharp),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Positioned(
              left: 373,
              top: 521,
              child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(3.14),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_sharp),
                      onPressed: () {},
                    ),
                  )),
            ),
            Positioned(
              left: 44,
              top: 328,
              child: Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/006/845/382/original/spray-fertilizer-black-glyph-icon-liquid-substance-for-plant-leaves-foliar-supplement-pesticide-spraying-nourish-additive-silhouette-symbol-on-white-space-isolated-illustration-vector.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 45,
              top: 478,
              child: Container(
                width: 41,
                height: 35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://png.pngtree.com/png-clipart/20190619/original/pngtree-vector-idea-icon-png-image_4013855.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 320,
              top: 74,
              child: Container(
                width: 35,
                height: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.iconscout.com/icon/free/png-512/free-qr-scan-3582609-3012544.png?f=webp&w=256"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
