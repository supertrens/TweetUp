import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HeroBanner extends StatelessWidget {
  static const List<String> taiwanImages = [
    "assets/images/taiwan.jpg",
    "assets/images/taiwan2.jpg",
    "assets/images/taiwan3.jpg",
    "assets/images/taiwan4.jpg",
    "assets/images/taiwan5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Swiper(
            autoplay: true,
            itemBuilder: (ctx, index) {
              return Container(
                child: GestureDetector(
                  onTap: null,
                  child: Hero(
                    tag: "Taiwan",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: FadeInImage(
                        image: AssetImage(taiwanImages[index]),
                        fit: BoxFit.cover,
                        placeholder: AssetImage("assets/images/loading.gif"),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: taiwanImages.length,
            viewportFraction: 0.7,
            scale: 0.9,
            control: new SwiperControl(),
          ),
        )
      ],
    );
  }
}
