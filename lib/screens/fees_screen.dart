import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/add_gurdian.dart';

class FeesScreen extends StatelessWidget {
  const FeesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                    Stack(

                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15,left: 340),
                          child: Column(
                            children: [
                              //skip text
                               Text('Skip',
                                  style: TextStyle(
                                    color: Color(0xff848587),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                SizedBox(height: 220,),

                               //yellow ellipse small
                               Image.asset('assets/images/Ellipse 195.png',
                                height: 25,
                                   width: 25,
                               ),

                            ],
                          ),
                        ),

                        //ellipses image
                        Container(
                          child: Image.asset('assets/images/Ornament-1.png',
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 65,left: 35),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fees',
                                style: TextStyle(
                                  fontSize: 35 ,
                                  fontWeight: FontWeight.w600,
                                ),),
                              SizedBox(height: 20,),
                              Text('''Lorem ipsum dolor sit amet,       
consectetur adipiscing elit, sed do
eiusmod tempor incididunt dolore
magna aliqua''',
                                maxLines: 4,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff6F6F79),
                                ),
                              ),
                              SizedBox(height: 28,),

                              Image.asset('assets/images/Ellipse 194.png',
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                        ),





                      ],),


               // red ellipse and girl and button
                Stack(
                  children: [
                   //*********************** الاصفر اللى جنب صورة البنت
               // Image.asset('assets/images/Ellipse 198.png',
               //   height: 15,width: 15,
               // ),
               //************************

               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // red ellipse left
                      Image.asset('assets/images/Ellipse 197.png',
                        height: 40,
                        width: 20,
                      ),

                         //girl image ***************** الحجم فيه مشكلة
                        Image.asset('assets/images/young-smiling-student-woman-white-background__1_-removebg-preview 1.png',
                            height: 400,
                            // width: 350,

                          ),



                    ],
                  ),
               Container(
                   width: 350,
                   height: 52,
                   margin: EdgeInsets.only(left: 15,right: 15,top: 345),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xff4E74F9),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12), // <-- Radius
                       ),
                     ),
                     onPressed: () {
                       print('next');
                     },

                     child:GestureDetector(
                       onTap: () {
                         Navigator.of(context).push(
                           MaterialPageRoute(
                             builder: (context) => AddGurdian_Screen(),
                           ),
                         );
                       },
                       child:Text(
                         'Next',
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

                // fees text and lorem text


                // shapes
                //
                // girl image








              ],
            ),
          ),





    );
  }
}
