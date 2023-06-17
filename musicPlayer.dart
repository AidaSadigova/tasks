// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
main(){
  MediaFile first = MediaFile("Ali Gatie - Moonlight", 3.49, "https://www.youtube.com/watch?v=KD5aqhUytbk");
  MediaFile second = MediaFile("Taylor Swift - Blank Space", 4.32, "https://www.youtube.com/watch?v=e-ORhEE9VVg");
  MediaFile third = MediaFile("Ruth B - Dandelions", 3.55, "https://www.youtube.com/watch?v=W8a4sUabCUo");
  Playlist favorites = Playlist(name: "FAVORITES", mediaFiles: [first, second, third]);
  stdout.writeln("To pause the music!");
  first.pause();
  print('');
  stdout.writeln("To stop the music!");
  first.stop();
  print('');
  favorites.playPlaylist();
  favorites.shufflePlaylist();
  print('');
  stdout.writeln("......New sequence of playlist...");
  favorites.playPlaylist();
}

abstract class Playable {
  void play();
  void pause();
  void stop();
}
class MediaFile implements Playable {
  String title;
  double duration;
  String filePath;
  MediaFile(
    this.title,
    this.duration,
    this.filePath,
  );
  
  @override
  void pause() {
    print('$title named music was paused.');
  }
  
  @override
  void play() {
    print('Playing $title');
  }
  
  @override
  void stop() {
    print('$title named music was stopped.');
  }
}
mixin Shuffleable{
  void shufflePlaylist();
}
class Playlist extends MediaFile implements Shuffleable {
  String name;
  List <MediaFile> mediaFiles;
  Playlist({
    required this.name,
    required this.mediaFiles,
    }):super('',0.0,'');
  
  @override
  void shufflePlaylist() {
    mediaFiles.shuffle();
  }

  void playPlaylist(){
    print("----------FAVORITES-------");
    mediaFiles.forEach((element){element.play();});
  }
  
}
