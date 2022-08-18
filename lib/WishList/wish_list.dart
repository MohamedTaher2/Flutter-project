
import 'package:flutter/material.dart';
import 'package:goshop/Wishlist/wishlist_Details.dart';

import '../Home/main_screen.dart';
// import 'package:store_app/product.dart';


class wishList extends StatefulWidget {
  const wishList({Key? key}) : super(key: key);

  @override
  State<wishList> createState() => _wishListState();
}

class _wishListState extends State<wishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff432267),
        centerTitle: true,
        title:  Text(
          'Wishlist',
          style:
          TextStyle(
              fontSize: 22,
              color: Colors.white
          ),
        ),


        actions: [
          IconButton(
              onPressed: (){
                    Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                    builder:
                    (context){
                    return mainScreen();

                      }
                          ), (route) => false);
                 },
              icon: Icon(Icons.home,color: Colors.white,)
          ),
        ],
      ),
      body: SingleChildScrollView(child:
      Column(
        children:  [
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [

              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 30, 10),
                child: Text('May your wishes come true',style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                child: Icon(Icons.dashboard,color: Color(0xffE99000),),

              ),
            ],
          ),
          Container(
            height: 700,
            child: wishDetails(0),
          ),


        ],
      ),
      ),
    );
  }
}
