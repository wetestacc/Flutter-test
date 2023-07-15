import '../services/user.dart';

class UserRepository {
  UserRepository({
    required this.userService,
  });

  UserService userService;
}
