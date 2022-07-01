import 'package:flutter/material.dart';

import '../widgets/main.drawer.widget.dart';


class FavorisPage extends StatelessWidget {
  const FavorisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favoris"),),
      body: const Center(
        child: Text("FavorisPage"),
      ),
    );
  }
}
