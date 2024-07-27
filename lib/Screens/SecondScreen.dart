import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/FirstPartOfSecondScreen.dart';
import '../Widgets/LastPartOfSecondScreen.dart';
import '../constant.dart';
class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(

        backgroundColor:kBackgroundColor,
        elevation: 0,
        title:const Text('Back'),
        actions: [IconButton(onPressed: (){}, icon:const  Icon(Icons.shopping_bag_outlined,))],


      ),
      body: const SafeArea(
        child: Column(

          children: [
            Firstpartofsecondscreen() ,
          Expanded(child: SizedBox()),
         Lastpartofsecondscreen(),

          ],
        ),
      ),

    );
  }
}
