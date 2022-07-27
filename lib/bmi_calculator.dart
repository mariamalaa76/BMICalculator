import 'package:bmi_calculator/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bmi_result.dart';
class CalculatorScreen extends StatefulWidget
{
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool isMale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text('BMI CALCULATOR',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.cyan,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                       setState(()
                       {
                        isMale = true;
                       });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Colors.cyan[300] : Colors.grey[300]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: const [
                              Icon(Icons.male,size: 100,color:Colors.black,
                              ),
                              Text('MALE',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black54
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container (
                        decoration: BoxDecoration(
                            color: !isMale ? Colors.cyan[300] : Colors.grey[300]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.female_outlined,size: 100, color: Colors.black,
                              ),
                              Text('FEMALE',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black54
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.grey[300]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Column(
                        children: [
                          const Text('HEIGHT',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('${Provider.of<CalculateProvider>(context).height.round()}',
                                style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const Text('cm',
                                style: TextStyle(
                                  fontSize: 30,
                                    color:Colors.black54
                                ),
                              ),
                            ],
                          ),
                          Slider(value: Provider.of<CalculateProvider>(context).height ,
                              min: 80,
                              max: 220,
                              thumbColor: Colors.cyan,
                              activeColor: Colors.cyan,
                              onChanged:(value){
                              setState(() {
                                Provider.of<CalculateProvider>(context,listen:false).height = value;
                              });
                              }
                          ),
                        ],
                      ),
                  ),
                ),
              ),
            ),
            ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Text('WEIGHT',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black54
                                ),
                              ),
                              Text('${Provider.of<CalculateProvider>(context,listen:false).counterWeight}',
                                style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      Provider.of<CalculateProvider>(context,listen:false ).counterOfWeightDecrement();
                                    });
                                  },
                                    child: const Icon(Icons.remove),
                                    mini: true,
                                    backgroundColor: Colors.cyan,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      Provider.of<CalculateProvider>(context,listen:false).counterOfWeightIncrement();
                                    });
                                  },
                                    child: const Icon(Icons.add),
                                    mini: true,
                                    backgroundColor: Colors.cyan,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Text('AGE',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black54
                                ),
                              ),
                              Text('${Provider.of<CalculateProvider>(context,listen:false).counterAge}',
                                style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      Provider.of<CalculateProvider>(context,listen:false).counterOfAgeDecrement();
                                    });
                                  },
                                    child: const Icon(Icons.remove),
                                    mini: true,
                                    backgroundColor: Colors.cyan,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      Provider.of<CalculateProvider>(context,listen:false).counterOfAgeIncrement();
                                    });
                                  },
                                    child: const Icon(Icons.add),
                                    mini: true,
                                    backgroundColor: Colors.cyan,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            color: Colors.cyan,
            child: MaterialButton(onPressed: (){
              setState(() {
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => const BmiResult()
                )
                );
              });
            },
              child: const Text('CALCULATE',
                style: TextStyle(
                  fontSize: 35,
                  color:Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}