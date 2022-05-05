import 'package:flutter/material.dart';
import 'package:travel/size_config.dart';

class main_title extends StatelessWidget {
  const main_title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 15),
            constraints:
                BoxConstraints(maxWidth: getProportionateScreenWidth(340)),
            child: Text(
              "THE COFFEE HOUSE'S REWARD",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            )),
        Container(
            padding: EdgeInsets.only(top: 8),
            constraints:
                BoxConstraints(maxWidth: getProportionateScreenWidth(250)),
            child: Text(
              "Với The Coffee House's Reward",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            )),
      ],
    );
  }
}
