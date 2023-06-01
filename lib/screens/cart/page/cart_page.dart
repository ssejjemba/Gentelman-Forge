import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gentelman_forge/data/cart_data.dart';
import 'package:gentelman_forge/screens/cart/bloc/cart_bloc.dart';
import 'package:gentelman_forge/screens/cart/widget/cart_content.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
    );
  }

  BlocProvider<CartBloc> _buildContext(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (BuildContext context) => CartBloc(),
      child: BlocConsumer<CartBloc, CartState>(
        buildWhen: (_, currState) => currState is CartInitial,
        builder: (context, state) {
          return CartContent(
            cartItems: cartProducts,
          );
        },
        listenWhen: (_, currState) => true,
        listener: (context, state) {},
      ),
    );
  }
}
