# 8Bit CPU Verilog

**https://www.bit-spinner.com/getting-started/instruction-set-architecture/**

## Instruction Format

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">ADD</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td>15 - 13</td>
    <td>12 - 10</td>
    <td>9 - 7</td>
    <td>6 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td>XXX</td>
    <td>rd</td>
    <td>rs2</td>
    <td>rs1</td>
    <td>1000</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 + rs2</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">SUB</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td>15 - 13</td>
    <td>12 - 10</td>
    <td>9 - 7</td>
    <td>6 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td>XXX</td>
    <td>rd</td>
    <td>rs2</td>
    <td>rs1</td>
    <td>1001</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 - rs2</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">INC</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td>15 - 13</td>
    <td>12 - 10</td>
    <td>9 - 7</td>
    <td>6 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td>XXX</td>
    <td>rd</td>
    <td>XXX</td>
    <td>rs1</td>
    <td>1010</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 + 1</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">DEC</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td>15 - 13</td>
    <td>12 - 10</td>
    <td>9 - 7</td>
    <td>6 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td>XXX</td>
    <td>rd</td>
    <td>XXX</td>
    <td>rs1</td>
    <td>1011</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 - 1</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">AND</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td>15 - 13</td>
    <td>12 - 10</td>
    <td>9 - 7</td>
    <td>6 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td>XXX</td>
    <td>rd</td>
    <td>rs2</td>
    <td>rs1</td>
    <td>1100</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 & rs2</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">XOR</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td>15 - 13</td>
    <td>12 - 10</td>
    <td>9 - 7</td>
    <td>6 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td>XXX</td>
    <td>rd</td>
    <td>rs2</td>
    <td>rs1</td>
    <td>1011</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 ^ rs2</td>
  </tr>
</table>
