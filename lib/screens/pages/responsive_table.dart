import 'package:flutter/material.dart';

class ResponsiveTable extends StatelessWidget {
  const ResponsiveTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.green),
      dataRowColor: MaterialStateColor.resolveWith((states) => Colors.white10),
      dataRowHeight: 50,
      headingRowHeight: 40,
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            '#',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Start Date',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'End Date',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'First Name',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Last Name',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Postion',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Description',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Payment Status',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            ' Status',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('1')),
            DataCell(Text('11-12-2021')),
            DataCell(Text('14-12-2021')),
            DataCell(Text('Prasad')),
            DataCell(Text('Kowshik')),
            DataCell(Text('34')),
            DataCell(Text('Flutter Developer')),
            DataCell(
                Text('Add advanced interaction controls Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Pending')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('2')),
            DataCell(Text('15-12-2021')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('Rishi')),
            DataCell(Text('K')),
            DataCell(Text('5')),
            DataCell(Text('Son')),
            DataCell(Text('Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Done')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('3')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('17-12-2021')),
            DataCell(Text('Jaya Sri')),
            DataCell(Text('K')),
            DataCell(Text('2')),
            DataCell(Text('Daughter')),
            DataCell(Text('Interaction   Table')),
            DataCell(Text('No')),
            DataCell(Text('Process')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('4')),
            DataCell(Text('11-12-2021')),
            DataCell(Text('14-12-2021')),
            DataCell(Text('Prasad')),
            DataCell(Text('Kowshik')),
            DataCell(Text('34')),
            DataCell(Text('Flutter Developer')),
            DataCell(
                Text('Add advanced interaction controls Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Pending')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('5')),
            DataCell(Text('15-12-2021')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('Rishi')),
            DataCell(Text('K')),
            DataCell(Text('5')),
            DataCell(Text('Son')),
            DataCell(Text('Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Done')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('6')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('17-12-2021')),
            DataCell(Text('Jaya Sri')),
            DataCell(Text('K')),
            DataCell(Text('2')),
            DataCell(Text('Daughter')),
            DataCell(Text('Interaction   Table')),
            DataCell(Text('No')),
            DataCell(Text('Process')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('7')),
            DataCell(Text('11-12-2021')),
            DataCell(Text('14-12-2021')),
            DataCell(Text('Prasad')),
            DataCell(Text('Kowshik')),
            DataCell(Text('34')),
            DataCell(Text('Flutter Developer')),
            DataCell(
                Text('Add advanced interaction controls Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Pending')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('8')),
            DataCell(Text('15-12-2021')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('Rishi')),
            DataCell(Text('K')),
            DataCell(Text('5')),
            DataCell(Text('Son')),
            DataCell(Text('Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Done')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('9')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('17-12-2021')),
            DataCell(Text('Jaya Sri')),
            DataCell(Text('K')),
            DataCell(Text('2')),
            DataCell(Text('Daughter')),
            DataCell(Text('Interaction   Table')),
            DataCell(Text('No')),
            DataCell(Text('Process')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('10')),
            DataCell(Text('11-12-2021')),
            DataCell(Text('14-12-2021')),
            DataCell(Text('Prasad')),
            DataCell(Text('Kowshik')),
            DataCell(Text('34')),
            DataCell(Text('Flutter Developer')),
            DataCell(
                Text('Add advanced interaction controls Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Pending')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('11')),
            DataCell(Text('15-12-2021')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('Rishi')),
            DataCell(Text('K')),
            DataCell(Text('5')),
            DataCell(Text('Son')),
            DataCell(Text('Responsive Table')),
            DataCell(Text('No')),
            DataCell(Text('Done')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('12')),
            DataCell(Text('16-12-2021')),
            DataCell(Text('17-12-2021')),
            DataCell(Text('Jaya Sri')),
            DataCell(Text('K')),
            DataCell(Text('2')),
            DataCell(Text('Daughter')),
            DataCell(Text('Interaction   Table')),
            DataCell(Text('No')),
            DataCell(Text('Process')),
          ],
        ),
      ],
    );
  }
}
