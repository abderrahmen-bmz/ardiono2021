import 'package:book_club/screens/signup/localwidgets/signup_form.dart';
import 'package:flutter/material.dart';

class OurSignUp extends StatefulWidget {
  @override
  _OurSignUpState createState() => _OurSignUpState();
}

class _OurSignUpState extends State<OurSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BackButton(),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                OurSignUpForm()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
