import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/category.dart';
import 'package:gamestore/pages/home/widgets/header.dart';
import 'package:gamestore/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Column(
              children: [
                Transform(transform: Matrix4.identity()..rotateZ(20.2),
                  origin: const Offset(75, 0),
                  child: Image.asset("assets/images/bg_liquid.png", width: 200,),
                ),
                Positioned(
                  top: 200,
                  right: 10,
                  child: Transform(
                    transform: Matrix4.identity()..rotateZ(21),
                    origin: const Offset(180, 100),
                    child: Image.asset("assets/images/bg_liquid.png", width: 200),
                  ),
                ),

              ],
            ),
            Column(
              children: [
                HeaderSection(),
                SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        )
      ),

    );
  }
}


