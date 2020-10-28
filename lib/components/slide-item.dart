import 'package:ebigwin/config/config.dart';
import 'package:ebigwin/helpers/colors.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatefulWidget {
  final String img;
  final String title;
  final String address;
  final String rating;

  SlideItem({
    Key key,
    @required this.img,
    @required this.title,
    @required this.address,
    @required this.rating,
  }) : super(key: key);

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(0.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 3.0,
        color: HexColor(Constants.lightPrimary),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Text(
                          "Water Bottle (Nestle)",
                          style: Constants.headline1,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          "An authentic potsticker recipe using ground beef and ground shrimp",
                          style: Constants.bodyText1,
                        ),
                        Flex(
                          direction: Axis.horizontal,
                          children: [
                            IconButton(
                              padding: EdgeInsets.all(0.0),
                              alignment: Alignment.centerLeft,
                              icon: Icon(
                                Icons.attach_money_sharp,
                                size: 24.0,
                                color: Constants.bodyText2.color,
                              ),
                              onPressed: null,
                            ),
                            Text(
                              "\$96",
                              style: Constants.bodyText2,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: (MediaQuery.of(context).size.height * 0.24) - 8.0,
                    width: MediaQuery.of(context).size.width - 8.0,
                    padding: EdgeInsets.all(0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        "${widget.img}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 12.0,
              right: 24.0,
              child: Container(
                height: 24.0,
                decoration: BoxDecoration(
                  color: HexColor('#EFEEEE'),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: FlatButton(
                  onPressed: () => {},
                  child: Text(
                    "shop this",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
