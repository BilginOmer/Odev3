import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height:200,
              color: Colors.blue,
            ),
            top(context),
            login(context),
            bottom(context),
            buttton(context)

          ],
        ),
      ),
    );
  }
}

  Widget top(BuildContext context) {

    return Container(
      color: Colors.blue,
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children : [

          Image.asset('images/logo.png', height: 80,width: 80,),
          Text("TeamTrics",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
        ]
      ),
    );

  }

Widget login(BuildContext context) {

  return Container(
    color: Colors.blue,
      child: Row(
        children: const [
          Expanded(child: Center(child: Text("LOG IN",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),),),
          Expanded(child: Center(child: Text("SIGN IN",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),),),
        ],
      ),
  );

}


Widget bottom(BuildContext context) {

  return Container(

      margin: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Email",
                ),
              ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: "Password",
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
          child : Text("Forget your password?")
          )
        ]
      )
  );

}

Widget buttton(BuildContext context) {

  return Container(
    height: 40,
    width: 300,
    child: Center(
      child: Text("LOGIN",style: TextStyle(color: Colors.white, fontSize:20, fontWeight: FontWeight.bold ),
      ),
    ),
    color: Colors.blue,
  );

}


