import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    _navigatetohome();
  }


  _navigatetohome()async{

    await Future.delayed(Duration(milliseconds: 5000), ()  {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter Demo',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', width:  100, height: 100,),
            Container(
              child: Text(
                  "TeamTrics",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),

              ),
            ),
          ]
        ),
      )
    );
  }
}


