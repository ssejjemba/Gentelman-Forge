import 'package:flutter/material.dart';

import 'info_row.dart';

class PeronalInformation extends StatelessWidget {
  const PeronalInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.00),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Personal Information',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          const InfoRow(field: 'Name:', value: 'Kyambadde Arthur'),
          const InfoRow(field: 'Email:', value: 'arthurkyam@gmail.com'),
          const InfoRow(field: 'Location:', value: 'Mego Bilania Apartments'),
          const InfoRow(field: 'Zip Code:', value: '0000'),
          const InfoRow(field: 'Phone Number:', value: '(+256) 70 6650 884'),
        ],
      ),
    );
  }
}
