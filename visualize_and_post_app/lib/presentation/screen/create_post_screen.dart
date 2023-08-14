import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visualize_and_post_app/presentation/widgets/text_form.dart';

import '../providers/data_provider.dart';

//Pantalla qeu renderiza el Form para enviar un post tipo Data
class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final dataProvider = context.watch<DataProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Post'),
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
      body: FormSendPost(dataProvider: dataProvider),
    );
  }
}
