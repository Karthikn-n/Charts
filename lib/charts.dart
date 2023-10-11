import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class FlutterChart extends StatefulWidget {
  const FlutterChart({super.key});

  @override
  State<FlutterChart> createState() => _FlutterChartState();
}

class _FlutterChartState extends State<FlutterChart> {
  late EmployeeDataSource _employeeDataSource;
List<Employee> _employees = <Employee>[];
@override
void initState() {
  super.initState();
  _employees = getEmployeeData();
  _employeeDataSource = EmployeeDataSource(employees: _employees);
}
  
List<Employee> getEmployeeData() {
  return [
    Employee(10001, 'James', 'Project Lead', 20000),
    Employee(10002, 'Kathryn', 'Manager', 30000),
    Employee(10003, 'Lara', 'Developer', 15000),
    Employee(10004, 'Michael', 'Designer', 15000),
    Employee(10005, 'Martin', 'Developer', 15000),
    Employee(10006, 'Newberry', 'Developer', 15000),
    Employee(10007, 'Balnc', 'Developer', 15000),
    Employee(10008, 'Perry', 'Developer', 15000),
    Employee(10009, 'Gable', 'Developer', 15000),
    Employee(10010, 'Grimes', 'Developer', 15000)
  ];
}
  final List<ChartData1> histogramData = <ChartData1>[
        ChartData1(5.250),        ChartData1(7.750),        ChartData1(0.0),        ChartData1(8.275),        ChartData1(9.750),        ChartData1(7.750),        ChartData1(8.275),        ChartData1(6.250),        ChartData1(5.750),        ChartData1(5.250),        ChartData1(23.000),        ChartData1(26.500),        ChartData1(26.500),        ChartData1(27.750),        ChartData1(25.025),        ChartData1(26.500),        ChartData1(28.025),        ChartData1(29.250),        ChartData1(26.750),        ChartData1(27.250),        ChartData1(26.250),        ChartData1(25.250), ChartData1(34.500),   ChartData1(25.625),  ChartData1(25.500),        ChartData1(26.625), ChartData1(36.275), ChartData1(36.250),        ChartData1(26.875),  ChartData1(40.000),        ChartData1(43.000),  ChartData1(46.500),        ChartData1(47.750),  ChartData1(45.025),        ChartData1(56.500),  ChartData1(56.500),        ChartData1(58.025),  ChartData1(59.250),        ChartData1(56.750),  ChartData1(57.250),        ChartData1(46.250),  ChartData1(55.250),        ChartData1(44.500),ChartData1(45.525),        ChartData1(55.500),ChartData1(46.625),        ChartData1(46.275),ChartData1(56.250),        ChartData1(46.875),ChartData1(43.000),        ChartData1(46.250),ChartData1(55.250),        ChartData1(44.500), ChartData1(45.425),ChartData1(55.500),ChartData1(56.625), ChartData1(46.275), ChartData1(56.250), ChartData1(46.875),        ChartData1(43.000),        ChartData1(46.250),        ChartData1(55.250),        ChartData1(44.500),        ChartData1(45.425),        ChartData1(55.500),        ChartData1(46.625),        ChartData1(56.275),        ChartData1(46.250),        ChartData1(56.875),        ChartData1(41.000),        ChartData1(63.000),        ChartData1(66.500),        ChartData1(67.750),        ChartData1(65.025),        ChartData1(66.500),        ChartData1(76.500),        ChartData1(78.025),        ChartData1(79.250),        ChartData1(76.750),        ChartData1(77.250),        ChartData1(66.250),        ChartData1(75.250),        ChartData1(74.500),        ChartData1(65.625),        ChartData1(75.500),        ChartData1(76.625),        ChartData1(76.275),        ChartData1(66.250),        ChartData1(66.875),        ChartData1(80.000),        ChartData1(85.250),
        ChartData1(87.750),        ChartData1(89.000),        ChartData1(88.275),        ChartData1(89.750),        ChartData1(97.750),        ChartData1(98.275),        ChartData1(96.250),        ChartData1(95.750), ChartData1(95.250)
        ];
  List<String> years = ['2022', '2023', '2024', '2025'];
  String selectedYear = '2022'; // Default selected year
   final List<FunnelData> funnelData = [
            FunnelData('Jan', 35),
            FunnelData('Feb', 28),
            FunnelData('Mar', 34),
            FunnelData('Apr', 32),
            FunnelData('May', 40)
        ];
  // Define data for different years
  final Map<String, List<SalesData>> yearData = {
    '2022': [
      SalesData('Jan', 20),SalesData('Feb', 24),
      SalesData('Mar', 12),SalesData('Apr', 23),
      SalesData('May', 21),SalesData('Jun', 13),
      SalesData('Jul', 40),SalesData('Aug', 10),
      SalesData('Sep', 23),
    ],
    '2023': [
       SalesData('Jan', 14),SalesData('Feb', 42),
       SalesData('Mar', 21),SalesData('Apr', 31),
       SalesData('May', 12),SalesData('Jun', 31),
      SalesData('Jul', 4),SalesData('Aug', 1),
      SalesData('Sep', 32),
    ],
    '2024': [
         SalesData('Jan', 20),SalesData('Feb', 24),
       SalesData('Mar', 12),SalesData('Apr', 23),
       SalesData('May', 21),SalesData('Jun', 13),
      SalesData('Jul', 40),SalesData('Aug', 10),
      SalesData('Sep', 23),
    ],
    '2025': [
        SalesData('Jan', 23),SalesData('Feb', 14),
       SalesData('Mar', 14),SalesData('Apr', 22),
       SalesData('May', 23),SalesData('Jun', 53),
      SalesData('Jul', 45),SalesData('Aug', 40),
      SalesData('Sep', 34),
    ],
  };
   final List<ChartData> chartData = [
            ChartData('David', 25),
            ChartData('Steve', 38),
            ChartData('Jack', 34),
            ChartData('Others', 52)
        ];

