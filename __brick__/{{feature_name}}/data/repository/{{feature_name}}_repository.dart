import 'package:injectable/injectable.dart';

import '../models/{{feature_name}}_model.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<List<{{feature_name.pascalCase()}}Model>> fetchData();
}

@Injectable(as: {{feature_name.pascalCase()}}Repository)
class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  @override
  Future<List<{{feature_name.pascalCase()}}Model>> fetchData() async {
    // TODO: Implement actual data fetching
    await Future.delayed(Duration(seconds: 1));
    return [
      {{feature_name.pascalCase()}}Model(id: 1, name: 'Sample {{feature_name.pascalCase()}}'),
    ];
  }
}
