import 'package:aangilam/screens/dictionary/models/Owlbot_api_models.dart';
import 'package:aangilam/screens/dictionary/models/dictionary_api_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OwlbotService {
  // OwlbotService(this.url);
  //
  // final String url;

  static Future<DisplayWord> getData() async {
    var uri = Uri.parse('https://owlbot.info/api/v4/dictionary/humble');
    DisplayWord displayWord = DisplayWord();

    http.Response response = await http.get(uri, headers: {
      "Authorization": "Token fb9e439649e48d68ceb626bf4bd7a535ca9ae347"
    });

    if (response.statusCode == 200) {
      String data = response.body;

      OwlbotElement owlbotElement = OwlbotElement.fromJson(json.decode(data));

      displayWord.word = owlbotElement.word;
      displayWord.phonetics = owlbotElement.pronunciation;
      displayWord.meaning = owlbotElement.definitions[0].definition;
      displayWord.exampleUsage = owlbotElement.definitions[0].example;
    } else {
      print('API Error');
      //print(response.statusCode);
    }

    return displayWord;
  }
}
