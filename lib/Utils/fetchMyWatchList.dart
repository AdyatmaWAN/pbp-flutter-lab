import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/Models/myWatchlist.dart';

Future<List<WatchList>> fetchWatchList() async {
  var url = Uri.parse('https://pbp-tugas2-adyatma.herokuapp.com/mywatchlist/json/');
  var response = await http.get(url, headers: {
    "Access-Control-Allow-Origin": "*",
    "Content-Type": "application/json",
  });

  // print("Masuk 1");

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // print(data);

  List<WatchList> listWatchList = [];

  for (var d in data) {
    // print(d);
    if (d != null) {

      //print(d);

      listWatchList.add(WatchList.fromJson(d));

    }
  }
  // print("Masuk 2");

  return listWatchList;
}
