import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';
import 'package:gentelman_forge/core/const/path_constants.dart';
import 'package:gentelman_forge/core/const/text_constants.dart';
import 'package:gentelman_forge/screens/cart/page/cart_page.dart';
import 'package:gentelman_forge/screens/favourites/page/favourites_page.dart';
import 'package:gentelman_forge/screens/home/page/home_page.dart';
import 'package:gentelman_forge/screens/profile/page/profile_page.dart';
import 'package:gentelman_forge/screens/tab_bar/bloc/tab_bar_bloc.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TabBarBloc>(
      create: (BuildContext context) => TabBarBloc(),
      child: BlocConsumer<TabBarBloc, TabBarState>(
        listener: (context, state) {},
        buildWhen: (_, currState) =>
            currState is TabBarInitial || currState is TabBarItemSelectedState,
        builder: (context, state) {
          final bloc = BlocProvider.of<TabBarBloc>(context);
          return Scaffold(
            body: _createBody(context, bloc.currentIndex),
            bottomNavigationBar: _createdBottomTabBar(context),
          );
        },
      ),
    );
  }

  Widget _createdBottomTabBar(BuildContext context) {
    final bloc = BlocProvider.of<TabBarBloc>(context);
    return BottomNavigationBar(
      currentIndex: bloc.currentIndex,
      fixedColor: ColorConstants.primaryColor,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.home,
            color: bloc.currentIndex == 0 ? ColorConstants.primaryColor : null,
          ),
          label: TextConstants.homeIcon,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.favourite,
            color: bloc.currentIndex == 1 ? ColorConstants.primaryColor : null,
          ),
          label: TextConstants.favouriteIcon,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.cart,
            color: bloc.currentIndex == 2 ? ColorConstants.primaryColor : null,
          ),
          label: TextConstants.cartIcon,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            PathConstants.profile,
            color: bloc.currentIndex == 3 ? ColorConstants.primaryColor : null,
          ),
          label: TextConstants.profileIcon,
        ),
      ],
      onTap: (index) {
        bloc.add(TabBarItemTappedEvent(index: index));
      },
    );
  }

  Widget _createBody(BuildContext context, int index) {
    final children = [
      const HomePage(),
      const FavouritesPage(),
      const CartPage(),
      const ProfilePage(),
    ];
    return children[index];
  }
}
