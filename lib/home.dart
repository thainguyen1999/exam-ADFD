import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, bottom: 150.0),
                      child: Text(
                        "Hi Guy!",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(
                        icon: Image.asset(
                          'assets/images/ico_hotel.png',
                          width: 24.0, //
                          height: 24.0,
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'assets/images/ico_hotel_plane.png',
                          width: 24.0,
                          height: 24.0,
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'assets/images/ico_plane.png',
                          width: 24.0,
                          height: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Text(" this is tabbar for likee"),
                    // ListView.builder(
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: student.length,
                    //     itemBuilder: (BuildContext context, index) {
                    //       return Text(student[index]);
                    //     })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
