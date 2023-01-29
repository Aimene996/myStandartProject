import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/index.dart';
import 'package:paternproject/utility/appColors.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: AppColors.primaryColors,
          child: _buildPageHeadTitle(controller.title)),
    );
  }

  Widget _buildPageHeadTitle(String title) {
    return Container(
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
      ),
    );
  }
}
