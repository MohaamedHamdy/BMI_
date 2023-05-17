import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bmicalc/result_screen.dart';

class BMI extends StatefulWidget {

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  double height = 170;
  double weight = 74;
  double value = 170;
  int age = 19;
  bool isMale = true;
  late double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_outlined
        ),
        title: Text(
          'BMI CALCULATOR'
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(15, 21, 60, 1),
        shadowColor: Colors.black,
        elevation: 30,
      ),
      body: Container(
        color: Color.fromRGBO(12, 18, 52, 1),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/male.png"),
                                width: 70,
                                height: 70,
                                color: isMale? Colors.white : Color.fromRGBO(138, 146, 173,1),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color.fromRGBO(39, 42, 78, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/female.png"),
                                width: 70,
                                height: 70,
                                color: !isMale? Colors.white : Color.fromRGBO(138, 146, 173,1),                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color.fromRGBO(39, 42, 78, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //First
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Color.fromRGBO(138, 146, 173,1),
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                        [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              color: Color.fromRGBO(138, 146, 173,1),
                              fontSize: 20,
                            ),
                          ),

                        ],
                      ),
                      Slider(
                        activeColor: Color.fromRGBO(255, 0, 103,1),
                        value: height,
                        min: 140,
                        max: 220,
                        onChanged: (value){
                          setState(() {
                            height = value;
                            print(height.round());
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromRGBO(20,26,60, 1),
                ),
            ),
              ),
            ), //Second
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: Color.fromRGBO(138, 146, 173,1),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '${weight.round()}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Color.fromRGBO(33,39,71,1),
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "weight--",
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color.fromRGBO(33,39,71,1),
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "weight++",
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(20,26,60, 1),
                      ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                color: Color.fromRGBO(138, 146, 173,1),
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Color.fromRGBO(33,39,71,1),
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "weight--",
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color.fromRGBO(33,39,71,1),
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "weight++",
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color.fromRGBO(20,26,60, 1),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //Third
            Container(
              width: double.infinity,
              color: Color.fromRGBO(255, 0, 103,1),
              child: MaterialButton(
                  onPressed: (){
                   setState(() {
                     result = result = weight/pow(height/100, 2);
                     print(result.round());
                   });
                   Navigator.push(context, MaterialPageRoute(builder:(context) => Result(result)));
                  },

                  child: Text(
                    'CALCULATE YOUR BMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                height: 50,
              ),
            ), //Last
          ],
        ),
      ),
    );
  }
}
