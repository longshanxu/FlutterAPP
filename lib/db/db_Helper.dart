/*
 * @Author: Json.Xu
 * @Date: 2021-07-20 20:41:38
 * @LastEditTime: 2021-07-20 23:39:47
 * @LastEditors: Json.Xu
 * @Description: 
 * @FilePath: \moch_flutter_app\lib\db\db_Helper.dart
 */

import 'package:sqflite/sqflite.dart';

class SQLProvider {
  static Future insert(Database db) async {
    var id = await db.insert("Test", {'name': '123'});
    return id;
  }

  static Future getTodo(Database db) async {
    List<Map> maps = await db.query("Test");
    print(maps);
  }

  // Future<int> delete(int id) async {
  //   return await db.delete(tableTodo, where: '$columnId = ?', whereArgs: [id]);
  // }

  // Future<int> update(Todo todo) async {
  //   return await db.update(tableTodo, todo.toMap(),
  //       where: '$columnId = ?', whereArgs: [todo.id]);
  // }

}
