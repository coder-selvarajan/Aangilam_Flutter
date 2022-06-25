import 'package:flutter/material.dart';

class ResourceStrip extends StatelessWidget {
  const ResourceStrip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.indigoAccent,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  'Verb',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                )),
              ),
              Container(
                // width: 90,
                child: const Center(
                    child: Text(
                  'Intermediate \nVerbs',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              ),
            ],
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  'Adj',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                )),
              ),
              Container(
                // width: 90,
                child: const Center(
                    child: Text(
                  'Common \nAdjectives',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              ),
            ],
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  'Adv',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                )),
              ),
              Container(
                // width: 90,
                child: const Center(
                    child: Text(
                  'Common \nAdverbs',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              ),
            ],
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.indigoAccent,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  'Ph',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                )),
              ),
              Container(
                // width: 90,
                child: const Center(
                    child: Text(
                  'Useful \nPhrases',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              ),
            ],
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 90,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  'Id',
                  style: TextStyle(fontSize: 13, color: Colors.white),
                )),
              ),
              Container(
                width: 90,
                child: const Center(
                    child: Text(
                  'Useful \nIdioms',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
