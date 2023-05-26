import 'dart:core';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseService {

  DataBaseService(this._database);

  static Future<DataBaseService> init() async {
   final _database = await setDatabase();
    await _createDatabase(_database!, 1);
    return DataBaseService(_database);
  }

  static Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_valveprg');
    var database =
        await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  static Future<void> _createDatabase(Database database, int version) async {
    String sql =
        "CREATE TABLE valve (id INTEGER PRIMARY KEY,nameTEXT,contactText,description TEXT);";
    await database.execute(sql);
  }

   final Database? _database;
  Database? get database => _database;


  insertData(table, data) async {
    var connection = await database;
    return await connection?.insert(table, data);
  }

  readData(table) async {
    var connection = await database;
    return await connection?.query(table);
  }

  readDataById(table, itemId) async {
    var connection = await database;
    print(connection);
    return await connection?.query(table, where: 'id=?', whereArgs: [itemId]);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection
        ?.update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  deleteDataById(table, itemId) async {
    var connection = await database;
    return await connection?.rawDelete("delete from $table where id=$itemId");
  }
}
