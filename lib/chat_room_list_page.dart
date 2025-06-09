
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ChatRoomListPage extends StatefulWidget {
  const ChatRoomListPage({super.key});

  @override
  State<ChatRoomListPage> createState() => _ChatRoomListPageState();
}

class _ChatRoomListPageState extends State<ChatRoomListPage> {

  final supabase = Supabase.instance.client;
  final TextEditingController controller = TextEditingController();
  List<Map<String, dynamic>> _rooms =[];



  void _creatRoom(String name) {

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("채팅방목록")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "채팅방이름",
                        border: OutlineInputBorder()
                      ),
                    )
                ),
                const SizedBox(width: 8,),
                ElevatedButton(
                    onPressed: () => _creatRoom(_controller.text),
                    child: const Text("생성")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
