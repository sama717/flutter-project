import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'dashboard_controller_state.dart';

class DashboardControllerCubit extends Cubit<DashboardControllerState> {
  DashboardControllerCubit() : super(DashboardChangeState());
  int selectedTapIndex = 0;
  final PageController pageController = PageController();

  void onChangeTabIndex(int index) {
    if(index == 2){
      throw 'dummy_exception from mobile';
    }
    selectedTapIndex = index;
    pageController.jumpToPage(selectedTapIndex);
    emit(DashboardChangeState());
  }
}
