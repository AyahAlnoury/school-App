import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubits/home_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../states/AdvertsState.dart';

class AdvertsCubit extends Cubit<AdvertsState> {
  AdvertsCubit(super.AdvertsInitState);

  static AdvertsCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }
}
