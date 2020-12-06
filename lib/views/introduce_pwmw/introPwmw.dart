import 'package:flutter/material.dart';
import 'package:pwmw/views/header/header.dart';
import 'package:toast/toast.dart';

class IntroPwmw extends StatelessWidget {
  static String routeName = "/introPwmw";

  @override
  Widget build(BuildContext context) {
    void showToast(String msg, {int duration, int gravity}) {
      Toast.show(msg, context, duration: duration, gravity: gravity);
    }

    return Scaffold(
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<String> list = [];

  // List<OfferJob> list = List<OfferJob>(); // 이런식으로 하기도 함
  bool loadingDone = false;

  // 초기 세팅
  @override
  void initState() {
//    fetch().then((onValue){
//      setState(() {
//        //list.addAll(onValue);
//        print(onValue.length);
//        loadingDone = true;
//      });
//
//    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void showToast(String msg, {int duration, int gravity}) {
      Toast.show(msg, context, duration: duration, gravity: gravity);
    }

    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        HeaderWidget(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("asdASD\n"),
            Container(height: 1200,)
          ],
        ),
        Text("asdASD")
      ],
    );
  }
}