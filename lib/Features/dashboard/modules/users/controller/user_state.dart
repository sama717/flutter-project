

import 'package:flutter/cupertino.dart';

@immutable
sealed class UserState{}
final class UserLoading extends UserState{}
final class UserLoaded extends UserState{}
final class UserEmpty extends UserState{}