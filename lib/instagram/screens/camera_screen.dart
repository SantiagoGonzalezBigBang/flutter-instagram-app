import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_app/instagram/blocs/blocs.dart';

class CameraScreen extends StatelessWidget {
   
  const CameraScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final homeBloc = BlocProvider.of<HomeBloc>(context);
    const iconSize = 35.0;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
          ),
          TopButtons(homeBloc: homeBloc, iconSize: iconSize),
          LeftButtons(homeBloc: homeBloc, iconSize: iconSize),          
          BottomButtons(homeBloc: homeBloc, iconSize: iconSize)
        ],
      )
    );
  }
}

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    Key? key,
    required this.homeBloc,
    required this.iconSize,
  }) : super(key: key);

  final HomeBloc homeBloc;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,     
      child: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      viewportFraction: 0.2,
                      enlargeCenterPage: true,
                      height: 80,
                      scrollDirection: Axis.horizontal,                      
                    ),
                    items: const [
                      PhotoCircleButton(
                        isNormal: true,
                      ),
                      PhotoCircleButton(),
                      PhotoCircleButton(),
                      PhotoCircleButton(),
                      PhotoCircleButton(),                  
                    ]
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4.0
                        )
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 18.0,),
                  Container(
                    height: 36.0,
                    width: 36.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,                        
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://avatars.mds.yandex.net/i?id=84dbd50839c3d640ebfc0de20994c30d-4473719-images-taas-consumers&n=27&h=480&w=480',                        
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0,),
                  Expanded(
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: false,
                          viewportFraction: 0.2,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: false,
                          initialPage: 1,
                          height: 16,
                          scrollDirection: Axis.horizontal,                    
                        ),
                        items: const [
                          CarouselText(text: 'Post',),                      
                          CarouselText(text: 'Story',),                      
                          CarouselText(text: 'Reel',),                      
                          CarouselText(text: 'Live',),                      
                        ]
                      ),
                    ),
                  ),
                  const SizedBox(width: 5.0,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2)
                    ),
                    child: IconButton(
                      onPressed: () {}, 
                      color: Colors.blue,
                      icon: const Icon(
                        Icons.refresh,
                        size: 30.0,
                        color: Colors.white,
                      )
                    ),
                  ),                  
                  const SizedBox(width: 18.0,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselText extends StatelessWidget {
  const CarouselText({
    Key? key, 
    required this.text,
  }) : super(key: key);

  final String text; 

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class PhotoCircleButton extends StatelessWidget {
  const PhotoCircleButton({
    Key? key, 
    this.isNormal = false,
  }) : super(key: key);

  final bool isNormal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 65.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isNormal ? Colors.white : null,
        image: !isNormal ? const DecorationImage(
          image: NetworkImage('https://static.vecteezy.com/packs/media/components/global/search-explore-nav/img/vectors/term-bg-1-666de2d941529c25aa511dc18d727160.jpg')
        ) : null
      ),
    );
  }
}

class LeftButtons extends StatelessWidget {
  const LeftButtons({
    Key? key,
    required this.homeBloc,
    required this.iconSize,
  }) : super(key: key);

  final HomeBloc homeBloc;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        children: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.abc,                    
              size: iconSize,                    
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              FontAwesomeIcons.infinity,                    
              size: 25.0,          
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.table_chart_outlined,                    
              size: iconSize,
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.keyboard_arrow_down,                    
              size: iconSize,                    
            )
          ),
        ],
      ),
    );
  }
}

class TopButtons extends StatelessWidget {
  const TopButtons({
    Key? key,
    required this.homeBloc,
    required this.iconSize,
  }) : super(key: key);

  final HomeBloc homeBloc;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              homeBloc.animateToPage(1);
            }, 
            icon: Icon(
              Icons.close,                    
              size: iconSize,                    
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.flash_off,                    
              size: iconSize,                    
            )
          ),
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.settings,                    
              size: iconSize,                    
            )
          ),
        ],
      ),
    );
  }
}