/*
 * @Author: Json.Xu
 * @Date: 2021-07-14 19:56:16
 * @LastEditTime: 2021-07-14 20:29:31
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\data\sharedData.dart
 */
// obtain shared preferences
import 'package:shared_preferences/shared_preferences.dart';

void handle() async {
  final prefs = await SharedPreferences.getInstance();
  // set value
  prefs.setInt('counter', 1);
  // get value
  prefs.getInt('counter');
  // remove value
  prefs.remove('counter');
}
