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

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">OR</th>
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
    <td>1110</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">rd = rs1 | rs2</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">NOP / MOV</th>
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
    <td>1111</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">x[rsd] = x[rs1]</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">JMP</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td colspan="3">15 - 8</td>
    <td>7 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td colspan="3">#immediate</td>
    <td>XXXX</td>
    <td>0100</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">pc = #immediate</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">JE</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td colspan="3">15 - 8</td>
    <td>7 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td colspan="3">#immediate</td>
    <td>XXXX</td>
    <td>1001</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">if ( flag_zero == 0 ) { pc = #immediate }</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">JNE</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td colspan="3">15 - 8</td>
    <td>7 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td colspan="3">#immediate</td>
    <td>XXXX</td>
    <td>0110</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">if ( flag_zero != 0 ) { pc = #immediate }</td>
  </tr>
</table>

<table style="text-align: center;">
  <tr>
    <th>INSTRUCT</th>
    <th colspan="5">JC</th>
  </tr>
  <tr>
    <th>BIT</th>
    <td colspan="3">15 - 8</td>
    <td>7 - 4</td>
    <td>3 - 0</td>
  </tr>
  <tr>
    <th>VALUE</th>
    <td colspan="3">#immediate</td>
    <td>XXXX</td>
    <td>0111</td>
  </tr>
  <tr>
    <th>DESCRIBE</th>
    <td colspan="5">if ( flag_carry == 1 ) { pc = #immediate }</td>
  </tr>
</table>