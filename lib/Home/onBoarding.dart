import 'package:flutter/material.dart';
import 'package:goshop/Cart.dart';
import 'package:goshop/Home/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../orderHistoryBody.dart';
import '../WishList/wish_list.dart';
import 'LoginScreen.dart';
import 'main_screen.dart';




class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
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
    return  Drawer(
    backgroundColor: Color(0xff432267),
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Zyad Tarek',textAlign: TextAlign.center,),
          accountEmail: Text('$usereamil'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor:Colors.orange ,
              child: Icon(Icons.person,color:Color(0xff432267) ,size: 50,),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xff432267),
          ),
        ),
        InkWell(
          child: ListTile(
            leading:
            Icon(Icons.home,color: Colors.orange,),
            title: const Text('Home',style: TextStyle(color: Colors.white,fontSize: 15),),
          ),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder:
                        (context){
                      return mainScreen();
                    })
            );
          },

        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.favorite,color: Colors.orange,),
            title: const Text('Wishlist',style: TextStyle(color: Colors.white,fontSize: 15),),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:
                          (context){
                        return wishList();
                      })
              );
            },

          ),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.shopping_bag,color: Colors.orange,),
            title: const Text('cart',style: TextStyle(color: Colors.white,fontSize: 15),),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:
                          (context){
                        return CartScreen();
                      })
              );
            },

          ),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.event_note_outlined,color: Colors.orange,),
            title: const Text('Order History',style: TextStyle(color: Colors.white,fontSize: 15),),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:
                          (context){
                        return OrderHistory();
                      })
              );
            },

          ),
        ),
        InkWell(
          child:  ListTile(
            leading: Icon(Icons.account_circle,color: Colors.orange,),
            title: const Text('Profile',style: TextStyle(color: Colors.white,fontSize: 15),),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:
                          (context){
                        return profile();
                      })
              );
            },
          ),
        ),
        InkWell(
          child:  ListTile(
            leading: Icon(Icons.settings,color: Colors.orange,),
            title: const Text('App Setting',style: TextStyle(color: Colors.white,fontSize: 15),),

          ),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.help,color: Colors.orange,),
            title: const Text('Help & FAQs',style: TextStyle(color: Colors.white,fontSize: 15),),

          ),
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.logout,color: Colors.orange,),
            title: const Text('Logout',style: TextStyle(color: Colors.white,fontSize: 15),),
            onTap: (){
              logindata.setBool('login', true);
              Navigator.pushReplacement(context,
                  new MaterialPageRoute(builder: (context)=>Login()));

            },

          ),
        ),

      ],
    ),



  );
  }
}



