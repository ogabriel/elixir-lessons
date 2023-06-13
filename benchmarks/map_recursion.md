Benchmark

Benchmark run from 2023-06-13 13:31:28.863461Z UTC

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
    <td style="white-space: nowrap; text-align: right">11.39 K</td>
    <td style="white-space: nowrap; text-align: right">87.78 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;21.40%</td>
    <td style="white-space: nowrap; text-align: right">83.02 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">161.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">9.03 K</td>
    <td style="white-space: nowrap; text-align: right">110.74 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;34.07%</td>
    <td style="white-space: nowrap; text-align: right">99.49 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">233.51 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">7.98 K</td>
    <td style="white-space: nowrap; text-align: right">125.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;29.26%</td>
    <td style="white-space: nowrap; text-align: right">113.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">265.89 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">7.43 K</td>
    <td style="white-space: nowrap; text-align: right">134.62 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;38.09%</td>
    <td style="white-space: nowrap; text-align: right">121.39 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">294.25 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">6.87 K</td>
    <td style="white-space: nowrap; text-align: right">145.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;22.24%</td>
    <td style="white-space: nowrap; text-align: right">138.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">286.68 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.56 K</td>
    <td style="white-space: nowrap; text-align: right">391.11 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;25.71%</td>
    <td style="white-space: nowrap; text-align: right">361.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">799.04 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">11.39 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">9.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">7.98 K</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">7.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">6.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.56 K</td>
    <td style="white-space: nowrap; text-align: right">4.46x</td>
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
    <td style="white-space: nowrap; text-align: right">118.21 K</td>
    <td style="white-space: nowrap; text-align: right">8.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;148.60%</td>
    <td style="white-space: nowrap; text-align: right">7.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">19.58 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">98.04 K</td>
    <td style="white-space: nowrap; text-align: right">10.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;47.47%</td>
    <td style="white-space: nowrap; text-align: right">9.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">23.35 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">79.91 K</td>
    <td style="white-space: nowrap; text-align: right">12.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;42.59%</td>
    <td style="white-space: nowrap; text-align: right">11.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">25.86 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">75.09 K</td>
    <td style="white-space: nowrap; text-align: right">13.32 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;44.49%</td>
    <td style="white-space: nowrap; text-align: right">12.23 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">26.30 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">72.37 K</td>
    <td style="white-space: nowrap; text-align: right">13.82 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;55.39%</td>
    <td style="white-space: nowrap; text-align: right">12.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">30.57 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">24.67 K</td>
    <td style="white-space: nowrap; text-align: right">40.53 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;32.78%</td>
    <td style="white-space: nowrap; text-align: right">36.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">88.68 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">118.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">98.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">79.91 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">75.09 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">72.37 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">24.67 K</td>
    <td style="white-space: nowrap; text-align: right">4.79x</td>
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
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">861.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2058.55%</td>
    <td style="white-space: nowrap; text-align: right">0.97 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.23 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap; text-align: right">841.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2408.88%</td>
    <td style="white-space: nowrap; text-align: right">0.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.84 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">657.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1390.58%</td>
    <td style="white-space: nowrap; text-align: right">1.27 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.13 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">592.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1481.70%</td>
    <td style="white-space: nowrap; text-align: right">1.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.63 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">544.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.84 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1178.60%</td>
    <td style="white-space: nowrap; text-align: right">1.52 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">4.07 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">223.57 K</td>
    <td style="white-space: nowrap; text-align: right">4.47 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;264.75%</td>
    <td style="white-space: nowrap; text-align: right">3.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">8.87 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap;text-align: right">861.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap; text-align: right">841.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">657.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">592.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">544.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">223.57 K</td>
    <td style="white-space: nowrap; text-align: right">3.86x</td>
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
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap">1.88 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Tail recursion</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>0.84x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>0.84x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">1.63 KB</td>
    <td>0.87x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap">1.88 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap">3.20 KB</td>
    <td>1.71x</td>
  </tr>
</table>