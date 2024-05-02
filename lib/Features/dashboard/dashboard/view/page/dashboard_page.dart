import 'package:authentication/Features/dashboard/dashboard/controller/cubit/dashboard_controller_cubit.dart';
import 'package:authentication/Features/dashboard/modules/users/view/page/user_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {

  final List<String> titles = const ["Home", "Wallets" , "Account"];

  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardControllerCubit(),
      child: BlocBuilder<DashboardControllerCubit, DashboardControllerState>(
        builder: (context, state) {
          DashboardControllerCubit controller = context.read<DashboardControllerCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Text( titles[controller.selectedTapIndex],),
              actions: [
                IconButton(
                    onPressed:()
              {
                Navigator.pushNamed(context, "Login");
              },
                icon: Icon(CupertinoIcons.add))
              ],

            ),
            body: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onChangeTabIndex,
              children: const [
                Text('Home'),
                UserPage(),
                Text('Wallet'),
                Text('Account'),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: controller.selectedTapIndex,
                onTap: controller.onChangeTabIndex,
                unselectedItemColor: Colors.black,
                showUnselectedLabels: true,
                unselectedLabelStyle:
                    const TextStyle(fontSize: 15, color: Colors.blueAccent),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.archivebox), label: 'wallet'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person), label: 'account'),
                ]),
          );
        },
      ),
    );
  }
}
