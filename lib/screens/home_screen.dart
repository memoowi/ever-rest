import 'package:ever_rest/utils/config.dart';
import 'package:ever_rest/utils/theme.dart';
import 'package:ever_rest/widgets/todo_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: RadialGradient(
                    colors: [
                      CustomColors.accent.withOpacity(0.5),
                      CustomColors.accent,
                      CustomColors.primary,
                    ],
                    center: Alignment.topLeft,
                    radius: 1.6,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, User!',
                      style: CustomTextStyle.primary.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'What would you like to do?',
                      style: CustomTextStyle.primary.copyWith(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TodoButton(
                          onTap: () {},
                          icon: CupertinoIcons.calendar_today,
                          label: 'Reserve',
                        ),
                        TodoButton(
                          onTap: () {},
                          icon: CupertinoIcons.location_north,
                          label: 'Available',
                        ),
                        TodoButton(
                          onTap: () {},
                          icon: CupertinoIcons.creditcard,
                          label: 'Payment',
                        ),
                        TodoButton(
                          onTap: () {},
                          icon: CupertinoIcons.doc_plaintext,
                          label: 'History',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
