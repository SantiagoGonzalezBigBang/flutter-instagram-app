import 'package:flutter/material.dart';

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

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key? key, 
    required this.image, 
    required this.title,
    this.storys,
    this.isPersonalUser = false
  }) : super(key: key);

  //Puede recibir directamente el modelo de lo que venga de la peticion "getUsersStorys"
  final String image;
  final String title;
  final List<String>? storys;
  final bool isPersonalUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isPersonalUser && storys == null ? _buildCustomCircleAvatarPersonalUserWithoutStorys() : _buildCustomCircleAvatarNormal(),
        const SizedBox(height: 5.0,),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.0,
            color: isPersonalUser ? Colors.grey : Colors.white
          ),
        )
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
                radius: 38.0,
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
            radius: 38.0,
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
      gradient: isPersonalUser ? null : const LinearGradient(
        colors: [
          Colors.red,
          Colors.purple,
          Colors.purple,
          Colors.red,
          Colors.orange,
          Colors.yellow,
          Colors.orange,
        ]
      ),
    );
  }

}
