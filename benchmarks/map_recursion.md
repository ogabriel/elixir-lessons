Benchmark

Benchmark run from 2023-06-13 13:21:04.609666Z UTC

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
    <td style="white-space: nowrap; text-align: right">11.12 K</td>
    <td style="white-space: nowrap; text-align: right">89.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;39.61%</td>
    <td style="white-space: nowrap; text-align: right">82.18 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">181.13 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">9.84 K</td>
    <td style="white-space: nowrap; text-align: right">101.63 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;26.04%</td>
    <td style="white-space: nowrap; text-align: right">93.56 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">202.87 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.35 K</td>
    <td style="white-space: nowrap; text-align: right">119.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;29.22%</td>
    <td style="white-space: nowrap; text-align: right">115.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">210.13 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">7.70 K</td>
    <td style="white-space: nowrap; text-align: right">129.84 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;15.59%</td>
    <td style="white-space: nowrap; text-align: right">125.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">210.84 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">6.44 K</td>
    <td style="white-space: nowrap; text-align: right">155.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;30.86%</td>
    <td style="white-space: nowrap; text-align: right">139.67 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">327.23 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.85 K</td>
    <td style="white-space: nowrap; text-align: right">351.17 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;29.14%</td>
    <td style="white-space: nowrap; text-align: right">323.02 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">777.25 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">11.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">9.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">7.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">6.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.85 K</td>
    <td style="white-space: nowrap; text-align: right">3.9x</td>
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
    <td style="white-space: nowrap">156.27 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap">223.98 KB</td>
    <td>1.43x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">156.27 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">156.31 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap">223.98 KB</td>
    <td>1.43x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">312.58 KB</td>
    <td>2.0x</td>
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
    <td style="white-space: nowrap; text-align: right">127.90 K</td>
    <td style="white-space: nowrap; text-align: right">7.82 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;161.86%</td>
    <td style="white-space: nowrap; text-align: right">7.07 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">15.66 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">105.50 K</td>
    <td style="white-space: nowrap; text-align: right">9.48 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;133.43%</td>
    <td style="white-space: nowrap; text-align: right">8.44 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">22.57 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">79.88 K</td>
    <td style="white-space: nowrap; text-align: right">12.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;48.37%</td>
    <td style="white-space: nowrap; text-align: right">10.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">27.74 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">77.41 K</td>
    <td style="white-space: nowrap; text-align: right">12.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;32.62%</td>
    <td style="white-space: nowrap; text-align: right">12.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">24.02 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">67.51 K</td>
    <td style="white-space: nowrap; text-align: right">14.81 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;49.46%</td>
    <td style="white-space: nowrap; text-align: right">13.24 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">31.81 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">27.79 K</td>
    <td style="white-space: nowrap; text-align: right">35.98 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;32.06%</td>
    <td style="white-space: nowrap; text-align: right">32.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">83.56 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">127.90 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">105.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">79.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">77.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">67.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">27.79 K</td>
    <td style="white-space: nowrap; text-align: right">4.6x</td>
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
    <td style="white-space: nowrap">15.64 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap">20.05 KB</td>
    <td>1.28x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">15.69 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">15.64 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap">20.05 KB</td>
    <td>1.28x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">31.33 KB</td>
    <td>2.0x</td>
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
    <td style="white-space: nowrap; text-align: right">1030.91 K</td>
    <td style="white-space: nowrap; text-align: right">0.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2453.60%</td>
    <td style="white-space: nowrap; text-align: right">0.82 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.93 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">710.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.41 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1647.88%</td>
    <td style="white-space: nowrap; text-align: right">1.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.63 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">642.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.56 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1589.80%</td>
    <td style="white-space: nowrap; text-align: right">1.31 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.28 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">591.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1378.87%</td>
    <td style="white-space: nowrap; text-align: right">1.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.80 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">473.19 K</td>
    <td style="white-space: nowrap; text-align: right">2.11 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1165.23%</td>
    <td style="white-space: nowrap; text-align: right">1.62 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.31 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">196.10 K</td>
    <td style="white-space: nowrap; text-align: right">5.10 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;342.20%</td>
    <td style="white-space: nowrap; text-align: right">4.24 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">11.17 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1030.91 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">710.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">642.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">591.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">473.19 K</td>
    <td style="white-space: nowrap; text-align: right">2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">196.10 K</td>
    <td style="white-space: nowrap; text-align: right">5.26x</td>
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
    <td style="white-space: nowrap">1.58 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap">1.88 KB</td>
    <td>1.19x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">1.63 KB</td>
    <td>1.03x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap">1.88 KB</td>
    <td>1.19x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">3.20 KB</td>
    <td>2.03x</td>
  </tr>
</table>