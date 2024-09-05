import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({
    super.key,
    required this.index,
    required this.theme,
  });

  final int index;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: theme.colorScheme.secondary,
        ),
        Expanded(
          child: Divider(
            height: 3,
            indent: 10,
            endIndent: 10,
            thickness: 3,
            color: theme.colorScheme.secondary,
          ),
        ),
        Text(
          '(${index + 1})',
          style: TextStyle(
            color: theme.colorScheme.secondary,
          ),
        ),
        Expanded(
          child: Divider(
            height: 3,
            indent: 10,
            endIndent: 10,
            thickness: 3,
            color: theme.colorScheme.secondary,
          ),
        ),
        Icon(
          Icons.star,
          color: theme.colorScheme.secondary,
        ),
      ],
    );
  }
}
