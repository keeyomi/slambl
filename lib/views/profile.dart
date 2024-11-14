import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slambl/views/widgets/oval_button.dart';
import 'package:slambl/providers/providers.dart';
import 'package:slambl/views/widgets/svg_image.dart';
import 'package:slambl/views/widgets/text_view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextView('Jan 8, 2024', fontSize: 16, isBold: true, textColor: Colors.black45,),
              Consumer(builder: (context, ref, _) {
                final dateDiff = ref.watch(dateProvider);
                return TextView('Today $dateDiff', fontSize: 36, isBold: true,);
              }),
            ],
          ),
          const Spacer(),
          OvalButton(
            onTap: () {},
            child: const SvgImage('assets/icons/icon_user.svg', width: 36, height: 36,),
          ),
        ],
      ),
    );
  }
}