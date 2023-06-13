Benchmark

Benchmark run from 2023-06-13 14:17:51.150293Z UTC

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
    <td style="white-space: nowrap; text-align: right">12.98 K</td>
    <td style="white-space: nowrap; text-align: right">77.06 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;40.09%</td>
    <td style="white-space: nowrap; text-align: right">74.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">145.07 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.65 K</td>
    <td style="white-space: nowrap; text-align: right">93.92 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;25.51%</td>
    <td style="white-space: nowrap; text-align: right">88.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">193.04 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.88 K</td>
    <td style="white-space: nowrap; text-align: right">112.62 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;22.26%</td>
    <td style="white-space: nowrap; text-align: right">104.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">225.35 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">8.72 K</td>
    <td style="white-space: nowrap; text-align: right">114.67 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;16.90%</td>
    <td style="white-space: nowrap; text-align: right">110.36 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">204.03 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">7.17 K</td>
    <td style="white-space: nowrap; text-align: right">139.45 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;22.18%</td>
    <td style="white-space: nowrap; text-align: right">130.30 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">265.67 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.63 K</td>
    <td style="white-space: nowrap; text-align: right">380.40 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;35.74%</td>
    <td style="white-space: nowrap; text-align: right">317.74 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">757.51 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">12.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">8.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">8.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">7.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.63 K</td>
    <td style="white-space: nowrap; text-align: right">4.94x</td>
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
    <td style="white-space: nowrap; text-align: right">13.54 K</td>
    <td style="white-space: nowrap; text-align: right">73.88 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;23.02%</td>
    <td style="white-space: nowrap; text-align: right">70.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">146.15 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.92 K</td>
    <td style="white-space: nowrap; text-align: right">91.55 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;21.90%</td>
    <td style="white-space: nowrap; text-align: right">86.05 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">185.55 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">9.23 K</td>
    <td style="white-space: nowrap; text-align: right">108.34 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;14.63%</td>
    <td style="white-space: nowrap; text-align: right">107.18 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">156.60 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.06 K</td>
    <td style="white-space: nowrap; text-align: right">110.35 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;19.27%</td>
    <td style="white-space: nowrap; text-align: right">105.47 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">194.05 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">7.85 K</td>
    <td style="white-space: nowrap; text-align: right">127.37 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;26.91%</td>
    <td style="white-space: nowrap; text-align: right">122.89 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">237.27 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.57 K</td>
    <td style="white-space: nowrap; text-align: right">389.04 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;49.94%</td>
    <td style="white-space: nowrap; text-align: right">314.02 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">835.49 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">13.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">10.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">9.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">9.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">7.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">2.57 K</td>
    <td style="white-space: nowrap; text-align: right">5.27x</td>
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
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap">156.27 KB</td>
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
    <td style="white-space: nowrap; text-align: right">145.93 K</td>
    <td style="white-space: nowrap; text-align: right">6.85 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;117.73%</td>
    <td style="white-space: nowrap; text-align: right">6.55 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">13.45 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">115.52 K</td>
    <td style="white-space: nowrap; text-align: right">8.66 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;109.97%</td>
    <td style="white-space: nowrap; text-align: right">8.14 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">18.22 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">86.13 K</td>
    <td style="white-space: nowrap; text-align: right">11.61 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;58.94%</td>
    <td style="white-space: nowrap; text-align: right">10.95 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">22.12 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">80.28 K</td>
    <td style="white-space: nowrap; text-align: right">12.46 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;76.82%</td>
    <td style="white-space: nowrap; text-align: right">10.91 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">27.35 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">77.58 K</td>
    <td style="white-space: nowrap; text-align: right">12.89 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;109.08%</td>
    <td style="white-space: nowrap; text-align: right">11.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">28.95 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">31.87 K</td>
    <td style="white-space: nowrap; text-align: right">31.38 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;26.17%</td>
    <td style="white-space: nowrap; text-align: right">29.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">61.98 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">145.93 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">115.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">86.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">80.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">77.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">31.87 K</td>
    <td style="white-space: nowrap; text-align: right">4.58x</td>
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
    <td style="white-space: nowrap; text-align: right">1113.57 K</td>
    <td style="white-space: nowrap; text-align: right">0.90 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;2011.22%</td>
    <td style="white-space: nowrap; text-align: right">0.79 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.79 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">838.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1827.50%</td>
    <td style="white-space: nowrap; text-align: right">0.93 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">2.83 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">827.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1493.63%</td>
    <td style="white-space: nowrap; text-align: right">1.08 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1.94 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">665.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.50 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;1376.75%</td>
    <td style="white-space: nowrap; text-align: right">1.28 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.32 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">591.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.69 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;764.12%</td>
    <td style="white-space: nowrap; text-align: right">1.49 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">3.65 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">238.44 K</td>
    <td style="white-space: nowrap; text-align: right">4.19 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;366.69%</td>
    <td style="white-space: nowrap; text-align: right">3.70 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">9.25 &micro;s</td>
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
    <td style="white-space: nowrap;text-align: right">1113.57 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Tail recursion + Enum.reverse</td>
    <td style="white-space: nowrap; text-align: right">838.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Body recursion</td>
    <td style="white-space: nowrap; text-align: right">827.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">665.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Comprehension</td>
    <td style="white-space: nowrap; text-align: right">591.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.filter + Enum.reduce</td>
    <td style="white-space: nowrap; text-align: right">238.44 K</td>
    <td style="white-space: nowrap; text-align: right">4.67x</td>
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
