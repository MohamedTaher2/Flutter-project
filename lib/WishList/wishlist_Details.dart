import 'package:flutter/material.dart';

import '../Home/products_details.dart';
var wish=[];
Icon a= Icon(Icons.favorite_border,color:Colors.red,);
bool check=false;

class wishDetails extends StatefulWidget {
  wishDetails(void add);



  @override
  State<wishDetails> createState() => _wishDetailsState();
}

class _wishDetailsState extends State<wishDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }




  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: wish.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Single_prod(
            prod_name: wish[index]['name'],
            prod_picture: wish[index]['picture'],
            prod_price: wish[index]['price'],
            prod_old_price: wish[index]['old_price'],
            prod_detail: wish[index]['detail'],
          );
        }
    );
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_detail;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_detail,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child:Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=>
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder:(context)=>ProductDetails(
                            product_detail_name: prod_name,
                            product_detail_new_price: prod_price,
                            product_detail_old_price: prod_old_price,
                            product_detail_picture: prod_picture,
                            product_detail: prod_detail,

                          )
                      )
                  ),
              child:
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GridTile(

                    header: Stack(
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                            ],
                          ),
                        ),

                        Positioned(
                          top: 0,
                          left: 2,
                          child: Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffFEFEFE)),
                            child: Text('15% OFF',style: TextStyle(color: Colors.orangeAccent),),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child:Stack(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Color(0xffFEFEFE),),

                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        if(check==false)
                                        {
                                          check=true;
                                          a=Icon(Icons.favorite,color:Colors.red,);

                                        }
                                        else{
                                          check=false;
                                          a=Icon(Icons.favorite_border,color:Colors.red,);


                                        }

                                      });

                                    },
                                    icon: a,
                                  ),
                                ),),

                            ],
                          ),

                        ),


                      ],
                    ),

                    footer:
                    Padding(padding: const  EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child:
                      ClipRRect(

                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            margin: EdgeInsets.all(0),
                            height: 40,

                            child:Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child:Container(
                                    color: Colors.white,
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(prod_name,style: TextStyle(color: Colors.black,fontSize: 15),),
                                        Text(prod_name,style: TextStyle(color: Colors.black,fontSize: 10)),
                                      ],
                                    ),
                                  ),

                                ),
                                Container(
                                  color: Color(0xff432267),
                                  height: double.maxFinite,
                                  width: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/icon/shopping-bag.png',width: 25,height: 25,),
                                      Text('\$$prod_price',style: TextStyle(fontSize: 10,color: Colors.white),)

                                    ],
                                  ),
                                ),

                              ],
                            )

                        ),
                      ),
                    ),

                    child: Image.asset(prod_picture,fit: BoxFit.cover,)
                ),
              ),

            ),
          ),
        ),
      ),

    );
  }

  void setState(Null Function() param0) {}
}

