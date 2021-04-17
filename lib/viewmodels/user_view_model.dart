import 'package:my_json_api/model/user.dart';

class PostViewModel {
  Post _user;

  PostViewModel({Post post}) : _user = post;

  int get userId {
    return _user.userId;
  }

  int get id {
    return _user.id;
  }

  String get title {
    return _user.title;
  }

  String get body {
    return _user.body;
  }
}
