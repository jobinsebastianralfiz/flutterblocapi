import 'package:postblocapp/domain/entities/post_entity.dart';

abstract class PostRepo{


  Future<List<PostEntity>> getPostFromDataSource();

}