class User {
  final String userName;
  final String email;
  final String password;

  User({required this.userName, required this.email, required this.password});

  static List<User> userList = [
    User(userName: 'lahiru', email: 'lahiru@gmail.com', password: '12345678'),
    User(userName: 'athila', email: 'athila@gmail.com', password: '12345678'),
    User(userName: 'test', email: 'test@gmail.com', password: '12345678'),
  ];
}
