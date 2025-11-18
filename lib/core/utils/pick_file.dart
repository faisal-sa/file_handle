import 'dart:io';

import 'package:file_handeling/core/enums/attachement_type.dart';
import 'package:file_picker/file_picker.dart';

Future<File?> pickFile({required AttachementType type}) async {
  List<String> allowedExtensions = [];

  switch (type) {
    case AttachementType.graphic:
      allowedExtensions = [
        'png',
        'jpg',
        'jpeg',
        'obj',
        // 'fbx',
        // 'glb',
        // 'gltf',
      ]; //3d model files aren't supported in the library so the filtering doesn't work well when a file extension is not supported it displays ALL files
      break;

    case AttachementType.document:
      allowedExtensions = ['pdf'];
      break;
  }

  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: allowedExtensions,
    allowMultiple: true,
  );

  if (result != null && result.files.isNotEmpty) {
    print(result);
    return File(result.files.single.path!);
  }

  return null;
}
