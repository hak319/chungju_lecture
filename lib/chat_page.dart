import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>{
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendmessage() {
    final text =
  }
}

class _ChatPageState extends State<ChatPage> {
  final List<String> _message = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("채팅")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _message.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_message[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Row(
              children: [
                Expanded(
                    child: TextField()
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
