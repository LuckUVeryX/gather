class ImagePath {
  // * Loading
  static List<String> loadingPaths = List.unmodifiable(
    [kLoadingG, kLoadingCalendar, kLoadingMartini, kLoadingMapMarker],
  );
  static const kLoadingG = 'assets/loading/g.svg';
  static const kLoadingCalendar = 'assets/loading/u_calendar-alt.svg';
  static const kLoadingMartini = 'assets/loading/u_glass-martini-alt.svg';
  static const kLoadingMapMarker = 'assets/loading/u_map-marker.svg';

  // * Landing
  static List<String> landingPaths = List.unmodifiable([kLanding1, kLanding2]);
  static const kLanding1 =
      'https://images.unsplash.com/photo-1606066889831-35faf6fa6ff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8';
  static const kLanding2 =
      'https://images.unsplash.com/photo-1582298538104-fe2e74c27f59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8';
}
