import 'package:goshop/Home/products_details.dart';
import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}
Icon a= Icon(Icons.favorite_border,color: Colors.red,) ;
bool check= false ;
class _ProductsState extends State<Products> {
  var product_list =[
    {
      "name":'BMW M3',
      "picture":'image/bm1.jpg',
      "old_price": 120,
      "price":85,
      "detail":'A four-door sports car, superior performance and eye-catching design.'
          'With a host of technical innovations drawn from high-performance sports cars.'
          'Let us put in your hands unprecedented degrees of dynamism and agility.'
          'Moments of the utmost exhilaration and excitement bring before your eyes one true one:'
          ' it\'s time to pamper yourself like never before with the BMW M3 Sedan.',
    },
    {
      "name":'dodge',
      "picture":'image/dodge.jpg',
      "old_price": 400,
      "price": 385,
      "detail":'The 2022 Dodge Charger SRT Hellcat, which comes standard with 717 horsepower, is one helluva family sedan. Not only are its big back seat and trunk great for taking more than two people on trips or just out to lunch, it accelerates so ferociously that the same passengers will be cussing up a storm or asking for an airsick bag­–or both. For an extra dose of "hold onto your butts," the Redeye model boasts a ridiculous 797 horses and will hit 60 mph in 3.5 seconds on its way to a claimed 203-mph top speed. While all that power might be too much for some, the widebody-only Charger actually handles surprisingly well for its size. Just expect better communication from your in-laws than from its steering.',
    },
    {
      "name":'Skode',
      "picture":'image/skode.jpg',
      "old_price": 300,
      "price": 285,
      "detail":'A four-door sports car, superior performance and eye-catching design.'
          'With a host of technical innovations drawn from high-performance sports cars.'
          'Let us put in your hands unprecedented degrees of dynamism and agility.'
          'Moments of the utmost exhilaration and excitement bring before your eyes one true one:'
          ' it\'s time to pamper yourself like never before with the BMW M3 Sedan.',

    },
    {
      "name":'Range',
      "picture":'image/range.jpg',
      "old_price": 500,
      "price": 485,
      "detail":'A four-door sports car, superior performance and eye-catching design.'
          'With a host of technical innovations drawn from high-performance sports cars.'
          'Let us put in your hands unprecedented degrees of dynamism and agility.'
          'Moments of the utmost exhilaration and excitement bring before your eyes one true one:'
          ' it\'s time to pamper yourself like never before with the BMW M3 Sedan.',

    },
    {
      "name":'Toyot',
      "picture":'image/toy.jpg',
      "old_price": 500,
      "price": 485,
      "detail":'A four-door sports car, superior performance and eye-catching design.'
          'With a host of technical innovations drawn from high-performance sports cars.'
          'Let us put in your hands unprecedented degrees of dynamism and agility.'
          'Moments of the utmost exhilaration and excitement bring before your eyes one true one:'
          ' it\'s time to pamper yourself like never before with the BMW M3 Sedan.',

    },
    {
      "name":'Toyot',
      "picture":'image/toy.jpg',
      "old_price": 500,
      "price": 485,
      "detail":'A four-door sports car, superior performance and eye-catching design.'
          'With a host of technical innovations drawn from high-performance sports cars.'
          'Let us put in your hands unprecedented degrees of dynamism and agility.'
          'Moments of the utmost exhilaration and excitement bring before your eyes one true one:'
          ' it\'s time to pamper yourself like never before with the BMW M3 Sedan.',

    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_price: product_list[index]['price'],
          prod_old_price: product_list[index]['old_price'],
          prod_detail: product_list[index]['detail'],
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
                                      icon: a,
                                      // icon: Icon(
                                      //   ,
                                      //   color:Colors.deepOrange,
                                      //   size: 22,),
                                      onPressed: () {
                                        setState(() {

                                        });
                                      },
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



