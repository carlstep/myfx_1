import 'package:flutter/material.dart';

class ShowCountryListBottomSheet extends StatelessWidget {
  const ShowCountryListBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Choose a country / currency...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.flag_circle),
          ),
          title: Text('countryName A...'),
          subtitle: Text('currencyName'),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.flag_outlined),
          ),
          title: Text('countryName B...'),
          subtitle: Text('currencyName'),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.flag_sharp),
          ),
          title: Text('countryName B...'),
          subtitle: Text('currencyName'),
        ),
      ],
    );
  }
}
