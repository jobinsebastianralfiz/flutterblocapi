import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:postblocapp/domain/entities/post_entity.dart';
import 'package:postblocapp/domain/usecases/post_usecase.dart';

import '../../../../sample_post.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostRequestedEvent>((event, emit) async {
      print("block initialized");

      try {
        final posts = await PostUseCases().getPostFromDataSource();

        emit(PostStateLoaded(posts: posts));
      } catch (e) {
        emit(PostStateError(message: e.toString()));
      }
    });
  }
}
