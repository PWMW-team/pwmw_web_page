import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pwmw/components/httpcontroller.dart';


class Member {
  int memberID;
  String memberNickName;
  String sayOneThing;
  String memberImageUrl;


  Member(this.memberID, this.memberNickName, this.sayOneThing,
      this.memberImageUrl);

  factory Member.fromJson(dynamic json){
    return Member(json['memberID'] as int, json['memberNickName'] as String,
        json['sayOneThing'] as String, json['memberImageUrl'] as String);
  }
  Map<String, dynamic> toJson() =>
      {
        'memberID' : memberID,
        'memberNickName' : memberNickName,
        'sayOneThing' : sayOneThing,
        'memberImageUrl' : memberImageUrl
      };

}

Future<List<Member>> getUsersList(Member users) async {
  var list = List<Member>();
  List<dynamic> body = json.decode(await HttpController.sendRequest("/getUsersList", users.toJson()));
  print(body.length);
  for(var h in body){
    list.add(Member.fromJson(h));
  }
  return list;

}
