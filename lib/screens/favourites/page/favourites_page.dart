import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gentelman_forge/data/favourite_products.dart';
import 'package:gentelman_forge/screens/favourites/bloc/favourites_bloc.dart';
import 'package:gentelman_forge/screens/favourites/widget/favourites_content.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
    );
  }

  BlocProvider<FavouritesBloc> _buildContext(BuildContext context) {
    return BlocProvider<FavouritesBloc>(
      create: (BuildContext context) => FavouritesBloc(),
      child: BlocConsumer<FavouritesBloc, FavouritesState>(
        buildWhen: (_, currState) => currState is FavouritesInitial,
        builder: (context, state) {
          return FavouriteContent(
            favouriteProductsList: favouriteItems,
          );
        },
        listenWhen: (_, currState) => true,
        listener: (context, state) {},
      ),
    );
  }
}
