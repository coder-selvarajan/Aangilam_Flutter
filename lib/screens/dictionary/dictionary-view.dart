import 'package:aangilam/screens/dictionary/services/dictionaryapi_service.dart';
import 'package:aangilam/screens/dictionary/services/owlbot_service.dart';
import 'package:flutter/material.dart';

import '../home/app_bar.dart';
import 'models/dictionary_api_models.dart';

class DictionaryView extends StatefulWidget {
  const DictionaryView({Key? key}) : super(key: key);

  @override
  State<DictionaryView> createState() => _DictionaryViewState();
}

class _DictionaryViewState extends State<DictionaryView> {
  String meaning = "";

  // late Future wordElement;
  late Future<DisplayWord> displayWord;

  void initState() {
    super.initState();
    //displayWord = DictionaryApiService.getData();
    displayWord = OwlbotService.getData();
  }

  void fetchDictionaryApi() {
    displayWord = OwlbotService.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: homeAppBar(),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    margin: const EdgeInsets.all(15),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: TextField(
                        style: const TextStyle(color: Colors.white),
                        enableInteractiveSelection: false,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search in dictionary...',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        onSubmitted: (String str) {
                          setState(() {
                            // result = str;
                          });
                        }),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                fetchDictionaryApi();
                // DictionaryApiService dApi = DictionaryApiService('someurl');
                // var meaningValue = await dApi.getData();
                //
                // setState(() {
                //   meaning = meaningValue;
                // });
              },
              child: const Text('Dictionary API'),
            ),
            FutureBuilder(
              future: displayWord,
              builder: (context, AsyncSnapshot<DisplayWord> snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Word: ${snapshot.data?.word ?? "none"}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return const Text("Error");
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
