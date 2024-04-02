import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Profile",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-photo/people-making-hands-heart-shape-silhouette-sunset_53876-15987.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705968000&semt=sph"),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("Email", style: TextStyle(fontSize: 14)),
              ],
            )
          ],
        ),
        //Personal info End
      ],
    );
  }
}
