import 'dart:convert';
import 'package:secondbrain_app/supabase/models/growth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:secondbrain_app/data/models/search/post_search_resp.dart';
import 'package:secondbrain_app/data/models/query/post_query_resp.dart' as query;
import 'package:secondbrain_app/data/models/note_query/post_query_resp.dart' as noteQuery;
import 'package:secondbrain_app/data/models/task/post_query_resp.dart' as taskQuery;


// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setHabitDB(List<Results>? value) {
    return _sharedPreferences!.setString('HabitDB', jsonEncode(value));
  }

  List<Results>? getHabitDB() {
    try {
      var jsonData = jsonDecode(_sharedPreferences!.getString('HabitDB') ?? '');
      return (jsonData as List).map((e) => Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
   Future<void> setQueryDB(List<query.Results>? value) {
    return _sharedPreferences!.setString('queryDB', jsonEncode(value));
  }

  List<query.Results>? getQueryDB() {
    try {
      var jsonData = jsonDecode(_sharedPreferences!.getString('queryDB') ?? '');
      return (jsonData as List).map((e) => query.Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
  Future<void> setNotesDB(List<Results>? value) {
    return _sharedPreferences!.setString('NotesDB', jsonEncode(value));
  }

  List<Results>? getNotesDB() {
    try {
      var jsonData = jsonDecode(_sharedPreferences!.getString('NotesDB') ?? '');
      return (jsonData as List).map((e) => Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
    Future<void> setNotesDBProperty(List<noteQuery.Results>? value) {
    return _sharedPreferences!.setString('NotesDBProperty', jsonEncode(value));
  }

  List<noteQuery.Results>? getNotesDBProperty() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('NotesDBProperty') ?? '');
      return (jsonData as List).map((e) => noteQuery.Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
 Future<void> setTaskDBProperty(List<taskQuery.Results>? value) {
    return _sharedPreferences!.setString('TaskDBProperty', jsonEncode(value));
  }

  List<taskQuery.Results>? getTaskDBProperty() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('TaskDBProperty') ?? '');
      return (jsonData as List).map((e) => taskQuery.Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
 Future<void> setMainDBProperty(List<taskQuery.Results>? value) {
    return _sharedPreferences!.setString('MainDBProperty', jsonEncode(value));
  }

  List<taskQuery.Results>? getMainDBProperty() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('MainDBProperty') ?? '');
      return (jsonData as List).map((e) => taskQuery.Results.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
    Future<void> setGrowthDate(List<GrowthModel>? value) {
    return _sharedPreferences!.setString('growthDate', jsonEncode(value));
  }

  List<GrowthModel>? getGrowthDate() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('growthDate') ?? '');
      return (jsonData as List).map((e) => GrowthModel.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }
}
