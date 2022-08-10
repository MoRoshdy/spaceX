import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:spacex_project/Models/dragonsVM.dart';
import 'package:spacex_project/Models/lanuchesVM.dart';
import 'package:spacex_project/Models/shipsVM.dart';
class API
{
  static Future<List<DragonsVm>> getDragons() async
  {
    String url = "https://api.spacexdata.com/v4/dragons";

    final response = await http.get(Uri.parse(url));

    Iterable iterableList = json.decode(response.body.toString());

    return  List<DragonsVm>.from(iterableList.map((model) => DragonsVm.fromJson(model)));
  }

  static Future<List<ShipsVm>> getShips() async
  {
    String url = "https://api.spacexdata.com/v4/ships";

    final response = await http.get(Uri.parse(url));

    Iterable iterableList = json.decode(response.body.toString());

    return  List<ShipsVm>.from(iterableList.map((model) => ShipsVm.fromJson(model)));
  }

  static Future<List<LanuchesVm>> getLanuches() async
  {
    String url = "https://api.spacexdata.com/v4/launches/past";

    final response = await http.get(Uri.parse(url));

    Iterable iterableList = json.decode(response.body.toString());

    return  List<LanuchesVm>.from(iterableList.map((model) => LanuchesVm.fromJson(model)));
  }
}