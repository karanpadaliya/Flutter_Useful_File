// Slider write this code befor build

//for Slider
  List imageList = [
    {"id": 1, "image_path": 'assets/images/slider_Image/img1.gif'},
    {"id": 2, "image_path": 'assets/images/slider_Image/img2.gif'},
    {"id": 3, "image_path": 'assets/images/slider_Image/img3.jpg'},
    {"id": 4, "image_path": 'assets/images/slider_Image/img4.jpg'},
    {"id": 5, "image_path": 'assets/images/slider_Image/img5.jpg'},
    {"id": 6, "image_path": 'assets/images/slider_Image/img6.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

// build after

Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.label,
                // borderRadius: BorderRadius.only(
                //   bottomRight: Radius.circular(30),
                //   bottomLeft: Radius.circular(30),
                // ),
              ),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              // fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reson) {
                          setState(
                            () {
                              currentIndex = index;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),