import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/instagram/blocs/blocs.dart';

import 'package:instagram_app/instagram/instagram.dart';
import 'package:instagram_app/instagram/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: RefreshIndicator(
        onRefresh: () async {},
        color: Colors.white,
        backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            const StorysTopListView(),
            Divider(
              height: 0.1,
              color: Colors.white.withOpacity(0.3),
            ),
            const PostsListView()
          ],
        ),
      )
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      shadowColor: Colors.white,
      elevation: 0.3,
      title: Text(
        'Instagram',          
        style: GoogleFonts.oleoScript(
          fontSize: 26.0
        )
      ),
      iconTheme: const IconThemeData(
        size: 26.0
      ),
      actions: [
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            customButton: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
            items: [
              DropdownMenuItem(
                value: 'post',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Post'),
                    Icon(Icons.line_weight_sharp)
                  ],
                )
              ),
              DropdownMenuItem(
                value: 'story',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Story'),
                    Icon(Icons.add_circle_outline)
                  ],
                ),
                onTap: () {
                  BlocProvider.of<HomeBloc>(context).animateToPage(0);
                },
              ),
              DropdownMenuItem(
                value: 'reel',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Reel'),
                    Icon(Icons.video_collection_outlined)
                  ],
                ),
              ),
              DropdownMenuItem(
                value: 'live',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Live'),
                    Icon(Icons.live_tv)
                  ],
                )
              ),
            ],
            onChanged: (value) {},
            dropdownWidth: 130,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[900],
            ),
            dropdownElevation: 0,
            offset: const Offset(-50, 5),
          ),
        ),
        const SizedBox(width: 10.0,),
        IconButton(
          onPressed: () {}, 
          icon: const Icon(
            FontAwesomeIcons.heart,
          )
        ),
        const SizedBox(width: 5.0,),
        IconButton(
          onPressed: () {
            BlocProvider.of<HomeBloc>(context).animateToPage(2);
          }, 
          icon: const Icon(
            FontAwesomeIcons.commentDots
          )
        ),
        const SizedBox(width: 5.0,),
      ],
    );
  }
}