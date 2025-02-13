import 'package:agrosnap/pages/account.dart';
import 'package:agrosnap/pages/add_folder.dart';
import 'package:agrosnap/pages/admin_dashboard.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  HomeAdminState createState() => HomeAdminState();
}

class HomeAdminState extends State<HomeAdmin> {
  
  int currentIndex = 0;
  final List<Widget> screens = [
    const AdminDashboard(),
    const AddFolder(),
    const Account(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
            text: 'Agro',
            style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Color.fromARGB(255, 172, 104, 255), fontSize: 20, fontWeight: FontWeight.bold)),
            children:  <TextSpan>[
              TextSpan(text: 'Snap', style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))),
            ],
          ),
        ),

        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ClipRRect(borderRadius: BorderRadius.circular(50), child: Image.asset('assets/Logo.png', height: 20, width: 50)),
        // ),
        ),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap:(index) => setState(() => currentIndex = index),
        color: const Color.fromARGB(255, 172, 104, 255),
        backgroundColor: Colors.white,
        animationDuration: const Duration(milliseconds: 150),
        items: const [
          Icon(Icons.home_rounded, color: Colors.white,),
          Icon(Icons.add_rounded, color: Colors.white,),
          Icon(Icons.person_rounded, color: Colors.white,),


        ],
      ),
    );
  }
}