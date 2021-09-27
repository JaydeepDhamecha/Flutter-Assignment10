import 'package:flutter/material.dart';

import 'CommonTextStyle.dart';

class CommonDrawerText extends StatelessWidget {
  CommonDrawerText({
    Key? key,
    required this.name,
    required this.iconsName,
    required this.screenName,
  }) : super(key: key);
  final String name;
  final String iconsName;
  final Widget screenName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => screenName),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Image(
                  image: AssetImage('assets/images/$iconsName.png'),
                  color: Color(0xFF303F9F),
                  width: 30,
                  height: 30,
                ),
              ),
              Text(name,
                  style: MyTextStyle(size: 25, color: Color(0xFF303F9F), fontFamily: "WonderLand")),
            ],
          ),
        ));
  }
}
