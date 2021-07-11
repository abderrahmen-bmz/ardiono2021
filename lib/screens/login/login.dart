import 'package:flutter/material.dart';
import 'package:book_club/screens/login/localwidgets/login_form.dart';

class OurLogin extends StatelessWidget {
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
                Padding(
                  padding: EdgeInsets.all(40.0),
                //  child: Image.asset(""),
                child: Text('LOGIN '),
                ),
                OurLoginForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
