import 'dart:math';
import 'package:flutter/material.dart';

class CalculateProvider extends ChangeNotifier
{
  double height = 180;
  int counterWeight = 45;
  int counterAge = 21;
  double result = 0.0;
  String bmi = 'NORMAL';
   int counterOfWeightIncrement()
  {
    counterWeight++;
    notifyListeners();
    return counterWeight;
  }
  int counterOfWeightDecrement()
  {
    counterWeight--;
    notifyListeners();
    return counterWeight;
  }
  int counterOfAgeIncrement()
  {
    counterAge++;
    notifyListeners();
    return counterAge;
  }
  int counterOfAgeDecrement()
  {
    counterAge--;
    notifyListeners();
    return counterAge;
  }
  double bmiCalculate(double height , int weight)
  {
    double result = counterWeight / pow(height/100,2);
    return result;
  }
  String BmiResult(double height , int weight)
  {
    double result = counterWeight / pow(height/100,2);
    if(result<18.5)
      {
        bmi = 'Underweight BMI';
      }
    else if (result >= 18.5 && result < 24.9)
      {
        bmi = 'Normal BMI';
      }
    else if (result >= 25.00 && result < 30)
    {
      bmi = 'Overweight BMI';
    }
    else
    {
      bmi = 'Obese BMI';
    }

    return bmi;
  }
}