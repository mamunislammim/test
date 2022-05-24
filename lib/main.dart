


import 'package:flutter/material.dart';

void main(){
  runApp( const MaterialApp(
    home: Scaffold(
        body: MyBody(),
  ),));
}

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  String txt ='';
  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(135),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: const TextStyle(
                color: Colors.red,
                fontSize: 25,
              ),
              hintText: "Enter Your Password",
              hintStyle: const TextStyle(
                color: Colors.amber,
                fontSize: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              suffixIcon: IconButton(
                        icon: Icon(_secure? Icons.remove_red_eye: Icons.security_outlined),
                        onPressed: (){
                          setState(() {
                              _secure = !_secure;
                          });
                        },
              ),
              prefixIcon: const Icon(Icons.lock,
                            color: Colors.green,
              ),
              prefixIconColor: Colors.green,
              errorText: txt.isEmpty?" Found Error!!!":null,
            ),
            onSubmitted: (value){
              setState(() {
                txt = value;
              });
            },
            obscureText: _secure,
            obscuringCharacter: "@" ,
          ),
        ),
    );
  }
}
