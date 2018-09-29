import 'package:flutter/material.dart';
import 'package:mobile_hub/followers_screen.dart';
import 'package:mobile_hub/following_screen.dart';
import 'package:mobile_hub/repository_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MobileHub"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(child: Text("Repositories")),
              Tab(child: Text("Followers")),
              Tab(child: Text("Following")),
            ],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: <Widget>[
            RepositoryScreen(),
            FollowersScreen(),
            FollowingScreen(),
          ],
        ),
      ),
    );
  }
}
