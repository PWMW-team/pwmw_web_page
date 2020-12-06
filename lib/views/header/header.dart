import 'package:flutter/material.dart';
import 'package:pwmw/base.dart';
import 'package:pwmw/main.dart';
import 'package:pwmw/views/introduce_pwmw/introPwmw.dart';
import 'package:toast/toast.dart';
class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void showToast(String msg, {int duration, int gravity}) {
      Toast.show(msg, context, duration: duration, gravity: gravity);
    }
    Size size = MediaQuery.of(context).size;
    return
      Container(
        width: size.width,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 20),
            InkWell(
              child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text(
                      size.width > 650 ? "People Who Make the better World" : "PWMW",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white
                      ),
                    ),
                  )
              ),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return MyApp();
                    }));
              },
            ),
            Container(width: 50,),
            InkWell(
              child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text(
                      "소개",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black
                      ),
                    ),
                  )
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return IntroPwmw();
                    }));
              },
            ),
            Container(width: 20,),
            InkWell(
              child: Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text(
                      "구성원",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black
                      ),
                    ),
                  )
              ),
              onTap: (){

              },
            ),
            Spacer(flex: 60),

          ],
        ),
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
    return Container(
      width: size.width,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 20),
          InkWell(
            child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10,5,10,5),
                  child: Text(
                    size.width > 650 ? "People Who Make the better World" : "PWMW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white
                    ),
                  ),
                )
            ),
            onTap: (){
              setState(() {
                print(size.width);
              });
            },
          ),
          Container(width: 50,),
          InkWell(
            child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10,5,10,5),
                  child: Text(
                    "소개",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black
                    ),
                  ),
                )
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Base();
                  }));
            },
          ),
          Container(width: 20,),
          InkWell(
            child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10,5,10,5),
                  child: Text(
                    "구성원",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black
                    ),
                  ),
                )
            ),
            onTap: (){
              setState(() {
              });
            },
          ),
          Spacer(flex: 60),

        ],
      ),
    );
  }
}
