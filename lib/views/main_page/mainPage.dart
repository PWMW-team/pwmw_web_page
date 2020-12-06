import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
class Base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void showToast(String msg, {int duration, int gravity}) {
      Toast.show(msg, context, duration: duration, gravity: gravity);
    }
    return MyStatefulWidget();
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
    return loadingDone ? Center(child: Container(child: Text("로딩완료"),),) : Center(
      child: CircularProgressIndicator(),
    );
  }
}
