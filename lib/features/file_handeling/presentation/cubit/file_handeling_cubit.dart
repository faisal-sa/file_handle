import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'file_handeling_state.dart';

class FileHandelingCubit extends Cubit<FileHandelingState> {
  FileHandelingCubit() : super(FileHandelingInitial());
}
