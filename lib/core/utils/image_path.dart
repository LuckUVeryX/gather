class ImagePath {
  static const kAppIcon = 'assets/app/icon.svg';

  static const kLoadingG = 'assets/loading/g.svg';
  static const kLoadingCalendar = 'assets/loading/u_calendar-alt.svg';
  static const kLoadingMartini = 'assets/loading/u_glass-martini-alt.svg';
  static const kLoadingMapMarker = 'assets/loading/u_map-marker.svg';

  static List<String> get loadingPaths => List.unmodifiable(
        [kLoadingG, kLoadingCalendar, kLoadingMartini, kLoadingMapMarker],
      );
}
