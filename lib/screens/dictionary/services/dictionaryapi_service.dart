import 'package:aangilam/screens/dictionary/models/dictionary_api_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DictionaryApiService {
  // DictionaryApiService(this.url);
  //
  // final String url;

  static Future<DisplayWord> getData() async {
    var uri =
        Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/humble');
    DisplayWord displayWord = DisplayWord();

    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;

      WordElement wordElement = WordElement.fromJson(json.decode(data[0]));

      print(wordElement.word);
      print(wordElement.phonetics[0].text);

      displayWord.word = wordElement.word;
      displayWord.phonetics = wordElement.phonetics[0].text;
      displayWord.meaning = wordElement.meanings[0].definitions[0].definition;
      displayWord.exampleUsage = wordElement.meanings[0].definitions[0].example;
    } else {
      print('API Error');
      //print(response.statusCode);
    }

    return displayWord;
  }
}
