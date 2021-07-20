/*
 * @Author: Json.Xu
 * @Date: 2021-07-20 10:59:19
 * @LastEditTime: 2021-07-20 16:03:32
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\api\diohttp.dart
 */

import 'package:dio/dio.dart';

class DioHttp {
  static void configureDio(Dio dio) {
    var options = BaseOptions(
      baseUrl: 'http://192.168.80.159:61091/lifControl1.0/',
      connectTimeout: 5000,
      receiveTimeout: 3000,
      // headers: {
      //   'api': '1.0.0',
      // },
      // contentType: Headers.jsonContentType,
      // Transform the response data to a String encoded with UTF8.
      // The default value is [ResponseType.JSON].
      // responseType: ResponseType.plain,
    );
    dio.options = options;
  }
}
