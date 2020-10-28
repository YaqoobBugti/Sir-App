import 'package:ebigwin/pages/discover.dart';
import 'package:ebigwin/pages/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget _buildTopSingleButton(
      {String name,
      double leftCircular,
      double rightCircular,
      Color buttonColor,
      Color textColor,
      Function onPressed}) {
    return Expanded(
      child: Container(
        height: 64.0,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(leftCircular),
            topRight: Radius.circular(rightCircular),
          ),
        ),
        child: FlatButton(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(rightCircular),
              topLeft: Radius.circular(leftCircular),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20.0,
              color: textColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSingleUnderlineText({String name}) {
    return Text(
      name,
      style: TextStyle(
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.wavy,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontSize: 12,
      ),
    );
  }

  Widget _buildSingleTextField({String name, bool obscureText}) {
    return Expanded(
      child: Column(
        children: [
          TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 24,
                top: 16.0,
                bottom: 16.0,
              ),
              hintText: name,
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          SizedBox(height: 12.0)
        ],
      ),
    );
  }

   
  Widget _buildWithoutUnderlineText({String name}) {
    return Text(
      name,
      style: TextStyle(color: Colors.white, fontSize: 10),
    );
  }

  Widget _buildTopButtonPart(context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0, top: 24.0),
      child: Row(
        children: [
          _buildTopSingleButton(
            buttonColor: Colors.white,
            leftCircular: 20,
            rightCircular: 0,
            name: "Login",
            onPressed: () {},
            textColor: Theme.of(context).primaryColor,
          ),
          _buildTopSingleButton(
            buttonColor: Theme.of(context).primaryColor,
            leftCircular: 0,
            rightCircular: 0,
            name: "Register",
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => RegisterScreen(),
                  transitionsBuilder: (c, anim, a2, child) =>
                      FadeTransition(opacity: anim, child: child),
                  transitionDuration: Duration(milliseconds: 800),
                ),
              );
            },
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

 
  Widget _buildEmailAndPasswordPart() {
    return Column(
      children: [
        Row(
          children: [
            _buildSingleTextField(
              name: "Email",
              obscureText: false,
            ),
          ],
        ),
        Row(
          children: [
            _buildSingleTextField(
              name: "Password",
              obscureText: true,
            ),
          ],
        ),
      ],
    );
  }

 

  Widget _buildPolicyTextPart(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.0,
        bottom: 12.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              _buildWithoutUnderlineText(
                  name: "By signing up you agree to our "),
              _buildSingleUnderlineText(name: "User Agreement"),
            ],
          ),
          Row(
            children: [
              _buildSingleUnderlineText(
                name: "Privacy Policy",
              ),
              _buildWithoutUnderlineText(
                name: "and ",
              ),
              _buildSingleUnderlineText(
                name: "Draw Terms & Conditions",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPolicyButton(context) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(
        top: 12.0,
        bottom: 12.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: RaisedButton(
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (c, a1, a2) => DiscoverScreen(),
              transitionsBuilder: (c, anim, a2, child) =>
                  FadeTransition(opacity: anim, child: child),
              transitionDuration: Duration(milliseconds: 800),
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(
              24.0,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Please Login",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                _buildTopButtonPart(context),
                SizedBox(
                  height: 10,
                ),
                _buildEmailAndPasswordPart(),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 30,
                        color: Colors.white,
                      ),
                      _buildPolicyTextPart(context),
                    ],
                  ),
                ),
                _buildPolicyButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
