import 'package:flutter/material.dart';
import 'package:gamestore/pages/detail/widgets/detail_sliver.dart';
import '../../models/game.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.game, {super.key});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: DetailSliverDelegate(
                  game: game,
                  expandedHeight: 360,
                  roundedContainerHeight: 30,
              ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
