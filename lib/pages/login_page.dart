import 'package:flutter/material.dart';
import 'package:heridas_yadi/widgets/button_blue.dart';
import 'package:heridas_yadi/widgets/custom_input.dart';

import '../widgets/label.dart';
import '../widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Logo(title: "Consultas"),
                  _Form(),
                  const Labels(
                      ruta: "register",
                      title: "¿No tienes cuenta?",
                      subtitle: "Crea una ahora!!"),
                  const Text(
                    "Terminos y condiciones de uso",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.email_outlined,
            placeholder: "Correo",
            keyboradType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline,
            placeholder: "Contraseña",
            textController: passCtrl,
            isPassword: true,
          ),
          ButtonBlue(
              text: "Ingresar",
              onPressed: () {
                print(emailCtrl.text);
                print(passCtrl.text);
              })
        ],
      ),
    );
  }
}
