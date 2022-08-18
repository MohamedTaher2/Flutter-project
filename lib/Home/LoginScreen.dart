
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'main_screen.dart';




class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);



  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late SharedPreferences logindata;
  TextEditingController emailCountroller = TextEditingController();
  TextEditingController passCountroller = TextEditingController();
  late bool newuser;
  var formKey =GlobalKey<FormState>();
  bool seeText = true;
  Icon eye = Icon(Icons.visibility_off);

  @override
  void initState(){
    super.initState();
    check_if_already_login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff432267),
      body:SingleChildScrollView(child:
      Form(
        key: formKey,
        child: Column(


          children: [



            Padding(padding: const EdgeInsets.fromLTRB(0, 100, 0, 0) ,
              child:Container(
                width: 250,
                height: 250,
                child: Image.asset('assets/icon/loginscreen.png',fit: BoxFit.contain,),
              ),

            ),

            const SizedBox(height: 30,),

            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 70,
              decoration: BoxDecoration(border: null,color: null),

              child: TextFormField(
                style: TextStyle(color: Color(0xffE99000),fontSize: 20),
                keyboardType: TextInputType.emailAddress,
                controller: emailCountroller,
                decoration: InputDecoration(

                  border: UnderlineInputBorder(),

                  labelText: "Email",
                  labelStyle: TextStyle(color:Color(0xffFEFEFE) ,fontWeight: FontWeight.bold,fontSize: 20),
                  hintText: "EnterEmail",
                ),
                validator: (value)
                {
                  if(value!.isEmpty){
                    return 'email address must not be empty';
                  }
                  return null;
                },


              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 70,
              decoration: BoxDecoration(border: null,color: null),
              child: TextFormField(
                style: TextStyle(color: Color(0xffE99000),fontSize: 20),
                controller: passCountroller,
                keyboardType: TextInputType.visiblePassword,
                obscureText: seeText,
                validator: (value)
                {
                  if(value!.isEmpty){
                    return 'password must not be empty';
                  }
                  return null;
                },


                decoration: InputDecoration(


                  border: UnderlineInputBorder(),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color(0xffFEFEFE),fontWeight: FontWeight.bold,fontSize: 20),
                  hintText: "EnterPassword",

                  suffixIcon: IconButton(
                    icon: eye,
                    onPressed: () {
                      setState((){
                        if(seeText==true){
                          seeText=false;
                          eye = Icon(Icons.visibility);
                        }
                        else{
                          seeText=true;
                          eye = Icon(Icons.visibility_off);
                        }

                      });
                    },
                  ),
                  //Icon(Icons.remove_red_eye_rounded),

                ),

              ),
            ),


            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0) ,
              child: Text('Forget password?',style: TextStyle(color: Color(0xffFEFEFE)),),),


            ],),

            SizedBox(height: 100,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                  if(formKey.currentState!.validate()){

                  }
                  String useremail= emailCountroller.text;
                  String passuser= passCountroller.text;
                  if(useremail != '' && passuser !=''){
                    print('successfull');
                    logindata.setBool('login', false);

                    logindata.setString('useremail', useremail);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>mainScreen()));


                  }
                },
                  child:
                  Text('Log in',style: TextStyle(color: Colors.orange,fontSize: 18,),),
                ),

                Container(
                  height: 15,
                  child:  VerticalDivider(color: Color(0xffFEFEFE),width: 25,thickness: 2,),
                ),
                TextButton(onPressed: (){
                  // Navigator.push(context,
                  //     MaterialPageRoute(
                  //         builder:
                  //             (context){
                  //           return signUp();
                  //
                  //         }
                  //     )
                  // );
                },
                  child: Text('Register',style: TextStyle(color: Color(0xffFEFEFE)),),),


              ],
            ),




          ],

        ),
      ),
      ),


    );
  }
  void check_if_already_login() async{
    logindata =await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    print(newuser);
    if(newuser == false){
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context)=> mainScreen()));
    }

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailCountroller.dispose();
    passCountroller.dispose();
  }

}
