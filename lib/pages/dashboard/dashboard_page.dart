import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/instance_manager.dart';
import 'package:getx/pages/dashboard/dashboard_controller.dart';
import 'package:getx/routing/router.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);
  // get controller
  final DashboardController _controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    print('1. dashboard page build');

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
        child: Center(
            child: Obx(() => Column(
                  children: [
                    Text(_controller.user().name),
                    Text(_controller.user().like.toString()),
                    ElevatedButton(
                        onPressed: () {
                          _controller.addLike();
                        },
                        child: Text('add like button'))
                  ],
                ))),
      ),
    );
  }
}
