
class HomeItem {
  final String title;
  final String subtitle;
  final String link;

  const HomeItem(
      {required this.title, required this.subtitle, required this.link});
}

const appHomeItems = <HomeItem>[
  HomeItem(
    title: 'Ver Info',
    subtitle: 'Ver info traída de la Api',
    link: '/apiInformation',
  ),

    HomeItem(
    title: 'Realizar Post',
    subtitle: 'Realizar post a la Api',
    link: '/post',
  ),
];
