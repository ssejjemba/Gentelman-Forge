import 'package:flutter/material.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';

class ChoiceCategory extends StatelessWidget {
  const ChoiceCategory({
    Key? key,
    required this.onTap,
    required this.name,
    required this.isActive,
  }) : super(key: key);

  final void Function() onTap;
  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: isActive ? ColorConstants.primaryColor : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        child: InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: isActive ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
