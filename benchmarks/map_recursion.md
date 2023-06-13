Benchmark

Benchmark run from 2023-06-13 14:08:43.354208Z UTC

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
    <td style="white-space: nowrap; text-align: right">14.89 K</td>
    <td style="white-space: nowrap; text-align: right">67.18 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;15.63%</td>
    <td style="white-space: nowrap; text-align: right">67.11 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">111.49 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.93 K</td>
    <td style="white-space: nowrap; text-align: right">91.47 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.68%</td>
    <td style="white-space: nowrap; text-align: right">89.20 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">163.95 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.38 K</td>
    <td style="white-space: nowrap; text-align: right">106.59 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;19.22%</td>
    <td style="white-space: nowrap; text-align: right">102.36 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">208.52 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">8.08 K</td>
    <td style="white-space: nowrap; text-align: right">123.73 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;20.90%</td>
    <td style="white-space: nowrap; text-align: right">118.36 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">224.23 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">7.62 K</td>
    <td style="white-space: nowrap; text-align: right">131.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;25.18%</td>
    <td style="white-space: nowrap; text-align: right">122.61 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">262.52 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.70 K</td>
    <td style="white-space: nowrap; text-align: right">369.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;24.53%</td>
    <td style="white-space: nowrap; text-align: right">340.41 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">760.82 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">14.89 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">8.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">7.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.70 K</td>
    <td style="white-space: nowrap; text-align: right">5.51x</td>
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



__Input: Big only numbers__

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
    <td style="white-space: nowrap; text-align: right">14.54 K</td>
    <td style="white-space: nowrap; text-align: right">68.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;15.29%</td>
    <td style="white-space: nowrap; text-align: right">68.77 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">114.82 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.04 K</td>
    <td style="white-space: nowrap; text-align: right">99.58 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;20.87%</td>
    <td style="white-space: nowrap; text-align: right">89.64 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">186.18 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">8.93 K</td>
    <td style="white-space: nowrap; text-align: right">112.00 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;17.21%</td>
    <td style="white-space: nowrap; text-align: right">108.33 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">186.34 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">6.86 K</td>
    <td style="white-space: nowrap; text-align: right">145.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;34.46%</td>
    <td style="white-space: nowrap; text-align: right">130.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">289.11 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">6.74 K</td>
    <td style="white-space: nowrap; text-align: right">148.31 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;35.69%</td>
    <td style="white-space: nowrap; text-align: right">136.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">278.16 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.78 K</td>
    <td style="white-space: nowrap; text-align: right">359.27 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;26.08%</td>
    <td style="white-space: nowrap; text-align: right">327.86 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">784.98 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">14.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">8.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">6.86 K</td>
    <td style="white-space: nowrap; text-align: right">2.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">6.74 K</td>
    <td style="white-space: nowrap; text-align: right">2.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.78 K</td>
    <td style="white-space: nowrap; text-align: right">5.22x</td>
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
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">156.27 KB</td>
    <td>1.0x</td>
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
    <td style="white-space: nowrap; text-align: right">141.48 K</td>
    <td style="white-space: nowrap; text-align: right">7.07 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;138.33%</td>
    <td style="white-space: nowrap; text-align: right">6.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">17.18 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">120.05 K</td>
    <td style="white-space: nowrap; text-align: right">8.33 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;109.48%</td>
    <td style="white-space: nowrap; text-align: right">7.80 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">17.41 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">85.94 K</td>
    <td style="white-space: nowrap; text-align: right">11.64 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;89.47%</td>
    <td style="white-space: nowrap; text-align: right">10.89 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">23.68 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">69.94 K</td>
    <td style="white-space: nowrap; text-align: right">14.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;98.04%</td>
    <td style="white-space: nowrap; text-align: right">11.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">33.40 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">68.95 K</td>
    <td style="white-space: nowrap; text-align: right">14.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;77.03%</td>
    <td style="white-space: nowrap; text-align: right">12.41 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">34.28 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">30.93 K</td>
    <td style="white-space: nowrap; text-align: right">32.33 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;23.42%</td>
    <td style="white-space: nowrap; text-align: right">30.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">59.44 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">141.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">120.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">85.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">69.94 K</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">68.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">30.93 K</td>
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
    <td style="white-space: nowrap">15.64 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap">20.05 KB</td>
    <td>1.28x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">15.64 KB</td>
    <td>1.0x</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap">15.69 KB</td>
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
    <td style="white-space: nowrap; text-align: right">1137.41 K</td>
    <td style="white-space: nowrap; text-align: right">0.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1860.24%</td>
    <td style="white-space: nowrap; text-align: right">0.74 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.08 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">939.82 K</td>
    <td style="white-space: nowrap; text-align: right">1.06 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1640.00%</td>
    <td style="white-space: nowrap; text-align: right">0.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.50 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">720.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.39 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1257.33%</td>
    <td style="white-space: nowrap; text-align: right">1.16 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.75 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">651.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1215.94%</td>
    <td style="white-space: nowrap; text-align: right">1.27 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.48 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">585.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.71 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;845.54%</td>
    <td style="white-space: nowrap; text-align: right">1.47 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">245.29 K</td>
    <td style="white-space: nowrap; text-align: right">4.08 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;422.52%</td>
    <td style="white-space: nowrap; text-align: right">3.60 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">8.28 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1137.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">939.82 K</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">720.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">651.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">585.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">245.29 K</td>
    <td style="white-space: nowrap; text-align: right">4.64x</td>
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
