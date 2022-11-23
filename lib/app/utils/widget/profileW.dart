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
                  foregroundImage: NetworkImage(''),
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
                  foregroundImage: NetworkImage(''),
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

