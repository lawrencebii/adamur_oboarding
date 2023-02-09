import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/colors.dart';
import '../helpers/constants.dart';
import 'custom_text.dart';

class CryptoItem extends StatelessWidget {
  bool? isgreen;
  String? currency;
  String? rise;
  String? amount;

  CryptoItem({Key? key, this.amount, this.currency, this.isgreen, this.rise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 132,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: greenIcon, borderRadius: BorderRadius.circular(8)),
                child: SvgPicture.asset(svgPath + "tee.svg"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 20,
                      width: 32,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [whiteText, black])),
                      child: SvgPicture.asset(svgPath + "red.svg",
                          color: isgreen! ? red : greenText)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        svgPath + "arrow.svg",
                        color: isgreen! ? red : greenText,
                      ),
                      Customtext(
                        text: rise!,
                        fontweight: FontWeight.w500,
                        fs: 10,
                        color: isgreen! ? greenText : red,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Customtext(
            text: currency!,
            fontweight: FontWeight.w600,
            fs: 12,
            color: orangeColor,
          ),
          Customtext(
            text: amount!,
            fontweight: FontWeight.w500,
            fs: 10,
            color: shadedText,
          ),
        ],
      ),
    );
  }
}
