// HTTP GET
// HTTP POST

import 'dataclass.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Service {
  Future<List<cData>> getAllData() async {
    final response = await http.get(
        Uri.parse('https://api-berita-indonesia.vercel.app/cnbc/terbaru/'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => cData.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  //add data
  Future posts(
    String ptitle,
    String ppubDate,
    String pdescription,
    String pthumbnail,
    String plink,
  ) async {
    final response = await http.post(
        Uri.parse('https://api-berita-indonesia.vercel.app/cnbc/terbaru/'),
        body: {
          "title": ptitle,
          "pubDate": ppubDate,
          "description": pdescription,
          "thumbnail": pthumbnail,
          "link": plink,
        });

    if (response.statusCode == 201) {
      return true;
    } else {
      throw Exception('Failed to push Data');
    }
  }

  Future<cData> getSingleData(String id) async {
    final response = await http.get(
        Uri.parse('https://api-berita-indonesia.vercel.app/cnbc/terbaru/$id'));

    if (response.statusCode == 200) {
      cData jsonResponse = cData.fromJson(jsonDecode(response.body));
      return jsonResponse;
    } else {
      throw Exception('Failed to get data');
    }
  }
}
