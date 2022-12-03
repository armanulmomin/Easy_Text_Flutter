import 'dart:math';

import 'package:flutter/material.dart';

class IncreaseText extends StatefulWidget {
  const IncreaseText({Key? key}) : super(key: key);

  @override
  State<IncreaseText> createState() => _IncreaseTextState();
}

class _IncreaseTextState extends State<IncreaseText> {
  double _fontsize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text resize'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fontsize),
                maxLines: null,
              ),
            ),
            Slider(
                value: _fontsize,
                onChanged: (newsize) {
                  setState(() {
                    _fontsize = newsize;
                  });
                },
              min: 30,
              max: 200,

                ),
          ],
        ),
      ),
    );
  }
}
