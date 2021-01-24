import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controller1;
  TextEditingController _controller2;

  // Radio
  String _type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent[400],
        title: Text("Register Page"),
      ),

      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/back.jpg'),
            ) 
            ) ,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              
//text form fild
              Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Title(
                            color: Colors.tealAccent[400],
                            child: Text("Rergister",
                                style: TextStyle(
                                    height: 2,
                                    fontSize: 30,
                                    color: Colors.tealAccent[400]))),
                      ],
                    ),
                  ),
                ],
              ),
              
              RadioListTile(
                title: Text("Member"),
                value: "mem",
                groupValue: _type,
                onChanged: (value) {
                  setState(() {
                    _type = value;
                  });
                }),
                 RadioListTile(
                title: Text("Shop"),
                value: "shop",
                groupValue: _type,
                onChanged: (value) {
                  setState(() {
                    _type = value;
                  });
                },
              ),
              Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: 300,
                      child: TextFormField(
                        controller: _controller1,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Fullname';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Fullname",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
              
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Tel';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Tel",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    controller: _controller2,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'E-mail';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              
              Divider(),

//submit button
              Container(
                width: 200,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.tealAccent[400],
                  child: Text('Register'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print(_controller1);
                    }
                    if (_formKey.currentState.validate()) {
                      print(_controller2);
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Title(
                        color: Colors.black,
                        child: Text("VegeFruits App",
                            style: TextStyle(
                                height: 15,
                                fontSize: 17,
                                color: Colors.black))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}