import 'package:flutter/material.dart';

import 'package:instagram_app/instagram/widgets/widgets.dart';

class PostsListView extends StatelessWidget {
  const PostsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,   
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 10.0),       
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Post(),
        );
      },
    );
  }
}