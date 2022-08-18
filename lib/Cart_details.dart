import 'package:flutter/material.dart';
import 'package:goshop/Cart.dart';

import '../Home/products_details.dart';
int counter =1;
var cart=[];



class CartDetails extends StatefulWidget {
  CartDetails(void add);





  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  void initState() {
    // TODO: implement initState
    super.initState();

  }




  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: cart.length,
        itemBuilder: (BuildContext context,int index){
          return Single_prod(
            prod_name_cart: cart[index]['name'],
            prod_picture_cart: cart[index]['picture'],
            prod_price_cart: cart[index]['price'],
            prod_old_price_cart: cart[index]['old_price'],
            prod_detail_cart: cart[index]['detail'],
          );
        }
    );
  }
}
class Single_prod extends StatelessWidget {
  final prod_name_cart;
  final prod_picture_cart;
   final prod_old_price_cart;
  final prod_price_cart;
   final prod_detail_cart;

  Single_prod({
    this.prod_name_cart,
    this.prod_picture_cart,
     this.prod_old_price_cart,
    this.prod_price_cart,
     this.prod_detail_cart,
  });





  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
      
      height: 100,
      child:Stack(children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: ()=>
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder:(context)=>ProductDetails(
                        product_detail_name: prod_name_cart,
                        product_detail_new_price: prod_price_cart,
                        product_detail_old_price: prod_old_price_cart,
                        product_detail_picture: prod_picture_cart,
                        product_detail: prod_detail_cart,

                      ))),
          child:Row(
            children: [
              Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),),

                height: 120,
                width: 120,
                child: Image.asset(prod_picture_cart,fit: BoxFit.cover,),
              ),
              Expanded(
                child:Container(
                  height: double.maxFinite,
                  margin: EdgeInsets.only(left:10,),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          child: Text('$prod_name_cart',style: TextStyle(color: Colors.black),),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: Container(
                          child: Text('$prod_name_cart',style: TextStyle(color: Colors.black),),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        right: -10,
                        child: Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(0),
                          child:  IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.cancel,color: Color(0xff432267),),
                            onPressed: () {  },

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(

              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomRight:Radius.circular(20) ),color: Color(0xff432267)),
              child: Row(
                children: [

                  FloatingActionButton(
                    //padding: EdgeInsets.all(0),
                    backgroundColor: null,
                    child: Icon(Icons.remove,color: Color(0xffE99000),),
                    onPressed: () {
                      // setState((){});
                      // if(true){
                      //   counter--;
                      //   print(counter);
                      //
                      // }

                    },

                  ),
                  Container(child: Counter(),),

                  IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.add,color: Color(0xffE99000),),
                    onPressed: () {
                      if(true){
                        counter++;
                        print(counter);

                      }

                    },

                  ),

                ],
              ),
            )
        ),

      ],
      ),



    )
      ;
  }


}
class count extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Text('${cart.length}',style: TextStyle(fontSize: 18),);
  }

}
class Counter extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Text('$counter',style: TextStyle(color: Colors.white),);
  }

}




