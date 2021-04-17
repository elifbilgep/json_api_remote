import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_json_api/viewmodels/user_list_view_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<PostListViewModel>(context, listen: false).infosAboutUsers();
  }

  @override
  Widget build(BuildContext context) {
    var listViewModel = Provider.of<PostListViewModel>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: listViewModel.posts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(listViewModel.posts[index].id.toString()),
                subtitle: Text(listViewModel.posts[index].body),
              ),
            );
          }),
    );
  }
}
