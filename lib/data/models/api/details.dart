import 'package:super_music/data/models/api/artist.dart';

class Details {
  int id;
  String title;
  String upc;
  String link;
  String share;
  String cover;
  String coverSmall;
  String coverMedium;
  String coverBig;
  String coverXl;
  int genreId;
  List<Genres> genres;
  String label;
  int nbTracks;
  int duration;
  int fans;
  int rating;
  String releaseDate;
  String recordType;
  bool available;
  String tracklist;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  List<Contributors> contributors;
  Artist artist;
  String type;
  List<Tracks> tracks;

  Details(
      {this.id,
      this.title,
      this.upc,
      this.link,
      this.share,
      this.cover,
      this.coverSmall,
      this.coverMedium,
      this.coverBig,
      this.coverXl,
      this.genreId,
      this.genres,
      this.label,
      this.nbTracks,
      this.duration,
      this.fans,
      this.rating,
      this.releaseDate,
      this.recordType,
      this.available,
      this.tracklist,
      this.explicitLyrics,
      this.explicitContentLyrics,
      this.explicitContentCover,
      this.contributors,
      this.artist,
      this.type,
      this.tracks});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    upc = json['upc'];
    link = json['link'];
    share = json['share'];
    cover = json['cover'];
    coverSmall = json['cover_small'];
    coverMedium = json['cover_medium'];
    coverBig = json['cover_big'];
    coverXl = json['cover_xl'];
    genreId = json['genre_id'];
    if (json['genres'] != null) {
      genres = new List<Genres>();
      json['genres']['data'].forEach((v) {
        genres.add(new Genres.fromJson(v));
      });
    }
    label = json['label'];
    nbTracks = json['nb_tracks'];
    duration = json['duration'];
    fans = json['fans'];
    rating = json['rating'];
    releaseDate = json['release_date'];
    recordType = json['record_type'];
    available = json['available'];
    tracklist = json['tracklist'];
    explicitLyrics = json['explicit_lyrics'];
    explicitContentLyrics = json['explicit_content_lyrics'];
    explicitContentCover = json['explicit_content_cover'];
    if (json['contributors'] != null) {
      contributors = new List<Contributors>();
      json['contributors'].forEach((v) {
        contributors.add(new Contributors.fromJson(v));
      });
    }
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    type = json['type'];
    if (json['tracks'] != null) {
      tracks = new List<Tracks>();
      json['tracks']['data'].forEach((v) {
        tracks.add(new Tracks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['upc'] = this.upc;
    data['link'] = this.link;
    data['share'] = this.share;
    data['cover'] = this.cover;
    data['cover_small'] = this.coverSmall;
    data['cover_medium'] = this.coverMedium;
    data['cover_big'] = this.coverBig;
    data['cover_xl'] = this.coverXl;
    data['genre_id'] = this.genreId;
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }
    data['label'] = this.label;
    data['nb_tracks'] = this.nbTracks;
    data['duration'] = this.duration;
    data['fans'] = this.fans;
    data['rating'] = this.rating;
    data['release_date'] = this.releaseDate;
    data['record_type'] = this.recordType;
    data['available'] = this.available;
    data['tracklist'] = this.tracklist;
    data['explicit_lyrics'] = this.explicitLyrics;
    data['explicit_content_lyrics'] = this.explicitContentLyrics;
    data['explicit_content_cover'] = this.explicitContentCover;
    if (this.contributors != null) {
      data['contributors'] = this.contributors.map((v) => v.toJson()).toList();
    }
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    data['type'] = this.type;
    if (this.tracks != null) {
      data['tracks'] = this.tracks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Genres {
  int id;
  String name;
  String picture;
  String type;

  Genres({this.id, this.name, this.picture, this.type});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    picture = json['picture'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['picture'] = this.picture;
    data['type'] = this.type;
    return data;
  }
}

class Contributors {
  int id;
  String name;
  String link;
  String share;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  bool radio;
  String tracklist;
  String type;
  String role;

  Contributors(
      {this.id,
      this.name,
      this.link,
      this.share,
      this.picture,
      this.pictureSmall,
      this.pictureMedium,
      this.pictureBig,
      this.pictureXl,
      this.radio,
      this.tracklist,
      this.type,
      this.role});

  Contributors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
    share = json['share'];
    picture = json['picture'];
    pictureSmall = json['picture_small'];
    pictureMedium = json['picture_medium'];
    pictureBig = json['picture_big'];
    pictureXl = json['picture_xl'];
    radio = json['radio'];
    tracklist = json['tracklist'];
    type = json['type'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['share'] = this.share;
    data['picture'] = this.picture;
    data['picture_small'] = this.pictureSmall;
    data['picture_medium'] = this.pictureMedium;
    data['picture_big'] = this.pictureBig;
    data['picture_xl'] = this.pictureXl;
    data['radio'] = this.radio;
    data['tracklist'] = this.tracklist;
    data['type'] = this.type;
    data['role'] = this.role;
    return data;
  }
}

class Tracks {
  int id;
  bool readable;
  String title;
  String titleShort;
  String titleVersion;
  String link;
  int duration;
  int rank;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  String preview;
  Artist artist;
  String type;

  Tracks(
      {this.id,
      this.readable,
      this.title,
      this.titleShort,
      this.titleVersion,
      this.link,
      this.duration,
      this.rank,
      this.explicitLyrics,
      this.explicitContentLyrics,
      this.explicitContentCover,
      this.preview,
      this.artist,
      this.type});

  Tracks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    readable = json['readable'];
    title = json['title'];
    titleShort = json['title_short'];
    titleVersion = json['title_version'];
    link = json['link'];
    duration = json['duration'];
    rank = json['rank'];
    explicitLyrics = json['explicit_lyrics'];
    explicitContentLyrics = json['explicit_content_lyrics'];
    explicitContentCover = json['explicit_content_cover'];
    preview = json['preview'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['readable'] = this.readable;
    data['title'] = this.title;
    data['title_short'] = this.titleShort;
    data['title_version'] = this.titleVersion;
    data['link'] = this.link;
    data['duration'] = this.duration;
    data['rank'] = this.rank;
    data['explicit_lyrics'] = this.explicitLyrics;
    data['explicit_content_lyrics'] = this.explicitContentLyrics;
    data['explicit_content_cover'] = this.explicitContentCover;
    data['preview'] = this.preview;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}
