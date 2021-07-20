/*
 * @Author: Json.Xu
 * @Date: 2021-07-20 23:14:40
 * @LastEditTime: 2021-07-21 00:08:27
 * @LastEditors: Json.Xu
 * @Description: 
 * 
 * @FilePath: \moch_flutter_app\lib\db\db_init.dart
 */

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBinit {
  // Guaranteed to be called only once.
  static Future<Database> initDB() async {
    var databasesPath = await getDatabasesPath();

    print('db_location:' + databasesPath);

    String path = join(databasesPath, "mochDB.db");

    //每次重装APP，卸载数据库。
    await deleteDatabase(path);

    return openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT)');
    });
    // do "tons of stuff in async mode"
  }
}
