
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                  child: Row(
                    children: [
                        Expanded(
                          child: SingleChildScrollView(
                        child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
     'Upcoming Task', 
     style: TextStyle(
                        color: AppColors.primaryText, 
       fontSize: 30,
                            ),
                            ),
                            const SizedBox(
           height: 20,
                            ),
         SizedBox(
             height: 400,
             child: ListView(
               clipBehavior: Clip.antiAlias,
               // scrollDirection: Axis.vertical, 
               shrinkWrap: true, 
               children: [
                         Container(
                          height: 200, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.carBg,
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Row(
                                children: [
     ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                          radius: 25,
                          foregroundImage: NetworkImage(''),
                        ),
                        ),
                          ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                          radius: 25,
                          foregroundImage: NetworkImage(''),
                        ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                           width: 80, 
                           color: AppColors.primaryBg, 
                           child: const Center(
                             child: Text('100 %', 
                            style: TextStyle(
                              color: AppColors.primaryText,
                              ),
                             ),
                           ),
                           ),      
                        ],
                        ),
                        const Spacer(),
                           Container(
                          height: 25,
                           width: 80, 
                           color: AppColors.primaryBg, 
                           child: const Center(
                             child: Text('10 / 10 Task', 
                            style: TextStyle(
                              color: AppColors.primaryText,
                              ),
                             ),
                           ),
                           ),
                           const Text(
                            'Pemprograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                           const Text(
                            ' Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                        ]),
               ),
                         Container(
                          height: 200, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.carBg,
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Row(
                                children: [
     ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                          radius: 25,
                          foregroundImage: NetworkImage(''),
                        ),
                        ),
                          ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                          radius: 25,
                          foregroundImage: NetworkImage(''),
                        ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                           width: 80, 
                           color: AppColors.primaryBg, 
                           child: const Center(
                             child: Text('100 %', 
                            style: TextStyle(
                              color: AppColors.primaryText,
                              ),
                             ),
                           ),
                           ),      
                        ],
                        ),
                        const Spacer(),
                           Container(
                          height: 25,
                           width: 80, 
                           color: AppColors.primaryBg, 
                           child: const Center(
                             child: Text('10 / 10 Task', 
                            style: TextStyle(
                              color: AppColors.primaryText,
                              ),
                             ),
                           ),
                           ),
                           const Text(
                            'Pemprograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                           const Text(
                            ' Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                        ]),
               ),
               ],
               ),
               ),                      
                          ],
                        ),
                      ) ,
                        ),
                       const MyFriends(),
                                  ],
                                ),
                              );
                }
              }

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
           children: [
             Row(
               children: const [
                 Text(
                 'My Friend', 
                 style: TextStyle(
                   color: AppColors.primaryText, 
                   fontSize: 30,
                                         ),
                                         ),
                                         Text(
                 'more', 
                 style: TextStyle(
                   color: AppColors.primaryText, 
                   fontSize: 20,
                 ),
                 ),
                 Icon(Ionicons.chevron_forward, 
                 color: AppColors.primaryText,)
                               
               ],
             ),
             const SizedBox(
             height: 20,
           ),
           SizedBox(
             height: 400, 
             child: GridView.builder(
               shrinkWrap: true,
               itemCount: 8,
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20), itemBuilder: (context, index) {
               return Column(
                 children: [
                   ClipRRect(
           borderRadius: BorderRadius.circular(100),
                                child: const Image(
           image: 
           NetworkImage(''),
                                ),
                                ),
                                const Text('Alicia Jasmin', style: TextStyle(color: AppColors.primaryText),),
                 ],
                 );
             }),
             ),
                         ],
             ),
        ),
      ),
                 );
  }
}

