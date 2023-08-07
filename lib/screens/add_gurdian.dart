import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/noSubjectAdded.dart';
import 'package:learner_education_app/widgets/custome_mobileTextField.dart';

class AddGurdian_Screen extends StatelessWidget {
  const AddGurdian_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back), // ايكون ولا iconButton ولا push
              SizedBox(
                height: 20,
              ),

              // Add a guardian text
              Text(
                'Add a gurdian',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // Give access text
              Text(
                'Give access to another guardian',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4E74F9),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // Mobile
              Text(
                'Mobile',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              // mobile textField
              MobileTextField(
                  hint: '91+9876543210', icon: Icons.phone_android_outlined),
              SizedBox(
                height: 10,
              ),
              // Mobile confirm
              Text(
                'Confirm mobile',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              // mobile textField  = > شكل الموبيل مختلف
              MobileTextField(
                  hint: '91+9876543210', icon: Icons.phone_android_outlined),
              SizedBox(
                height: 15,
              ),

              // give access button
              Container(
                width: 380,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    print('Get Started');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff4E74F9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NoSubjectAdded_Screen(),
                        ),
                      );
                    },
                    child: Text(
                      'Give Access',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
