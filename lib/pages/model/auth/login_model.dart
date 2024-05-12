class LoginModel {
  String? token;
  String? refreshToken;
  String? userGuid;
  String? userName;
  String? avatar;

  LoginModel({this.token, this.refreshToken, this.userGuid, this.userName, this.avatar});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
    userGuid = json['userGuid'];
    userName = json['userName'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['refreshToken'] = refreshToken;
    data['userGuid'] = userGuid;
    data['userName'] = userName;
    data['avatar'] = avatar;
    return data;
  }
}
