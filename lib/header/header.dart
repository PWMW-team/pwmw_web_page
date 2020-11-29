import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget{
  String _title;
  String _link;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Container(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10,5,10,5),
            child: Text(
              "PWMW (세상을 이롭게 만드는 사람들)",
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
    );
    throw UnimplementedError();
  }

}
Widget widget = new InkWell();