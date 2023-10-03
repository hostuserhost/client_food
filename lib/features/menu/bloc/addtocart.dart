import 'package:bloc/bloc.dart';

class OneAddCubit extends Cubit<OneAddState> {
  OneAddCubit() : super(const OneAddInitial(false));

  void oneadd() => emit(OneAddInitial(state == true ? true : false));
}

abstract class OneAddState {
  const OneAddState();
}

class OneAddInitial extends OneAddState {
  const OneAddInitial(bool onechange);
}
