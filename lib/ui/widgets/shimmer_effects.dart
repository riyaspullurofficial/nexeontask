import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


Widget popularCategoriesShimmerEffect({required BuildContext context}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 130,
    child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 25,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 1 / 2.7),
        itemBuilder: (cnx, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.grey[300]!,
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 40,
              padding: const EdgeInsets.all(7),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          );
        }),
  );
}


