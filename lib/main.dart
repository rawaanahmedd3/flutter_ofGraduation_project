import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tflite/tflite.dart';
import 'package:untitled1/Login.dart';
import 'package:untitled1/Provider/provider.dart';
import 'package:untitled1/cubit/cubit.dart';
import 'package:untitled1/signup.dart';
import 'auth.dart';
import 'home.dart';

Future<void>  main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Tflite.loadModel(
      model: "assets/our_model/model.tflite",
      labels: "assets/our_model/Labels.txt",
      numThreads: 1, );
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyProvider(),
      child: Consumer<MyProvider>(
        builder: (context, myProvider, child) {
          return MaterialApp(
            title: 'VDR',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            // home: const home(),
            initialRoute: "/",
            routes: {
              '/': (context) => const Auth(),
              'home': (context) => const home(),
              'signup': (context) => const signup(),
              'login': (context) => const Login(),
            },
          );
        },
      ),
    );
  }
}

