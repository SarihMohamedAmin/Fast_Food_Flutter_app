import 'package:flutter/material.dart';

import '../widgets/main.drawer.widget.dart';


class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nos Restaurant"),),
      body: const Center(
        child: Text("RestaurantPage"),
      ),
    );
  }
}
