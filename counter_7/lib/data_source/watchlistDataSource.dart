import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/watchItem.dart';

class WatchListRemoteDataSource {
  Future<List<watchItem>> fecthWatchList() async {
    try {
      Uri url = Uri.parse(
          'https://pbp-tugas-2-shamira.herokuapp.com/mywatchlist/json/');
      var response = await http.get(url);
      var data = jsonDecode(utf8.decode(response.bodyBytes));
      List<watchItem> watchList = [];
      for (var item in data) {
        watchList.add(watchItem.fromJson(item['fields']));
      }
      return watchList;
    } catch (e) {
      throw Exception('error: $e');
    }
  }
}
