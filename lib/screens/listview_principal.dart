import 'package:flutter/material.dart';
import 'package:flutter_menu_de_widgets_01/screens/missing_widget.dart';

class ListViewPrincipal extends StatelessWidget {
  const ListViewPrincipal({super.key});
  @override
  Widget build(BuildContext context) {
    const options = ['avatar screen'];
    return Scaffold(
        appBar: AppBar(title: const Expanded(child: Center(child: Text('listview principal')))),
        body: ListView.separated(
          itemCount: options.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) => ListTile(
            title: Expanded(child: Center(child: Text(options[index].toString()))),
            leading: const Icon(Icons.supervised_user_circle_outlined),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => const MissingWidget());
              Navigator.push(context, route);
            },
          ),
        ));
  }
}
