import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../core/colors.dart';
import '../../core/routes/app_pages.dart';
import '../../core/widgets/custom_app_bar.dart';
import '../../core/widgets/my_text.dart';

class PlayerEducationView extends StatefulWidget {
  const PlayerEducationView({Key? key}) : super(key: key);

  @override
  State<PlayerEducationView> createState() => _PlayerEducationViewState();
}

class _PlayerEducationViewState extends State<PlayerEducationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kScaffoldBkgDecoration,
      child: Scaffold(
        appBar: CustomAppBar(
          title: "T.A.P.E.S",
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: MyText(
                text: "This Week",
                size: 20.sp,
                weight: FontWeight.w500,
                color: kWhiteColor,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: 383.w,
              height: 527.h,
              color: Color(0xffF4F5FA),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.TECHNINCALFORM),
                      child: MyText(
                        text: "Edit",
                        size: 14.sp,
                        weight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Education",
                        size: 20.sp,
                        weight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      CircularPercentIndicator(
                        backgroundColor: Color(0xff3DA9FC).withOpacity(0.5),
                        radius: 40.0,
                        lineWidth: 5.0,
                        animation: true,
                        percent: 0.67,
                        center: new Text(
                          "67%",
                          style: new TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16.sp),
                        ),
                        progressColor: Color(0xff3DA9FC),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 31.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "Touch",
                                  size: 20.sp,
                                  weight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 213.w,
                                  child: LinearProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xff3DA9FC)),
                                    backgroundColor:
                                        Color(0xff3DA9FC).withOpacity(0.2),
                                    value: 0.9,
                                    minHeight: 10.h,
                                  ),
                                ),
                              ],
                            ),
                            MyText(
                              text: "+5",
                              size: 24.sp,
                              weight: FontWeight.w400,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "Intelligence",
                                  size: 20.sp,
                                  weight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                SizedBox(
                                  width: 213.w,
                                  child: LinearProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xff3DA9FC)),
                                    backgroundColor:
                                        Color(0xff3DA9FC).withOpacity(0.2),
                                    value: 0.5,
                                    minHeight: 10.h,
                                  ),
                                ),
                              ],
                            ),
                            MyText(
                              text: "-2",
                              size: 24.sp,
                              weight: FontWeight.w400,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
