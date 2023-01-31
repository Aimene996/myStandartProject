import 'package:flutter/material.dart';
import 'package:paternproject/utility/appColors.dart';

class DetailsTopSell extends StatefulWidget {
  const DetailsTopSell({Key? key}) : super(key: key);

  @override
  State<DetailsTopSell> createState() => _DetailsTopSellState();
}

class _DetailsTopSellState extends State<DetailsTopSell> {
  @override
  Widget build(BuildContext context) {
    var sceenHeight = MediaQuery.of(context).size.height;
    var sceenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(children: [
        Container(
          height: sceenHeight,
          width: sceenWidth,
          color: Colors.white,
        ),
        Hero(
          tag: 'tagImage',
          child: Container(
            height: (sceenHeight / 2) + 70.0,
            width: sceenWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1674784722614-451bbad3f507?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=418&q=80'),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
            top: 35.0,
            left: 10.0,
            child: Container(
              color: Colors.transparent,
              height: 50.0,
              width: sceenWidth - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                          color: AppColors.transparent,
                          // border:
                          //     Border.all(color: Color(0xFF322B2E), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xFF525154),
                        size: 17.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: BoxDecoration(
                          color: AppColors.transparent,
                          // border:
                          //     Border.all(color: Color(0xFF322B2E), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Color(0xFF525154),
                        size: 17.0,
                      ),
                    ),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
