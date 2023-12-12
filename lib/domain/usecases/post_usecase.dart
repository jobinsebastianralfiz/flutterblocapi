import 'package:postblocapp/data/repositories/post_repo_impl.dart';
import 'package:postblocapp/domain/entities/post_entity.dart';
import 'package:postblocapp/domain/repositories/post_repository.dart';

import '../../sample_post.dart';

class PostUseCases {
  PostRepo postRepo = PostRepoImpl();

  Future<List<PostEntity>> getPostFromDataSource() async {
    final posts = await postRepo.getPostFromDataSource();

    return posts;
  }
}
