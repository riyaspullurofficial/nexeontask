import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/home_controller.dart';
import '../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    Text(
                      "UID",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    Text(
                      "Doc type",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    Text(
                      "Image",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                height: 2,
                color: Colors.grey[350],
              ),
              Obx(() => Expanded(
                  child: homeController.detailsModal.value?.data == null ||
                          homeController.detailsModal.value!.data.list.isEmpty
                      ? Container(
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              child: const CircularProgressIndicator(),
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: homeController
                              .detailsModal.value?.data.list.length /*100*/,
                          itemBuilder: (cnx, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 115,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 60,
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            homeController.detailsModal.value
                                                    ?.data.list[index].name
                                                    .toUpperCase() ??
                                                "JAVA",
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        homeController.detailsModal.value?.data
                                                .list[index].uid
                                                .toString() ??
                                            "35",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                      Text(
                                        homeController.detailsModal.value?.data
                                                    .list[index].docType ==
                                                null
                                            ? ''
                                            : getDocType(
                                                docTypeInt: homeController
                                                    .detailsModal
                                                    .value!
                                                    .data
                                                    .list[index]
                                                    .docType),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                      Container(
                                        height: 90,
                                        width: 70,
                                        child: Image.network(
                                          homeController.detailsModal.value!
                                                  .data.list[index].url ??
                                              "https://content.jdmagicbox.com/comp/malappuram/t5/9999px483.x483.110125083503.s9t5/catalogue/minas-silk-collection-tirur-malappuram-readymade-garment-retailers-krg59.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    width: double.infinity,
                                    height: 2,
                                    color: Colors.grey[350],
                                  ),
                                ],
                              ),
                            );
                          })))
            ],
          ),
        ),
      ),
    );
  }
}
