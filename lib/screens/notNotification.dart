import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class NotNotificationFounded extends StatelessWidget {
  const NotNotificationFounded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // top bar
             Container(
               margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   // notification text
        Text('Notification',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),

                ),
                   // setting icon
        Icon(Icons.settings_outlined,
                  color: Colors.black,
                    size: 22,
                  ),
                 ],
               ),
             ),
            
            // image notification 
            Image.asset('assets/images/notifications-rafiki 1.png'),
            // no notification text
            Text('''No notification,
         yet!''',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
            ),
    SizedBox(height: 15,),
            // lorem text
            Text('''                                                                                                  
Lorem ipsum dolor sit amet, consectetur
 adipiscing elit, sed do eiusmod tempor
        incididunt dolore magna aliqua''',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xff6F6F79),
              ),
            ),

            SizedBox(height: 10,),


      ],
      ),

      ),
      bottomNavigationBar: SalomonBottomBar(
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.blue,
          ),

          /// Message
          SalomonBottomBarItem(
            icon: Icon(Icons.messenger_outline_rounded),
            title: Text("Message"),
            selectedColor: Colors.blue,
          ),

          /// notification
          SalomonBottomBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            title: Text("notification"),
            selectedColor: Colors.blue,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
