import 'package:flutter/material.dart';
import 'package:my_json_api/view/home.dart';
import 'package:my_json_api/viewmodels/user_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MultiProvider(providers: [ChangeNotifierProvider(create: (_)=> PostListViewModel())],child: Home()),
    );
  }
}


