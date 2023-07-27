import 'package:flutter/material.dart';
const String tsplashTopicon="assets/Usage";
const String tsplashImage="assets/Cancer";
class SplashScreen extends StatelessWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
        children: [
           Positioned(top: 0,
          left: 0,
             child: Image(image: AssetImage(tsplashTopicon),
           ),
           ),
          Positioned(top:80,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How To Use This App ??",style: Theme.of(context).textTheme.headline3,),
                  Text("you can choose your category from 3 symbtomps ,blood test and skin disease and our model will detect the disease which you suffer from ",style: Theme.of(context).textTheme.headline6,)

                ],
              )
          )
         , const Positioned(bottom: 40,
              child: Image(image: AssetImage(tsplashImage)))
        ],
    ),
      ),
    );
  }
}
