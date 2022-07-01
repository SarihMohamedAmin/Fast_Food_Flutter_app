import 'package:flutter/material.dart';

import '../widgets/main.drawer.widget.dart';


class MenusPage extends StatelessWidget {
  const MenusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menus"),),
      body:  Center(
        child: Text("MenusPage", style: Theme.of(context).textTheme.headline4,),
      ),
    );
  }
}
