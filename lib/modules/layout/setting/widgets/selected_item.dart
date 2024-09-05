import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({
    super.key,
    required this.context,
    required this.text,
  });

  final BuildContext context;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.secondary)),
        Icon(
          Icons.check_circle_outline_outlined,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
