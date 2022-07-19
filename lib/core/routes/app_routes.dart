import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uatciudapp/presentation/User/ui/screens/forgotPassword.dart';
import 'package:uatciudapp/presentation/User/ui/screens/login.dart';
import 'package:uatciudapp/presentation/Started/ui/screens/onboarding.dart';
import 'package:uatciudapp/presentation/User/ui/screens/register.dart';
import 'package:uatciudapp/presentation/User/ui/screens/resetPassword.dart';
import 'package:uatciudapp/presentation/habitant/screens/profile.dart';
import 'package:uatciudapp/presentation/report/screens/dashboard.dart';
import 'package:uatciudapp/presentation/report/screens/finish.dart';
import 'package:uatciudapp/presentation/report/screens/reportForm.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const Onboarding(),
      ),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) => const Login(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (BuildContext context, GoRouterState state) => const Register(),
    ),
    GoRoute(
      name: 'forgotPassword',
      path: '/forgotPassword',
      builder: (BuildContext context, GoRouterState state) =>
          const ForgotPassword(),
    ),
    GoRoute(
      name: 'resetPassword',
      path: '/resetPassword',
      builder: (BuildContext context, GoRouterState state) =>
          const ResetPassword(),
    ),
    GoRoute(
      name: 'dashboard',
      path: '/dashboard',
      builder: (BuildContext context, GoRouterState state) => const Dashboard(),
    ),
    GoRoute(
      name: 'ReportForm',
      path: '/ReportForm',
      builder: (BuildContext context, GoRouterState state) =>
          const ReportForm(),
    ),
    GoRoute(
      name: 'finish',
      path: '/finish',
      builder: (BuildContext context, GoRouterState state) => const Finish(),
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      builder: (BuildContext context, GoRouterState state) => const Profile(),
    ),
  ],
);
