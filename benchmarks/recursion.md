Benchmark

Benchmark run from 2023-06-13 12:42:14.317686Z UTC

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
    <td style="white-space: nowrap; text-align: right">46.30 K</td>
    <td style="white-space: nowrap; text-align: right">21.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;18.70%</td>
    <td style="white-space: nowrap; text-align: right">21.77 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">30.48 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">12.76 K</td>
    <td style="white-space: nowrap; text-align: right">78.39 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;25.20%</td>
    <td style="white-space: nowrap; text-align: right">76.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">126.68 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.44 K</td>
    <td style="white-space: nowrap; text-align: right">105.91 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;18.34%</td>
    <td style="white-space: nowrap; text-align: right">103.56 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">183.88 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">46.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">12.76 K</td>
    <td style="white-space: nowrap; text-align: right">3.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.44 K</td>
    <td style="white-space: nowrap; text-align: right">4.9x</td>
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
    <td style="white-space: nowrap; text-align: right">272.42 K</td>
    <td style="white-space: nowrap; text-align: right">3.67 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;35.66%</td>
    <td style="white-space: nowrap; text-align: right">3.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">6.14 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">134.18 K</td>
    <td style="white-space: nowrap; text-align: right">7.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;136.17%</td>
    <td style="white-space: nowrap; text-align: right">7.12 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">12.48 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">95.17 K</td>
    <td style="white-space: nowrap; text-align: right">10.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;68.69%</td>
    <td style="white-space: nowrap; text-align: right">10.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">16.38 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">272.42 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">134.18 K</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">95.17 K</td>
    <td style="white-space: nowrap; text-align: right">2.86x</td>
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
    <td style="white-space: nowrap; text-align: right">2859.66 K</td>
    <td style="white-space: nowrap; text-align: right">0.35 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2072.34%</td>
    <td style="white-space: nowrap; text-align: right">0.32 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">0.63 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">886.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2027.83%</td>
    <td style="white-space: nowrap; text-align: right">0.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.79 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">852.32 K</td>
    <td style="white-space: nowrap; text-align: right">1.17 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1946.84%</td>
    <td style="white-space: nowrap; text-align: right">1.06 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.95 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">2859.66 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">886.72 K</td>
    <td style="white-space: nowrap; text-align: right">3.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">852.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.36x</td>
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