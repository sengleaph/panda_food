import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LinearStepIndicatorDemo(),
    );
  }
}

class LinearStepIndicatorDemo extends StatefulWidget {
  @override
  _LinearStepIndicatorDemoState createState() =>
      _LinearStepIndicatorDemoState();
}

class _LinearStepIndicatorDemoState extends State<LinearStepIndicatorDemo> {
  int currentStep = 2; // Set the current step here

  List<String> steps = ["Step 1", "Step 2", "Step 3", "Step 4", "Step 5"]; // Add your steps here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Linear Step Indicator"),
    //   ),
      body: Column(
        children: [
          LinearStepIndicator(
            stepCount: steps.length,
            currentStep: currentStep,
          ),
          SizedBox(height: 16.0),
          Text(
            "Current Step: ${currentStep + 1} of ${steps.length}",
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 16.0),
          Text(
            steps[currentStep],
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: currentStep > 0
                    ? () {
                  setState(() {
                    currentStep--;
                  });
                }
                    : null,
                child: Text("Previous"),
              ),
              ElevatedButton(
                onPressed: currentStep < steps.length - 1
                    ? () {
                  setState(() {
                    currentStep++;
                  });
                }
                    : null,
                child: Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

