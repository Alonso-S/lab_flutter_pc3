import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/netflix_logo.png', height: 30),
          Row(
            children: const [
              Icon(Icons.search),
              SizedBox(width: 16),
              Icon(Icons.notifications),
              SizedBox(width: 16),
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
