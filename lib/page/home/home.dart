import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:record_memo/constants/style.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
          ),
        ),
        const Gap(15),
        const Text('Tap to start recording',
            style: TextStyle(
              color: ColorStyles.textGrey,
              fontSize: 15,
            ))
      ],
    );
  }
}
