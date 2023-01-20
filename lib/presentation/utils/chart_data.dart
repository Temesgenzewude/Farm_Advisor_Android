class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double? y;

  static List<ChartData> getChartData() {
    final List<ChartData> chartData = [
      ChartData(DateTime(2023, 2, 20), 28),
      

      ChartData(DateTime(2023, 3, 21), 9),
      ChartData(DateTime(2023, 4, 22), 25),
      ChartData(DateTime(2023, 5, 23), 20),
      ChartData(DateTime(2023, 5, 24), 30),
      ChartData(DateTime(2023, 7, 25), 10),
      ChartData(DateTime(2023, 8, 26), 13),
      ChartData(DateTime(2923, 9, 27), 8),
    ];

    return chartData;
  }
}
