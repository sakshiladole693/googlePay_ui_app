import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_pay/view/homescreen_ui.dart';
import 'package:google_pay/view/moneyscreen_ui.dart';
import 'package:google_pay/view/profilescreen_ui.dart';

class GpayCloneUI extends StatefulWidget {
  const GpayCloneUI({super.key});

  @override
  State<GpayCloneUI> createState() => _GpayCloneUIState();
}

class _GpayCloneUIState extends State<GpayCloneUI> {
  int _selectedIndex = 0;

  //for accessesing from bottomNavigationBar
  final List<Widget> _screens = [
    HomeScreenUI(),
    MoneyScreenUI(),
    ProfileScreenUI(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body
      body: _screens[_selectedIndex],

      //BottomNAvigationBar
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.all(5),
                child: SvgPicture.asset(
                  "assets/images/home.svg",
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              activeIcon: Container(
                margin: EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.home_filled, color: Colors.white),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.all(5),
                child: SvgPicture.asset(
                  "assets/images/rupee_icon.svg",
                  height: 25,
                  colorFilter: const ColorFilter.mode(
                    Colors.grey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              activeIcon: Container(
                margin: EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SvgPicture.asset(
                  "assets/images/rupee_filled.svg",
                  height: 25,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              label: 'Money',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.all(5),
                child: Image.asset("assets/images/profile.png", height: 25),
              ),
              activeIcon: Container(
                margin: EdgeInsets.all(5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset("assets/images/profile.png", height: 25),
              ),
              label: 'You',
            ),
          ],
        ),
      ),
    );
  }
}
