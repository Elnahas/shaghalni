import 'package:bloc/bloc.dart';
import 'package:shaghalni/features/setting/logic/setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingState.initial());
}
