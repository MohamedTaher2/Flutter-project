import 'package:flutter/material.dart';
import 'package:goshop/Home/main_screen.dart';
import 'package:goshop/Home/onBoarding.dart';

import 'checkout/PageTwo.dart';

class Edit_card extends StatefulWidget {
  const Edit_card({Key? key}) : super(key: key);

  @override
  State<Edit_card> createState() => _Edit_cardState();
}

class _Edit_cardState extends State<Edit_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: onBoarding(),
      appBar: AppBar(
        backgroundColor: Color(0xff432267),
        centerTitle: true,
        title: Text('Edit Cards',style:TextStyle(color: Colors.white),),
        actions: [IconButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder:
                        (context){
                      return mainScreen();
                    })
            );
          },
          icon: const Icon(Icons.home),
        ),],

      ),
      body: PageTwo(),
    );
  }
}
