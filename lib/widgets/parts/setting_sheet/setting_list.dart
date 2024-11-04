part of 'setting_sheet.dart';

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.list(children: const [
      ListTile(title: Text('Jane Doe')),
      ListTile(title: Text('Jack Reacher')),
      ListTile(title: Text('Jack Reacher')),
      ListTile(title: Text('Jack Reacher')),
      ListTile(title: Text('Jack Reacher')),
      ListTile(title: Text('Jack Reacher')),
      ListTile(title: Text('Jack Reacher')),
      ListTile(title: Text('Jack Reacher')),
    ]);
  }
}
