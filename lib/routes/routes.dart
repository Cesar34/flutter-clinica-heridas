import 'package:flutter/cupertino.dart';
import 'package:heridas_yadi/pages/chat_page.dart';
import 'package:heridas_yadi/pages/loading_pages.dart';
import 'package:heridas_yadi/pages/login_page.dart';
import 'package:heridas_yadi/pages/register_pages.dart';
import 'package:heridas_yadi/pages/usuario_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  "usuario": (_) => const UsuarioScreen(),
  "chat": (_) => const ChatScreen(),
  "loading": (_) => const LoadingScreen(),
  "login": (_) => const LoginScreen(),
  "register": (_) => const RegisterScreen(),
};
