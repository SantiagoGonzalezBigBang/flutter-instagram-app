import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/instagram/blocs/blocs.dart';

class MessagesScreen extends StatelessWidget {
   
  const MessagesScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new
          ),
          onPressed: () {
            BlocProvider.of<HomeBloc>(context).animateToPage(1);
          },
        ),
        centerTitle: false,
        title: Text(
          'santygonzalez',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 22.0
          ),
        ),
        iconTheme: const IconThemeData(
          size: 30.0
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.list
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.edit
            )
          )
        ],
      ),
      body: const Center(
        child: Text('MessagesScreen'),
      ),
    );
  }
}