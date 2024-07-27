import 'package:flutter/material.dart';
import 'package:furnutire_app_ui/Screens/SecondScreen.dart';
import 'package:furnutire_app_ui/constant.dart';

import '../Widgets/catList.dart';
import '../Widgets/searchBar.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text(
          'DashBoard',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_on_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBox(),
            CategoryList(),
            const SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 600) {
                        
                        return GridView.builder(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding / 2,
                          ),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 ,
                            crossAxisSpacing: kDefaultPadding,
                            mainAxisSpacing: kDefaultPadding,
                          ),
                          itemCount: 100,
                          itemBuilder: (context, index) {
                            return ProductCard();
                          },
                        );
                      } else {
                        // Mobile layout: ListView
                        return ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding,
                                vertical: kDefaultPadding / 2,
                              ),
                              height: 160,
                              child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=>Secondscreen()));
                                  },
                                  child: ProductCard()),
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: kBlueColor,
            boxShadow: [kDefaultShadow],
          ),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),


           Align(
            alignment: Alignment.centerRight,
            child: Image.asset(

              'assets/images/Item_1.png',
            ),
          ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: 25),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Classic Leather\n Arm Chair',
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            alignment: Alignment.center,
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(15)),
            ),
            child: Text(r'$56'),
          ),
        ),
      ],
    );
  }
}
