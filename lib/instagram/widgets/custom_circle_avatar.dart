import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key? key, 
    required this.image, 
    this.title,
    this.storys,
    this.isPersonalUser = false,
    this.radius = 38.0,
  }) : super(key: key);

  //Puede recibir directamente el modelo de lo que venga de la peticion "getUsersStorys"
  final String image;
  final String? title;
  final List<String>? storys;
  final bool isPersonalUser;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isPersonalUser && storys == null ? _buildCustomCircleAvatarPersonalUserWithoutStorys() : _buildCustomCircleAvatarNormal(),
        if (title != null) ...[
          const SizedBox(height: 5.0,),
          Text(
            title!,
            style: TextStyle(
              fontSize: 12.0,
              color: isPersonalUser ? Colors.grey : Colors.white
            ),
          )
        ]
      ],
    );
  }

  Widget _buildCustomCircleAvatarPersonalUserWithoutStorys() {
    return GestureDetector(
      onTap: () {
        // Create Story
      },
      child: Stack(
        children: [
          Container(
            decoration: _buildBoxDecoration(),
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: _buildBoxDecorationTwo(),
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: radius,
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 5.0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff000000),
                shape: BoxShape.circle
              ),
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                padding: const EdgeInsets.all(3.0),
                child: const Icon(
                  Icons.add,
                  size: 20.0,
                ),
              ),
            )
          )
        ],
      ),
    );
  }

  Widget _buildCustomCircleAvatarNormal() {  
    return GestureDetector(
      onTap: () {
        // Open Story
      },
      child: Container(
        decoration: _buildBoxDecoration(),
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: _buildBoxDecorationTwo(),
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: radius,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecorationTwo() {
    return const BoxDecoration(
      shape: BoxShape.circle,
      color: Color(0xff000000)
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: isPersonalUser && storys != null ? Colors.green : null,
      gradient: isPersonalUser ? null : storys != null ? const LinearGradient(
        colors: [
          Colors.red,
          Colors.purple,
          Colors.purple,
          Colors.red,
          Colors.orange,
          Colors.yellow,
          Colors.orange,
        ]
      ) : null,
    );
  }

}