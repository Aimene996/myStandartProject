
/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/routes/name.dart';

class RouteAuthMiddlware extends GetMiddleware{
  @override
  int period=0;
  RouteAuthMiddlware( {required this.period});


  RouteSettings? redirect(String route ){
    if(route==AppRouts.INITIAL){
      return null;
    }else{
      Future.delayed(Duration(seconds: 2),()=>Get.snackbar("title", "message"));
    }
  }

}*/