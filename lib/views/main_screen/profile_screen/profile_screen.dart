import 'package:flutter/material.dart';
import 'package:restaurant_app/views/main_screen/profile_screen/components/profile_infos.dart';
import 'package:restaurant_app/views/main_screen/profile_screen/components/profile_settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const route = "profileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ProfileSettings(), ProfileInformation()],
        ),
      ),
    );
  }
}
