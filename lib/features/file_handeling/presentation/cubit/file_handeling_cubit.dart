import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';

part 'file_handeling_state.dart';

class FileHandelingCubit extends Cubit<FileHandelingState> {
  FileHandelingCubit() : super(FileHandelingInitial());

  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
  }
}
