import 'package:flutter/material.dart';

import 'package:instagram_app/instagram/widgets/widgets.dart';

class StorysTopListView extends StatelessWidget {
  const StorysTopListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),        
        itemBuilder: (context, index) {
          if (index == 0) {
            return Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child: CustomCircleAvatar(
                    title: 'Your story',
                    image: 'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
                    storys: null,
                    isPersonalUser: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child: CustomCircleAvatar(
                    title: 'ibaillanos',
                    image: 'https://pbs.twimg.com/profile_images/1513174819038240777/77Zo3WBf.jpg',
                    storys: ['story 1', 'story 2', 'story 3'],
                  ),
                )
              ],
            );
          } 
          return const Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: CustomCircleAvatar(
              image: 'https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo=',
              title: 'celepamio',
              storys: ['story 1', 'story 2', 'story 3'],
            ),
          );
        },
      ),
    );
  }

  
}


