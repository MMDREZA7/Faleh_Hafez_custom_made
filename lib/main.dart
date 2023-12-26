import 'package:faleh_hafez/application/omen_list/omen_list_bloc.dart';
import 'package:faleh_hafez/application/theme_changer/theme_changer_bloc.dart';
import 'package:faleh_hafez/presentation/home/menu_page.dart';
import 'package:faleh_hafez/presentation/home/components/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //

      //! load splash page

      future: Future.delayed(
        const Duration(seconds: 3),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: SplashPage(),
          );
        } else {
          //

          //! load menu page

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    ThemeChangerBloc()..add(ChangeThemeEvent()),
              ),
              BlocProvider(
                create: (context) => OmenListBloc(),
              ),
            ],
            child: BlocBuilder<ThemeChangerBloc, ThemeChangerState>(
              builder: (context, state) {
                if (state is ThemeChangerLoaded) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: state.theme,
                    home: const MenuPage(),
                  );
                } else {
                  return const MaterialApp(
                    home: SplashPage(),
                  );
                }
              },
            ),
          );
        }
      },
    );
  }
}
