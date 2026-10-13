import 'package:flutter/material.dart';
import 'colors.dart';
import 'screens/home_screen.dart';
import 'screens/chats_screen.dart';
import 'screens/laboratory_screen.dart';

void main() {
  runApp(const PluraApp());
}

class PluraApp extends StatelessWidget {
  const PluraApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Plura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.violeta,
        scaffoldBackgroundColor: AppColors.fondo,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pantallas = const [
    HomeScreen(),
    ChatsScreen(),
    LaboratoryScreen(),
  ];

  final List<String> _titulos = const [
    'Plura',
    'Chats',
    'Laboratorio de widgets',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.violeta,
        foregroundColor: Colors.white,
        title: Text(
          _titulos[_selectedIndex],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 12),
          Icon(Icons.notifications_none),
          SizedBox(width: 16),
        ],
      ),
      body: _pantallas[_selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: AppColors.violeta,
          indicatorColor: AppColors.magenta,
          labelTextStyle: const WidgetStatePropertyAll(
            TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home, color: Colors.white),
              icon: Icon(Icons.home_outlined, color: Colors.white70),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.chat_bubble, color: Colors.white),
              icon: Icon(Icons.chat_bubble_outline, color: Colors.white70),
              label: 'Chats',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.science, color: Colors.white),
              icon: Icon(Icons.science_outlined, color: Colors.white70),
              label: 'Laboratorio',
            ),
          ],
        ),
      ),
    );
  }
}