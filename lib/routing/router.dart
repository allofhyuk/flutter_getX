// packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// pages
import 'package:getx/pages/dashboard/dashboard_page.dart';
import 'package:getx/pages/login/login_page.dart';
import 'package:getx/pages/third/third_page.dart';

// navigation list type
appRoutes() => [
      GetPage(
          name: '/',
          page: () => DashboardPage(),
          transition: Transition.leftToRightWithFade),
      GetPage(
          name: '/login',
          page: () => LoginPage(),
          transition: Transition.leftToRightWithFade),
      GetPage(
          name: '/third',
          page: () => ThirdPage(),
          transition: Transition.leftToRightWithFade),
    ];
