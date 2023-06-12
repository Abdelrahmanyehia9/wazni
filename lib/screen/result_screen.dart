import 'package:flutter/material.dart';
import 'package:waznii/model/bmi_model.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body:
        SafeArea(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [              Text(BmiModel.statueBMI(), style: const TextStyle(color: Colors.white , fontSize: 35 , fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

                Image.asset(BmiModel.ImageBMI(),height: MediaQuery.of(context).size.height*0.345,)
                ,const SizedBox(height: 15,)

                ,const Text("your BMI Score  \n is " , style: TextStyle(color: Colors.white , fontSize: 19),textAlign: TextAlign.center,)
                ,Text(BmiModel.bmi!.toStringAsFixed(1) , style: const TextStyle(color: Colors.white , fontSize: 31 , fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                ,const SizedBox(height: 15,)
                , Text(BmiModel.discrepBMI() , style: const TextStyle(color: Colors.grey , fontSize: 10),textAlign: TextAlign.center,)


            ],),
          ),
        ),
      bottomNavigationBar: Material(
      color:  Colors.pink,
      child: InkWell(
        onTap: () {
  Navigator.pop(context);
        },
        child: const SizedBox(
          height: kToolbarHeight,
          width: double.infinity,
          child: Center(
            child: Text(
              'add new Bmi',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),

    );
  }
}
