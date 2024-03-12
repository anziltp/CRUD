class Usermodel{
  String name;
  String password;
  String email;
  Usermodel({
    required this.name,
    required this.password,
    required this.email,
  });
  Map<String,dynamic> toMap() {
    return {
      "name": name,
      "password": password,
      "email": email,

    };
  }
  factory Usermodel.fromMap(Map<String,dynamic>map){
    return Usermodel(name: map['name']??'',
      password: map['password']??'', email: map['email']??'',);
  }
  Usermodel copywith({
    String? name,
    String? phone,
    String?username,
    Map?address
  }){
    return Usermodel(
        name: name??this.name,
        password: username??this.password, email: phone?? this.email);
  }
}