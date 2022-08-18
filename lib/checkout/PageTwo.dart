import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> with SingleTickerProviderStateMixin {

  late final AnimationController _animation;
  PageController controller = PageController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animation = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this);
      controller = PageController(
      initialPage: 0,
    keepPage: true,
    viewportFraction: 1,
    );
  }
  @override
  void dispose() {

    super.dispose();
    _animation.dispose();
    controller.dispose();
  }
  bool like = false;


  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 400,
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1500,
                      radius: 45,
                      percent: .7,
                      lineWidth: 7,
                      center: Icon(Icons.payment,color: Color(0xff432267),),
                      // center: Text(
                      //   '10%',style: TextStyle(color: Colors.deepPurple,
                      // fontSize: 18,fontWeight: FontWeight.w500),
                      // ),
                      backgroundColor: Color(0xff432267),
                      progressColor: Color(0xff432267),


                      backgroundWidth: 1,
                      circularStrokeCap: CircularStrokeCap.round,

                    ),
                    SizedBox(),
                  ],
                )
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(
                      onPressed: (){
                        if (like == false) {
                          like = true;
                          _animation.forward();
                        }
                        else{
                          like = false;
                          _animation.reverse();
                        }
                        controller.animateToPage(1, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                      },
                      child:
                      Lottie.network(
                        height: 40,
                        width: 60,
                        'https://assets8.lottiefiles.com/packages/lf20_BzUyid.json',
                        controller: _animation,
                      ),
                      style: ElevatedButton.styleFrom(
                        //backgroundColor: Colors.white,
                        padding: EdgeInsets.only(left: 13,right: 13),
                        primary: Colors.white,
                        side: BorderSide(color: Colors.grey),
                        shape: StadiumBorder(),
                      ),
                    ),
                    SizedBox(),
                    ElevatedButton(
                      onPressed: (){
                        if (like == false) {
                          like = true;
                          _animation.forward();
                        }
                        else{
                          like = false;
                          _animation.reverse();
                        }
                        controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.easeIn);

                      },
                      child:
                      Lottie.network(
                        height: 40,
                        width: 60,
                        'https://assets10.lottiefiles.com/packages/lf20_tsmRqX.json',
                        controller: _animation,
                      ),
                      style: ElevatedButton.styleFrom(
                        //backgroundColor: Colors.white,
                        padding: EdgeInsets.only(left: 13,right: 13),
                        primary: Colors.white,
                        side: BorderSide(color: Colors.grey),
                        shape: StadiumBorder(),
                      ),
                    ),
                    SizedBox(),
                    ElevatedButton(
                      onPressed: (){
                        if ( like == false) {
                          like = true;
                          _animation.forward();
                        }
                        else{
                          like = false;
                          _animation.reverse();
                        }
                        controller.animateToPage(3, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                      },
                      child:
                      Lottie.network(
                        height: 40,
                        width: 60,
                        'https://assets8.lottiefiles.com/packages/lf20_tn6mwj.json',
                        controller: _animation,
                      ),
                      style: ElevatedButton.styleFrom(
                       // backgroundColor: Colors.white,
                        padding: EdgeInsets.only(left: 13,right: 13),
                        primary: Colors.white,
                        side: BorderSide(color: Colors.grey),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            Container(
              height: 200,
              child: PageView(
                controller: controller,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Text(
                          'Choose Your Payment Option ',
                          style: TextStyle(
                            color: Color(0xff432267),
                            fontWeight: FontWeight.w400,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text('Email',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.password,),
                            label: Text('Password',
                                style: TextStyle(
                                  color: Colors.grey,
                                )
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('Name on Card 3',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Expanded(

                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextField(

                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.payment,),
                                  label: Text('Card Number',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    label: Text('Expiry Date',style: TextStyle(color: Colors.grey),),
                                  ),

                                )
                            ),
                            Expanded(

                                child: SizedBox(
                                  width: 10,
                                )
                            ),
                            Expanded(
                                flex: 4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    label: Text('CVV',style: TextStyle(color: Colors.grey,),),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('Name on Card 4',
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Expanded(

                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextField(

                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.payment,),
                                  label: Text('Card Number ',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    label: Text('Expiry Date',style: TextStyle(color: Colors.grey),),
                                  ),

                                )
                            ),
                            Expanded(

                                child: SizedBox(
                                  width: 10,
                                )
                            ),
                            Expanded(
                                flex: 4,
                                child: TextField(
                                  decoration: InputDecoration(
                                    label: Text('CVV',style: TextStyle(color: Colors.grey,),),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),






          ],
        ),
      ),
    );;
  }
}
