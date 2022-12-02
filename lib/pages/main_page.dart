import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_food_ordering_app/pages/home_page.dart';
import 'package:flutter_food_ordering_app/pages/shopping_cart_page.dart';
import 'package:flutter_food_ordering_app/theme/colors.dart';

import 'account_page.dart';
import 'notifications_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  List pages = const [
    HomePage(),
    ShoppingCartPage(),
    AccountPage(),
    NotificationsPage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Material(
        color: CustomColors.customPrimaryColor,
        child: TabBar(
          controller: tabController,
          labelColor: CustomColors.customOrange,
          unselectedLabelColor: Colors.grey,
          labelPadding: const EdgeInsets.all(20),
          indicatorColor: CustomColors.customOrange,
          indicator: const UnderlineTabIndicator(
            borderSide:
                BorderSide(color: CustomColors.customOrange, width: 4.0),
            insets: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 20.0),
          ),
          onTap: onTap,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.shopping_cart)),
            Tab(icon: Icon(Icons.person_outline)),
            Tab(icon: Icon(Icons.notifications_active_outlined)),
          ],
        ),
      ),
    );
  }
}
