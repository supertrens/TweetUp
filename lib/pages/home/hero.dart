import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HeroBanner extends StatelessWidget {
  static const List<String> taiwanImages = [
    "assets/images/taiwan.jpg",
    "assets/images/taiwan2.jpg",
    "assets/images/taiwan3.jpg",
    "assets/images/taiwan4.jpg",
    "assets/images/taiwan5.jpg",
    "assets/images/taiwan6.jpg",
    "assets/images/taiwan7.jpg",
    "assets/images/taiwan8.jpg",
    "assets/images/taiwan9.jpg",
    "assets/images/taiwan10.jpg",
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
                      borderRadius: BorderRadius.circular(20.0),
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
            duration: 500,
            control: new SwiperControl(size: 50, color: Theme.of(context).accentColor),
          ),
        )
      ],
    );
  }
}
