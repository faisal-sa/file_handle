import 'package:file_handeling/core/enums/attachement_type.dart';
import 'package:file_handeling/core/utils/pick_file.dart';
import 'package:file_handeling/features/file_handeling/presentation/cubit/file_handeling_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilePickerButton extends StatelessWidget {
  const FilePickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        pickFile(type: AttachementType.graphic);
      },
      child: Text("open file manager"),
    );
  }
}
