import 'package:flutter/material.dart';

class MyTabContainer extends StatefulWidget {
  @override
  _MyTabContainerState createState() => _MyTabContainerState();
}

class _MyTabContainerState extends State<MyTabContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        title: Text('Tab Container'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Content of Tab 1
          Center(child: Text('Tab 1 Content')),

          // Content of Tab 2
          Center(child: Text('Tab 2 Content')),

          // Content of Tab 3
          Center(child: Text('Tab 3 Content')),
        ],
      ),
    );
  }
}
