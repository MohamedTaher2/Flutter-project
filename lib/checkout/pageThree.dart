import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      animationDuration: 2000,
                      radius: 45,
                      percent: 1,
                      lineWidth: 7,
                      center: Icon(Icons.done,size: 35,color: Color(0xff432267),),
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
            SizedBox(
              height: 40,
              child: Text('Done',style: TextStyle(color: Color(0xff432267)),),
            ),







          ],
        ),
      ),
    );
  }
}
