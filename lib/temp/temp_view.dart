import 'package:cubit_demo1/temp/temp_cubit.dart';
import 'package:cubit_demo1/temp/temp_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Tempview extends StatefulWidget {

  static const String route = '/temp_view';

  const Tempview({super.key});

  static Widget builder(BuildContext context) {

    String? getValue =ModalRoute.of(context)?.settings.name.toString();
    print('value received ======> $getValue');

    return BlocProvider(
        create: (context) => TempCubit(const TempState()),
        child: Tempview(),
    );
  }

  @override
  State<Tempview> createState() => _TempviewState();
}

class _TempviewState extends State<Tempview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<TempCubit, TempState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(state.name),
                ElevatedButton(
                  onPressed: () {
                    context.read<TempCubit>().setName(name: "GT");
                  },
                  onLongPress: () => Navigator.pop(context),
                    child: const Text('click me again'))

              ],
            );
          },
        ),
      ),
    );
  }
}
