import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tab Bar in Flutter'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: TabBar(
            controller: _tabController,
            // indicator: const BoxDecoration(shape: BoxShape.circle,color: Colors.amber),
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 10,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.amber,
            labelStyle: const TextStyle(fontFamily: 'Ephesis',fontSize: 20),
            unselectedLabelStyle: const TextStyle(fontSize: 18),
            dividerColor: Colors.lightGreen,
            automaticIndicatorColorAdjustment: true,
            isScrollable: true,
            // indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
            splashBorderRadius:BorderRadius.circular(20) ,
            tabAlignment: TabAlignment.center,

            
            tabs: const [
              Tab(
                child: Text('Page 1'),
              ),
              Tab(
                child: Text('Page 2'),
              ),
              Tab(
                child: Text('Page 3'),
              ),
              Tab(
                child: Text('Page 1'),
              ),
              Tab(
                child: Text('Page 2'),
              ),
              Tab(
                child: Text('Page 3'),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(

        controller: _tabController,
        children: const [
          Pag1(),
          Page2(),
          Page3(),
          Pag1(),
          Page2(),
          Page3()
        ],
      ),
    );
  }
}

class Pag1 extends StatelessWidget {
  const Pag1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Page 1"),
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Page 2"),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Page 3"),
    );
  }
}