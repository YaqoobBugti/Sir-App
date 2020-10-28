import 'package:ebigwin/components/slide-item.dart';
import 'package:ebigwin/config/config.dart';
import 'package:ebigwin/config/data.dart';
import 'package:ebigwin/helpers/colors.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _page = 0;

  List icons = [
    Icons.home,
    Icons.label,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(24.0),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: [
                Image(
                  image: AssetImage('assets/logo/ebigwin.png'),
                ),
                Text(
                  "Shop & Win",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: HexColor('#0F375B'),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            120.0,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Column(
              children: [
                buildCampaignItem(context),
                SizedBox(height: 24.0),
                Container(
                  height: 136.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: HexColor(Constants.lightPrimary),
                  ),
                  child: Card(
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "Hello",
                        style: Constants.headline1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ), Container(
                  height: 136.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: HexColor(Constants.lightPrimary),
                  ),
                  child: Card(
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "Hello",
                        style: Constants.headline1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ), Container(
                  height: 136.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: HexColor(Constants.lightPrimary),
                  ),
                  child: Card(
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "Hello",
                        style: Constants.headline1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 7),
                buildTabIcon(0),
                buildTabIcon(1),
                buildTabIcon(2),
                buildTabIcon(3),
                buildTabIcon(4),
                SizedBox(width: 7),
              ],
            ),
          ),
          color: Theme.of(context).primaryColor,
          shape: CircularNotchedRectangle(),
        ),
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 10.0,
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  buildTabIcon(int index) {
    if (index == 2) {
      return IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
          color: Colors.transparent,
        ),
        onPressed: null,
      );
    } else {
      return IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
          color: Colors.white,
        ),
        color: _page == index
            ? Theme.of(context).primaryColorLight
            : Theme.of(context).textTheme.caption.color,
        onPressed: () => {},
      );
    }
  }
}

buildCampaignItem(BuildContext context) {
  return Container(
    height: 320.0,
    padding: EdgeInsets.all(0.0),
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: restaurants == null ? 0 : restaurants.length,
      itemBuilder: (BuildContext context, int index) {
        Map restaurant = restaurants[index];
        return SlideItem(
          img: restaurant["img"],
          title: restaurant["title"],
          address: restaurant["address"],
          rating: restaurant["rating"],
        );
      },
    ),
  );
}
