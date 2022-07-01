import 'package:flutter/material.dart';
import 'package:yammies_app/ui/pages/compte.Page.dart';
import 'package:yammies_app/ui/pages/favoris.page.dart';
import 'package:yammies_app/ui/pages/home.page.dart';
import 'package:yammies_app/ui/pages/menus.page.dart';
import 'package:yammies_app/ui/pages/panier.page.dart';
import 'package:yammies_app/ui/pages/restaurant.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const RootView();
  }
}
class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primarySwatch: Colors.amber
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Yummy")),
        body:  ComptePage(),
      ),
      routes: {
        "/menus":(context)=>const MenusPage(),
        "/panier":(context)=>const PanierPage(),
        "/favoris":(context)=>const FavorisPage(),
        "/restaurant":(context)=>const RestaurantPage(),
        "/compte":(context)=>const HomePage()
      },
      initialRoute: "/",
    );
  }
}
