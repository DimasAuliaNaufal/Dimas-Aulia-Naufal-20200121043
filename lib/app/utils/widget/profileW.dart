import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone ? Row(
        children: [
          const Expanded(
            flex: 1,
            child: ClipRRect(
                child: CircleAvatar(
                  backgroundColor: Colors.amber, 
                  radius: 150,
                  foregroundImage: NetworkImage('data:image/jpeg;base64,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'),
                ),
                ),
          ),
              //SizedBox(width: 20),

              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'My Task', 
                        style: TextStyle(
                          color: AppColors.primaryText, 
                          fontSize: 40,
                                ),
                                ),
                    Text(
                    'alicia@gmail.com', 
                    style: TextStyle(
                      color: AppColors.primaryText, 
                      fontSize: 16,
                                ),
                                ),
                  ],
                ),
              ),
        ],
      )
      : Center(
        child: Column(
          children: const [
            SizedBox(height: 40),
            ClipRRect(
                child: CircleAvatar(
                  backgroundColor: Colors.amber, 
                  radius: 80,
                  foregroundImage: NetworkImage('data:image/jpeg;base64,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'),
                ),
                ),
               
                SizedBox(height: 20),

                Text(
                    'My Task', 
                    style: TextStyle(
                      color: AppColors.primaryText, 
                      fontSize: 40,
                            ),
                            ),
                Text(
                'alicia@gmail.com', 
                style: TextStyle(
                  color: AppColors.primaryText, 
                  fontSize: 16,
                            ),
                            ),
          ],
        ),
      ),
      );
  }
}

