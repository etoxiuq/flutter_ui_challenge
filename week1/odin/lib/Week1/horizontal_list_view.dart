import 'package:flutter/material.dart';

class BasicInfoCard extends StatelessWidget {
  const BasicInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 30),
        BasicInfoCardUI(Icons.home, '10 man', 'Age', Colors.amber),
        const SizedBox(width: 20),
        BasicInfoCardUI(Icons.directions_bike, 'Male', 'Sex', Colors.red),
        const SizedBox(width: 20),
        BasicInfoCardUI(
            Icons.directions, 'Shiba Inu', 'Breed', Colors.purpleAccent),
        const SizedBox(width: 20),
        BasicInfoCardUI(Icons.flight, '14 Kg', 'Weight', Colors.orange),
      ],
    );
  }

  Widget BasicInfoCardUI(
      IconData iconData, String text, String description, Color color) {
    return Container(
      height: 70,
      width: 70,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          Text(description,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
