import 'package:flutter/material.dart';

import '../widgets/main.drawer.widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(

        title: const Text("Yammies",style: TextStyle(color: Colors.black,fontSize: 17),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shopping_cart,size: 20,color: Colors.black,),
            ),
          )
        ],),
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://static0.tiendeo.ma/images/tiendas/4371/catalogos/23611/paginas/mid2/00001.jpg')
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 120, bottom: 10),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30)
                                      )
                                    ),
                                    child: Center(
                                      child:Text(
                                        '30 %',
                                        style: TextStyle(
                                          fontSize: 20,
                                              color:Colors.white,
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.green,
                                              blurRadius:10,
                                                offset: Offset(3,3)
                                            )
                                          ]
                                        )
                                      )
                                    ),
                                  ),
                                )
                              ],
                          ),
                  )
                  ),
                  Expanded(child: Container(

                  ))
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
