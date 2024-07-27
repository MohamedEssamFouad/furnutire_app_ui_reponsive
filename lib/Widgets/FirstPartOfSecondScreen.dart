import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class Firstpartofsecondscreen extends StatelessWidget {
  const Firstpartofsecondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return             Expanded(
      flex: 6,
      child: Container(alignment: Alignment.center,

        decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70,),bottomRight: Radius.circular(70))
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Column(
            children: [
              const FittedBox(
                child: CircleAvatar(

                  radius: 100,
                  backgroundColor: Colors.white,
                  child: Image(image: AssetImage('assets/images/Item_2.png',),fit: BoxFit.fill,height: 200,),


                ),
              ),
              Expanded(child: SizedBox(height: 50,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height:20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.7)
                      ),
                      shape: BoxShape.circle,
                      color: Colors.grey,

                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    height:20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,

                    ),
                  ),
                  const SizedBox(width: 20,),

                  Container(
                    height:20,
                    width: 20,
                    decoration: const BoxDecoration(

                      shape: BoxShape.circle,
                      color: Colors.blueAccent,

                    ),
                  ),

                ],
              ),
              const Expanded(child: SizedBox()),

              Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding,left: kDefaultPadding,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Poppy Plastic Tub Chair',
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      r'$56',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    const SizedBox(height: 5,),

                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim' ,
                      style: TextStyle(fontSize: 10.sp,color: Colors.grey),
                    ),
                  ],

                ),
              ),



            ],
          ),
        ) ,
      ),


    );

  }
}
