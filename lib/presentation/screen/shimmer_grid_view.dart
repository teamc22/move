import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerGridView extends StatefulWidget {
  const ShimmerGridView({super.key});

  @override
  State<ShimmerGridView> createState() => _ShimmerGridViewState();
}

class _ShimmerGridViewState extends State<ShimmerGridView> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        children: [
          Container(
            height: 270,
            width: double.infinity,
            color: Colors.purple,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.red,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
