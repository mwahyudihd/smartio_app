import 'package:flutter/material.dart';
import 'package:smartio_app/features/control_system/ui/control_system_screen.dart';
import 'package:smartio_app/features/device_config/ui/device_config_screen.dart';
import 'package:smartio_app/features/sensor_monitoring/ui/monitoring_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    MonitoringScreen(),
    ControlSystemScreen(),
    DeviceConfigScreen(),
  ];

  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.brown,
        ),
        backgroundColor: const Color.fromARGB(255, 83, 230, 88),
        title: const Text('Smart Agriculture'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sensors),
            label: 'Monitoring',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Penyiraman',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 83, 230, 88),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
