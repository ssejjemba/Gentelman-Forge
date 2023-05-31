import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';
import 'package:gentelman_forge/screens/common_widgets/icon_with_background.dart';
import 'package:gentelman_forge/screens/home/page/search_page.dart';
import 'package:gentelman_forge/screens/home/widget/dialogs/filter_dialog.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onSubmitted: (v) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SearchPage(searchedValue: v)));
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search items...',
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            prefixIcon: const Icon(IconlyLight.search),
            suffixIcon: IconWithBackground(
              iconData: IconlyLight.filter,
              color: ColorConstants.primaryColor,
              iconColor: Colors.white,
              radius: const BorderRadius.all(Radius.circular(8)),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const FilterDialog(),
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.00),
                      topRight: Radius.circular(16.00),
                    ),
                  ),
                );
              },
            )),
      ),
    );
  }
}
