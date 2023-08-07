import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/fees_screen.dart';
//import 'package:learner_education_app/screens/fees_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double heightScreen = MediaQuery.of(context).size.height;
    //double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.symmetric(vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // purple ellipse => left
                    Image.asset(
                      'assets/images/Ellipse 196.png',
                      height: 96,
                      width: 42,
                    ),

                    // yellow ellipse => right
                    Image.asset(
                      'assets/images/Ellipse 192.png',
                      height: 180,
                      width: 70,
                    ),
                  ],
                ),

                //girl image & three ellipses
                Stack(
                  alignment: Alignment(-1.2, 0.8),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 70, bottom: 220),
                      child: Image.asset(
                        'assets/images/Ellipse 195.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 280, top: 80),
                      child: Image.asset(
                        'assets/images/Ellipse 194.png',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Image.asset(
                      'assets/images/redEllipse.png',
                      height: 190,
                      width: 190,
                      // alignment: Alignment.bottomCenter,
                    ),
                    Image.asset(
                      'assets/images/woman-with-laptop-computer-sitting-floor-isolated-white-removebg-preview (1) 1.png',
                      height: 360,
                      width: 320,
                    ),
                  ],
                ),

                // welcome text
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '  Learner',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '''
     Lorem ipsum dolor sit amet, consectetur
      adipiscing elit, sed do eiusmod tempor 
             incididunt dolore magna aliqua''',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6F6F79),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff4E74F9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      print('Get Started');
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FeesScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
