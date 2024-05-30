import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const StepIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: StepProgressIndicator(
        totalSteps: totalSteps,
        currentStep: currentStep,
        selectedColor: Colors.blue,
        unselectedColor: Colors.grey[300]!,
        size: 8,
        roundedEdges:const Radius.circular(10),
      ),
    );
  }
}