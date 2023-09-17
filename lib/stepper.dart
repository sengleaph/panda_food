import 'package:flutter/material.dart';

class LinearStepIndicator extends StatelessWidget {
  final int stepCount;
  final int currentStep;

  LinearStepIndicator({
    required this.stepCount,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        stepCount,
            (index) {
          return Container(
            width: 20.0,
            height: 4.0,
            color: index <= currentStep
                ? Colors.blue // Color for completed steps
                : Colors.grey, // Color for pending steps
          );
        },
      ),
    );
  }
}
