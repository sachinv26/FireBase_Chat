import 'package:firebase_chat/pages/message/chat/controller.dart';
import 'package:firebase_chat/pages/message/chat/widgets/chat_right_item.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_chat/common/values/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ChatList extends GetView<ChatController> {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      color: AppColors.chatbg,
      padding: EdgeInsets.only(bottom: 50.h),
      child: CustomScrollView(
        reverse: true,
        controller: controller.msgScrolling,
        slivers: [
          SliverPadding(padding: EdgeInsets.symmetric(vertical: 0.w,horizontal: 0.w),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                      (context,index){
                    var item = controller.state.msgcontnetList[index];
                    if(controller.user_id==item.uid){
                      return ChatRightItem(item);
                    }
                  },
                childCount: controller.state.msgcontnetList.length

              ),
            ),
          ),

        ],
      ),

    ));
  }
}
