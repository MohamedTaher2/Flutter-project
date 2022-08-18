
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

import 'LoginScreen.dart';
import 'main_screen.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = [];

  @override
  initState()  {
    // TODO: implement initState
    super.initState();
    slides.add(
      new Slide(
        title: "",
        description: "we strive to have a poitive impact on"
            " customers, employees, small business, the"
            " economy.end communities",
        pathImage: "assets/slidephoto/Catalogue-amico.png",


      ),
    );
    slides.add(
      new Slide(
        title: "",
        description: "we promote the fact that we offer"
            "free shipping for all orders",

        pathImage: "assets/slidephoto/Free shipping-pana.png",
      ),
    );
    slides.add(
      new Slide(
        title: "",
        description: "Be sure to log in to be book"
            "newly added offers",
        pathImage: "assets/slidephoto/Mobile Marketing-pana.png",

      ),
    );

  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 250,
                  //padding: EdgeInsets.all(20),
                  child: Image.asset(
                    '${currentSlide.pathImage}',
                    matchTextDirection: true,

                    fit: BoxFit.fill,

                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text('${currentSlide.description}'
                    ,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),

              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      colorDot: Color(0xffE99000),


      backgroundColorAllSlides: Color(0xff432267),
      renderSkipBtn: Text("Skip",style: TextStyle(color: Colors.white,fontSize: 20),),

      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Color(0xffE99000),fontSize: 20),
      ),

      renderDoneBtn: Text(
        "Login",

        style: TextStyle(color: Color(0xffE99000),fontSize: 20),
      ),
      //colorDoneBtn: Colors.white,
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => Login(),
        ),
      ),
    );
  }
}