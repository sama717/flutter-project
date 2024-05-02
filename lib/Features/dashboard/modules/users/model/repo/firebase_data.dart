
import 'package:authentication/Features/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:authentication/Features/dashboard/modules/users/model/repo/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseRepo extends ParentRepo{
  static FirebaseRepo? instance= FirebaseRepo._init();
  // _singletoneObject;
  FirebaseRepo._init();

  // static FirebaseRepo get instance{
  //   _singletoneObject ?? = FirebaseRepo._init();
  //   return _singletoneObject!;
  // }
  @override
  Future<List<UserModel>> fetch() async {
    return await FirebaseFirestore.instance.collection('users').get().then((QuerySnapshot querySnapshot) {
      return querySnapshot.docs.map((e) {
        final Map data = e.data() as Map;

        Map m = {
          'name': data.containsKey('name') ?
          data['name'] : "XxXx",
          'address': data.containsKey('adress') ?
          data['address'] : "XxXx",
          'id': e.reference.id,
        };
        return UserModel.fromJson(m);
      }).toList();
    });
  }

  @override
  Future<void> delete({required int id}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.doc(id.toString()).update({'company': 'Stokes and Sons'}).then((_) => print("User Updated"));

  }

  @override
  Future<void> insert({required String name, String? address}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users
        .add({
      'name': name, // John Doe
      'address': address, // Stokes and Sons
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

}