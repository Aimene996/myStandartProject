import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/index.dart';
import 'package:paternproject/utility/appColors.dart';

class LoginScreen extends GetView<WelcomeController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

          child: Text('Login')),
    );
  }


}
