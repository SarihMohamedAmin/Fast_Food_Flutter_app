import 'package:flutter/material.dart';

import '../widgets/main.drawer.widget.dart';


class PanierPage extends StatelessWidget {
  const PanierPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Compte"),),
      body: const Center(
        child: Text("PanierPage"),
      ),
    );
  }
}
