import 'package:flutter/material.dart';
import 'package:goshop/WishList/wishlist_Details.dart';

import '../Cart_details.dart';


//import 'package:store_app/product.dart';
Icon a= Icon(Icons.favorite_border,color:Colors.red,);
bool check=false;


class ProductDetails extends StatefulWidget {
   final product_detail_name;
   final product_detail_new_price;
   final product_detail_old_price;
   final product_detail_picture;
   final product_detail;

  ProductDetails({
   this.product_detail_name,
   this.product_detail_new_price,
   this.product_detail_old_price,
   this.product_detail_picture,
    this.product_detail,

});


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  // Icon a= Icon(Icons.favorite_border,color:Colors.red,);
  // bool check=false;
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child:
                  Stack(children: [
                    // Expanded(child:
                    Container(
                      width: double.maxFinite,
                      color: Colors.black12,
                      child: Image.asset(widget.product_detail_picture,fit: BoxFit.cover,),
                    ),
                    // ),

                  Positioned(
                    top: 0,
                    right: 0,
                      child:IconButton(
                        onPressed: (){
                          setState(() {
                            if(check==false)
                              {
                                check=true;
                                a=Icon(Icons.favorite,color:Colors.red,);
                                wishDetails(
                                  wish.add(
                                    {
                                      "name":'${widget.product_detail_name}',
                                      "picture":'${widget.product_detail_picture}',
                                      "old_price": '${widget.product_detail_old_price}',
                                      "price": '${widget.product_detail_new_price}',
                                      "detail":'${widget.product_detail}',
                                    },
                                  ),
                                );
                              }
                            else{
                              check=false;
                              a=Icon(Icons.favorite_border,color:Colors.red,);
                              wishDetails(
                                wish.remove(
                                  {
                                    "name":'${widget.product_detail_name}',
                                    "picture":'${widget.product_detail_picture}',
                                    "old_price": '${widget.product_detail_old_price}',
                                    "price": '${widget.product_detail_new_price}',
                                    "details":'${widget.product_detail}',
                                  },
                                ),
                              );

                            }

                          });

                        },
                        icon: a,
                      ),
                  ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child:IconButton(
                        onPressed: (){
                          setState(() {
                            Navigator.of(context).pop(context);
                          });

                        },
                        icon: Icon(Icons.arrow_back_sharp,color:Colors.deepPurpleAccent,size: 30,),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      right: 0,

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),

                            child:Container(

                              height: 25,
                              width: 80,
                              color: Colors.deepPurpleAccent,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('15% OFF',style: TextStyle(color: Colors.white),),

                                ],
                              ),
                              //
                            ),

                          ),

                        ) ,





                  ],),

              footer: Container(

                decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20), ),color: Colors.white),
                child: ListTile(
                  title: Row(
                    children: [

                      Expanded(
                        child: Text(
                          '${widget.product_detail_name}'
                          ,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),


                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('German Car',style: TextStyle(fontSize: 15,),textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.yellow,size: 15 ,),
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          Icon(Icons.star,color: Colors.yellow,size: 15,),
                          Text('+5'),


                        ],
                      ),

                    ],
                  )

                ),
              ),
            ),
          ),
          ListTile(

            title: Text('Product details',style: TextStyle(fontSize: 15),),
            subtitle: Text('${widget.product_detail}'),
          ),
          Padding(padding: const  EdgeInsets.fromLTRB(90, 0, 90, 0),
            child:
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(

                height: 40,
                child:ElevatedButton(

                    onPressed:(){
                      setState(() {
                        CartDetails(
                          cart.add(
                            {
                              "name":'${widget.product_detail_name}',
                              "picture":'${widget.product_detail_picture}',
                              "old_price": '${widget.product_detail_old_price}',
                              "price": '${widget.product_detail_new_price}',
                              "detail":'${widget.product_detail}',
                            },
                          ),
                        );


                      });
                    } ,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple),

                    ),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$${widget.product_detail_new_price}',style: TextStyle(color: Colors.white),),
                        Container(
                          height: 10,
                          child:  VerticalDivider(color: Colors.white,),
                        ),
                        Icon(Icons.shopping_bag,color: Colors.orange,),
                        Text('Add to cart',style: TextStyle(color: Colors.white),),
                      ],
                    )
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
