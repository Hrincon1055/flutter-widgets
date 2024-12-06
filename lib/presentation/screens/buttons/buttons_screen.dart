import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('ElevatedButton')),
              const ElevatedButton(
                  onPressed: null, child: Text('ElevatedButton')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('ElevatedButton icon')),
              FilledButton(onPressed: () {}, child: const Text('FilledButton')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_time_filled_rounded),
                  label: const Text('FilledButton icon')),
              OutlinedButton(
                  onPressed: () {}, child: const Text('OutlinedButton')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_balance),
                  label: const Text('OutlinedButton icon')),
              TextButton(onPressed: () {}, child: const Text('TextButton')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle),
                  label: const Text('TextButton icon')),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_a_photo_sharp),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(colors.primary),
                      iconColor: const WidgetStatePropertyAll(Colors.white))),
              const CustomButton()
            ],
          )),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'hola mundo',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
