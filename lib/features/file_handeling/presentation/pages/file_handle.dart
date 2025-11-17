import 'package:file_handeling/features/file_handeling/presentation/widgets/book_card.dart';
import 'package:flutter/material.dart';

class FileHandle extends StatelessWidget {
  const FileHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Center(
              child: Column(
                children: [
                  Row(children: [BookCard()]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
