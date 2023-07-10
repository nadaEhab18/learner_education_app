import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/childernStaff_screen.dart';

class Children extends StatelessWidget {
  const Children({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   /// column 1
                   Column(
                     children: [
                       Stack(
                         children: [
                           Container(
                             margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                             child: Image.asset('assets/images/Rectangle 1184.png',
                               height: 180,
                               width: 160,
                             ),
                           ),
                           Image.asset('assets/images/child1.png',
                             height: 213,
                            width: 205,
                           ),
                         ],
                       ),
                       Stack(
                         children: [
                           Container(
                           //  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                             child: Image.asset('assets/images/Rectangle 1186.png',
                               height: 130,
                              //width: 150,
                             ),
                           ),
                           Image.asset('assets/images/child3.png',
                             height: 136,
                             // width: 170,
                           ),
                         ],
                       ),
                       Stack(
                         children: [
                           Container(
                             //  margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                             child: Image.asset('assets/images/Rectangle 1188.png',
                               height: 150,
                               //width: 160,
                             ),
                           ),
                           Image.asset('assets/images/child5.png',
                             height: 150,
                              width: 170,
                           ),
                         ],
                       ),

                     ],
                   ),


                   ///column2
                   Column(
                     children: [
                       Stack(
                         children: [
                           Container(
                             // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                             child: Image.asset('assets/images/Rectangle 1185.png',
                               height: 245,
                               width: 180,
                             ),
                           ),
                           Image.asset('assets/images/child2.png',
                             height: 239,
                             width: 220,),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Stack(
                         children: [
                           Container(
                             // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                             child: Image.asset('assets/images/Rectangle 1187.png',
                               height: 170,
                               //width: 150,
                             ),
                           ),
                           Image.asset('assets/images/child4.png',
                             height: 170,
                             width: 160,
    ),
                         ],
                       ),

                     ],
                   ),
                 ],
               ),

              /// text
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: Text('True masters in their fields, ready to teach you',
                  maxLines: 3,
                  style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 30,
                 ),
                ),
              ),

              /// button meet experts
              Container(
                width: 160,
                height: 52,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4E74F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    print('Meet experts');
                  },

                  child:GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ChildrenStaff_Screen(),
                        ),
                      );
                    },
                    child:Text(
                      'Meet experts',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17
                      ),

                    ),
                  ),

                ),

              ),

             SizedBox(height: 10,),
              /// bottom bar
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.blue,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                onTap: (value) {
                  // Respond to item press.
                },
                items: [

                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined,
                      color: Colors.blue,
                    ),
                    label: 'Home',


                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.messenger_outline,
                      color: Colors.blue,
                    ),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none_outlined,
                      color: Colors.blue,
                    ),
                    label: 'Notification',



                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline,
                      color: Colors.blue,
                    ),
                    label: 'User',



                  ),



                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Person extends StatelessWidget {
  final String imageRectangle;
  final String imagePerson;
  final double imageHeight;
  final double imageWidth;
  final double personHeight;
  final double personWidth;

  const Person({
    Key? key, required this.imageRectangle, required this.imagePerson, required this.imageHeight, required this.imageWidth, required this.personHeight, required this.personWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: Image.asset(imageRectangle,
          height: imageHeight,
            width: imageWidth,
          ),
        ),
        Image.asset(imagePerson,
        height: personHeight,
            width: personWidth,),
      ],
    );
  }
}
