import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visualize_and_post_app/presentation/providers/data_provider.dart';

import '../widgets/cards_info.dart';

//Pantalla que renderiza la información de la Api
class ApiInformationScreen extends StatelessWidget {
  const ApiInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final dataProvider = context.watch<DataProvider>();
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: const Icon(Icons.arrow_back_ios),
              style: ButtonStyle(
                  splashFactory: InkSplash.splashFactory,
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
            ),
          ),
          backgroundColor: colors.secondary,
        ),
        backgroundColor: colors.secondary,
        body: _ApiInfoView(
          dataProvider: dataProvider,
        ));
  }
}

//Widget que contiene la ListView que renderiza las Cards con la información
class _ApiInfoView extends StatelessWidget {
  final DataProvider dataProvider;

  const _ApiInfoView({required this.dataProvider});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: ListView.builder(
              itemCount: dataProvider.dataList.length,
              itemBuilder: (BuildContext context, int index) {
                final dataInfo = dataProvider.dataList[index];
                return Expanded(child: (CardsDataInfo(dataInfo: dataInfo)));
              }))
    ]);
  }
}
