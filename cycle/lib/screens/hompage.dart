import 'package:cycle/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                  return Text(
                    "Counter Value: ${controller.counter.value}",
                    style: const TextStyle(fontSize: 24),
                  );
                }
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/secondPage");
                },
                child: const Text("Go to Second Page"),
              )
            ],
          ),
        ));
  }
}