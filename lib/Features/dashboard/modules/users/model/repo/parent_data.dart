
 import 'package:authentication/Features/dashboard/modules/users/model/repo/user_model.dart';

 abstract class ParentRepo{
  Future<void> insert({required String name,String? address});
  Future<List<UserModel>> fetch();
  Future<void> delete({required int id});
}