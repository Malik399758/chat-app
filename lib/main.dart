import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smit_chat/views/chat_module/chat_screen.dart';
import 'package:smit_chat/views/chat_module/conversation_screen.dart';
import 'package:smit_chat/views/chat_module/profile_screen.dart';
import 'package:smit_chat/views/chat_module/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NewNavigation(),
        //NewNavigation()
      ),
    );
  }
}


class NewNavigation extends StatefulWidget {
  const NewNavigation({super.key});

  @override
  State<NewNavigation> createState() => _NewNavigationState();
}

class _NewNavigationState extends State<NewNavigation> {
  int _currentIndex =0;
  List _pages = [
    ProfileScreen(),
    ChattingScreen(),
    SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,),label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble,color: Colors.grey,),label: 'Chatting'),
            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.grey,),label: 'Setting'),

          ]),
    );

  }
}
