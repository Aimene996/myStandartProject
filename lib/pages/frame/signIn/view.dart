// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/routes/name.dart';
import 'package:paternproject/utility/appColors.dart';

import 'controller.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    child: const Text(
                      "Aplico",
                      style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () async {
                      controller.handleSignIn("google");
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(color: AppColors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 2,
                            spreadRadius: 1)
                      ]),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 30),
                            child: Image(
                                height: 35,
                                width: 35,
                                image: NetworkImage(
                                    'https://companieslogo.com/img/orig/GOOG-0ed88f7c.png?t=1633218227')),
                          ),
                          Text("Sign In With Google")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 015,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: AppColors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          offset: const Offset(0, 1),
                          blurRadius: 2,
                          spreadRadius: 1)
                    ]),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, right: 30),
                          child: Image(
                              height: 35,
                              width: 35,
                              image: NetworkImage(
                                  'https://e7.pngegg.com/pngimages/991/568/png-clipart-facebook-logo-computer-icons-facebook-logo-facebook-thumbnail.png')),
                        ),
                        Text("Sign In With Facebook")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: AppColors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          offset: const Offset(0, 1),
                          blurRadius: 2,
                          spreadRadius: 1)
                    ]),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, right: 30),
                          child: Image(
                              height: 35,
                              width: 35,
                              image: NetworkImage(
                                  'https://e7.pngegg.com/pngimages/924/674/png-clipart-ipad-4-apple-logo-desktop-apple-heart-computer-thumbnail.png')),
                        ),
                        Text("Sign In With Apple")
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            color: AppColors.grey,
                            height: 1,
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: const Text('or'),
                        ),
                        Expanded(
                          child: Container(
                            color: AppColors.grey,
                            height: 1,
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.handleSignIn("phone");
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(color: AppColors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 2,
                            spreadRadius: 1)
                      ]),
                      height: 50,
                      width: double.infinity,
                      child: const Center(
                        child: Text("Sign In With Phone Number"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Already have Account   '),
                        Text(
                          'Login ',
                          style: TextStyle(
                              color: AppColors.primaryColors,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.offAllNamed(AppRouts.feed);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.primaryColors,
                            borderRadius: BorderRadius.circular(17)),
                        height: 40,
                        width: double.infinity,
                        child: Center(
                          child: Text('Go to Feed'),
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
