

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Go Back"),
          ),
        ));
  }
}