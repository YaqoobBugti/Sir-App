import 'package:ebigwin/pages/discover.dart';
import 'package:ebigwin/pages/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
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
              topLeft: Radius.circular(leftCircular),
              topRight: Radius.circular(rightCircular),
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

  Widget _buildPhoneTextField(context) {
    return Expanded(
      flex: 2,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Mobile Number",
          hintStyle: TextStyle(
            fontSize: 12.0,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {},
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
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
            buttonColor: Theme.of(context).primaryColor,
            rightCircular: 0,
            leftCircular: 0,
            name: "Login",
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => LoginScreen(),
                  transitionsBuilder: (c, anim, a2, child) =>
                      FadeTransition(opacity: anim, child: child),
                  transitionDuration: Duration(milliseconds: 800),
                ),
              );
            },
          ),
          _buildTopSingleButton(
            buttonColor: Colors.white,
            leftCircular: 0,
            rightCircular: 20,
            name: "Register",
            textColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  Widget _buildNamePart() {
    return Row(
      children: [
        _buildSingleTextField(
          name: "First Name",
          obscureText: false,
        ),
        SizedBox(
          width: 6.0,
        ),
        _buildSingleTextField(
          name: "Last Name",
          obscureText: false,
        ),
      ],
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
        Row(
          children: [
            _buildSingleTextField(
              name: "Confirm Password",
              obscureText: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCountryPart() {
    return Expanded(
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ListTile(
          leading: Image(
            height: 30,
            width: 30,
            image: AssetImage(
              "assets/images/flag.png",
            ),
          ),
          trailing: CircleAvatar(
            maxRadius: 12,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
        ),
      ),
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
          "Register",
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
                    "Please Register",
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
                _buildNamePart(),
                _buildEmailAndPasswordPart(),
                Row(
                  children: [
                    _buildCountryPart(),
                    SizedBox(
                      width: 10,
                    ),
                    _buildPhoneTextField(context),
                  ],
                ),
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
