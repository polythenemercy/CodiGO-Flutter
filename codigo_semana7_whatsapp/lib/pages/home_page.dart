import 'package:codigo_semana7_whatsapp/pages/call_page.dart';
import 'package:codigo_semana7_whatsapp/pages/status_page.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: 4,
        vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.camera_alt
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text("Camara"),
          ),
          ChatPage(),
          StatusPage(),
          CallPage()
        ],
      ),
    );
  }
}
