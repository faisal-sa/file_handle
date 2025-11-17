import 'package:file_handeling/features/authentication/presentation/pages/forgot_password.dart';
import 'package:file_handeling/features/authentication/presentation/pages/login_page.dart';
import 'package:file_handeling/features/authentication/presentation/pages/signup_page.dart';
import 'package:file_handeling/features/file_handeling/presentation/cubit/file_handeling_cubit.dart';
import 'package:file_handeling/features/file_handeling/presentation/pages/file_handle.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return LoginPage();
      },
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) {
        return SignUpPage();
      },
    ),
    GoRoute(
      path: '/forgot_password',
      builder: (context, state) {
        return ForgotPasswordPage();
      },
    ),
    GoRoute(
      path: '/file_handle',
      builder: (context, state) {
        return BlocProvider(
          create: (context) => FileHandelingCubit(),
          child: FileHandle(),
        );
      },
    ),
  ],
);
