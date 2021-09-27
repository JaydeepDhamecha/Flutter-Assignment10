import 'package:flutter/material.dart';
import 'package:projects/Assignment7.dart';

import '../../Assignment9Screen1.dart';
import '../../Assignment9Screen2.dart';
import '../HomeScreen.dart';
import 'CommonDrawerText.dart';
import 'CommonTextStyle.dart';

class CommonDrawer extends StatefulWidget {
  const CommonDrawer({Key? key}) : super(key: key);

  @override
  _CommonDrawerState createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF303F9F),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(width: 80, height: 80, decoration: myBoxDecoration()),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text("Jaydeep Dhamecha",
                          style: MyTextStyle(size: 20, color: Colors.white)))
                ],
              ),
            )),
        CommonDrawerText(
          name: "Home",
          iconsName: "ic_home_normal",
          screenName: HomeScreen(),
        ),
        CommonDrawerText(name: "Circuit View", iconsName: "ic_home_normal", screenName: Screen1()),
        CommonDrawerText(name: "Permit", iconsName: "ic_home_normal", screenName: Screen2()),
        CommonDrawerText(name: "Register", iconsName: "ic_home_normal", screenName: Assignment7()),
        CommonDrawerText(name: "Completions", iconsName: "ic_home_normal", screenName: Screen1()),
        Expanded(child: Container()),
        CommonDrawerText(name: "Logout", iconsName: "ic_home_normal", screenName: Screen1()),
      ]),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              'https://lh3.googleusercontent.com/a-/AOh14GizLrhLqWyKzv7Yv_3BqfIDcPXZmc_18vWMT1GcYeo'),
          fit: BoxFit.cover),
      border: Border.all(color: Colors.blue, width: 4.0),
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
    );
  }
}
