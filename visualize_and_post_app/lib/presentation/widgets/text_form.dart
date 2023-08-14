import 'package:flutter/material.dart';

import '../../domain/entities/data_api.dart';
import '../providers/data_provider.dart';

//Widget que contiene el formulario que recoge los atributos para el post
class FormSendPost extends StatelessWidget {
  const FormSendPost({super.key, required this.dataProvider});
  final DataProvider dataProvider;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

//Llave que contiene el estado de los controllers del formulario
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//Controllers del formulario
    final titleController = TextEditingController();
    final userIdController = TextEditingController();
    final idController = TextEditingController();
    final completedController = TextEditingController();

//función que se llama en el onPressed del botón del formulario
    void submitForm(BuildContext context) {
      if (formKey.currentState!.validate()) {
        dataProvider.sendData(Data(
            userId: int.parse(userIdController.text),
            id: int.parse(idController.text),
            title: titleController.text,
            completed: bool.parse(completedController.text)));
      }
    }

//Focos relacionados a los FormTextInput
    final FocusNode focusNode1 = FocusNode();
    final FocusNode focusNode2 = FocusNode();
    final FocusNode focusNode3 = FocusNode();
    final FocusNode focusNode4 = FocusNode();

//estilo reusable para la decoración del input
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

//función que retorna un InputDecoration
    InputDecoration inputDecoration(String hintText, String label) {
      return InputDecoration(
        hintText: hintText,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        fillColor: Colors.white,
        labelText: label,
      );
    }

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 8.0,
          runSpacing: 10.0,
          children: [
            TextFormField(
              focusNode: focusNode1,
              controller: titleController,
              decoration: inputDecoration('Ingresa el titulo', 'Título'),
              onTapOutside: (event) {
                focusNode1.unfocus();
              },
              //validación de campo requerido
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor llena el campo';
                }
                return null;
              },
            ),
            TextFormField(
              focusNode: focusNode2,
              controller: userIdController,
              decoration:
                  inputDecoration('Ingresa el Id de Usuario', 'Id de Usuario'),
              onTapOutside: (event) {
                focusNode2.unfocus();
              },
              keyboardType: TextInputType.number,
              //validación de campo requerido y solo números
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor llena el campo';
                }
                if (value.contains('.') ||
                    value.contains(',') ||
                    value.contains('-') ||
                    value.contains(' ')) {
                  return 'Formato id inválido';
                }
                return null;
              },
            ),
            TextFormField(
              focusNode: focusNode3,
              controller: idController,
              decoration: inputDecoration('Ingresa el id', 'Id'),
              onTapOutside: (event) {
                focusNode3.unfocus();
              },
              keyboardType: TextInputType.number,
              //validación de campo requerido y solo números
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor llena el campo';
                }
                if (value.contains('.') ||
                    value.contains(',') ||
                    value.contains('-') ||
                    value.contains(' ')) {
                  return 'Formato id inválido';
                }
                return null;
              },
            ),
            TextFormField(
              focusNode: focusNode4,
              controller: completedController,
              decoration: inputDecoration(
                  'Ingresa si está completo o no', 'Completado'),
              onTapOutside: (event) {
                focusNode4.unfocus();
              },
              //validación de campo requerido y true y false
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor llena el campo';
                }
                if (value != 'true' && value != 'false') {
                  return "'true' o 'false' son las opciones válidas";
                }
                return null;
              },
            ),
            Center(
              //Botón para enviar los datos del formulario
              child: FloatingActionButton.extended(
                backgroundColor: colors.primary,
                isExtended: true,
                onPressed: () => submitForm(context),
                label: const Wrap(
                  spacing: 20,
                  children: [
                    Text('Enviar Post'),
                    Icon(Icons.send),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
