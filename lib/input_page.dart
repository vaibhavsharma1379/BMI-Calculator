import 'package:bmi_calculatoor/resultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardContent.dart';
import 'ConatinerProperty.dart';
import 'constants.dart';
import 'lowerCradProperty.dart';
import 'resultPage.dart';
import 'lowerContainer.dart';
import 'calculator_brain.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({Key? key}) : super(key: key);
  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  @override
  Color maleCardColor = CnotSelectedBoxColor;
  Color femaleCardColor = CnotSelectedBoxColor;
  int hieght = 100;
  Gender selectedGender = Gender.male;
  int weight = 60;
  int age = 16;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0D22),
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: container_property(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardchild: CardContent(
                      iconName: FontAwesomeIcons.mars,
                      iconText: "MALE",
                    ),
                    colour: selectedGender == Gender.male
                        ? CselectedBoxColor
                        : CnotSelectedBoxColor,
                  ),
                ),
                Expanded(
                  child: container_property(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardchild: CardContent(
                        iconName: FontAwesomeIcons.venus,
                        iconText: "FEMALE",
                      ),
                      colour: selectedGender == Gender.female
                          ? CselectedBoxColor
                          : CnotSelectedBoxColor),
                )
              ],
            ),
          ),
          Expanded(
            child: container_property(
              onPress: () {},
              colour: CnotSelectedBoxColor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HIEGHT",
                    style: Ctextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        hieght.toString(),
                        style: CNumberstyle,
                      ),
                      const Text(
                        'cm',
                        style: Ctextstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    // ignore: prefer_const_constructors
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15, pressedElevation: 10),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30)),

                    child: Slider(
                      value: hieght.toDouble(),
                      min: 100,
                      max: 220,
                      inactiveColor: Colors.grey,
                      onChanged: (double newValue) {
                        setState(() {
                          hieght = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: container_property(
                      onPress: () {},
                      colour: CnotSelectedBoxColor,
                      cardchild: lowerCradProperty(
                        widgetText: "WEIGHT",
                        value: weight,
                        onPressIncrement: () {
                          setState(() {
                            weight++;
                          });
                        },
                        onPressDecrement: () {
                          setState(() {
                            weight--;
                          });
                        },
                      )),
                ),
                Expanded(
                  child: container_property(
                    onPress: () {},
                    colour: CnotSelectedBoxColor,
                    cardchild: lowerCradProperty(
                      widgetText: "AGE",
                      value: age,
                      onPressDecrement: () {
                        setState(() {
                          age--;
                        });
                      },
                      onPressIncrement: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          lower_Container(
            ContainerTitle: "View Result",
            onTap: () {
              CalculatorBrain cal =
                  CalculatorBrain(hieght: hieght, wieght: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => result_page(
                          calculatedBmi: cal.calculateBMI().toString(),
                          resultText: cal.resultText(),
                          interpitaion: cal.getInterpitation())));
            },
          ),
        ],
      ),
    );
  }
}
