# Traced netlist — gate-by-gate check against the drawing

Every gate is listed with its **pixel position in your PNG** (1391 × 991) so you can
zoom to that spot and confirm each connection yourself.
Inputs are listed **top pin first**, matching the drawing.

## Inverters (4)

| Instance | Position in image (x, y) | Input | Output | Drawing label |
|---|---|---|---|---|
| xINV13 | 78–109, 133–166 | P13 | P13B | `P13'` |
| xINV14 | 78–109, 251–285 | P14 | P14B | `P14'` |
| xINV15 | 79–110, 367–400 | P15 | P15B | `P15'` |
| xINV16 | 78–108, 488–521 | P16 | P16B | `P16'` |

## Logic gates (13 AND + 4 OR)

| Instance | Type | Position in image (x, y) | Top input | Bottom input | Output |
|---|---|---|---|---|---|
| xOR_S4  | OR  | 346–421, 160–231  | P13B | P14B | **S4** (labelled `S4` in drawing) |
| xAND_S5 | AND | 1234–1306, 215–286 | P15 | S4 | **S5** |
| xOR1    | OR  | 794–870, 251–322  | P14B | N1 | N2 |
| xAND1   | AND | 601–672, 299–371  | P15B | P16 | N1 |
| xAND_S1 | AND | 1079–1151, 330–402 | P13 | N2 | **S1** |
| xAND_S2 | AND | 998–1070, 431–503 | P14 | N4 | **S2** |
| xOR2    | OR  | 814–889, 449–520  | P13B | N3 | N4 |
| xAND2   | AND | 581–653, 450–522  | P15 | P16B | N3 |
| xAND3   | AND | 363–435, 575–646  | P13 | P14 | N5 |
| xAND_S3 | AND | 781–852, 597–668  | P16 | N6 | **S3** |
| xAND4   | AND | 562–634, 614–686  | N5 | P15 | N6 |
| xAND_S7 | AND | 1033–1104, 653–725 | S4 | P17 | **S7** |
| xAND5   | AND | 852–923, 732–804  | S4 | P16 | N7 |
| xOR_S6  | OR  | 1009–1085, 750–822 | N7 | N9 | **S6** |
| xAND7   | AND | 668–739, 833–904  | P17 | N8 | N9 |
| xAND6   | AND | 258–329, 851–923  | P14 | P13 | N8 |
| xAND_S9 | AND | 1182–1253, 907–979 | S6 | P19 | **S9** |

## Net fan-out (as drawn)

| Net | Driver | Loads |
|---|---|---|
| P13 | ipin | xINV13, xAND_S1, xAND3, xAND6 |
| P14 | ipin | xINV14, xAND_S2, xAND3, xAND6 |
| P15 | ipin | xINV15, xAND_S5, xAND2, xAND4 |
| P16 | ipin | xINV16, xAND1, xAND_S3, xAND5 |
| P17 | ipin | xAND_S7, xAND7 |
| P18 | ipin | S8 (direct wire) |
| P19 | ipin | xAND_S9 |
| P13B | xINV13 | xOR_S4, xOR2 |
| P14B | xINV14 | xOR_S4, xOR1 |
| P15B | xINV15 | xAND1 |
| P16B | xINV16 | xAND2 |
| S4 | xOR_S4 | S4 pin, xAND_S5, xAND_S7, xAND5 |
| S6 | xOR_S6 | S6 pin, xAND_S9 |
| N1…N9 | one gate each | one gate each |

Total gate input terminals = 34 (17 × 2) + 4 inverter inputs = **38**, and all 38 are
driven exactly once. No gate input is left floating, no net has two drivers.

## Boolean functions implemented by the drawing

```
S8 = P18
S4 = !P13 + !P14                              = !(P13 . P14)
S5 = P15 . !(P13 . P14)
S1 = P13 . ( !P14 + (!P15 . P16) )
S2 = P14 . ( !P13 + (P15 . !P16) )
S3 = P13 . P14 . P15 . P16
S7 = !(P13 . P14) . P17
S6 = ( !(P13 . P14) . P16 ) + ( P13 . P14 . P17 )     -- 2:1 mux, select = P13.P14
S9 = S6 . P19
```

## Differences found vs. your original .sch

| Item | Your original file | The drawing |
|---|---|---|
| U_OR5 / xOR1 inputs | `S4_OUT`, `N_AND3` | `P14B`, `N1` |
| U_AND3 / xAND1 inputs | `P15`, `P16_B` | `P15B`, `P16` |
| U_AND7 / xAND_S1 inputs | `N_OR5`, `P17` → S1 | `P13`, `N2` → S1 |
| U_OR6 / xOR2 inputs | `N_AND4`, `P14_B` | `P13B`, `N3` |
| U_AND4 / xAND2 inputs | `P15_B`, `P16` | `P15`, `P16B` |
| U_AND8 / xAND_S2 inputs | `N_OR6`, `P17` → S2 | `P14`, `N4` → S2 |
| S3 chain | `P15_B.P16_B` → `.P14_B` → `.P13_B` (NOR-style) | `P13.P14` → `.P15` → `.P16` (AND-style) |
| U_AND12 / xAND_S7 | `P17 . P16` → S7 | `S4 . P17` → S7 |
| U_AND15 / xAND5 | `P16 . P17` | `S4 . P16` |
| U_AND14 / xAND7 | `N_AND13 . P15` | `P17 . N8` |
| Vdd / GND | wire `lab=` only (does not name a net in xschem) + several segments carry both `Vdd` and `GND` at identical coordinates → hard supply short | explicit `lab_pin` on every supply pin |
| S8 pin | opin `lab=S8_OUT` on a wire `lab=P18` | single net, flagged in the file |
| Correct | U_OR1→S4, U_AND2→S5, U_AND13→P13.P14, U_AND17→S9, all four inverters | — |

Over the 64 input combinations of {P13,P14,P15,P16,P17,P19}, the original netlist
disagreed with the drawing on S1 (30/64), S2 (36/64), S3 (8/64), S6 (18/64),
S7 (16/64), S9 (9/64). S4 and S5 matched.
