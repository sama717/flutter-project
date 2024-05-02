 import 'package:authentication/Features/dashboard/modules/users/model/repo/parent_data.dart';
import 'package:authentication/Features/dashboard/modules/users/model/repo/user_model.dart';

class APIsRepo extends ParentRepo {
  @override
  Future<void> delete({required int id}) async {
    // TODO: Implement delete logic
  }

  @override
  Future<List<UserModel>> fetch() async {
    // TODO: Implement fetch logic
    return []; // Return an empty list for now
  }

  @override
  Future<void> insert({required String name, String? address}) async {
    // TODO: Implement insert logic
  }
}
