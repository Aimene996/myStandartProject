import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/pages/frame/login_screen/controller.dart';
import 'package:paternproject/pages/frame/signIn/index.dart';
import 'package:paternproject/widgets/Custom_textField.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              TextFiels(
                  textEditingController: emailController,
                  suffixicon: Icon(Icons.email_outlined),
                  icon: Icon(Icons.email_outlined),
                  hintText: "Enter An Email",
                  textInputKind: TextInputType.emailAddress),
              const SizedBox(
                height: 8,
              ),
              TextFiels(
                textEditingController: passwordController,
                suffixicon: Icon(Icons.email_outlined),
                icon: Icon(Icons.email_outlined),
                hintText: "Enter An Email",
                textInputKind: TextInputType.visiblePassword,
                isPass: true,
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.blue,
                    ),
                    child: const Text("Login"),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      "I dont have account  ?  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignInScreen());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        "Registration  ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
