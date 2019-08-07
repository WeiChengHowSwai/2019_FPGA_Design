FPGA Design Lab05 - Package a Custom AXI IP
=============================================

## Step 1. Create a new project

無需加入任何檔案。

## Step 2. Create new IP

選擇 Create a new AXI4 peripheral，最後選擇 Edit IP。

![axi_periph](images/creat_axi_ip.png)  

創建完後加入`src/hdl/adder.v`，並修改產生的 HDL code。

> 下面這些步驟主要是在連接 AXI Interface Register 和我們建立的 IP 的 I/O。
> [AXI 總線簡介](https://www.twblogs.net/a/5b8cb90d2b7177188334d3a7)

![axi_ip](images/add_inst_out.png)  

![axi_ip](images/change_reg.png)

![axi_ip](images/add_user_hdl.png)

![axi_ip](images/add_ip_out.png)

![axi_ip](images/add_port.png)

HDL code 修改完後，回到 package IP 畫面將沒有打勾的部分點進去修改，最後 Package IP。

![axi_ip](images/merge.png)

回到 create new IP 前的 project，refresh 加入的 IP。

![refresh_ip](images/refresh_ip.png)

本次實驗的 Block design。

![block_design](images/block_design.png)

## Step 3. Write user IP driver and software program

產生 Bitstream 後，Export Hardware 後開啟 SDK，建立 Project 加入檔案 `src/software/main.c`

將 `src/driver/` 內的程式複製到下圖紅色部分。

![driver](images/driver.png)
