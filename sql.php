<?php

$conn = new mysqli('localhost', 'tyrell_user', 'YtrKPZDeaCn0x0E7','tyrell_sql');

echo "<center>";
echo "<b>Jobs Query</b><br>";
$sql_A = file_get_contents('job-query.sql');
echo '<textarea rows="20" cols="50">';
echo $sql_A;
echo '</textarea><br>';

$started_A = microtime(true);

$result_A = $conn->query($sql_A);

if ($result_A->num_rows > 0) {

    while($row_A = $result_A->fetch_assoc()) {
        echo "Jobs__id: " . $row_A["Jobs__id"]. " - Jobs__name: " . $row_A["name"]. "- Jobs__description: " . $row_A["Jobs__description"]. "<br>";
      }

} else {
  echo "0 results <br>";
}
$end_A = microtime(true);

$difference_A = $end_A - $started_A;
$queryTime_A = number_format($difference_A, 10);
echo "SQL query took $queryTime_A seconds.";

echo "<hr>";
echo "<b>Jobs Query Optimized</b><br>";
$sql_B = file_get_contents('job-query-optimize.sql');
echo '<textarea rows="20" cols="50">';
echo $sql_B;
echo '</textarea><br>';

$started_B = microtime(true);

$result_B = $conn->query($sql_B);

if ($result_B->num_rows > 0) {

    while($row_B = $result_B->fetch_assoc()) {
        echo "Jobs__id: " . $row_B["Jobs__id"]. " - Jobs__name: " . $row_B["name"]. "- Jobs__description: " . $row_B["Jobs__description"]. "<br>";
      }

} else {
  echo "0 results <br>";
}
$end_B = microtime(true);

$difference_B = $end_B - $started_B;
$queryTime_B = number_format($difference_B, 10);
echo "SQL query took $queryTime_B seconds.";
echo "<br>";
$difference = $queryTime_A - $queryTime_B;
$queryTime = number_format($difference, 10);
echo "Optimize SQL query faster in $queryTime seconds.";

echo "<br><b>Optimization Details</b><br>";
echo '<textarea rows="20" cols="50">';
echo 'Query produce no result need more info and if performance required server side tweking';
echo '</textarea><br>';
echo "</center>";
$conn->close();
















?>