import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:gentelman_forge/screens/categories.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gentelman_forge/config/size_config.dart';
import 'package:gentelman_forge/screens/tab_bar/page/tab_bar_page.dart';
// import 'package:gentelman_forge/screens/onboarding/page/onboarding_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final theme = ThemeData(
  useMaterial3: true,
  textTheme: GoogleFonts.notoSansTextTheme(),
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      title: "Gentelman's Forge",
      theme: theme,
      home: const TabBarPage(),
    );
  }
}
