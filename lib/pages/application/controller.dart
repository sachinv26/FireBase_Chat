import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../common/values/colors.dart';
import 'index.dart';
import 'package:flutter/material.dart';

class ApplicationController extends GetxController {
  final state = ApplicationState();
  ApplicationController();
  late final List<String> tabTitles;
  late final PageController pageController;
  late final List<BottomNavigationBarItem> bottomTabs;




  void handPageChanged(int index){
    state.page = index;
  }


  void handleNavBarTap(int index) {
      pageController.jumpToPage(index);
  }
  void onInit() {
    super.onInit();
    tabTitles = ['Chat', 'Contact', 'profile'];
    bottomTabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.message,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.message,
          color: AppColors.secondaryElementText,
        ),
        label: 'chat',
        backgroundColor: AppColors.primaryBackground,
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.contact_page,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.contact_page,
          color: AppColors.secondaryElementText,
        ),
        label: 'Contacts',
        backgroundColor: AppColors.primaryBackground,
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          color: AppColors.thirdElementText,
        ),
        activeIcon: Icon(
          Icons.person,
          color: AppColors.secondaryElementText,
        ),
        label: 'Profile',
        backgroundColor: AppColors.primaryBackground,
      )
    ];
    pageController = PageController(initialPage: state.page);
  }



  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
}
