import 'package:firebase_chat/common/widgets/button.dart';
import 'package:firebase_chat/pages/application/controller.dart';
import 'package:firebase_chat/pages/contact/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/values/colors.dart';
import '../../common/values/shadows.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildPageView(){
       return PageView(
         physics: NeverScrollableScrollPhysics(),
         controller: controller.pageController,
         onPageChanged: controller.handPageChanged,
         children: [
           Container(child: Text('chat'),),
           ContactPage(),
           Container(child: Text('profile'),),
         ],
       );
    }

    Widget _buildBottomNavigationBar(){
      return Obx(
          ()=>BottomNavigationBar(items: controller.bottomTabs,
            currentIndex: controller.state.page,
            type: BottomNavigationBarType.fixed,
            onTap: controller.handleNavBarTap,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: AppColors.tabBarElement,
            selectedItemColor: AppColors.thirdElementText,
          )
      );
    }
    return Scaffold(
        body: _buildPageView(),
        bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
