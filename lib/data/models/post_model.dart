import 'package:postblocapp/domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  PostModel({required title, required body, required id, required userid})
      : super(id: id, body: body, title: title, userId: userid);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        title: json['title'],
        body: json['body'],
        id: json['id'],
        userid: json['userId']);
  }
}
