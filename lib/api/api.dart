/*
 * @Author: Json.Xu
 * @Date: 2021-07-14 19:32:09
 * @LastEditTime: 2021-07-20 23:56:15
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\api\api.dart
 */

import 'package:dio/dio.dart';
import 'package:moch_flutter_app/config/application.dart';
import 'package:moch_flutter_app/model/User/models/user_info.dart';

class HttpApi {
  static void getdata() async {
    try {
      var response = await Application.dio
          .get('/test', queryParameters: {'id': 12, 'name': 'wendu'});
      print(response);
    } catch (e) {
      print(e);
    }
  }

  static void postdata() async {
    try {
      var response = await Application.dio.post('/user/checkout',
          data: {'phone': '14700000000', 'code': '204848'});

      // print(response.data);

      Map<String, dynamic> userMap = response.data;

      // print(userMap["data"]);

      UserInfo userInfo = UserInfo.fromJson(userMap["data"]);

      print(userInfo.toJson());
      // var t = jsonDecode(response.toString());
      // print(t['code']);
    } catch (e) {
      print(e);
    }
  }

  static void formdata() async {
    var formData = FormData.fromMap({
      'name': 'wendux',
      'age': 25,
      'file':
          await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
      'files': [
        await MultipartFile.fromFile('./text1.txt', filename: 'text1.txt'),
        await MultipartFile.fromFile('./text2.txt', filename: 'text2.txt'),
      ]
    });
    var response = await Application.dio.post('/info', data: formData);
    print(response);
  }
}
