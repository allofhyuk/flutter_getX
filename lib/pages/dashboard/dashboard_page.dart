import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/instance_manager.dart';
import 'package:getx/pages/dashboard/dashboard_controller.dart';
import 'package:getx/routing/router.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);
  // get controller

  @override
  Widget build(BuildContext context) {
    print('1. dashboard page build');
    final controller = Get.put(DashboardController());
    final routeController = Get.put(RouterController(navTypes: [
      NavTypes.home,
      NavTypes.community,
      NavTypes.report,
      NavTypes.myPage,
    ]));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starting',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        child: Text(controller.user().name),
      ),
      bottomNavigationBar: Obx(() => BottomAppBar(
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < routeController.routeList.length; i++)
                    IconButton(
                        onPressed: () {
                          routeController.changeRouteIndex(i);
                        },
                        icon: Icon(Icons.tab))
                ],
              ),
            ),
          )),
    );
  }
}
