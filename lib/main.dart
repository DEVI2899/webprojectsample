import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webproject/listtile.dart';
import 'package:webproject/profile.dart';
import 'package:webproject/sidebar%20and%20grid%20testing.dart';
import 'package:webproject/unorderlist.dart';

import 'clickprofile.dart';
import 'grid.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
       theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const tesing (title: 'WEB APP'),
     // home: clickprofile(),
    //  home:listtile(title: '',),
    //  home:  ListViewBuilder(),
      home:NavigationBarProvider(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 class Login extends StatefulWidget {
   const Login({Key? key, required String title}) : super(key: key);
 
   @override
   State<Login> createState() => _LoginState();
 }
 
 class _LoginState extends State<Login> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.cyan,
         title: Text("Flutter Web App"),

         centerTitle:true,
       ),
       body:
       ListView(
           padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/8),
         children: [
           Menu(),
           Body(),
         ],
       )
     );
   }
 }

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Row(
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              _MenuItem(title:'Home'),
              _MenuItem(title: 'About us'),
              _MenuItem(title: 'Contact us'),
              _MenuItem(title: 'Help'),
            ],
          ),
          Row(
            children: [
              _MenuItem(title: 'Sign in' ,isActive: true),
              _registerbutton(),
            ],

          )
        ],
      ),
    );
  }
}

Widget _MenuItem({String title = 'Title Menu', isActive = false}) {
  return Padding(
    padding: const EdgeInsets.only(right: 75),
    child: SafeArea(
      child: Column(
        children: [
          Text('$title', style: TextStyle(fontWeight: FontWeight.bold ,color:isActive ?Colors.cyan :Colors.grey ),),
          SizedBox(height: 6,),
          isActive ? Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              color:  Colors.deepPurple,
              borderRadius: BorderRadius.circular(30)
            ),
          ):SizedBox()
  ]),
    ),
  );
}
Widget _registerbutton(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius:  BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(color: Colors.white38, spreadRadius: 12, blurRadius: 10,),
      ]),
    child: Text("Register",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    ),
  );
}
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text("Sign in to \nMy Applicaion", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 35),),
             const SizedBox(height: 30,),
              const Text("If You Don't have a Account ", style :TextStyle(fontWeight: FontWeight.normal, color: Colors.black54)),
              const SizedBox(height: 10,),
              Row(
                children: [
               const Text('You Can',style: TextStyle(fontWeight: FontWeight.bold, color:Colors.black54),),
                SizedBox(width :15,),
                Text('Register here!', style: TextStyle(fontWeight: FontWeight.bold, color:Colors.deepPurple),)
              ],),
              SizedBox(height: 20,),
              Image.asset("images/logintemp.jpg", width:300, height: 300,),
            ],
          ),
        ),
        Container(
           height: 700,
          width: 400,
          child: Column(
              children: [
                Image.asset('images/Alre.jpg', width: 300,),
              ],

          ),
        ),
        SizedBox(height: 20,width: 40,)
      ],
    );
  }
}

Widget _formlogin(){
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'Enter email or Phone number',
          filled: true,
          fillColor: Colors.blueGrey[50],
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      SizedBox(height: 30,),
      TextField(
        decoration: InputDecoration(
          hintText: 'Password',
          counterText: 'Forgot password?',
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Colors.blueGrey[50],
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),

    ],

  );
}





 

