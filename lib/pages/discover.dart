import 'package:ebigwin/pages/register.dart';
import 'package:ebigwin/components/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:ebigwin/components/bottom/bottom-navigation-bar.dart';

class DiscoverScreen extends StatelessWidget {
  Widget _buildContainerBottom(context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image(
                  height: 160,
                  width: 1160,
                  image: AssetImage(
                    "assets/images/cap.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildSingleContainerText(
                      name: "USD 1000",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
        height: 380,
        child: Column(
          children: [
            _buildContainerTopPart(context),
            _buildContainerBottom(context),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: PreferredSize(child: EAppBar(), preferredSize: null),
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
                height: 20,
              ),
              _buildSingleProduct(context),
            ],
          ),
        ),
      ),
    );
  }
}
