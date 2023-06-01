import 'package:flutter/material.dart';
import 'package:gentelman_forge/screens/profile/widget/personal_information.dart';
import 'package:gentelman_forge/screens/profile/widget/profile_picture_section.dart';
import 'package:gentelman_forge/screens/profile/widget/status_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            AppBar(
              leading: const SizedBox(),
              title: const Text('Profile'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                )
              ],
            ),

            /// Profile Picture
            ProfilePictureSection(size: size),

            Text(
              'Kyambadde Arthur',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Text('arthurkyam@gmail.com'),
            const SizedBox(height: 10),

            /// Statuses
            const StatusesRow(),
            const SizedBox(height: 10),

            /// Personal Information
            const PeronalInformation()
          ],
        ),
      ),
    );
  }
}
