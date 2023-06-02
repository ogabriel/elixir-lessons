Benchmark

Benchmark run from 2023-06-02 15:28:49.879726Z UTC

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
    <td style="white-space: nowrap; text-align: right">50.30 K</td>
    <td style="white-space: nowrap; text-align: right">19.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;18.03%</td>
    <td style="white-space: nowrap; text-align: right">20.17 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">27.94 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">12.26 K</td>
    <td style="white-space: nowrap; text-align: right">81.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.31%</td>
    <td style="white-space: nowrap; text-align: right">80.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">97.42 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.96 K</td>
    <td style="white-space: nowrap; text-align: right">100.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;20.06%</td>
    <td style="white-space: nowrap; text-align: right">95.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">201.71 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">50.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">12.26 K</td>
    <td style="white-space: nowrap; text-align: right">4.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.96 K</td>
    <td style="white-space: nowrap; text-align: right">5.05x</td>
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
    <td style="white-space: nowrap; text-align: right">289.65 K</td>
    <td style="white-space: nowrap; text-align: right">3.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;252.35%</td>
    <td style="white-space: nowrap; text-align: right">3.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">5.23 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">124.29 K</td>
    <td style="white-space: nowrap; text-align: right">8.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;163.12%</td>
    <td style="white-space: nowrap; text-align: right">7.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">13.44 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">95.15 K</td>
    <td style="white-space: nowrap; text-align: right">10.51 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;72.54%</td>
    <td style="white-space: nowrap; text-align: right">10.31 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">14.00 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">289.65 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">124.29 K</td>
    <td style="white-space: nowrap; text-align: right">2.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">95.15 K</td>
    <td style="white-space: nowrap; text-align: right">3.04x</td>
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
    <td style="white-space: nowrap; text-align: right">2644.67 K</td>
    <td style="white-space: nowrap; text-align: right">0.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2066.71%</td>
    <td style="white-space: nowrap; text-align: right">0.34 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">0.66 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">862.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1998.29%</td>
    <td style="white-space: nowrap; text-align: right">1.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.90 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">797.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2018.07%</td>
    <td style="white-space: nowrap; text-align: right">1.07 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.47 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">2644.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">862.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">797.35 K</td>
    <td style="white-space: nowrap; text-align: right">3.32x</td>
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
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">0 B</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">1664 B</td>
    <td>&mdash;</td>
  </tr>
</table>