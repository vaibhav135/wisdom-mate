import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
part 'login_api.g.dart';

Future<Login> createLogin(String currentUser  , String password) async{
  final http.Response response = await http.post(
    'http://127.0.0.1:8000/registration/login/',
    headers: <String, String > {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
       'current_user' : currentUser,
       'password' : password,
    }),
  );

  if(response.statusCode == 201){
       print('successful login');
       return Login.fromJson(json.decode(response.body));
  }
  else{
    throw Exception('Failed to send data to the login page');
  }
}

@JsonSerializable()
class Login{
  String token;

  @JsonKey(required: true)
  final String  currentUser;

  @JsonKey(required: true)
  final String email;

  @JsonKey(required: true)
  final String password;

  Login({this.token , this.currentUser, this.email , this.password});

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String , dynamic> toJson() => _$LoginToJson(this);
}
