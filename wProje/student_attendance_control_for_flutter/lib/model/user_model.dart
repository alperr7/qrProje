///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ModelUsersInfo {
/*

  "id": 1,
  "name": "Enes",
  "surname": "Tayboğa",
  "department": "Bilgisayar Mühendisliği"
} 
*/

  int? id;
  String? name;
  String? surname;
  String? department;

  ModelUsersInfo({
    this.id,
    this.name,
    this.surname,
    this.department,
  });
  ModelUsersInfo.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    surname = json['surname']?.toString();
    department = json['department']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['surname'] = surname;
    data['department'] = department;
    return data;
  }
}

class ModelUsersLogin {
/*
{
  "id": "1",
  "mail": "210404042@st.biruni.edu.tr",
  "password": "210404042"
} 
*/

  String? id;
  String? mail;
  String? password;

  ModelUsersLogin({
    this.id,
    this.mail,
    this.password,
  });
  ModelUsersLogin.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    mail = json['mail']?.toString();
    password = json['password']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['mail'] = mail;
    data['password'] = password;
    return data;
  }
}

class Model {
/*
{
  "usersLogin": [
    {
      "id": "1",
      "mail": "210404042@st.biruni.edu.tr",
      "password": "210404042"
    }
  ],
  "usersInfo": [
    {
      "id": 1,
      "name": "Enes",
      "surname": "Tayboğa",
      "department": "Bilgisayar Mühendisliği"
    }
  ]
} 
*/

  List<ModelUsersLogin?>? usersLogin;
  List<ModelUsersInfo?>? usersInfo;

  Model({
    this.usersLogin,
    this.usersInfo,
  });
  Model.fromJson(Map<String, dynamic> json) {
    if (json['usersLogin'] != null) {
      final v = json['usersLogin'];
      final arr0 = <ModelUsersLogin>[];
      v.forEach((v) {
        arr0.add(ModelUsersLogin.fromJson(v));
      });
      usersLogin = arr0;
    }
    if (json['usersInfo'] != null) {
      final v = json['usersInfo'];
      final arr0 = <ModelUsersInfo>[];
      v.forEach((v) {
        arr0.add(ModelUsersInfo.fromJson(v));
      });
      usersInfo = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (usersLogin != null) {
      final v = usersLogin;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['usersLogin'] = arr0;
    }
    if (usersInfo != null) {
      final v = usersInfo;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['usersInfo'] = arr0;
    }
    return data;
  }
}
