import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';
import 'package:gentelman_forge/core/const/path_constants.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: TextFormField(
          onSaved: (value) {},
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Search items...",
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset("assets/icons/home/Search.svg"),
            ),
            suffixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20 / 2),
              child: SizedBox(
                width: 48,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    PathConstants.filterIcon,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
