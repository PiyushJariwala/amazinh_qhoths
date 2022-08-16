import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHalper {
  Database? database;

  Future<Database> chackDB() async {
    if (database != null) {
      return database!;
    } else {
      return await creatDB();
    }
  }

  Future<Database> creatDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "Quotes.db");

    return openDatabase(path, version: 1, onCreate: (db, version) {
      String query =
          "CREATE TABLE quotes (id INTEGER PRIMARY KEY AUTOINCREMENT,fav TEXT,star TEXT)";
      db.execute(query);
    });
  }

  void insertData(String fav) async {
    database = await creatDB();

    database!.insert("quotes", {"fav": fav});
  }

  Future<List<Map<String, dynamic>>> starChack()
  async{
    database = await creatDB();

   Future<List<Map<String, dynamic>>> star  = database!.rawQuery("SELECT star FROM quotes");

   return star;
  }

  void deletedData(String fav) async {
    database = await creatDB();

    database!.delete("quotes", where: "fav = ?", whereArgs: [fav]);
  }

  Future<List<Map<String, dynamic>>> retrivData()
  async{
    database = await creatDB();
    String query = "SELECT * FROM quotes";

    Future<List<Map<String, dynamic>>> list = database!.query("quotes");

    return list;

  }


}
