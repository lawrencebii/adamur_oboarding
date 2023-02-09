import 'package:adamur_oboarding/components/crypto.dart';
import 'package:adamur_oboarding/components/popula_table_item.dart';
import 'package:adamur_oboarding/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_text.dart';
import '../helpers/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.r, right: 12.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(svgPath + 'back.svg'),
                      SvgPicture.asset(svgPath + 'haba.svg'),
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/profile.png")),
                            shape: BoxShape.circle),
                        // child: SvgPicture.asset(
                        //   svgPath + 'profile.svg',
                        //   height: 36,
                        //   width: 36,
                        // ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Popular Tables',
                    style: GoogleFonts.inter(
                      color: whiteText,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      ...List.generate(
                          13,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: PopularTableItem(
                                  companyName: "Defi",
                                  pple: "13$index people",
                                ),
                              ))
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 39,
                        width: 159,
                        decoration: BoxDecoration(
                            color: whiteText,
                            borderRadius: BorderRadius.circular(36)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.workspace_premium,
                              color: darkIcon,
                            ),
                            Customtext(
                              text: "Today’s best",
                              fontweight: FontWeight.w600,
                              fs: 12,
                              color: darkIcon,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 39,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(36)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.visibility,
                              color: whiteText,
                            ),
                            Customtext(
                              text: "My Roundtable",
                              fontweight: FontWeight.w600,
                              fs: 13,
                              color: whiteText,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Crypto',
                    style: GoogleFonts.inter(
                      color: whiteText,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            10,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CryptoItem(
                                    isgreen: index.isEven,
                                    amount: "124.5k",
                                    rise: index.toString() + "1%",
                                    currency: "USDT",
                                  ),
                                ))
                      ],
                    ),
                  ),
                  Text(
                    'Stonks',
                    style: GoogleFonts.inter(
                      color: whiteText,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            10,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CryptoItem(
                                    isgreen: index.isEven,
                                    amount: "124.5k",
                                    rise: index.toString() + "1%",
                                    currency: "USDT",
                                  ),
                                ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  height: 78,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: shade)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.wallet_giftcard,
                        color: orangeColor,
                      ),
                      Icon(
                        Icons.notifications,
                        color: orangeColor,
                      ),
                      Icon(
                        Icons.settings,
                        color: orangeColor,
                      ),
                    ],
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
