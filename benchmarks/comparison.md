Benchmark

Benchmark run from 2023-08-07 14:21:08.422674Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">AMD Ryzen 9 5900X 12-Core Processor</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">24</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">31.25 GB</td>
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
    <td style="white-space: nowrap">Integer</td>
    <td style="white-space: nowrap; text-align: right">15.24 M</td>
    <td style="white-space: nowrap; text-align: right">65.62 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;77.01%</td>
    <td style="white-space: nowrap; text-align: right">60 ns</td>
    <td style="white-space: nowrap; text-align: right">90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Atom</td>
    <td style="white-space: nowrap; text-align: right">14.71 M</td>
    <td style="white-space: nowrap; text-align: right">67.98 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;53.69%</td>
    <td style="white-space: nowrap; text-align: right">70 ns</td>
    <td style="white-space: nowrap; text-align: right">90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">String</td>
    <td style="white-space: nowrap; text-align: right">14.52 M</td>
    <td style="white-space: nowrap; text-align: right">68.88 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;131.95%</td>
    <td style="white-space: nowrap; text-align: right">70 ns</td>
    <td style="white-space: nowrap; text-align: right">90 ns</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Integer</td>
    <td style="white-space: nowrap;text-align: right">15.24 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Atom</td>
    <td style="white-space: nowrap; text-align: right">14.71 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">String</td>
    <td style="white-space: nowrap; text-align: right">14.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
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
    <td style="white-space: nowrap">Integer</td>
    <td style="white-space: nowrap">0 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Atom</td>
    <td style="white-space: nowrap">0 B</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">String</td>
    <td style="white-space: nowrap">0 B</td>
    <td>1.0x</td>
  </tr>
</table>
