import 'package:flutter/material.dart';

class RecommendedPSUCard extends StatelessWidget {
  final int totalWattage;

  const RecommendedPSUCard({super.key, required this.totalWattage});

  int recommendPSU(int totalWattage) {
    double requiredWattage = totalWattage * 1.3;

    List<int> psuWattages = [300, 400, 500, 600, 700, 750, 850, 1000, 1200];

    for (int wattage in psuWattages) {
      if (wattage >= requiredWattage) {
        return wattage;
      }
    }
    return psuWattages.last; // Default to the highest PSU wattage available
  }

  @override
  Widget build(BuildContext context) {
    int recommendedPSU = recommendPSU(totalWattage);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF006064), Color(0xFF01c28d)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Recommended PSU",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "${recommendedPSU}W",
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Based on your estimated power usage (${totalWattage}W), a PSU with at least ${recommendedPSU}W is recommended.",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
