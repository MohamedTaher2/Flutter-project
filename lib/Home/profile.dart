import 'package:flutter/material.dart';
import 'package:goshop/Edit_Card.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../Cart.dart';
import '../orderHistoryBody.dart';
import '../WishList/wish_list.dart';
import 'Edit_Profile.dart';
import 'main_screen.dart';
import 'onBoarding.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  late SharedPreferences logindata;
  late String usereamil;
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: onBoarding(),
          appBar: AppBar(
            elevation: 0,

            backgroundColor: Color(0xff432267),
            centerTitle: true,
            title: Text(
              "Profile",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: 'JosefinSans',
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                  icon: Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                      size: 34.0),
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mainScreen(),
                      ),
                    );
                  },
              ),
            ],
          ),


          body:
          SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Color(0xff432267),
                    child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                CircleAvatar(
                                  radius: 65.0,
                                  backgroundImage: AssetImage(
                                      'images/OIP.jpg'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Mohamed Ali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Josefin Sans',
                                    color: Color(0xffFEFEFE ),
                                  ),),
                                SizedBox(
                                  height: 7,

                                ),
                                Text(
                                  '$usereamil',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Josefin Sans',
                                    fontSize: 13,
                                    color: Color(0xffE99000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                  ),

                  SizedBox(height: 30,),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed:() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:
                                        (context){
                                      return EditProfile();
                                    })
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary :Color(0xff432267),
                            minimumSize: const Size(320, 50),
                            maximumSize: const Size(320, 50),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),),
                          child: Row(
                            children:[
                              Icon(
                                Icons.edit,
                                color: Color(0xffE99000),
                                size: 24.0,
                              ),
                              SizedBox(
                                width:10,
                              ),

                              Text("Edit Profile",
                                  style:TextStyle(fontSize:20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'JosefinSans',)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed:() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:
                                        (context){
                                      return CartScreen();
                                    })
                            );

                          },
                          style: ElevatedButton.styleFrom(
                            primary :Color(0xff432267),
                            minimumSize: const Size(320, 50),
                            maximumSize: const Size(320, 50),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),),
                          child: Row(
                            children:[
                              Icon(
                                Icons.shopping_bag,
                                color: Color(0xffE99000),
                                size: 24.0,
                              ),
                              SizedBox(
                                width:10,
                              ),

                              Text("Cart",
                                  style:TextStyle(fontSize:20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'JosefinSans',)),
                            ],
                          ),
                        ),

                        SizedBox(height: 10,),

                        ElevatedButton(
                          onPressed:() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:
                                        (context){
                                      return wishList
                                        ();
                                    })
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary :Color(0xff432267),
                            minimumSize: const Size(320, 50),
                            maximumSize: const Size(320, 50),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Color(0xffE99000),
                                size: 24.0,
                              ),
                              SizedBox(
                                width:10,
                              ),

                              Text("Wish list",
                                  style:TextStyle(fontSize:20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'JosefinSans',)),
                            ],
                          ),
                        ),

                        SizedBox(height: 10,),

                        ElevatedButton(
                          onPressed:() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:
                                        (context){
                                      return OrderHistory();
                                    })
                            );

                          },
                          style: ElevatedButton.styleFrom(
                            primary :Color(0xff432267),
                            minimumSize: const Size(320, 50),
                            maximumSize: const Size(320, 50),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),),
                          child: Row(
                            children:[
                              Icon(
                                Icons.history,
                                color: Color(0xffE99000),
                                size: 24.0,
                              ),
                              SizedBox(
                                width:10,
                              ),

                              Text("Order history",
                                  style:TextStyle(fontSize:20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'JosefinSans',)),
                            ],
                          ),
                        ),

                        SizedBox(height: 10,),

                        ElevatedButton(
                          onPressed:() {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder:
                                        (context){
                                      return Edit_card();
                                    })
                            );

                          },
                          style: ElevatedButton.styleFrom(
                            primary :Color(0xff432267),
                            minimumSize: const Size(320, 50),
                            maximumSize: const Size(320, 50),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),),
                          child: Row(
                            children:[
                              Icon(
                                Icons.credit_card,
                                color: Color(0xffE99000),
                                size: 24.0,
                              ),
                              SizedBox(
                                width:10,
                              ),

                              Text("Cards",
                                  style:TextStyle(fontSize:20,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'JosefinSans',)),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),


                ]),
          )
      ),
    );
  }
}
