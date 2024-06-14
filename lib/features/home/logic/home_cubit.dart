import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/home/logic/home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());
}
