import 'package:flutter/material.dart';

class SectionDividerTitle extends StatelessWidget {
  const SectionDividerTitle({
    Key? key,
    required this.title,
    this.buttonTitle,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String? buttonTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          TextButton(
              onPressed: onTap,
              child: Text(
                buttonTitle ?? 'See All',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
