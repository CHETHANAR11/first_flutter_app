import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';
//import 'package:first_app/styled_text.dart';

//Alignment? startAlignment;
//var startAlignment = Alignment.topLeft;
const startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key}); //constuctor

  /*GradientContainer.purple({super.key})
  :color1=Colors.deepblue,
  color2=Color.orange;*/

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    //startAlignment = Alignment.topLeft;
    return Container(
      //widget
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        //widged
        child: DiceRoller(),
      ),
    );
  }
}

  /*const GradientContainer({super.key, required this.colors });

  final List<Color> colors;


  @override
  Widget build(context) {
    //startAlignment = Alignment.topLeft;
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: 
            colors,
          begin: startAlignment,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyledText('GAMBARE GAMBARE')),
    );
  }
}*/
