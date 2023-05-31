import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';
import 'package:gentelman_forge/core/const/path_constants.dart';
import 'package:gentelman_forge/core/const/text_constants.dart';
import 'package:gentelman_forge/screens/home/bloc/home_bloc.dart';
import 'package:gentelman_forge/screens/home/widget/dialogs/components/category_list.dart';
import 'package:gentelman_forge/screens/home/widget/new_arrival.dart';
import 'package:gentelman_forge/screens/home/widget/search_form.dart';
import 'package:gentelman_forge/screens/profile/page/profile_page.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.homeBackgroundColor,
      height: double.infinity,
      width: double.infinity,
      child: _createHomeBody(context),
    );
  }

  Widget _createHomeBody(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          _createProfileData(context),
          const SizedBox(height: 35),
          const SearchForm(),
          const SizedBox(height: 20),
          const CategoriesList(),
          const SizedBox(height: 20),
          const NewArrivalSection(),
        ],
      ),
    );
  }

  Widget _createProfileData(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final displayName = user?.displayName ?? "No Username";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, $displayName',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                TextConstants.introduction,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (_, currState) => currState is ReloadImageState,
            builder: (context, state) {
              final photoUrl = FirebaseAuth.instance.currentUser?.photoURL;
              return GestureDetector(
                child: photoUrl == null
                    ? CircleAvatar(
                        radius: 60,
                        child: SvgPicture.asset(
                          PathConstants.profile,
                          width: 50,
                          height: 50,
                        ),
                      )
                    : CircleAvatar(
                        radius: 25,
                        child: ClipOval(
                            child: FadeInImage.assetNetwork(
                                placeholder: PathConstants.profile,
                                image: photoUrl,
                                fit: BoxFit.cover,
                                width: 200,
                                height: 120))),
                onTap: () async {
                  await Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ProfilePage()));
                  BlocProvider.of<HomeBloc>(context).add(ReloadImageEvent());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
