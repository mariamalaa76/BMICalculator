import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyan,
       elevation: 0.0,
       title: const Center(
         child: Text('BMI CALCULATOR',
           style: TextStyle(
             color: Colors.white,
             fontSize:30,
             fontWeight: FontWeight.bold
           ),
         ),
       ),
     ),
     body:Column(
         children: [
           Expanded(
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:const [
                    Image(image:AssetImage('assets/images/bmi-logo-clipart-3.jpg'
                   )
                   ),
                 ],
               ),
             ),
           ),
           Container (
             color: Colors.cyan,
             width: double.infinity ,
             child: Column(
               children: [
                 MaterialButton(onPressed: (){
                   setState(() {
                     Navigator.push(context,MaterialPageRoute(
                         builder: (context) => const CalculatorScreen()
                     )
                     );
                   });
                 },
                   child: const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text('Start',
                       style: TextStyle(
                           fontSize: 50,
                           color:Colors.white,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
   );
  }
}