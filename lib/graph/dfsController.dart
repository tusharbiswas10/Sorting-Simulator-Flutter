import 'package:algo_simulator/graph/dfs.dart';
import 'package:tuple/tuple.dart';



abstract class DfsController{
  Tuple3<List<String>,List<num>,num> startDfs(List<ClickStatus>cells);
}