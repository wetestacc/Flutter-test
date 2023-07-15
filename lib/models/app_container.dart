import 'package:equatable/equatable.dart';

import '../repositories/app.dart';
import '../repositories/user.dart';

class AppContainer extends Equatable {
  const AppContainer({
    required this.appRepository,
    required this.userRepository,
  });

  final AppRepository appRepository;
  final UserRepository userRepository;

  @override
  List<Object> get props => [appRepository, userRepository];
}
