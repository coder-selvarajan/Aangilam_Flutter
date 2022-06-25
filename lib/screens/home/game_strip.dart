import 'package:flutter/material.dart';

class GameStrip extends StatelessWidget {
  const GameStrip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
                child: Text(
              'Randomizer',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Container(
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
                child: Text(
              'Pick Defn',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Container(
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
                child: Text(
              'Spell Check',
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
