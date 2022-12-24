class Users {
  String? email;
  String? full_name;
  String? password;

  Users({this.email = "", this.full_name = "", this.password = ""});

  Users.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    full_name = json['full_name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      "email": this.email,
      "full_name": this.full_name,
      "password": this.password
    };
  }
}