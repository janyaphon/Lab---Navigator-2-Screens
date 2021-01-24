import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/loginpage.dart';
import 'package:login/screens/register.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/back.jpg'),
              ) 
              ) ,
             
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Title(
                      color: Colors.tealAccent[400],
                      child: Text("VegeFruits",
                          style: TextStyle(
                              height: 3,
                              fontSize: 40,
                              color: Colors.tealAccent[400])
                              )
                              ),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        onPressed: () {
                        Navigator.push(
                          context, 
                          CupertinoPageRoute(
                            builder: (context) => Login(),
                        )
                        );
                      },
                      child:  Text('Login'),
                      textColor: Colors.white,
                      color: Colors.tealAccent[400],
                      ),

                      RaisedButton(
                        onPressed: () {
                        Navigator.push(
                          context, 
                          CupertinoPageRoute(
                            builder: (context) => Register(),
                        )
                        );
                      },
                      child:  Text('Register'),
                      textColor: Colors.white,
                      color: Colors.tealAccent[400],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        );
  }
}
