import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //80% of screen width
    double c_width = MediaQuery.of(context).size.width * 0.8;
    return Container(
      // width: c_width,
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[
          SizedBox(
              height: 50, width: 300, child: Image.asset('assets/logo.png')),
          Text('\nTake It or Leave It\n',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
