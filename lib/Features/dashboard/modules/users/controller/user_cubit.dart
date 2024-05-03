import 'package:authentication/Features/dashboard/modules/users/controller/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/repo/firebase_data.dart';
import '../model/repo/local_db.dart';
import '../model/repo/user_model.dart';

class UserCubit extends Cubit<UserState>{
  UserCubit() : super(UserLoading()){
    init();
  }
  List<UserModel> users = [];
  Future<void> init () async {
    emit(UserLoading());
    //users= await (await DatabaseRepo.instance).fetch();
   users =(await FirebaseRepo.instance?.fetch())!;
    if(users.isEmpty){
      emit(UserEmpty());
    }
    else {
      emit(UserLoaded());
    }
  }
}