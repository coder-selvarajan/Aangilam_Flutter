import 'package:aangilam/constants.dart';
import 'package:aangilam/screens/home/resource_strip.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'game_strip.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[100],
      appBar: homeAppBar(),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.3)),
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: InkWell(
                onTap: () {
                  print('tapped search bar');
                },
                child: Container(
                  height: 40.0,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Search words in dictionary...',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ResourceStrip(),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'GAMIFY YOUR LEARNING',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ),
            GameStrip(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
