<?php
include "config/koneksi.php";
include "config/library.php";
include "config/fungsi_indotgl.php";
include "config/fungsi_combobox.php";
include "config/class_paging.php";


$a = mysql_query("select count(nAgenda) as juma from smasuk where year(tMasuk)='2016' and nArsip IS NOT NULL ");
$jsudah= mysql_fetch_assoc($a);
$nsudah=$jsudah['juma'];
echo $nsudah;
echo "<br/>";

$b = mysql_query("select count(nAgenda) as jumb from smasuk where year(tMasuk)='2016' and nArsip IS NULL ");
$jbelum= mysql_fetch_assoc($b);
$nbelum = $jbelum['jumb'];
echo $nbelum;
echo "<br/>";

$c = mysql_query("select count(nAgenda) as jumc from smasuk where year(tMasuk)='2016' ");
$jtotal= mysql_fetch_assoc($c);
$ntotal= $jtotal['jumc'];
echo $ntotal;
echo "<br/>";

$psudah = ($nsudah/$ntotal)*100;
echo number_format($psudah,2,'.','');
echo "<br/>";

$pbelum = ($nbelum/$ntotal)*100;
echo number_format($pbelum,2,'.','');









?>