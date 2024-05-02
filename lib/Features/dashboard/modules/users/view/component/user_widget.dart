import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/repo/user_model.dart';

class UserItemWidget extends StatelessWidget {
  const UserItemWidget({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            userModel.name ?? 'XxXx',
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          Text(
              userModel.address ?? 'XxXx',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),

        ],
      ),
    );
  }
}