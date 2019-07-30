Homework 2
====================

## Program 1 - 使用 PWM 產生彩虹七色 (40%)

### 作業說明

使用一顆 RGB LED ，透過給予不同的 R、G、B time 來產生彩虹七色。

### 作業需求

1. 七種顏色不必淡出淡入，可以分段產生。
> ex : 紅色亮2秒後換橙色，橙色亮2秒後換黃色，依此類推。

2. **必須自己建立IP，使用Block Design完成作業**

3. 上傳作業時須連 IP 資料夾一起上傳。*(參照Lab2-1)*

### Hint

1. [各色RGB值參考](https://microdnd.pixnet.net/blog/post/103334755-%5B%E7%A8%8B%E5%BC%8F%5D-%E5%90%84%E9%A1%8F%E8%89%B2rgb%E5%80%BC%E5%8F%83%E8%80%83%E8%A1%A8)

2. System Block 可以參考 Lab 2-1 *(i.e.改寫其中一個Block即可)*，

## Program 2 - 使用單色 LED 實作呼吸燈 (%)

### 作業說明

使用板子右下角的單色 LED ，實作一顆呼吸燈。

### 作業需求

1. 使用一顆產生漸強漸弱的呼吸燈即可。

2. 呼吸燈長[這樣](https://www.youtube.com/watch?v=Z6tbQ0HNmag)

3. 可選擇使用IP -> Block Design的方式，也可以純寫 Verilog code 來實作。

## Bonus - 電競 RGB 呼吸燈 (20%)

### 作業說明

科技日新月異，電子競技這項運動項目逐漸崛起，而提到電競就不得不提到附有 RGB 色燈的各項電腦周邊，如：滑鼠、鍵盤、風扇、甚至水冷系統，任何你想的到的電競相關的產品都會有 RGB 燈在上面。

請綜合上面兩題的概念，使用 RGB LED 實作呼吸燈。

### 作業需求

1. 使用一顆 RGB LED 即可。

2. 呼吸燈顏色和第一題一樣需按照彩虹七色的順序來顯示。