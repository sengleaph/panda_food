
import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical, // Set to vertical for linear stepper
      currentStep: _currentStep,
      onStepContinue: () {
        setState(() {
          if (_currentStep < 2) {
            _currentStep++;
          }
        });
      },
      onStepCancel: () {
        setState(() {
          if (_currentStep > 0) {
            _currentStep--;
          }
        });
      },
      steps: <Step>[
        Step(
          title: Text('Step 1'),
          content: Text('This is step 1 content.'),
          isActive: _currentStep == 0,
        ),
        Step(
          title: Text('Step 2'),
          content: Text('This is step 2 content.'),
          isActive: _currentStep == 1,
        ),
        Step(
          title: Text('Step 3'),
          content: Text('This is step 3 content.'),
          isActive: _currentStep == 2,
        ),
      ],
    );
  }
}