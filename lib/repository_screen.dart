import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile_hub/repository.dart';
import 'package:mobile_hub/repository_widget.dart';
import 'package:http/http.dart' as http;

class RepositoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Repository>>(
      future: fetchRepository(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  RepositoryWidget(
                    repository: snapshot.data[index],
                  ),
                  Divider()
                ],
              );
            },
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

const url =
    "https://api.github.com/user/repos?access_token=3ee45b7c219704250a23329d2ff01297a674737c&visibility=public";

Future<List<Repository>> fetchRepository() async {
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return Repository.createRepositoryList(json.decode(response.body));
  }
}
