import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllerModel.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final CounterCounter controller = Get.put(CounterCounter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The Current Value in the FIRST PAGE is: '),

            Obx((){
              return Text('${controller.count.value}');
            })
          ],
        ),
      ),
    );
  }
}
