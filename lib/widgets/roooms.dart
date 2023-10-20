import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import 'profile_avatar.dart';

class Rooms extends StatelessWidget {
  const Rooms({
    super.key,
    required this.onlineUsers,
  });

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: CreateRoomButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 3.0,
          color: Colors.blueAccent.shade100,
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: const Icon(
              Icons.video_call,
              size: 35.0,
            ),
          ),
          const SizedBox(width: 4.0),
          const Text("Create\nRoom"),
        ],
      ),
    );
  }
}
