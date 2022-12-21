import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String subtitle;
  final String title;

  const Labels({
    super.key,
    required this.ruta,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          child: Text(
            subtitle,
            style: const TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, ruta);
          },
        ),
      ],
    );
  }
}
