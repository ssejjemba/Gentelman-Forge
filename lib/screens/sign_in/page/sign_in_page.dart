import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gentelman_forge/screens/forgot_password/page/forgot_password_page.dart';
import 'package:gentelman_forge/screens/sign_in/bloc/sign_in_bloc.dart';
import 'package:gentelman_forge/screens/sign_in/widget/sign_in_content.dart';
import 'package:gentelman_forge/screens/sign_up/page/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContext(context),
    );
  }

  BlocProvider<SignInBloc> _buildContext(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (BuildContext context) => SignInBloc(),
      child: BlocConsumer<SignInBloc, SignInState>(
        buildWhen: (_, currState) => currState is SignInInitial,
        builder: (context, state) {
          return const SignInContent();
        },
        listenWhen: (_, currState) =>
            currState is NextForgotPasswordPageState ||
            currState is NextSignUpPageState ||
            currState is NextTabBarPageState ||
            currState is ErrorState,
        listener: (context, state) {
          if (state is NextForgotPasswordPageState) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const ForgotPasswordPage()));
          } else if (state is NextSignUpPageState) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => SignUpPage()));
          } else if (state is NextTabBarPageState) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => TabBarPage()));
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
      ),
    );
  }
}
