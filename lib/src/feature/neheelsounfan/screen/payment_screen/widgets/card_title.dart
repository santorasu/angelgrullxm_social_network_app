import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.title, required this.details});

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        ),
        Expanded(
          child: Text(details, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
