import 'package:flutter/material.dart';
import 'package:mobile_hub/repository.dart';

class RepositoryWidget extends StatelessWidget {

  Repository repository;


  RepositoryWidget({this.repository});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(repository.name),
        Text(repository.description),
        Text(repository.language),
      ],
    );
  }
}
