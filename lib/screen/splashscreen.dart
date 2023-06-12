import'package:flutter/material.dart';
import'package:lottie/lottie.dart';
import 'package:waznii/screen/home_sceen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> HomeScreen()), (route) => false) ;

    }
    );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.2,),
              SizedBox(height: MediaQuery.of(context).size.height*0.4,
                  child: Image.asset("assets/ball.png")),

              const Text("Waznii | وزنى " , style: TextStyle(color: Colors.white , fontSize: 35 , fontWeight: FontWeight.w900), textAlign: TextAlign.center,) ,
              Lottie.asset("assets/4.json",width: 150)  ,
              const Text("develop by Eng/ Abdelrahman Yehia" , style: TextStyle(color:Colors.white , fontSize: 10 , fontWeight: FontWeight.bold),)

            ],
          ),
        )
    );
  }
}
