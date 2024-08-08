import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          _getSelectedItem(context, 'Dark'),
          const SizedBox(
            height: 24,
          ),
          _getUnSelectedItem(context, "Light"),
        ],
      ),
    );
  }

  Widget _getSelectedItem(BuildContext context, String text) {
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

  Widget _getUnSelectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
