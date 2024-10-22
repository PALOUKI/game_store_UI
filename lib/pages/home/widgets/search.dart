import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Search game",
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontSize: 14,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )
              ),
              prefixIcon: const Icon(
                  Icons.search_outlined,
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
              right: 12,
              child: Container(
                padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF5F67EA),
                  ),
                child: const Icon(
                    Icons.mic_outlined,
                    color: Colors.white,
                  size: 25,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
