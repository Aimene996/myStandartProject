import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/utility/appColors.dart';
import '../../../../widgets/Custom_textField.dart';
import 'FeedController.dart';

class FeedPage extends GetView<FeedController> {
  FeedPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        width: 40,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu_outlined,
                              color: AppColors.black,
                            ))),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        width: 40,
                        child: CircleAvatar(
                          backgroundColor: Colors.pinkAccent.shade100,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  "Welcome in Aplico Market",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: TextFiels(
                          suffixicon: const Icon(
                            Icons.dialer_sip,
                          ),
                          icon: const Icon(Icons.search_outlined),
                          textEditingController: controller.inputController,
                          hintText: controller.hintText,
                          textInputKind: TextInputType.text),
                    ),
                  ),
                  Container(
                    width: 14,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        width: 40,
                        child: IconButton(
                            onPressed: () {
                              controller.clearInput();
                            },
                            icon: const Icon(
                              Icons.filter_alt_rounded,
                              color: AppColors.black,
                            ))),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: _buildTabBar(),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Market",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(10),
                        height: 200.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.gradientTopLeft,
                            AppColors.black
                          ]),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 140.0,
                              width: 150.0,
                              child: Stack(children: [
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    height: 120.0,
                                    width: 130.0,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1674784722614-451bbad3f507?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                  ),
                                ),
                                Positioned(
                                    right: 10.0,
                                    top: 10.0,
                                    child: Container(
                                      height: 25.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF342520)
                                              .withOpacity(0.7),
                                          borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomLeft:
                                                  Radius.circular(15.0))),
                                      child: Center(
                                        child: Row(children: [
                                          Icon(
                                            Icons.star,
                                            color: AppColors.coffeeUnselected,
                                            size: 15.0,
                                          ),
                                          const Text('one',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 13.0)),
                                        ]),
                                      ),
                                    )),
                              ]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Travel to Usa",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Estimate 21h",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "DZD 100",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                GestureDetector(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(Icons.add_outlined),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ));
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  Widget _buildTabBar() {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: controller.lista.length,
        itemBuilder: (ctx, i) {
          return Obx(
            () => GestureDetector(
              onTap: () {
                controller.selectedIndex.value = i;
              },
              child: AnimatedContainer(
                  margin: EdgeInsets.fromLTRB(i == 0 ? 15 : 5, 0, 5, 0),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        i == controller.selectedIndex.value ? 18 : 15)),
                    color: i == controller.selectedIndex.value
                        ? Colors.grey[700]
                        : Colors.grey[200],
                  ),
                  duration: const Duration(milliseconds: 300),
                  child: Center(
                    child: Text(
                      controller.lista[i],
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        color: i == controller.selectedIndex.value
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  )),
            ),
          );
        });
  }
}
