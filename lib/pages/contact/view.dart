import 'package:firebase_chat/common/widgets/app.dart';
import 'package:firebase_chat/common/widgets/button.dart';
import 'package:firebase_chat/pages/contact/controller.dart';
import 'package:firebase_chat/pages/contact/widgets/contactlist.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/values/colors.dart';
import '../../common/values/shadows.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar _buildAppBar(){
      return transparentAppBar(
        title: Text("Contact",style: TextStyle(
          color: AppColors.primaryBackground,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),)
      );
    }
    return Scaffold(
  appBar: _buildAppBar(),
      body: ContactList(),
       );
  }
}
