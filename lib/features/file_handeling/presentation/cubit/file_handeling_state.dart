part of 'file_handeling_cubit.dart';

abstract class FileHandelingState extends Equatable {
  const FileHandelingState();

  @override
  List<Object> get props => [];
}

class FileHandelingInitial extends FileHandelingState {}

class FileUploadSuccess extends FileHandelingState {
  final String file;

  const FileUploadSuccess({required this.file});
}