  final List<StackedData> stackedData = [
          StackedData('China', 12, 10, 14, 20),
          StackedData('USA', 14, 11, 18, 23),
          StackedData('UK', 16, 10, 15, 20),
          StackedData('Brazil', 18, 16, 18, 24)
        ];
          final List<DoughnutData> doughnutData = [
            DoughnutData('David', 25, const Color.fromRGBO(9,0,136,1)),
            DoughnutData('Steve', 38, const Color.fromRGBO(147,0,119,1)),
            DoughnutData('Jack', 34, const Color.fromRGBO(228,0,124,1)),
            DoughnutData('Others', 52, const Color.fromRGBO(255,189,57,1))
        ];
   void updateChartData(String year) {
    setState(() {
      selectedYear = year;
    });
  }
  @override
  Widget build(BuildContext context) {
    //  final int startIndex = currentPage * rowsPerPage;
    // final int endIndex = (currentPage + 1) * rowsPerPage;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Charts", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
            children: [
             const Center(child:  Text("Bar", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                value: selectedYear,
                items: years.map((String year) {
                  return DropdownMenuItem<String>(
                    value: year,
                    child: Text(year));
                }).toList(),
                onChanged: (value) {
                  updateChartData(value!);
                },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  child: Card(
                    elevation: 8,
                    child: SfCartesianChart(
                          isTransposed: true,
                          enableAxisAnimation: true,
                          primaryXAxis: CategoryAxis(),
                          series: <BarSeries<SalesData, String>>[
                              BarSeries<SalesData, String>(
                                dataSource: yearData[selectedYear] ?? [],
                                xValueMapper: (SalesData sales,_) => sales.month,
                                yValueMapper: (SalesData sales,_) => sales.sales
                              )
                          ],
                         ),
                  ),
                ),
              ),
            ],
          ),
         const Padding(
           padding:  EdgeInsets.fromLTRB(20, 8, 20, 8),
           child:  Divider(
              height: 1.0,
              color: Colors.grey,
            ),
         ),
             const Center(child:  Text("Histogram", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                        height: 200,
                          child: Card(
                            elevation: 8,
                            child: SfCartesianChart(series: <ChartSeries>[
                            HistogramSeries<ChartData1, double>(
                            dataSource: histogramData,
                            animationDelay: 2.0,
                            showNormalDistributionCurve: true,
                            curveColor: const Color.fromRGBO(192, 108, 132, 1),
                            binInterval: 20,
                            
                            yValueMapper: (ChartData1 data, _) => data.y)]
                             ),
                          )
                        ),
               ),
                const Padding(
           padding:  EdgeInsets.fromLTRB(20, 8, 20, 8),
           child:  Divider(
              height: 1.0,
              color: Colors.grey,
            ),
         ),
             const Center(child:  Text("Pie", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  child: Card(
                    elevation: 8,
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<ChartData, String>(
                          dataSource: chartData,
                          explode: true,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelMapper: (ChartData data, _) => '${data.x}\n${data.y}',
                          dataLabelSettings: const DataLabelSettings(isVisible: true),
                        )
                      ],
                    ),
                  ),
                ),
              ),
               const Padding(
           padding:  EdgeInsets.fromLTRB(20, 8, 20, 8),
           child:  Divider(
              height: 1.0,
              color: Colors.grey,
            ),
         ),
             const Center(child:  Text("Doughnut", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: SizedBox(
            height: 200,
             child: Card(
              elevation: 8,
               child: SfCircularChart(
                series: <CircularSeries>[
                    DoughnutSeries<DoughnutData, String>(
                      dataSource: doughnutData,
                      explode: true,
                      dataLabelMapper: (DoughnutData data, _) => '${data.x}\n${data.y}',
                      dataLabelSettings: const DataLabelSettings(isVisible: true),
                      xValueMapper: (DoughnutData data, _) => data.x,
                      yValueMapper: (DoughnutData data, _) => data.y),
                     
                ],
               ),
             ),
           ),
         ),
         const Padding(
           padding:  EdgeInsets.fromLTRB(20, 8, 20, 8),
           child:  Divider(
              height: 1.0,
              color: Colors.grey,
            ),
         ),
             const Center(child:  Text("Funnel", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 400,
                  child: Card(
                    elevation: 8,
                    child: SfFunnelChart(
                      series: FunnelSeries<FunnelData, String>(
                        dataSource: funnelData,
                        explode: true,
                        textFieldMapper: (FunnelData data,_) => '${data.x}\n${data.y}',
                        dataLabelSettings: const DataLabelSettings(isVisible: true),
                        xValueMapper: (FunnelData data, _)=> data.x,
                        yValueMapper: (FunnelData data, _)=> data.y,
                      ),
                    ),
                  ),
                ),
              ),
               const Padding(
           padding:  EdgeInsets.fromLTRB(20, 8, 20, 8),
           child:  Divider(
              height: 1.0,
              color: Colors.grey,
            ),
         ),
             const Center(child:  Text("Stacked", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                child: Card(
                  elevation: 8,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
                      StackedColumnSeries<StackedData, String>(
                        dataSource: stackedData,
                        // dataLabelSettings: const DataLabelSettings(isVisible: true),
                        //               dataLabelMapper: (StackedData data, _)=> '${data.y1}',
                         xValueMapper: (StackedData data, _) => data.x,
                                      yValueMapper: (StackedData data, _) => data.y1
                                  ),
                                  StackedColumnSeries<StackedData, String>(
                                      dataSource: stackedData,
                                      // dataLabelSettings: const DataLabelSettings(isVisible: true),
                                      // dataLabelMapper: (StackedData data, _)=> '${data.y2}',
                                      xValueMapper: (StackedData data, _) => data.x,
                                      yValueMapper: (StackedData data, _) => data.y2
                                  ),
                                   StackedColumnSeries<StackedData,String>(
                                      dataSource: stackedData,
                                      // dataLabelSettings: const DataLabelSettings(isVisible: true),
                                      // dataLabelMapper: (StackedData data, _)=> '${data.y3}',
                                      xValueMapper: (StackedData data, _) => data.x,
                                      yValueMapper: (StackedData data, _) => data.y3
                                  ),
                                  StackedColumnSeries<StackedData, String>(
                                      dataSource: stackedData,
                                      // dataLabelSettings: const DataLabelSettings(isVisible: true),
                                      // dataLabelMapper: (StackedData data, _)=> '${data.y4}',
                                      xValueMapper: (StackedData data, _) => data.x,
                                      yValueMapper: (StackedData data, _) => data.y4
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
           padding:  EdgeInsets.fromLTRB(20, 8, 20, 8),
           child:  Divider(
              height: 1.0,
              color: Colors.grey,
            ),
         ),
             const Center(child:  Text("Grid data", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 400,
                child: Card(
                  elevation: 8,
                  child:
                      SfDataGrid(
                        source: _employeeDataSource,
                        columns: [
                          GridColumn(
                      columnName: 'id',
                      label: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'ID',
                            overflow: TextOverflow.ellipsis,
                          ))),
                            GridColumn(
                      columnName: 'name', 
                      label: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Name',
                            overflow: TextOverflow.ellipsis,
                          ))),
                            GridColumn(
                      columnName: 'designation',
                      label: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Designation',
                            overflow: TextOverflow.ellipsis,
                          ))),
                            GridColumn(
                      columnName: 'salary',
                      label: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'Salary',
                            overflow: TextOverflow.ellipsis,
                          ))),
                        ],
                      
                        ),
                    
                ),
              ),
            )
             ],
           ),
          ]
        ),
      ),
    );
  }
}
class SalesData {
  SalesData(this.month, this.sales);
  final String month;
  final double sales;
}
  class ChartData1 {
        ChartData1(this.y);
        final double y;
    }
class ChartData {
        ChartData(this.x, this.y, [this.color]);
        final String x;
        final double y;
        final Color? color ;
    }
     class DoughnutData {
        DoughnutData(this.x, this.y, [this.color]);
            final String x;
            final double y;
            final Color? color;
    }
  class FunnelData {
      FunnelData(this.x, this.y);
        final String x;
        final double y;
    }
     class StackedData{
        StackedData(this.x, this.y1, this.y2, this.y3, this.y4);
        final String x;
        final int y1;
        final int y2;
        final int y3;
        final int y4;
    }
  class Employee {
  Employee(this.id, this.name, this.designation, this.salary);
  final int id;
  final String name;
  final String designation;
  final int salary;
}
class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employees}) {
    dataGridRows = employees
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: dataGridRow.id),
              DataGridCell<String>(columnName: 'name', value: dataGridRow.name),
              DataGridCell<String>(
                  columnName: 'designation', value: dataGridRow.designation),
              DataGridCell<int>(
                  columnName: 'salary', value: dataGridRow.salary),
            ]))
        .toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: (dataGridCell.columnName == 'id' ||
                  dataGridCell.columnName == 'salary')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value.toString(),
            overflow: TextOverflow.ellipsis,
          ));
    }).toList());
  }
}