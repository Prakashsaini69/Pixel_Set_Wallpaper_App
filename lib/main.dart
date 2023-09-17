import "package:flutter/material.dart";
import "package:my_wallpaper/wallpaper.dart";

void main() => runApp(const myWallpaper());

class myWallpaper extends StatelessWidget {
  const myWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const Wallpaper());
  }
}
