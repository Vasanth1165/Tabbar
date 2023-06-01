import 'package:flutter/material.dart';
import 'package:tabbar/tabs/Calls.dart';
import 'package:tabbar/tabs/Chats.dart';
import 'package:tabbar/tabs/Community.dart';
import 'package:tabbar/tabs/Status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTab(),
    );
  }
}

class MyTab extends StatefulWidget {
  const MyTab({super.key});

  @override
  State<MyTab> createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> with TickerProviderStateMixin {
  late final TabController _tabbarController;

  @override
  void initState() {
    super.initState();
    _tabbarController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabbarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('''WhatsApp'''),
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff12867e),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_outlined)),
            PopupMenuButton(itemBuilder: (context) => [])
          ],
          bottom: TabBar(
            controller: _tabbarController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xffffffff),
            tabs: const [
              Tab(
                icon: Icon(Icons.people_alt_outlined),
                height: 50,
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          )),
      body: TabBarView(
          controller: _tabbarController,
          children: const [MyCommu(), MyChats(), MyStatus(), MyCalls()]),
    );
  }
}
