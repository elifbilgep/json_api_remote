import 'package:flutter/cupertino.dart';
import 'package:my_json_api/model/user.dart';
import 'package:my_json_api/services/web_service.dart';
import 'package:my_json_api/viewmodels/user_view_model.dart';

class PostListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;

  List<PostViewModel> posts = <PostViewModel>[];

  Future<void> infosAboutUsers() async {
    List<Post> fetchedPosts = await WebService().fetchPosts();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();
    this.posts = fetchedPosts.map((post) => PostViewModel(post: post)).toList();

    if (this.posts.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}

enum LoadingStatus {
  completed,
  searching,
  empty,
}
