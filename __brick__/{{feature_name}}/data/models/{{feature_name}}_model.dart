class {{feature_name.pascalCase()}}Model {
  final int id;
  final String name;

  {{feature_name.pascalCase()}}Model({
    required this.id,
    required this.name,
  });

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) {
    return {{feature_name.pascalCase()}}Model(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
