import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bmi_calculator/provider.dart';
class BmiResult extends StatelessWidget
{
  const BmiResult({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('BMI RESULT',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20)
                  ),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children:[
                      Expanded(
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text('HEIGHT: ',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('${Provider.of<CalculateProvider>(context).height.round()}',
                              style: const TextStyle(
                                fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text('WEIGHT: ',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('${Provider.of<CalculateProvider>(context).counterWeight}',
                              style: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text('AGE: ',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('${Provider.of<CalculateProvider>(context).counterAge}',
                              style: const TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color:Colors.grey[300]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Expanded(
                    child: Column(
                      children:  [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('RESULT',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('${Provider.of<CalculateProvider>(context,listen:false).bmiCalculate(
                              Provider.of<CalculateProvider>(context,listen:false).height,
                              Provider.of<CalculateProvider>(context,listen:false).counterWeight)}',
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(Provider.of<CalculateProvider>(context,
                            listen:false).BmiResult(Provider.of<CalculateProvider>(context,listen:false).height,
                            Provider.of<CalculateProvider>(context,listen:false).counterWeight),
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                          maxLines: 1,
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
        ],
      ),
    );
  }

}