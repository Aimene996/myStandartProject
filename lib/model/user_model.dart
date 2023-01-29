
class UserModel {
  final String email;
  final String uid;
  final String imageUrl;
  final String username;

  const UserModel(
      {required this.username,
        required this.uid,
        required this.imageUrl,
        required this.email,
});
  Map<String, dynamic> toJson() => {
    "username": username,
    "uid": uid,
    "email": email,
    "imageUrl": imageUrl,

  };


}