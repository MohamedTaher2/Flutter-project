import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff432267),
      appBar: AppBar(
        backgroundColor: Color(0xff432267),
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile',style: TextStyle(color: Colors.white),),
        actions: [
          Container(
            width: 70,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop(context);
              },
              icon: Text('Cancel',style: TextStyle(color: Color(0xffE99000)),),

            ),
          ),

        ],
      ),
      body:SingleChildScrollView(child:
      Column(
        children: [


          Padding(padding: const EdgeInsets.fromLTRB(20, 50,20, 0),
            child:Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(

                          height: 150,
                          width: 150,
                          color: Color(0xff432267),
                          child: Icon(Icons.account_circle,size:150,color: Colors.white,)
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                              height: 52,
                              width: 52,
                              color: Colors.white,

                          ),
                        ),
                    ),
                    Positioned(
                      bottom: 2,
                        right: 2,

                          child:   ClipRRect(

                            borderRadius: BorderRadius.circular(100),

                            child: Container(
                              // decoration: BoxDecoration(),


                                height: 48,
                                width: 48,
                                color: Color(0xff432267),
                                child: Icon(Icons.mode,size:30,color: Colors.white,)
                            ),
                          ),



                    ),


                  ],
                ),





                SizedBox(height: 15,),

                Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),color: Colors.white),

                  child: TextField(

                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20)),),
                      hintText: '   Change your Name',
                      prefixIcon:
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20) ),
                            color: Color(0xffE99000)),
                        //color: Colors.orange,
                        child: Icon(Icons.account_circle,color: Color(0xff432267),),
                      ),

                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),color: Colors.white),
                  child: TextField(

                    decoration: InputDecoration(
                      hintText: '   Change your Mail',
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20)),),
                      prefixIcon:
                      Container(
                        height: 50,
                        width: 50,

                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20) ),color: Color(0xffE99000)),
                        //color: Colors.orange,
                        child: Icon(Icons.mail,color: Color(0xff432267),),
                      ),

                    ),
                  ),
                ),


                SizedBox(height: 15,),

                Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '   Change your Address',
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20)),),
                      prefixIcon:
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20) ),color: Color(0xffE99000)),
                        //color: Colors.orange,
                        child: Icon(Icons.home,color: Color(0xff432267),),
                      ),

                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),color: Colors.white),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '   Change your Location',
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20)),),
                      prefixIcon:
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20) ),color: Color(0xffE99000)),
                        //color: Colors.orange,
                        child: Icon(Icons.location_pin,color: Color(0xff432267),),
                      ),

                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  height: 50,
                 decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(21)),color: Colors.white),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '   Change your Phone',
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20)),),
                      prefixIcon: Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(borderRadius: const BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20) ),color: Color(0xffE99000)),
                        //color: Colors.orange,
                        child: Icon(Icons.call,color: Color(0xff432267),),
                      ),
                      //Icon(Icons.call,color: Colors.deepPurple,),
                      //prefixIconConstraints: ,


                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    ),
      bottomSheet:
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //color: Colors.orange,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(color: Color(0xffE99000),),
                height: 50,
                child: IconButton(icon: Text('Save',style: TextStyle(color: Colors.white),), onPressed: () {  },color: Color(0xffE99000),),
              ),

            ],
          ),



    );
  }
}

