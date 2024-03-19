import 'package:cubit_demo1/demo/demo_cubit.dart';
import 'package:cubit_demo1/demo/demo_state.dart';
import 'package:cubit_demo1/temp/temp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoView extends StatefulWidget {
  const DemoView({super.key});

  static const String routeName = '/demo_view';

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) => DemoCubit(const DemoState()),
      child: const DemoView(),
    );
  }

  @override
  State<DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<DemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<DemoCubit, DemoState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(state.name),
                ElevatedButton(
                    onPressed: () {
                      context.read<DemoCubit>().changeName(name: "shinde");
                    },
                    onLongPress: (){
                      Navigator.pushNamed(context, Tempview.route,arguments: state.name);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    child: const Text("click me", style: TextStyle(color: Colors.white))
                )

              ],
            );
          },
        ),
      ),
    );
  }
}
