import 'package:flutter/material.dart';

import 'account_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            color: Colors.red.shade800,
          ),
          Container(
            height: 82,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(42),
                topRight: Radius.circular(42),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 14,
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/fuksiarz.png',
                    height: 26,
                  ),
                  const AccountWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
