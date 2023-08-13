import 'package:flutter/material.dart';
import 'package:visualize_and_post_app/domain/entities/data_appi.dart';

class CardsDataInfo extends StatelessWidget {
  const CardsDataInfo({super.key, required this.dataInfo});

  final Data dataInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                  Text(dataInfo.title),
                  Column(children:[
                 Text(
                   "userId: ${dataInfo.userId}" ,
                 ),
                 Text(
                   'id: ${dataInfo.id}',
                 ),
                 Text(
                   'completed: ${dataInfo.completed}',
                 ),
                  ]
   


              )]),
                // title: Text(dataInfo.title),
                // subtitle:  Text(
                //   'userId: $dataInfo.userId.toString()',
                // ),
                // trailing: const Icon(Icons.arrow_forward_ios),
              ),
              TextButton(
                onPressed: () {},
                style: buttonStyle(context),
                child: const Text('lorum'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle buttonStyle(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(buttonsTextStyle()),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade500),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      fixedSize: MaterialStateProperty.all<Size>(const Size.fromRadius(10)),
      elevation: MaterialStateProperty.all<double>(10),
      shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      splashFactory: InkSplash.splashFactory,
      overlayColor: MaterialStateProperty.all<Color>(colors.secondary),
    );
  }

  TextStyle buttonsTextStyle() {
    return const TextStyle(
      fontSize: 15,
      inherit: true,
      fontWeight: FontWeight.w100,
      // decoration: TextDecoration.underline,
      // decorationStyle: TextDecorationStyle.dashed,
      fontFamily: 'Lato',
    );
  }
}
