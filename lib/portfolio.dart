import 'package:flutter/material.dart';
import 'package:stock_market/fl_chart.dart';
import 'package:intl/intl.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Color> gradientColors = [
    Colors.white,
    Colors.white,
  ];
  spacingText() {
    return SizedBox(height: 5);
  }

  _changeText() {
    print("object");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final oCcy = new NumberFormat("#,##0.00", "en_US");
    var appBar = AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("CPG"),
            Text(
              'NASDAQ',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context, false),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'Next page',
          onPressed: () {},
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        body: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? (MediaQuery.of(context).size.height -
                                appBar.preferredSize.height -
                                30)
                            : (MediaQuery.of(context).size.height * 2 -
                                appBar.preferredSize.height),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Card(
                                margin: EdgeInsets.all(0),
                                elevation: 0,
                                color: Colors.transparent,
                                child: ListTile(
                                  title: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '3.21',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 12),
                                                  child: Text(
                                                    'USD',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 12),
                                                  child: Text(
                                                    '+0.10 (3.50%)',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.lightGreen,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 12),
                                                  child: Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.green),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  subtitle: Text(
                                      'Aug 06,11:15AM EST After Hours 3.10'),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Card(
                                      margin: EdgeInsets.all(0),
                                      elevation: 0,
                                      color: Colors.transparent,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          ListTile(
                                            title: Row(
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Open",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("High",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Low",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Vol",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("EPS",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Div/Yield",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Beta",
                                                        style: TextStyle()),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Text("100.62",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("111.44",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("99.89",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("0.80M",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("27.32",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("0.00/0%",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("0.33",
                                                        style: TextStyle()),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Card(
                                      margin: EdgeInsets.all(0),
                                      elevation: 0,
                                      color: Colors.transparent,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          ListTile(
                                            title: Row(
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('MktCap',
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("52W High",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("52W Low",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Avg Vol",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("PVE",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Fwd P/E",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Delay",
                                                        style: TextStyle()),
                                                  ],
                                                ),
                                                Spacer(),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Text("50.01B",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("4.00",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("2.35",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("0.80M",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("29.00",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("22.99",
                                                        style: TextStyle()),
                                                    spacingText(),
                                                    Text("Real-time",
                                                        style: TextStyle()),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Row(
                                  mainAxisSize: MainAxisSize
                                      .min, // this will take space as minimum as posible(to center)
                                  children: <Widget>[
                                    new FlatButton(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.lightBlue[400],
                                      onPressed: _changeText,
                                      child: new Text(
                                        "1D",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    new FlatButton(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.grey[500],
                                      onPressed: _changeText,
                                      child: new Text("5D",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                    new FlatButton(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.grey[500],
                                      onPressed: _changeText,
                                      child: new Text("1M",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                    new FlatButton(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.grey[500],
                                      onPressed: _changeText,
                                      child: new Text("1Y",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                    new FlatButton(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.grey[500],
                                      onPressed: _changeText,
                                      child: new Text("5Y",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                    new FlatButton(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      color: Colors.grey[500],
                                      onPressed: _changeText,
                                      child: new Text("Max",
                                          style: TextStyle(fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: FlChart(
                                    chart: LineChart(
                                      LineChartData(
                                        lineTouchData: LineTouchData(
                                            getTouchedSpotIndicator:
                                                (List<TouchedSpot> spots) {
                                              return spots.map((spot) {
                                                if (spot.spot.x == 0) {
                                                  return null;
                                                }
                                                return TouchedSpotIndicatorData(
                                                  const FlLine(
                                                      color: Colors.white70,
                                                      strokeWidth: 4),
                                                  const FlDotData(
                                                      dotSize: 8,
                                                      dotColor: Colors.white),
                                                );
                                              }).toList();
                                            },
                                            touchTooltipData: TouchTooltipData(
                                                tooltipBgColor: Colors.grey,
                                                getTooltipItems:
                                                    (List<TouchedSpot> spots) {
                                                  return spots.map((spot) {
                                                    final flSpot = spot.spot;
                                                    if (flSpot.x == 0) {
                                                      return null;
                                                    }

                                                    return TooltipItem(
                                                      '${oCcy.format(flSpot.y * 0.025 + 3)} USD \n ${_convertToTime(flSpot.x.toInt())}',
                                                      const TextStyle(
                                                          color: Colors.white),
                                                    );
                                                  }).toList();
                                                })),
                                        gridData: FlGridData(
                                          show: true,
                                          drawHorizontalGrid: false,
                                          verticalInterval: 2,
                                          getDrawingVerticalGridLine: (value) {
                                            return const FlLine(
                                              color: Colors.white,
                                              strokeWidth: 0,
                                            );
                                          },
                                        ),
                                        titlesData: FlTitlesData(
                                          show: true,
                                          bottomTitles: SideTitles(
                                            showTitles: true,
                                            reservedSize: 22,
                                            textStyle: TextStyle(
                                                color: const Color(0xff68737d),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                            getTitles: (value) {
                                              switch (value.toInt()) {
                                                case 6:
                                                  return '10:00';
                                                case 31:
                                                  return '12:00';
                                                case 55:
                                                  return '2:00';
                                                case 79:
                                                  return '4:00';
                                              }

                                              return '';
                                            },
                                            margin: 8,
                                          ),
                                          leftTitles: SideTitles(
                                            showTitles: true,
                                            textStyle: TextStyle(
                                              color: const Color(0xff67727d),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                            getTitles: (value) {
                                              switch (value.toInt()) {
                                                case 0:
                                                  return '3.00';
                                                case 2:
                                                  return '3.05';
                                                case 4:
                                                  return '3.10';
                                                case 6:
                                                  return '3.15';
                                                case 8:
                                                  return '3.20';
                                                case 10:
                                                  return '3.25';
                                              }
                                              return '';
                                            },
                                            reservedSize: 28,
                                            margin: 12,
                                          ),
                                        ),
                                        borderData: FlBorderData(
                                            show: true,
                                            border: Border.all(
                                                color: Color(0xff37434d),
                                                width: 0)),
                                        minX: 0,
                                        maxX: 85,
                                        minY: 0,
                                        maxY: 11,
                                        lineBarsData: [
                                          LineChartBarData(
                                            spots: [
                                              FlSpot(1, 0),
                                              FlSpot(5, 3.36),
                                              FlSpot(10, 3.06),
                                              FlSpot(15, 3.46),
                                              FlSpot(20, 8.80),
                                              FlSpot(25, 7.80),
                                              FlSpot(31, 8),
                                              FlSpot(35, 8.33),
                                              FlSpot(43, 6.50),
                                              FlSpot(50, 6.20),
                                              FlSpot(55, 6.00),
                                              FlSpot(70, 4.50),
                                              FlSpot(71, 5.50),
                                              FlSpot(72, 6.50),
                                              FlSpot(73, 6.50),
                                              FlSpot(74, 6.40),
                                              FlSpot(79, 8.40),
                                            ],
                                            isCurved: false,
                                            colors: gradientColors,
                                            barWidth: 1,
                                            isStrokeCapRound: false,
                                            dotData: FlDotData(
                                              show: false,
                                            ),
                                            belowBarData: BelowBarData(
                                              show: true,
                                              colors: gradientColors
                                                  .map((color) =>
                                                      color.withOpacity(0.3))
                                                  .toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "News",
                        style: TextStyle(fontSize: 30),
                      ),
                      Card(
                          elevation: 0,
                          child: ListTile(
                            leading: Icon(Icons.person_outline, size: 40),
                            title: Text("BNN Bloomberg"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    "Energy Stock on the rise as demand grows and supply is low"),
                                Text('Read More...',
                                    style: TextStyle(color: Colors.blue)),
                              ],
                            ),
                          ))
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}

_convertToTime(int index) {
  int hour = 9;
  int min = 25;
  int i = 1;
  String zone = 'AM';
  while (i != 126) {
    min = min + 5;
    if (min % 60 == 0) {
      hour = hour + 1;
      min = 0;
    }
    if (hour == 13) hour = 1;
    if (hour == 12) zone = 'PM';
    if (min < 10 && min > -1 && i == index)
      return '$hour:0$min$zone';
    else if (i == index) return '$hour:$min $zone';

    i++;
  }

  if (min % 60 == 0) {
    hour = hour + 1;
    min = 0;
  } else if (hour == 13) {
    hour = 1;
  }
}

class Stock {
  int yearval;
  int salesval;

  Stock(this.yearval, this.salesval);
}
