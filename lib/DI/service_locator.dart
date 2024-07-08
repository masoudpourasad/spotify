import 'package:get_it/get_it.dart';
import 'package:spotify/data/datasource/album_datasource.dart';
import 'package:spotify/data/datasource/artist_datasource.dart';
import 'package:spotify/data/datasource/playlist_datasource.dart';
import 'package:spotify/data/datasource/podcast_datasource.dart';
import 'package:spotify/data/repository/album_repository.dart';
import 'package:spotify/data/repository/artist_repository.dart';
import 'package:spotify/data/repository/playlist_repository.dart';
import 'package:spotify/data/repository/podcast_repository.dart';

var locator = GetIt.instance;

void initServiceLocator() {
  locator.registerSingleton<ArtistDatasource>(ArtistLocalDatasource());
  locator.registerSingleton<PodcastDatasource>(PodcastLocalDatasource());
  locator.registerSingleton<AlbumDatasource>(AlbumLocalDatasource());
  locator.registerSingleton<PlaylistDatasource>(PLaylistLocalDatasource());

  locator.registerSingleton<ArtistRepository>(ArtistLocalRepository());
  locator.registerSingleton<PodcastRepository>(PodcastLocalRepository());
  locator.registerSingleton<AlbumRepository>(AlbumLocalRepository());
  locator.registerSingleton<PLaylistRepository>(PlaylistLocalRepository());
}
