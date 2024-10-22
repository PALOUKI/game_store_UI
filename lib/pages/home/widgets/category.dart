import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/newest.dart';
import 'package:gamestore/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
   CategorySection({super.key});

  final categories=[
    {
      "icon": Icons.track_changes_outlined,
      "color": Color(0xFF605CF4),
      "title": "Arcade"
    },
    {
      "icon": Icons.sports_motorsports_outlined,
      "color": Color(0xFFFC77A6),
      "title": "Racing"
    },
    {
      "icon": Icons.track_changes_outlined,
      "color": Color(0xFF4391FF),
      "title": "Strategy"
    },
    {
      "icon": Icons.sports_esports,
      "color": Color(0xFF7182f2),
      "title": "More"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 155,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 30),
              scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index)=> Column(
                  children: [
                    SizedBox(height: 35,),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: categories[index]["color"] as Color,
                      ),
                      child: Icon(
                          categories[index]["icon"] as IconData,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(categories[index]["title"] as String, 
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),
                  ],
                )),
                separatorBuilder: ((context, index)=> const SizedBox(width: 35,)),
                itemCount: categories.length,
            ),
          ),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 30),
             child: const Text(
               "Popular game",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
           ),
          ),
           ),
          PopularGame(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: const Text(
              "Newest game",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          NewestGame(),

        ],
      ),

    );
  }
}
