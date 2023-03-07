## Pre-Lab preparation

1. Write characteristic equations and complete truth tables for D, JK, T flip-flops where `q(n)` represents main output value before the clock edge and `q(n+1)` represents output value after the clock edge.

  ![Characteristic equations](https://github.com/mucha006/digital-electronics-1/blob/main/04-segment/pr_5.JPG)
<!--
https://editor.codecogs.com/
\begin{align*}
    q_{n+1}^D =&~D \\
    q_{n+1}^{JK} =& \\
    q_{n+1}^T =& \\
\end{align*}
-->

   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 | 0 | 0 | `q(n+1)` has the same level as `d` |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 | 1 |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |

   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 | 0 | 0 | 0 | Output did not change |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 | 0 | 1 | 1 | Output did not change |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 |  |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 |  |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |  |

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 | 0 | 0 | Output did not change |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 0 | 1 |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |
   | ![rising](https://github.com/tomas-fryza/digital-electronics-1/blob/master/labs/05-ffs/images/eq_uparrow.png) | 1 |  |  |  |

<a name="part1"></a>
