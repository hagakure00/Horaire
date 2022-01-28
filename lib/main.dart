import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:horaire/Theme/colors.dart';
import 'Pages/AuthPage.dart';
import 'Pages/HomePage.dart';
import 'Widgets/HelpMessage.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      scaffoldMessengerKey: HelpMessage.messengerKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?> (
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center (child: SpinKitRipple(color: primary, size: 100.0)
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Oops , Il y a eu une erreur !!!'));
          } else if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}

