import 'package:ebigwin/pages/register.dart';
import 'package:flutter/material.dart';

class EAppBar extends StatefulWidget {
  @override
  _EAppBarState createState() => _EAppBarState();
}

class _EAppBarState extends State<EAppBar> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 64.0,
      elevation: 0.0,
      title: Text(
        "Discover",
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
}
