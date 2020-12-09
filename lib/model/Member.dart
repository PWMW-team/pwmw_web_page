import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pwmw/components/httpcontroller.dart';


class Member {
  int memberID;
  String memberNickName;
  String sayOneThing;
  String memberImageUrl;
  List<String> roles;
  List<String> skills;


  Member(this.memberID, this.memberNickName, this.sayOneThing,
      this.memberImageUrl, this.roles, this.skills);

  factory Member.fromJson(dynamic json){
    return Member(json['memberID'] as int, json['memberNickName'] as String,
        json['sayOneThing'] as String, json['memberImageUrl'] as String,
    json['roles'] as List<String>, json['skills'] as List<String>);
  }
  Map<String, dynamic> toJson() =>
      {
        'memberID' : memberID,
        'memberNickName' : memberNickName,
        'sayOneThing' : sayOneThing,
        'memberImageUrl' : memberImageUrl,
        'roles' : roles,
        'skills' : skills
      };

}

Future<List<Member>> getAllMember() async {
  var list = List<Member>();
  Map map = {"" :""};
  List<dynamic> body = json.decode(await HttpController.sendRequest("getAllMember", map));
  print(body.length);
  for(var h in body){
    list.add(Member.fromJson(h));
  }
  return list;

}
