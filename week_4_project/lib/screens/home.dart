import 'package:flutter/material.dart';
import 'package:week_4_project/screens/chapters_info.dart';
import 'package:week_4_project/screens/rukus_info.dart';
import 'package:week_4_project/screens/sajdas_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information of Quran'),
        backgroundColor: Colors.deepPurple,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorWeight: 3,
          tabAlignment: .center,
          tabs: const [
            Tab(text: '  C h a p t e r s  '),
            Tab(text: '  S a j d a s  '),
            Tab(text: '  R u k u s  '),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const .symmetric(horizontal: 16),
          child: TabBarView(
            controller: _tabController,
            children: const [
             ChaptersInfo(),
             SajdasInfo(),
             RukusInfo()
            ],
          ),
        ),
      ),
    );
  }
}
