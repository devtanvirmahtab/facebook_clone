import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({
    super.key,
    required this.currentUser,
  });

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        12.0,
        8.0,
        12.0,
        0.0,
      ),
      height: 100.0,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child:  TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind?',
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam,
                  color: Colors.red,
                ),
                label: const Text("Live"),
              ),
              const VerticalDivider(width: 8.0),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo_library,
                  color: Colors.green,
                ),
                label: const Text("Live"),
              ),
              const VerticalDivider(width: 8.0),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call,
                  color: Colors.purpleAccent,
                ),
                label: const Text("Live"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
