class Clip {
  int? id;
  DateTime? date;
  String? title;
  String? details;
  String? imageUrl;
  String? shareUrl;
  int? duration;
  String? channel;
  String? director;
  String? camera;
  int? isHighlight;
  String? topic;
  String? categoryName;
  String? showFormatId;
  String? showFormatName;
  String? section;
  String? tags;
  String? guests;
  int? status;
  String? youtubeId;
  String? streamUrl;
  String? youtubeUrl;
  String? youtubeStreamUrl;
  String? youtubeThumbUrl;

  Clip(
      {this.id,
      this.date,
      this.title,
      this.details,
      this.imageUrl,
      this.shareUrl,
      this.duration,
      this.channel,
      this.director,
      this.camera,
      this.isHighlight,
      this.topic,
      this.categoryName,
      this.showFormatId,
      this.showFormatName,
      this.section,
      this.tags,
      this.guests,
      this.status,
      this.youtubeId,
      this.streamUrl,
      this.youtubeUrl,
      this.youtubeStreamUrl,
      this.youtubeThumbUrl});

  Clip.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = DateTime.parse(json['date']);
    title = json['title'];
    details = json['details'];
    imageUrl = json['image_url'];
    shareUrl = json['share_url'];
    duration = json['duration'];
    channel = json['channel'];
    director = json['director'];
    camera = json['camera'];
    isHighlight = json['is_highlight'];
    topic = json['topic'];
    categoryName = json['category_name'];
    showFormatId = json['show_format_id'];
    showFormatName = json['show_format_name'];
    section = json['section'];
    tags = json['tags'];
    guests = json['guests'];
    status = json['status'];
    youtubeId = json['youtube_id'];
    streamUrl = json['stream_url'];
    youtubeUrl = json['youtube_url'];
    youtubeStreamUrl = json['youtube_stream_url'];
    youtubeThumbUrl = json['youtube_thumb_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['title'] = this.title;
    data['details'] = this.details;
    data['image_url'] = this.imageUrl;
    data['share_url'] = this.shareUrl;
    data['duration'] = this.duration;
    data['channel'] = this.channel;
    data['director'] = this.director;
    data['camera'] = this.camera;
    data['is_highlight'] = this.isHighlight;
    data['topic'] = this.topic;
    data['category_name'] = this.categoryName;
    data['show_format_id'] = this.showFormatId;
    data['show_format_name'] = this.showFormatName;
    data['section'] = this.section;
    data['tags'] = this.tags;
    data['guests'] = this.guests;
    data['status'] = this.status;
    data['youtube_id'] = this.youtubeId;
    data['stream_url'] = this.streamUrl;
    data['youtube_url'] = this.youtubeUrl;
    data['youtube_stream_url'] = this.youtubeStreamUrl;
    data['youtube_thumb_url'] = this.youtubeThumbUrl;

    return data;
  }

  static Clip example() {
    return Clip(
      date: DateTime.now(),
      title: "Der TV Mittelrhein-Wetterausblick für den 2. Juni 2021 | Mittelrhein | Wetter",
      details:
          "Das aktuelle Wetter für die Region Koblenz/Mittelrhein/nördliches Rheinland-Pfalz zu jeder vollen und halben Stunde in unserem Programm im Kabel und über unseren Livestream auf www.tv-mittelrhein.de und in unserer kostenlosen DRF-TV-App.",
      youtubeId: "Io0LuGb_Fok",
      youtubeThumbUrl: "https://img.youtube.com/vi/Io0LuGb_Fok/hqdefault.jpg",
      categoryName: "Wetter",
      showFormatName: "Wetter",
    );
  }
}
