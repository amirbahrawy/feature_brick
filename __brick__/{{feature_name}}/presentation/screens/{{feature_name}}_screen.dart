import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trivioo_mobile_app/core/shared/shared_widgets/general_purpose/app_loading.dart';
import '../cubit/{{feature_name}}_cubit.dart';

class {{feature_name.pascalCase()}}Screen extends StatelessWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});
  static const String routeName = '/{{feature_name}}';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => {{feature_name.pascalCase()}}Cubit(RepositoryProvider.of(context))..loadData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('{{feature_name.titleCase()}} Screen'),
        ),
        body: BlocBuilder<{{feature_name.pascalCase()}}Cubit, {{feature_name.pascalCase()}}State>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(child: AppLoading());
            }
            return Container();
          },
        ),
      ),
    );
  }
}
