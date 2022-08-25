// packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// pages
import 'package:getx/pages/dashboard/dashboard_page.dart';
import 'package:getx/pages/second/second_page.dart';
import 'package:getx/pages/third/third_page.dart';

// navigation list type
enum NavTypes { home, report, community, myPage }

class RouterController extends GetxController {
  RouterController({required this.navTypes});
  // 현재 페이지 인덱스
  RxInt crtRouteIndex = 0.obs;
  // route list
  List<Widget> routeList = [];
  List<NavTypes> navTypes;

  // 페이지 인덱스 변경 메서드
  void changeRouteIndex(int index) {
    crtRouteIndex.value = index;
  }
}
