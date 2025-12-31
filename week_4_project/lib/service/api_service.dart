import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:week_4_project/model/quran_info_model.dart';

class QuranInfoApiService {
  final String url = "https://cdn.jsdelivr.net/gh/fawazahmed0/quran-api@1/info.json";

  Future<QuranInfoModel?> fetchUser() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Convert JSON string to Map
        Map<String, dynamic> jsonData = json.decode(response.body);

        // Convert Map to Dart object using model
        QuranInfoModel quranInfoModel = QuranInfoModel.fromJson(jsonData);

        return quranInfoModel;
      } else {
        print("Error: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Exception: $e");
      return null;
    }
  }
}
