import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllerModel.dart';
import 'package:getx/second_Page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: myHome(),
    );
  }
}

class myHome extends StatefulWidget {

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {

  final CounterCounter controller = Get.put(CounterCounter());

  int counter = 0;
  void increaseCounter(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tech Talk state management'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello"
            ),
            SizedBox(
              height: 15,
            ),

            Text('${counter}'),
            Obx((){
              return Text("Event from Getx: ${controller.count.value}");
            }),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){
                      controller.increaseCounter();
                      print('Notify when pressed');
                    },
                    child: Text("Press me")),

                SizedBox(
                  width: 15,
                ),
                FlatButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: (){
                      increaseCounter();
                      print('Notify when pressed');
                    },
                    child: Text("Press me")),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Next Route'),
              onPressed: () {

              },
            ),
            RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text("Press to Navigate "),
                onPressed: (){
                  Get.to(SecondPage());

            }),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
                onPressed: (){
                      Get.to(SecondPage());
                },
              child: Text("Press to Navigate 2"),)

          ],
        ),
      ),
    );
  }
}

