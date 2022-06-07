import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:instagram_app/instagram/instagram.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,          
            children: [
              Row(
                children: [
                  const CustomCircleAvatar(
                    image: 'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg',
                    radius: 20.0,              
                  ),
                  const SizedBox(width: 5.0,),
                  Text(
                    'psg',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              IconButton(
                onPressed: () {}, 
                icon: const FaIcon(
                  FontAwesomeIcons.ellipsis
                )
              )
            ],
          ),
        ),
        const SizedBox(height: 5.0),
        SizedBox(
          height: 400,
          child: Image.network(
            'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    FontAwesomeIcons.heart,
                  )
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.comment
                  )
                ),
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    FontAwesomeIcons.paperPlane
                  )
                ),
              ],
            ),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(
                FontAwesomeIcons.bookmark
              )
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '257 likes',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 5.0,),
              Text(
                'View all 12 comments',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
                ),
              ),
              const SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CustomCircleAvatar(
                        image: 'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
                        radius: 14.0,
                      ),
                      const SizedBox(width: 5.0,),
                      Text(
                        'Add a comment...',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.heart,
                        size: 14.0,
                      ),
                      SizedBox(width: 10.0,),
                      Icon(
                        FontAwesomeIcons.bookmark,
                        size: 14.0,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5.0,),
              Text(
                '15 minutes ago',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                  color: Colors.grey
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}