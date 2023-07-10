
import 'package:flutter/material.dart';

class MobileTextField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const MobileTextField(
      {Key? key,
        required this.hint,
        required this.icon,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: Color(0xffA3A3AE),
          ),
          hintText: hint,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
              borderRadius : BorderRadius.all(Radius.circular(14.0))
          ),

        ),
      ),
    );
  }
}
