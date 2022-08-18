import 'package:goshop/home/onBoarding.dart';
import 'package:goshop/home/product.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Cart.dart';


class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  late SharedPreferences logindata;
  late String usereamil;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState((){
      usereamil=logindata.getString('useremail')!;
    });
  }
  @override

  Widget build(BuildContext context) {
    return
        Scaffold(
          backgroundColor: Colors.white,
          drawer: onBoarding(),

          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff432267),
            centerTitle: true,
            title:Text('Home'),
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder:
                                (context){
                              return CartScreen();
                            })
                    );
                  },
                  icon: Image.asset('assets/icon/shopping-bag.png'),
              ),
            ],
          ),

          body:SingleChildScrollView(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              /*/**************************search***********************************************************************/*/
              Container(
                width: double.infinity,
                color: Colors.green,
                height: 80,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 40,
                          color: Color(0xff432267),
                        ),
                        Container(
                          height: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '         Type a Product',
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xff432267),
                              ),
                              suffixIcon: Icon(
                                Icons.filter_list,
                                color: Color(0xff432267),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                  padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     
                      Text("Category",style: TextStyle(fontSize: 20),),
                      TextButton(onPressed: (){}, child: Text('See all(9)',style:TextStyle(color: Colors.purple) ,)),
                    ],
                  ),
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: 110,
                          height: 110,
                          color: Colors.purple[400],
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Opacity(
                                opacity: .7,
                                child: Container(
                                  child: Image(
                                    image: AssetImage('image/wepik-photo-mode-2022716-17442.png',),
                                  ),
                                ),
                              ),
                              Text(
                                'Cars',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: 110,
                          height: 110,
                          color: Colors.purple[400],
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Opacity(
                                opacity: .6,
                                child: Container(
                                  child: Image(
                                    image: AssetImage('image/wepik-photo-mode-2022716-17473.png'),
                                  ),
                                ),
                              ),
                              Text(
                                'Mechanics',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: 110,
                          height: 110,
                          color: Colors.purple[400],
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Opacity(
                                opacity: .7,
                                child: Container(
                                  child: Image(
                                    image: AssetImage('image/wepik-photo-mode-2022716-18634.png'),
                                  ),
                                ),
                              ),
                              Text(
                                'Service',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //
              //     ClipRRect(
              //       borderRadius: BorderRadius.circular(100),
              //       child:Padding(
              //         padding:EdgeInsets.fromLTRB(0, 0,0, 0),
              //         child:Image.asset('image/bmw.png',width: 170,height: 170,),
              //       ),
              //     ),
              //     ClipRRect(
              //       borderRadius: BorderRadius.circular(100),
              //       child:Padding(
              //         padding:EdgeInsets.fromLTRB(0, 0,0, 0),
              //         child:Image.asset('image/Mercedes.png',width: 180,height: 180,),
              //       ),
              //     ),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Image(
                        image: AssetImage('image/banner_premium_car_rental_special_sale_3d_render.jpg'),fit: BoxFit.cover,

                      ),
                      Image(
                        image: AssetImage('image/r2.jpg'),fit: BoxFit.cover,

                      ),
                      Image(
                        image: AssetImage('image/dodge.jpg'),fit: BoxFit.cover,
                      ),

                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child:
                    Text('Popular',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 8,right: 8),
                height: 500,
                child: Products(),
              ),
            ],

          ),
            ),



        );


  }
}

