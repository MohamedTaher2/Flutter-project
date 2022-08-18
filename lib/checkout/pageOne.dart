import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
                      animationDuration: 1000,
                      radius: 45,
                      percent: .3,
                      lineWidth: 7,
                      center: Icon(Icons.location_on_rounded,color: Color(0xff432267),),
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
            ),

            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                cursorColor: Color(0xff432267),
                keyboardType: TextInputType.streetAddress,

                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff432267)),
                  ),
                  label: Text('Street 1',
                      style: TextStyle(
                      color: Colors.grey,

                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                cursorColor: Color(0xff432267),
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff432267)),
                  ),
                  label: Text('Street 2',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                cursorColor: Color(0xff432267),
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff432267)),
                  ),
                  label: Text('City',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                      child: TextField(
                        cursorColor: Color(0xff432267),
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          label: Text('State',style: TextStyle(color: Colors.grey),),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff432267)),
                          ),

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
                          cursorColor: Color(0xff432267),
                        keyboardType: TextInputType.streetAddress,
                        decoration: InputDecoration(
                          label: Text('Country',style: TextStyle(color: Colors.grey,),),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff432267)),
                        ),
                      )
                  ),
                  )
                ],
              ),
            ),





          ],
        ),
      ),
    );
  }
}
