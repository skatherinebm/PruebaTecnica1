import 'package:flutter/material.dart';
import 'package:visualize_and_post_app/config/home_items.dart';

//Pantalla que renderiza la ventana de inicio o home.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
          ),
          backgroundColor: colors.primary,
          title: const Text('Json placeholder Api'),
          centerTitle: true,
        ),
        body: _HomeView());
  }
}

//Widget que contiene el body del Scaffold de Home
class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        final homeItems = appHomeItems[index];

        return _CustomListTile(homeItem: homeItems,);
      },);

    // return SafeArea(
    //   child: Column(children: [
    //     Expanded(
    //       child: Center(
    //           child: TextButton(
    //               onPressed: () {
    //                 Navigator.pushNamed(context, '/apiInformation');
    //               },
    //               style: buttonStyle(context),
    //               child: const Text('Ver Información',
    //                   textAlign: TextAlign.center))),
    //     ),
    //     Expanded(
    //         child: Center(
    //             child: TextButton(
    //       onPressed: () {
    //         Navigator.pushNamed(context, '/post');
    //       },
    //       style: buttonStyle(context),
    //       child: const Text('Realizar Post', textAlign: TextAlign.center),
    //     ))),
    //   ]),
    // );
  }

//Función que retorna el estilo de los botones principales de Home
//   ButtonStyle buttonStyle(BuildContext context) {
//     final colors = Theme.of(context).colorScheme;
//     return ButtonStyle(
//       textStyle: MaterialStateProperty.all<TextStyle>(buttonsTextStyle()),
//       backgroundColor: MaterialStateProperty.all<Color>(colors.primary),
//       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//       fixedSize: MaterialStateProperty.all<Size>(const Size.fromRadius(150)),
//       elevation: MaterialStateProperty.all<double>(10),
//       shape: MaterialStateProperty.all<OutlinedBorder>(
//           RoundedRectangleBorder(borderRadius: BorderRadius.circular(150))),
//       splashFactory: InkSplash.splashFactory,
//       overlayColor: MaterialStateProperty.all<Color>(colors.tertiary),
//     );
//   }

// //funcion que retorna el estilo del texto de los botones principales de Home
//   TextStyle buttonsTextStyle() {
//     return const TextStyle(
//       fontSize: 40,
//       inherit: true,
//       fontWeight: FontWeight.w400,
//       // decoration: TextDecoration.underline,
//       // decorationStyle: TextDecorationStyle.dashed,
//       fontFamily: 'Lato',
//     );
//   }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
     required this.homeItem,
  });

  final HomeItem homeItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(homeItem.title),
      subtitle: Text(homeItem.subtitle),
      onTap: () {
        Navigator.pushNamed(context, homeItem.link);
      },
      titleTextStyle: TextStyle(
        color: colors.primary,
      ),
    );
  }

}
