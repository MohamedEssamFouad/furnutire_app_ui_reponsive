import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class Lastpartofsecondscreen extends StatelessWidget {
  const Lastpartofsecondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding/2),
          child: ElevatedButton(

            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFFFCBF1E)),
            ),
            onPressed: (){},
            child: Row(

              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.shop,
                      color: Colors.white,
                    ),
                    Text(
                      'Add to cart',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}
