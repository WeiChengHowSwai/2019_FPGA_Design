Homework 1
=============================

# 繳交時間


## Program 1 - 使用板子上的 RGB LED 實現路口交通號誌

### 作業說明

使用兩顆 RGB LED ，分別代表一個路口的兩個燈號

作業需求：

1. 兩個路口的黃燈長(t1)皆為 **1 sec** ，綠燈長(t2)皆為 **5 sec** ，兩者皆為紅燈的時間長(t3)為 **1 sec** _(1 sec 不必是實際準確的一秒，可直接使用 Lab 提供的除頻器_

2. 一個路口為黃燈或是綠燈時，另一個一定為紅燈

#### Hint : RGB LED 的控制

一顆 RGB LED 由三個 Bit 控制，分別為 R G B；

對應到 xdc file 上的控制腳位為 `RGB LEDs` 那欄。

[如何製造黃燈](https://zh.wikipedia.org/wiki/%E4%B8%89%E5%8E%9F%E8%89%B2%E5%85%89%E6%A8%A1%E5%BC%8F)

## Bonus

### 作業說明

加入 Switches 和 Buttons 來調整 Program 1 的三種時間長。

作業需求：

1. Switch 為 `00` 時 ，紅綠燈正常運作。

2. Switch 為 `01` 時 ，使用 Buttons 調整黃燈長(t1)。

3. Switch 為 `10` 時 ，使用 Buttons 調整綠燈長(t2)。

4. Switch 為 `11` 時 ，使用 Buttons 調整兩者重疊的紅燈長(t3)。

## Problems

1. 為什麼要加入 blinky.xdc 這個 Constraint ?

> [Hint](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_1/ug903-vivado-using-constraints.pdf)

2. 承上題，若沒有加入這個 Constraint，可能會發生什麼事?
