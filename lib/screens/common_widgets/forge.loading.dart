import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';

class ForgeLoading extends StatelessWidget {
  const ForgeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorConstants.loadingBlack,
      child: Center(
        child: Theme(
          data: ThemeData(
            cupertinoOverrideTheme:
                const CupertinoThemeData(brightness: Brightness.dark),
          ),
          child: const CupertinoActivityIndicator(
            radius: 17,
          ),
        ),
      ),
    );
  }
}
