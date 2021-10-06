import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIconTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset('images/bizologo.png'),
            width: 220.0,
            height: 220.0,
          ),
          SizedBox(width: 0.0),

        ],
      ),
    );
  }
}
