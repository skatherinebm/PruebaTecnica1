import 'package:flutter/material.dart';

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

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
          child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/apiInformation');
                  },
                  style: buttonStyle(context),
                  child: const Text('Ver Información', textAlign: TextAlign.center))),
        ),
        Expanded(
          child: Center(
              child: TextButton(
                  onPressed: () {},
                  style: buttonStyle(context),
                  child: const Text('Realizar Post', textAlign: TextAlign.center), ) )),
      ]),
    );
  }

  ButtonStyle buttonStyle(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(buttonsTextStyle()),
        backgroundColor: MaterialStateProperty.all<Color>(colors.primary),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        fixedSize: MaterialStateProperty.all<Size>(const Size.fromRadius(150)),
        elevation: MaterialStateProperty.all<double>(10),
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(150))),
        splashFactory: InkSplash.splashFactory,
        overlayColor: MaterialStateProperty.all<Color>(colors.tertiary),
        );
  }

  TextStyle buttonsTextStyle() {
    return const TextStyle(
      fontSize: 40,
      inherit: true,
      fontWeight: FontWeight.w400,
      // decoration: TextDecoration.underline,
      // decorationStyle: TextDecorationStyle.dashed,
      fontFamily: 'Lato',
    );
  }
}
