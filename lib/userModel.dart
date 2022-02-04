class UserModel {
  late String id;
  late String fullname;
  late String email;
  UserModel({required this.id, required this.fullname, required this.email});
  //Map tp Object
  UserModel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.fullname = map["fullname"];
    this.email = map["email"];
  }
  //object to map
  Map<String, dynamic> toMap() {
    return {"id": this.id, "fullname": this.email, "email": this.email};
  }
}
