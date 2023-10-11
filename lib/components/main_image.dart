import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 5 / 4,
        child: Image.network("http://picsum.photos/500/400"));
  }
}
