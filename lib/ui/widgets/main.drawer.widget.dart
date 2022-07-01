import 'package:flutter/material.dart';

import 'drawer.item.widget.dart';
import 'main.drawer.header.widget.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> menus=[
      {"title":"Home","route":"/","leadingIcon":Icons.home, "trailingIcon":Icons.arrow_forward},
      {"title":"menus","route":"/menus","leadingIcon":Icons.no_food, "trailingIcon":Icons.arrow_forward},
      {"title":"Panier","route":"/panier","leadingIcon":Icons.shopping_cart, "trailingIcon":Icons.arrow_forward},
      {"title":"Favoris","route":"/favoris","leadingIcon":Icons.favorite, "trailingIcon":Icons.arrow_forward},
      {"title":"Nos Restaurant","route":"/restaurant","leadingIcon":Icons.food_bank, "trailingIcon":Icons.arrow_forward},
      {"title":"Compte","route":"/compte","leadingIcon":Icons.person, "trailingIcon":Icons.arrow_forward},
    ];
    return Drawer(
      child: Column(
        children:[
          const MainDrawerHeader(),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return DrawerItemWidget(
                      title: menus[index]['title'],
                      leadingIcon: menus[index]['leadingIcon'],
                      trailingIcon: menus[index]['trailingIcon'],
                      onAction: (){
                        Navigator.pop(context);
                        Navigator.pushNamed(context, menus[index]['route']);
                      }
                  );
                },
                separatorBuilder: (context, index){
                  return const Divider(height: 6,);
                },
                itemCount: menus.length
            )
          )
        ],
      ),
    );
  }
}
