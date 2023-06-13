Benchmark

Benchmark run from 2023-06-13 13:17:20.944548Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">11th Gen Intel(R) Core(TM) i7-1165G7 @ 2.80GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">15.36 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.14.4</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.3.4.7</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">5 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics



__Input: Big__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap; text-align: right">43.81 K</td>
    <td style="white-space: nowrap; text-align: right">22.83 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;33.80%</td>
    <td style="white-space: nowrap; text-align: right">21.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">55.44 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">11.30 K</td>
    <td style="white-space: nowrap; text-align: right">88.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.95%</td>
    <td style="white-space: nowrap; text-align: right">86.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">151.16 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.82 K</td>
    <td style="white-space: nowrap; text-align: right">113.33 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;34.62%</td>
    <td style="white-space: nowrap; text-align: right">105.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">227.31 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">3.87 K</td>
    <td style="white-space: nowrap; text-align: right">258.44 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;19.51%</td>
    <td style="white-space: nowrap; text-align: right">248.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">463.00 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap;text-align: right">43.81 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">11.30 K</td>
    <td style="white-space: nowrap; text-align: right">3.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.82 K</td>
    <td style="white-space: nowrap; text-align: right">4.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">3.87 K</td>
    <td style="white-space: nowrap; text-align: right">11.32x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap">0 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">156.31 KB</td>
    <td>&mdash;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">156.31 KB</td>
    <td>&mdash;</td>
  </tr>
</table>



__Input: Medium__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap; text-align: right">259.25 K</td>
    <td style="white-space: nowrap; text-align: right">3.86 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;25.90%</td>
    <td style="white-space: nowrap; text-align: right">3.65 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">7.04 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">121.44 K</td>
    <td style="white-space: nowrap; text-align: right">8.23 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;203.31%</td>
    <td style="white-space: nowrap; text-align: right">7.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">19.72 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">81.31 K</td>
    <td style="white-space: nowrap; text-align: right">12.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;45.35%</td>
    <td style="white-space: nowrap; text-align: right">11.11 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">25.48 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">39.16 K</td>
    <td style="white-space: nowrap; text-align: right">25.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;30.80%</td>
    <td style="white-space: nowrap; text-align: right">24.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">45.45 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap;text-align: right">259.25 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">121.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">81.31 K</td>
    <td style="white-space: nowrap; text-align: right">3.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">39.16 K</td>
    <td style="white-space: nowrap; text-align: right">6.62x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap">0 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">15.69 KB</td>
    <td>&mdash;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">15.69 KB</td>
    <td>&mdash;</td>
  </tr>
</table>



__Input: Small__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap; text-align: right">2210.62 K</td>
    <td style="white-space: nowrap; text-align: right">0.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1978.02%</td>
    <td style="white-space: nowrap; text-align: right">0.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.05 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">767.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1569.95%</td>
    <td style="white-space: nowrap; text-align: right">1.06 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.00 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">711.97 K</td>
    <td style="white-space: nowrap; text-align: right">1.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1438.45%</td>
    <td style="white-space: nowrap; text-align: right">1.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.71 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">319.75 K</td>
    <td style="white-space: nowrap; text-align: right">3.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;420.20%</td>
    <td style="white-space: nowrap; text-align: right">2.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.29 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap;text-align: right">2210.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">767.21 K</td>
    <td style="white-space: nowrap; text-align: right">2.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">711.97 K</td>
    <td style="white-space: nowrap; text-align: right">3.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">319.75 K</td>
    <td style="white-space: nowrap; text-align: right">6.91x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap">0 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">1.63 KB</td>
    <td>&mdash;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">1.63 KB</td>
    <td>&mdash;</td>
  </tr>
</table>