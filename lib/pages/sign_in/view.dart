import 'package:firebase_chat/pages/sign_in/controller.dart';
import 'package:firebase_chat/pages/welcome/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/values/colors.dart';
import '../../common/values/shadows.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildLogo() {
      return Container(
        width: 110,
        margin: EdgeInsets.only(top: 84),
        child: Column(
          children: [
            Container(
              width: 76,
              height: 76,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 76,
                      decoration: BoxDecoration(
                          color: AppColors.primaryBackground,
                          boxShadow: [
                            Shadows.primaryShadow,
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      "assets/images/ic_launcher.png",
                      width: 76,
                      height: 76,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Center(
          child: Column(
            children: [
              _buildLogo()
            ],
          ),
        ));
  }
}
