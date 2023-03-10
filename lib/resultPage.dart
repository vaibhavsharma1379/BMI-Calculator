import 'package:flutter/material.dart';
import 'constants.dart';
import 'ConatinerProperty.dart';
import 'lowerContainer.dart';

class result_page extends StatelessWidget {
  result_page(
      {required this.calculatedBmi,
      required this.resultText,
      required this.interpitaion});
  final String calculatedBmi;
  final String resultText;
  final String interpitaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Text("BMICalculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: CResultTEextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: container_property(
              colour: CnotSelectedBoxColor,
              onPress: () {},
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    calculatedBmi,
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpitaion,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          lower_Container(
              ContainerTitle: "Re-Calculate Your BMI",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
