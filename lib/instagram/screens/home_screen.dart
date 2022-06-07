import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram_app/instagram/instagram.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          const StorysTopListView(),
          Divider(
            height: 0.1,
            color: Colors.white.withOpacity(0.3),
          )
        ],
      )
    );
  }

  AppBar _buildAppBar() {
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
        IconButton(
          onPressed: () {
            //aca se va abrir varias opciones, en la opcion de crear storys usar el 
            //page controller del page view para mover al usuario directamente a el index 0
          }, 
          icon: const Icon(
            Icons.add_box_outlined,
          )
        ),
        const SizedBox(width: 5.0,),
        IconButton(
          onPressed: () {}, 
          icon: const Icon(
            FontAwesomeIcons.heart,
          )
        ),
        const SizedBox(width: 5.0,),
        IconButton(
          onPressed: () {
            // Usar el page controller del page view para mover al usuario al index 1
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