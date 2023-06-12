import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:waznii/constants.dart';
import 'package:waznii/model/bmi_model.dart';

import 'result_screen.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double value = 0;
  int age = 15 ;
double weight = 60 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.black,
        appBar: AppBar(
          title: const Text(
            "BMI Calculator",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          shadowColor: Colors.white,
          elevation: 3,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: (){
                    setState(() {
                      Mycolors.card1 = Colors.grey.withOpacity(0.7);
                      Mycolors.card2 = Colors.grey.withOpacity(0.2);
BmiModel.isMale = true ;
                    });
                 },
                    child: Card(color: Mycolors.card1,
                      shadowColor: Colors.black,
                      elevation: 6,
                      child: Column(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(ImageConstants.maleImage
                                , width: MediaQuery.of(context).size.width*0.25),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 18.0),
                            child: Text("Male", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell( onTap: (){
                    setState(() {
                      Mycolors.card2 = Colors.grey.withOpacity(0.7);
                      Mycolors.card1 = Colors.grey.withOpacity(0.2);
                      BmiModel.isMale = false ;

                    });
                  },
                    child: Card(color: Mycolors.card2,
                      shadowColor: Colors.black,
                      elevation: 6,
                      child: Column(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(ImageConstants.femaleImage
                                , width: MediaQuery.of(context).size.width*0.25),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 18.0),
                            child: Text("Female", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Card(
                  color: Colors.grey.withOpacity(0.2),
                  child: Column(children: [
                    const SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0 ),
                      child: Text(
                        "Height",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "${(value*100+120).toStringAsFixed(1)} cm ",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                          ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0 , right: 35, left: 35),
                      child: Slider(
                          activeColor: Colors.white.withOpacity(0.8),
                          inactiveColor: Colors.grey.shade800,
                          thumbColor: Colors.white,
                          value: value,
                          onChanged: (newvalue) {
                            setState(() {
                              value = newvalue;
                            });
                          }),
                    ),

                  ]),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(color: Colors.grey.withOpacity(0.2),
                    shadowColor: Colors.black,
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 20),
                      child: Column(

                        children:  [

                           const Text("Age", style: TextStyle(color: Colors.grey, fontSize: 16,),),
                          Text(age.toString(), style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),),

                          Row(mainAxisSize: MainAxisSize.min,
                             children: [
                               FloatingActionButton(onPressed: (){
                                 setState(() {
                                  if (age < 7 ){
Fluttertoast.showToast(msg: "your age cannot be less than 6", toastLength: Toast.LENGTH_SHORT , backgroundColor: Colors.white , textColor: Colors.red);

                                  }else{
                                    setState(() {
                                      age-- ;
                                    });
                                  }

                                 });
                               } , child: const Icon(Icons.remove , color: Colors.black), backgroundColor:
                                 Colors.white,heroTag: "btn1",),
const SizedBox(width: 15,) ,
                               FloatingActionButton(onPressed: (){
                               if (age > 99){
                                 Fluttertoast.showToast(msg: "your age cannot be greater than 100" , backgroundColor: Colors.white , textColor: Colors.red);
                               }else{
                                 setState(() {
                                   age ++;

                                 });
                               }} , child: const Icon(Icons.add,color: Colors.black,),backgroundColor: Colors.white,heroTag: "btn2",)
                             ],
                           ),
                        ],
                      ),
                    ),
                  ),
                  Card(color: Colors.grey.withOpacity(0.2),
                    shadowColor: Colors.black,
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20.0),
                      child: Column(

                        children:  [

                          const Text("Weight", style: TextStyle(color: Colors.grey, fontSize: 16,),),
                          Text(weight.toString(), style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),),

                          Row(mainAxisSize: MainAxisSize.min,
                            children: [
                              FloatingActionButton(

                                onPressed: (){
                                if (weight  < 21){
                                  Fluttertoast.showToast(msg: "Your weight cannot be less than 20 kg" , backgroundColor: Colors.white , textColor: Colors.red) ;
                                }else{
setState(() {
  weight -- ;
});                              }
                              } , child: const Icon(Icons.remove , color: Colors.black), backgroundColor:
                              Colors.white,heroTag: "btn3",),
                              const SizedBox(width: 15,) ,
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight ++ ;
                                });
                              } , child: const Icon(Icons.add,color: Colors.black,),backgroundColor: Colors.white,heroTag: "btn4",)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      bottomNavigationBar: Material(
        color:  Colors.pink,
        child: InkWell(
          onTap: () {
         setState(() {
           BmiModel.age = age ;
           BmiModel.tall= value*100+120 ;
           BmiModel.weight= weight ;
           BmiModel.bmi= weight/(BmiModel.tall!/100 * BmiModel.tall!/100);
           if(BmiModel.isMale == null  ){
             Fluttertoast.showToast(msg: "please choose your gender" , backgroundColor: Colors.white , textColor: Colors.red);
           }else{
             print(BmiModel.bmi);
             Navigator.push(context, MaterialPageRoute(builder: (_)=> const Result()));
           }
         });
          },
          child: const SizedBox(
            height: kToolbarHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                'Calculate',
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
