import 'dart:async';

class Repository {
  int id;
  String name;
  String description;
  int starts;
  int forks;
  String language;

  Repository({
    this.id,
    this.name,
    this.description,
    this.starts,
    this.forks,
    this.language,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      id: json["id"],
      name: json["name"],
      description: json["description"] ?? "",
      starts: json["stargazers_count"],
      forks: json["forks"],
      language: json["language"] ?? "",
    );
  }

  static List<Repository> createRepositoryList(List repositories) {
    List<Repository> listRepositories = new List();

    for (int i=0; i<repositories.length; i++) {
      listRepositories.add(Repository.fromJson(repositories[i]));
    }

    return listRepositories;
  }
}
