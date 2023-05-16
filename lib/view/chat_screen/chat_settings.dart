import 'package:flutter/material.dart';

class ChatSettings extends StatelessWidget {
  const ChatSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<dynamic, dynamic>> list = [
      {
        'icon': Icon(Icons.key),
        'title': 'Account',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.api_rounded),
        'title': 'Change Theme',
        'subtitle': 'You can change your theme',
      },
      {
        'icon': Icon(Icons.wallpaper),
        'title': 'Set Wallpaper to background',
        'subtitle': 'You can change your background',
      },
      {
        'icon': Icon(Icons.person_off_outlined),
        'title': 'Hide Profile',
        'subtitle': 'You can hide your profile',
      },
      {
        'icon': Icon(Icons.share_rounded),
        'title': 'Share Chats',
        'subtitle': 'You can share your chats',
      },
      {
        'icon': Icon(Icons.tv),
        'title': 'Export Chat',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.delete),
        'title': 'Delete Chat',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.save),
        'title': 'Save Chat',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.disabled_by_default_outlined),
        'title': 'Disable Message',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.notifications_none_rounded),
        'title': 'Notification',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.block),
        'title': 'Block List Connection',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.message),
        'title': 'Disappearing Messages',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.delete_outline),
        'title': 'Delete Chat History ',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.abc),
        'title': 'Account',
        'subtitle': 'Security Notification',
      },
      {
        'icon': Icon(Icons.abc),
        'title': 'Account',
        'subtitle': 'Security Notification',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: list[index]['icon'],
              title: Text(list[index]['title']),
              subtitle: Text(list[index]['subtitle']),
            );
          }),
    );
  }
}
