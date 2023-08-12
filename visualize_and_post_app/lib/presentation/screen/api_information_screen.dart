import 'package:flutter/material.dart';

class ApiInformationScreen extends StatelessWidget {
  const ApiInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final colors = Theme.of(context).colorScheme;
   return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(onPressed: () {
                }, 
                icon: const Icon(Icons.arrow_back_ios),
                style:  ButtonStyle(
                  splashFactory: InkSplash.splashFactory,
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                ),
                ),
                backgroundColor: colors.secondary,
            ),
          
          backgroundColor: colors.secondary,
        body: _ApiInfoView());
  }
}

class _ApiInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
        dataBoxes(context),
        dataBoxes(context),
        dataBoxes(context),
        dataBoxes(context),
      ]);
  }


}

Container dataBoxes(BuildContext context) {
          // final colors = Theme.of(context).colorScheme;

return Container(
  alignment: Alignment.centerLeft,
  child: const Card(child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      ListTile(
        title: Text('Title of the post'),
        subtitle: Text('Body of the post'),
      )
    ],
  ),),

);

}
