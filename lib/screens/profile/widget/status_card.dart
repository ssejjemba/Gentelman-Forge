import 'package:flutter/material.dart';
import 'package:gentelman_forge/screens/common_widgets/icon_with_background.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.iconData,
    required this.iconBackground,
    required this.iconColor,
    required this.statusName,
    required this.status,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final Color iconBackground;
  final Color iconColor;
  final String statusName;
  final String status;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Material(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Container(
            padding: const EdgeInsets.all(16.00),
            width: MediaQuery.of(context).size.width * 0.30,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconWithBackground(
                  iconData: iconData,
                  color: iconBackground,
                  iconColor: iconColor,
                ),
                const SizedBox(height: 5),
                Text(
                  statusName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.black54),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  status,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
