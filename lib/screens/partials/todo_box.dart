import 'package:ever_rest/utils/theme.dart';
import 'package:ever_rest/widgets/todo_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoBox extends StatelessWidget {
  const TodoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                onTap: () {
                  Navigator.pushNamed(context, '/reserve');
                },
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
                icon: CupertinoIcons.doc_text,
                label: 'Taxes',
              ),
              TodoButton(
                onTap: () {},
                icon: CupertinoIcons.clock,
                label: 'History',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
