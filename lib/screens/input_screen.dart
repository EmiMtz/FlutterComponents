import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName' : 'Emiliano',
      'lastName' : 'Martinez',
      'email' : 'eming.mta@gmail.com',
      'password' : '12345',
      'role' : 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            // onChanged: ,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formValues: formValues, formProperty: 'firstName',),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formValues: formValues, formProperty: 'lastName',),
                const SizedBox(height: 30),
                
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formValues: formValues, formProperty: 'email',),
                const SizedBox(height: 30),
          
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', isPassword: true, formValues: formValues, formProperty: 'password',),
                const SizedBox(height: 30),

                DropdownButtonFormField(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin'),),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser'),),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer'),)
                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
                
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode()); //Quitar el teclado al tocar el boton.
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'),),
                  )
                )
              ], 
            ),
          ),
        ),
      ),
    );
  }
}