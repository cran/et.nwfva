## ----tabelle1_html, echo=FALSE, results="asis"--------------------------------
cat('
<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>Datengrundlage für die Ertragstafelerstellung für die fünf Hauptbaumarten: Anzahl der generierten Modellbestände mit ihren Alters- und Oberhöhenbonitätskennwerten. Die Anzahl ergibt
sich aus der in Klammern angegebenen Anzahl von Versuchsparzellen multipliziert mit den verwendeten Aufnahmen abzüglich ausgesonderter Startkonstellationen.</caption>
 <thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1"></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="1"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Anzahl</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="3"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Alter zu Beginn der Projektion</div></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="3"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Oberhöhenbonität h<sub>100</sub></div></th>
</tr>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:center;"> Modellbestände </th>
   <th style="text-align:center;"> Min. </th>
   <th style="text-align:center;"> Mittelwert </th>
   <th style="text-align:center;"> Max. </th>
   <th style="text-align:center;"> 5% Quantil </th>
   <th style="text-align:center;"> Mittelwert </th>
   <th style="text-align:center;"> 95% Quantil </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;font-weight: bold;"> Eiche </td>
   <td style="text-align:center;"> 463 (101) </td>
   <td style="text-align:center;"> 17 </td>
   <td style="text-align:center;"> 74 </td>
   <td style="text-align:center;"> 170 </td>
   <td style="text-align:center;"> 19.4 </td>
   <td style="text-align:center;"> 27.3 </td>
   <td style="text-align:center;"> 36.4 </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;"> Buche </td>
   <td style="text-align:center;"> 241 (61) </td>
   <td style="text-align:center;"> 25 </td>
   <td style="text-align:center;"> 63 </td>
   <td style="text-align:center;"> 110 </td>
   <td style="text-align:center;"> 26.7 </td>
   <td style="text-align:center;"> 33.1 </td>
   <td style="text-align:center;"> 40.4 </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;"> Fichte </td>
   <td style="text-align:center;"> 278 (61) </td>
   <td style="text-align:center;"> 19 </td>
   <td style="text-align:center;"> 42 </td>
   <td style="text-align:center;"> 99 </td>
   <td style="text-align:center;"> 30.1 </td>
   <td style="text-align:center;"> 37.9 </td>
   <td style="text-align:center;"> 42.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;"> Douglasie </td>
   <td style="text-align:center;"> 478 (290) </td>
   <td style="text-align:center;"> 15 </td>
   <td style="text-align:center;"> 40 </td>
   <td style="text-align:center;"> 77 </td>
   <td style="text-align:center;"> 35.1 </td>
   <td style="text-align:center;"> 41.7 </td>
   <td style="text-align:center;"> 47.8 </td>
  </tr>
  <tr>
   <td style="text-align:left;font-weight: bold;"> Kiefer </td>
   <td style="text-align:center;"> 142 (32) </td>
   <td style="text-align:center;"> 16 </td>
   <td style="text-align:center;"> 43 </td>
   <td style="text-align:center;"> 96 </td>
   <td style="text-align:center;"> 24.9 </td>
   <td style="text-align:center;"> 30.6 </td>
   <td style="text-align:center;"> 35.7 </td>
  </tr>
</tbody>
</table>
')

## ----tabelle2_html, echo=FALSE, results="asis"--------------------------------
cat('
<table class="kable_wrapper lightable-paper" style=\'font-family: "Arial Narrow", arial, helvetica, sans-serif; margin-left: auto; margin-right: auto;\'>
<caption>Die absoluten Oberhöhenbonitäten in den Ertragstafeln und die korrespondierenden relativen Ertragsklassen (gerundet) nach Schober (1995).</caption>
<tbody>
  <tr>
   <td> 

<table>
 <thead>
<tr><th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Eiche</div></th></tr>
  <tr>
   <th style="text-align:center;"> H<sub>100</sub> </th>
   <th style="text-align:center;"> Ekl. </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> 33 </td>
   <td style="text-align:center;"> -I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 30 </td>
   <td style="text-align:center;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 27 </td>
   <td style="text-align:center;"> I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 24 </td>
   <td style="text-align:center;"> II </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 21 </td>
   <td style="text-align:center;"> III </td>
  </tr>
</tbody>
</table>

 </td>
   <td> 

<table>
 <thead>
<tr><th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Buche</div></th></tr>
  <tr>
   <th style="text-align:center;"> H<sub>100</sub> </th>
   <th style="text-align:center;"> Ekl. </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> 40.5 </td>
   <td style="text-align:center;"> -I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 36.5 </td>
   <td style="text-align:center;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 32.5 </td>
   <td style="text-align:center;"> I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 28.5 </td>
   <td style="text-align:center;"> II </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 24.5 </td>
   <td style="text-align:center;"> III </td>
  </tr>
</tbody>
</table>

 </td>
   <td> 

<table>
 <thead>
<tr><th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Fichte</div></th></tr>
  <tr>
   <th style="text-align:center;"> H<sub>100</sub> </th>
   <th style="text-align:center;"> Ekl. </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> 43 </td>
   <td style="text-align:center;"> -I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 39 </td>
   <td style="text-align:center;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 35 </td>
   <td style="text-align:center;"> I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 31 </td>
   <td style="text-align:center;"> II </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 27 </td>
   <td style="text-align:center;"> III </td>
  </tr>
</tbody>
</table>

 </td>
   <td> 

<table>
 <thead>
<tr><th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Douglasie</div></th></tr>
  <tr>
   <th style="text-align:center;"> H<sub>100</sub> </th>
   <th style="text-align:center;"> Ekl. </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> &nbsp; </td>
   <td style="text-align:center;"> &nbsp; </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 50 </td>
   <td style="text-align:center;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 45 </td>
   <td style="text-align:center;"> I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 40 </td>
   <td style="text-align:center;"> II </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 35 </td>
   <td style="text-align:center;"> III </td>
  </tr>
</tbody>
</table>

 </td>
   <td> 

<table>
 <thead>
<tr><th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Kiefer</div></th></tr>
  <tr>
   <th style="text-align:center;"> H<sub>100</sub> </th>
   <th style="text-align:center;"> Ekl. </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:center;"> 37 </td>
   <td style="text-align:center;"> -I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 33 </td>
   <td style="text-align:center;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 29 </td>
   <td style="text-align:center;"> I </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 25 </td>
   <td style="text-align:center;"> II </td>
  </tr>
  <tr>
   <td style="text-align:center;"> 21 </td>
   <td style="text-align:center;"> III </td>
  </tr>
</tbody>
</table>

 </td>
  </tr>
</tbody>
</table>
')

