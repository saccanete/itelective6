import 'package:flutter/material.dart';
import 'package:itelective6/views/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:itelective6/views/images.dart';
import 'package:itelective6/views/message.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.cyan[200]),
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      routes: {
        '/': (context) => LoginScreen(),
        '/homescreen': (context) => HomeScreen(),
        '/message': (context) => MessageScreen(),
        '/images': (context) => Images(),
      },
    ));

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.grey.withOpacity(0.5), BlendMode.dstATop),
          image: AssetImage('assets/copy.png'),
          fit: BoxFit.cover,
        )),
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          Positioned(
            bottom: 50,
            top: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          color: Colors.white,
                        ),
                        width: 500,
                        height: 580,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    color: Colors.black,
                                  ),
                                  child: Text(
                                    "dip",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                                Text("ch",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                              height: 70,
                            ),
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Create Account",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            SizedBox(
                              height: 45,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .28,
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                obscureText: false,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: UnderlineInputBorder(),
                                    labelStyle: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .28,
                              child: TextField(
                                obscureText: true,
                                maxLines: 1,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: UnderlineInputBorder(),
                                    labelStyle: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                                color: Colors.black,
                              ),
                              width: MediaQuery.of(context).size.width * .28,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/homescreen');
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black38),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Log in here',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  ]),
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 500,
                      height: 580,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/copy.png'),
                            fit: BoxFit.cover,
                          )),
                      //child: Text("Hello,"),
                    ),
                  ],
                )
              ], //widgettt
            ),
          )
          //stack ba?
        ]),
      ),
    ); //Scaffold parenthe
  } //widget na bracket
}//class na bracket
      
