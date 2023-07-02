import 'package:flutter/material.dart';
import 'package:netflix_responsive_ui/widgets/responsive.dart';
import 'screens.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = const [
    HomeScreen(
      key: PageStorageKey('homeScreen'),
    ),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    'Coming Soon': Icons.queue_play_next,
    'Downloads': Icons.file_download,
    'More': Icons.menu
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Responsive.isDesktop(context)
          ? null
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              selectedItemColor: Colors.white,
              selectedFontSize: 11,
              unselectedFontSize: 11,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.black,
              onTap: (index) => setState(() {
                _currentIndex = index;
              }),
              items: _icons
                  .map(
                    (key, value) => MapEntry(
                        key,
                        BottomNavigationBarItem(
                          icon: Icon(
                            value,
                            size: 30,
                          ),
                          label: key,
                        )),
                  )
                  .values
                  .toList(),
            ),
    );
  }
}
