import 'package:flutter/material.dart';

import 'Cart_details.dart';
import 'Home/main_screen.dart';
import 'Home/onBoarding.dart';
import 'checkout/status view.dart';

class CartScreen extends StatefulWidget {





  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: onBoarding(),
      appBar: AppBar(
        backgroundColor: Color(0xff432267),
        centerTitle: true,
        title: Text('Cart'),
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

      body: Column(
        children: [

          Padding(padding: EdgeInsets.fromLTRB(50,20, 50, 20),
              child:
              Container(
                width:1000,
                height: 50,
                color: Colors.white,
                alignment: Alignment.center,
                child:const
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(30)),),
                    suffixIcon: Icon(Icons.filter_list_rounded),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Type a Product Name",
                  ),

                ),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text("Product:",style: TextStyle(color: Colors.black38,fontSize: 18),),
                  //Text("3",style: TextStyle(fontSize: 18),),
                  Container(child: count(),),
                ],

              ),
              Row(
                children: [
                  Text("Subtotal:",style: TextStyle(color: Colors.black38,fontSize: 18),),
                  Container(child: count(),),
                  //Text("3",style: TextStyle(fontSize: 18),),
                ],

              ),
              Row(
                children: [
                  Text("Taxes:",style: TextStyle(color: Colors.black38,fontSize: 18),),
                  //Text("3",style: TextStyle(fontSize: 18),),
                  Container(child: count(),),
                ],

              ),







            ],
          ),
          Expanded(
            child:
               Container(

                       child:CartDetails(0),
                 ),
          ),
          SizedBox(height: 45,),




        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        color: Color(0xff432267 ),
        child: TextButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder:
                        (context){
                      return CeckOut();
                    })
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon/shopping-bag.png',width: 20,height: 20,color: Color(0xffE99000),),
              SizedBox(width: 10,),
              Text(
                'Checkout',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),),
            ],
          ),

        ),
      ),
    );
  }
}
