import 'package:ebigwin/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:ebigwin/components/bottom/bottom-navigation-bar.dart';

class CartScreen extends StatelessWidget {
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

 
  Widget _buildSingleContainerText({String name, Color color}) {
    return Text(
      name,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      ),
    );
  }

  Widget _buildTopContainerAllTextPart() {
    return Container(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSingleContainerText(
                  name: "The Fault In Our",
                  color: Colors.black,
                ),
                _buildSingleContainerText(
                  name: "Star",
                  color: Colors.black,
                ),
              ],
            ),
          ),
          _buildSingleContainerText(
            name: "Remove",
            color: Color(0xffD14937),
          ),
        ],
      ),
    );
  }

  Widget _buildCounterPart(context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add_circle,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
              _buildSingleContainerText(
                  name: "1", color: Theme.of(context).primaryColor),
              Icon(
                Icons.remove_circle,
                size: 30,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerTopPart(context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Stack(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image(
                      width: 110,
                      image: AssetImage(
                        "assets/images/waterbottle.png",
                      ),
                    ),
                  ),
                  _buildTopContainerAllTextPart(),
                ],
              ),
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: _buildCounterPart(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSingleProduct(context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 190,
        child: Column(
          children: [
            _buildContainerTopPart(context),
          ],
        ),
      ),
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
              _buildSingleProduct(context),
              SizedBox(
                height: 12.0,
              ),
              _buildSingleProduct(context),
              SizedBox(
                height: 12.0,
              ),
              _buildSingleProduct(context),
              SizedBox(
                height: 12.0,
              ),
              _buildSingleProduct(context),
              SizedBox(
                height: 12.0,
              ),
              _buildSingleProduct(context),
            ],
          ),
        ),
      ),
    );
  }
}
