import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.indigo,
      ),
      onPressed: () {
        //
      },
    ),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.settings,
          color: Colors.indigo,
        ),
        onPressed: () {
          //
        },
      ),
    ],
    title: const Center(
      child: Text(
        'Aangilam',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
