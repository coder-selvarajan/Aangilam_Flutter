import 'package:flutter/material.dart';

import '../home/app_bar.dart';

class DictionaryView extends StatefulWidget {
  const DictionaryView({Key? key}) : super(key: key);

  @override
  State<DictionaryView> createState() => _DictionaryViewState();
}

class _DictionaryViewState extends State<DictionaryView> {
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
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      enableInteractiveSelection: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Search in dictionary...',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
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
          ],
        ),
      ),
    );
  }
}
