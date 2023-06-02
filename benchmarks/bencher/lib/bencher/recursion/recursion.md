Benchmark

Benchmark run from 2023-03-06 22:38:19.525217Z UTC

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
    <td style="white-space: nowrap">1.12.3</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.1.7</td>
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
    <td style="white-space: nowrap; text-align: right">40.45 K</td>
    <td style="white-space: nowrap; text-align: right">24.72 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;36.97%</td>
    <td style="white-space: nowrap; text-align: right">22.83 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">58.98 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">10.30 K</td>
    <td style="white-space: nowrap; text-align: right">97.07 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;41.55%</td>
    <td style="white-space: nowrap; text-align: right">89.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">228.45 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.84 K</td>
    <td style="white-space: nowrap; text-align: right">113.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;36.73%</td>
    <td style="white-space: nowrap; text-align: right">99.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">213.49 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">40.45 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">10.30 K</td>
    <td style="white-space: nowrap; text-align: right">3.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.84 K</td>
    <td style="white-space: nowrap; text-align: right">4.57x</td>
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
    <td style="white-space: nowrap">0 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">160064 B</td>
    <td>&mdash;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 B</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">218.30 K</td>
    <td style="white-space: nowrap; text-align: right">4.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;79.71%</td>
    <td style="white-space: nowrap; text-align: right">3.96 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">11.10 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">119.53 K</td>
    <td style="white-space: nowrap; text-align: right">8.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;95.94%</td>
    <td style="white-space: nowrap; text-align: right">7.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">16.73 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">86.32 K</td>
    <td style="white-space: nowrap; text-align: right">11.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;123.99%</td>
    <td style="white-space: nowrap; text-align: right">10.81 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">18.83 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">218.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">119.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">86.32 K</td>
    <td style="white-space: nowrap; text-align: right">2.53x</td>
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
    <td style="white-space: nowrap">0 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">16064 B</td>
    <td>&mdash;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 B</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">2322.07 K</td>
    <td style="white-space: nowrap; text-align: right">0.43 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;687.73%</td>
    <td style="white-space: nowrap; text-align: right">0.36 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.18 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">784.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1493.82%</td>
    <td style="white-space: nowrap; text-align: right">1.09 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.58 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">780.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1489.99%</td>
    <td style="white-space: nowrap; text-align: right">1.15 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.17 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">2322.07 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">784.26 K</td>
    <td style="white-space: nowrap; text-align: right">2.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">780.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.97x</td>
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
    <td style="white-space: nowrap">0 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">1664 B</td>
    <td>&mdash;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 B</td>
    <td>1.0x</td>
  </tr>
</table>