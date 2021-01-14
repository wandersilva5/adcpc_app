class User {
  User({this.email, this.password, this.name, this.id});

  int id;
  String name, email, password;

  // factory User.fromJson(Map<String, dynamic> parsedJason) {
  //   return User(
  //     id: parsedJason['id'],
  //     name: parsedJason['name'] as String,
  //     email: parsedJason['email'] as String,
  //     password: parsedJason['password'] as String,
  //   );
  // }
}
