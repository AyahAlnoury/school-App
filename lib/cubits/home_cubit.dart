import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/homestate.dart';

class HomeCubite extends Cubit<HomeState> {
  HomeCubite(super.HomeInitState);

  static HomeCubite get(BuildContext context) {
    return BlocProvider.of(context);
  }
}
