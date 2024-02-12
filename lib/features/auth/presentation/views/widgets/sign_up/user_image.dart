import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 64,
          backgroundImage: NetworkImage(
            'https://plus.unsplash.com/premium_photo-1690205358060-6e57380a7a85?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D',
          ),
        ),
        Positioned(
          bottom: -10,
          left: 80,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[900],
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_a_photo,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
