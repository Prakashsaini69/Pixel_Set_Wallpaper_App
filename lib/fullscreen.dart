
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';


class fullscreen extends StatefulWidget {
  final String imageurl;

  const fullscreen({super.key, required this.imageurl});
  @override
  State<fullscreen> createState() => _fullscreenState();
}

class _fullscreenState extends State<fullscreen> {
    setWallpaper()async { 
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageurl);
    final String result = (await WallpaperManager.setWallpaperFromFile(file.path, location)) as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Image.network(widget.imageurl),
              ),
            ),
            InkWell(
              onTap: () {
                setWallpaper();
              },
              child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.black,
                  child: const Center(
                      child: Text('Set As Wallpaper',
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
            )
          ],
        ),
      ),
    );
  }
}
