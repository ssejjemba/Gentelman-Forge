import 'package:flutter/material.dart';
import 'package:gentelman_forge/screens/common_widgets/network_image.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.name,
    required this.coverImage,
    required this.onTap,
  }) : super(key: key);

  final String name;
  final String coverImage;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.00 / 2),
      child: Material(
        color: Colors.white,
        // borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        shape: const RoundedRectangleBorder(
          side: BorderSide(width: 0.01),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWithLoader(
                      coverImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
