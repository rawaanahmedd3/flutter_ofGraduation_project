import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/NavigationDrawer.dart';
import 'package:untitled1/Cubit/cubit.dart';
import 'package:untitled1/Cubit/states.dart';
import 'package:untitled1/Provider/provider.dart';

class home extends StatelessWidget {
  const home({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(builder: (context, myProvider, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            myProvider.title[MyProvider.currentIndex],
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          elevation: 1,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/836.jpg'),
              ),
            )
          ],
          backgroundColor: const Color(0xFF002ddc),
        ),
        drawer: NavigationDrawerWidget(),
        bottomNavigationBar: GNav(
          selectedIndex: MyProvider.currentIndex,
          onTabChange: (index) {
            myProvider.changeBottomNavBar(index);
            // cubit.changeBottomNavBar(index);
            print(MyProvider.currentIndex);
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.person,
              text: 'My Account',
            ),
            GButton(
              icon: Icons.notifications,
              text: 'Notifications',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
        body: myProvider.screens[MyProvider.currentIndex],
      );
    });
  }
}