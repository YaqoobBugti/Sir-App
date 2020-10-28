import 'package:ebigwin/components/card/credit_card_widget.dart';
import 'package:ebigwin/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:ebigwin/components/bottom/bottom-navigation-bar.dart';

class CheckoutScreen extends StatelessWidget {
  Widget _buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 64.0,
      elevation: 0.0,
      title: Text(
        "CART",
        style: TextStyle(
          color: Color(0xff0F375B),
          fontWeight: FontWeight.w700,
          fontSize: 30,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
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
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                height: 40,
                width: 40,
                image: AssetImage(
                  "assets/images/avatar.png",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: _buildAppbar(context),
      bottomNavigationBar: BottomNav(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
            CreditCardsPage()
            ],
          ),
        ),
      ),
    );
  }
}
