import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/index.dart';
import 'package:paternproject/utility/appColors.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Container(
          height: 360.w,
          width: 780.h,
          child: _buildPageHeadTitle(controller.title)),
    );
  }

  Widget _buildPageHeadTitle(String title) {
    return Container(
      child: Row(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                title,
                style:  TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
