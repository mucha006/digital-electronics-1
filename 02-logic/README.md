# Lab 2: Vojtech Mucha

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](https://github.com/mucha006/digital-electronics-1/blob/main/02-logic/cv_2_b_vetsi_a.jpg)

   Less than:

   ![K-maps](https://github.com/mucha006/digital-electronics-1/blob/main/02-logic/cv_2_b_mensi_a.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/mucha006/digital-electronics-1/blob/main/02-logic/cv_2_rce.JPG)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0101";        --  "0101"  ID = xxxx56
        s_a <= "0110";        --  "0110"  ID = xxxx56
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0101, 0110 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Link to your public EDA Playground example:

   [[https://www.edaplayground.com/...]((https://edaplayground.com/x/JTju).)](https://edaplayground.com/x/JTju)
