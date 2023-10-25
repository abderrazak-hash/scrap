import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrap/views/scrap_nav_controller.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(
      builder: (context, navController, child) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Messages Screen',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
