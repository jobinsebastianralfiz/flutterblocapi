part of 'post_bloc.dart';

@immutable
abstract class PostState extends Equatable {

  @override
  List<Object?>get props=>[];
}

class PostInitial extends PostState {}

class PostStateLoading extends PostState {}


class PostStateLoaded extends PostState {

  final List<PostEntity> posts;

  PostStateLoaded({required this.posts});

  @override

  List<Object?>get props=>[];

}


class PostStateError extends PostState{

  final String message;

  PostStateError({required this.message});

  @override

  List<Object?>get props=>[];

}