import 'package:flutter/material.dart';
import 'package:goshop/Home/onBoarding.dart';

import 'Home/main_screen.dart';


class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: onBoarding(),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xff432267),

          title: const Text(
            'Order history',
            style: TextStyle(
                fontFamily: 'Josefin Sans',
                fontWeight: FontWeight.w300,
                fontSize: 26),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.home_rounded),
              tooltip: 'Open shopping cart',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder:
                            (context){
                          return mainScreen();
                        })
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 10,
              decoration: const BoxDecoration(
                color: Color(0xff432267),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Check yor history ',
                    style: TextStyle(
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                        color: Color(0xff432267)),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

