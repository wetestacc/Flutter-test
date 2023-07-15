import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.about,
  });

  final String id;
  final String name;
  final String about;

  @override
  List<Object> get props => [id, name, about];
}
