import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class register{
  //create a function
  static Future<String> registerUser(
      {required String fullName,
        required String password,
        required String email,
      required String phoneNumber}
      ) async {
    var url = 'http://192.168.137.155:8000/api/register';
    // print(fullName + password + email + phoneNumber);

    try {
      var map = <String, dynamic>{};
      map['name'] = fullName;
      map['password'] = password;
      map['email'] = email;
      map['phone_number'] = phoneNumber;

      // print (url);
      final response = await http.post(Uri.parse(url), body: map);
      var body = jsonDecode(response.body);

      if(response.statusCode == 200){
        // print(body);
        return 'success';
      }else{
          // print("error1");

        // print(body["message"].toString());
        return body["message"].toString();
      }
      // return 'success';

    } catch(e){
      // print("error2");
      return 'email or password is already used';
    }
  }
}