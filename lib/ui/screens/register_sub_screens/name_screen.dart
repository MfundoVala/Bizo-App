import 'package:flutter/material.dart';
import 'package:bizo/ui/widgets/bordered_text_field.dart';

class NameScreen extends StatelessWidget {
  final Function(String) onChanged;

  NameScreen({@required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            children: [

              Text(
                'Hello, \nWhat\'s your first Name?',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        SizedBox(height: 150),
        Expanded(
          child: BorderedTextField(
            labelText: 'Name',
            onChanged: onChanged,
            textCapitalization: TextCapitalization.words,
          ),
        ),
      ],
    );
  }
}
