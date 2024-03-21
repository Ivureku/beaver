import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 61, 248, 1),
        title: const Text("Asombrado", style: TextStyle(color: Colors.white)),
      ),
      drawer: SizedBox(
        child: SidebarX(
            extendedTheme: const SidebarXTheme(
              width: 200,
            ),
            controller: SidebarXController(selectedIndex: 0, extended: true),
            items: [
              SidebarXItem(
                icon: Icons.home,
                label: 'Home',
                onTap: () {
                  Navigator.pushNamed(context, 'lib/');
                },
              ),
              SidebarXItem(icon: Icons.newspaper_sharp, label: 'News'),
              SidebarXItem(
                icon: Icons.question_mark_outlined,
                label: 'About',
              ),
              SidebarXItem(icon: Icons.person_rounded, label: 'My Account'),
              SidebarXItem(
                icon: Icons.logout_outlined,
                label: 'Logout',
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ]),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/huhcat.jpg',
                  fit: BoxFit.contain, height: 200, width: 200),
            ],
          ),
        ),
      ),
    );
  }
}
