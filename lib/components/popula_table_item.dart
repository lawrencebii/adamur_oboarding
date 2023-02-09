import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import 'custom_text.dart';

class PopularTableItem extends StatelessWidget {
  String? companyName;
  String? pple;
  PopularTableItem({Key? key, this.companyName, this.pple}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 64,
              width: 64,
              margin: EdgeInsets.only(top: 15, right: 12),
              decoration: BoxDecoration(
                color: whiteText,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/squad.png"),
                ),
              ),
              // child: SvgPicture.asset(svgPath + "squad.svg"),
            ),
            Positioned(
              bottom: 3,
              right: 4,
              child: SizedBox(
                height: 25,
                width: 25,
                child: PhysicalModel(
                  elevation: 2,
                  color: whiteText,
                  borderRadius: BorderRadius.circular(4),
                  child: Center(
                      child: Icon(
                    Icons.explore_sharp,
                    color: black,
                    size: 18,
                  )),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Customtext(
          text: "#" + companyName!,
          fontweight: FontWeight.w600,
          fs: 12,
          color: orangeColor,
        ),
        Customtext(
          text: pple!,
          fontweight: FontWeight.w500,
          fs: 10,
          color: shadedText,
        ),
      ],
    );
  }
}
