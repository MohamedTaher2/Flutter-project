import 'package:goshop/Home/onBoarding.dart';
import 'package:goshop/checkout/PageTwo.dart';
import 'package:goshop/checkout/pageOne.dart';
import 'package:goshop/checkout/pageThree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../Home/main_screen.dart';

class CeckOut extends StatefulWidget {
  const CeckOut({Key? key}) : super(key: key);

  @override
  State<CeckOut> createState() => _CeckOutState();
}

class _CeckOutState extends State<CeckOut> {
  bool isChecked = false;
  PageController _controller = PageController();
  @override
  void initState() {
    // TODO: implement initState
    _controller = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        drawer: onBoarding(),
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              'Checkout',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
          ),
          actions: [IconButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:
                          (context){
                        return mainScreen();
                      })
              );
            },
            icon: const Icon(Icons.home),
          ),],
          backgroundColor: Color(0xff432267),
        ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 20,
            ),
            Container(
              height: 500,
              child: PageView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                        padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
                      primary: Colors.amber,
                      side: BorderSide(color: Colors.amber)
                    ),
                      onPressed: (){
                        _controller.previousPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn,);
                      },
                      child: Text('Back',style: TextStyle(color: Colors.amber),
                      ),

                  ),
                ),
                SizedBox(width: 50,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.amber,
                        padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 25),
                        primary: Colors.white,
                        side: BorderSide(color: Colors.amber)
                    ),
                    onPressed: (){
                      _controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn,);
                    },
                    child: Text('Next',style: TextStyle(color: Colors.white),
                    ),

                  ),
                ),
              ],
            ),
          ],
        ),
      )


    );
  }
}
