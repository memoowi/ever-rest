import 'package:ever_rest/screens/partials/todo_box.dart';
import 'package:ever_rest/utils/config.dart';
import 'package:ever_rest/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(16),
          child: Image.asset(
            'assets/logo-white.png',
            fit: BoxFit.cover,
          ),
        ),
        title: Text(Config.appName.toUpperCase()),
        actions: [
          IconButton(
            onPressed: () {
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(100, 100, 0, 0),
                constraints: BoxConstraints(minWidth: 160),
                items: [
                  PopupMenuItem(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.person),
                        SizedBox(width: 10),
                        Text('Profile'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (route) => false);
                    },
                    child: Row(
                      children: const [
                        Icon(CupertinoIcons.power),
                        SizedBox(width: 10),
                        Text('Logout'),
                      ],
                    ),
                  ),
                ],
              );
            },
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TodoBox(),
              const SizedBox(height: 32),
              Chip(
                avatar: Icon(
                  CupertinoIcons.list_bullet_indent,
                ),
                label: Text(
                  'Pending Reservations',
                  style: CustomTextStyle.primary,
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                onTap: () {},
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: CustomColors.primary),
                ),
                leading: Icon(
                  CupertinoIcons.person,
                ),
                title: Text(
                  'John Smith - ${DateFormat('EEE, dd MMM yyyy').format(DateTime.now())}',
                ),
                subtitle: Text('Evergreen Cemetery'),
                trailing: Icon(
                  CupertinoIcons.chevron_forward,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
