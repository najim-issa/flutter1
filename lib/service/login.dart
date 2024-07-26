import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class login{
  //create a function
  static Future<String> loginUser(
      {required String username,
       required String password,}
      ) async {
    var url = 'http://192.168.137.155:8000/api/login';
print(url);
    try {
      var map = <String, dynamic>{};
      map['email'] = username;
      map['password'] = password;

      final response = await http.post(Uri.parse(url), body: map);
      var body = jsonDecode(response.body);

      if(response.statusCode == 200){
        //initiate the db and need to store the data as temp 'local'
        SharedPreferences workStorage = await SharedPreferences.getInstance();
         workStorage.setString("user", jsonEncode(body["user"]));

        workStorage.setString("token", jsonEncode(body["token"]));
        print(body);
        return 'success';
      }else{
        print("error1");
        print(body["message"].toString());
        return body["message"].toString();
      }
      
    } catch(e){
      print("error1");
      return 'error';
    }
  }
}