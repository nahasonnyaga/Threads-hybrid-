import 'package:flutter/material.dart';

class CommentInput extends StatefulWidget {
  final Function(String) onSend;
  CommentInput({required this.onSend});
  @override
  State<CommentInput> createState() => _CommentInputState();
}

class _CommentInputState extends State<CommentInput> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(
          controller: _controller,
          decoration: InputDecoration(hintText: 'Add a comment...'),
        )),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            if (_controller.text.trim().isNotEmpty) {
              widget.onSend(_controller.text.trim());
              _controller.clear();
            }
          },
        )
      ],
    );
  }
}
