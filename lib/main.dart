import 'package:example_meme_generator/Animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOG IN UI IN FLUTTER ',
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            child: Stack(
              children: [
                Positioned(
                  height: 380,
                  top: -40,
                  width: width,
                  child:FadeAnimation(1,Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/b1.png'),
                        fit:BoxFit.fill,
                      ),
                    ),
                  ),
                  ),
                ),
                Positioned(
                  height: 390,
                  width: width+20,
                  child:FadeAnimation(1.5, Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/b2.png'),
                        fit:BoxFit.fill,
                      ),
                    ),
                  ),
                  )
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 40),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             FadeAnimation(1.6, Text("Login",style: TextStyle(color: Color.fromRGBO(49, 39, 79, 1),fontSize: 38),
              ),
             ),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
               1.5,Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(196, 135, 198, .4),
                        blurRadius: 20.0,
                        offset: Offset(0,10),
                      )

                    ],


                  ),

                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: Colors.grey[300],
                          ))
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),

                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),

                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              FadeAnimation(1.7,Center(child: Text("Forgot Password",style: TextStyle(color: Color.fromRGBO(195, 135, 198, 1)),))),
              SizedBox(
                height:20,
              ),
              FadeAnimation(
                1.8, Container(
                  height: 50,
                  margin:EdgeInsets.symmetric(horizontal: 60) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(49, 39, 79, 1),
                  ),
                  child:Center(
                    child: Text(
                      "LogIn",
                      style: TextStyle(color: Colors.white),
                    ),
                  ) ,
                ),
              ),
              SizedBox(height:28 ,),
              FadeAnimation(1.9,Center(child: Text("Create Account ",style: TextStyle(color: Color.fromRGBO(195, 135, 198,.9 ),)),))


            ]

          ) ,
          ),
          
        ],
      ),
    );
  }
}

