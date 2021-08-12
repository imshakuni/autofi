#!/bin/bash

clear

cat << EOF

                                                                                                         
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                        '.     
                                                                                                     o'oNMXc   
                    ',            kNKx;.               ::.       .                 .'            ,  .xMWMWx    
                .lkNWWk, .;o:    cXMMMX'    .d0XWMK .kkMMd    .xWOOO 'Oxc.        .c;XX0'       lW.  .WMO.     
             ,kNWWMMMMWN.KWMO   :XMMMWx    ,WXWMMMM,dOMM0.  ;0MMMMNc;KMMMWo      'x.NMMMo      ,WN.  xx.d      
           cXWMMMMMNkc. oNMX   .XWMMMO    :WocWMMWK.XWMX, ,KMMMWKc 'XMMMWNo     ,O oMMMM:     .NMk .k0x;       
          OMMMMNkc.    .XMW.   dWMMMX.   oMk.xMMWX,xNMWc'0MMWXo.  .XWMMMNc     ;X..XMMMW,    .XMN; oMMMX,      
         ,MMMK,        dWW,   .NMMMK.   xM0  KMMNo.NMMKOMNkc.     OWMMMW:     cW; kMMMMW'    XMMO ,NMMN:       
         .XMM,      .:cWM0::::kMMMN.   0MX. ,WMM0 dWMMMMo        .MMMMWo     lMl :NMOXMN.   0MMN, 0MMN:        
           cXNc      KMMWNX0xOMMMO.KWWWMMXOxKMMX'.NMN:.MK,       ,MMMM0.    dMk .OWk.KMX   xMMMd :MMW:         
             ,0N:    .WO.    0MMx  ;xWMWl   KMN' dWW; .WMNx.     .MMMWc   .0M0  lW0  OMX  dMMM0. KMW:          
              ,MWX;  dK.    cMWl   ,NMMk   .MW. .WMl   oWMNX;     0MMN.  'NMK. .N0.  dMW.dMMMK' ;MM:           
             lWMNWc  K.    .WX,   :NMMK.   ;M:  lMd     oWMNKl    'NMN .xMMK.  xO.   :MMXWMMX,  KM:            
           'XMWXd.  ,.     ko.   oNMMx.    do   0x       .0MN'.    'KMMMMMx.  ,x     .KMMMMX'  :O'             
         ,OKxc.           ,'    lKMM0      c    l          '         cOkc.    ;       .0MMk.   l               
        ,'.               .        '           .                                              '                
                                                                                                                                                                                                                              
                                

instagram: im_shakuni
github: github.com/surya-cn
mail: imshakuni@gmail.com

EOF

echo "[+] Please read readme file before continuing this script..."
sleep 5
echo "[+] Killing other processes....."
airmon-ng check kill

echo "Enter the network interface to enable monitoring:"
iwconfig
read interface
echo "[+] Enabling monitor mode to $interface interface....."
airmon-ng start $interface
sleep 5
echo "[+] $interface has been selected as monitor mode network interface....."
sleep 4
clear
echo "[+] Running init-autofi.sh in new terminal to get all the info required for next process..."
sleep 5
gnome-terminal -- ./init-autofi.sh
echo "Enter the channel number:"
read chn
echo "Enter the bssid:"
read bssid
echo "Enter the output file name:"
read file
echo "Enter the monitor network interface:"
iwconfig
read mni
echo "[+] Running airodump to capture packets....."
sleep 5
echo "[+] Once handshake is done press crl+c to exit"
sleep 10
echo "[+] Don't forget to turn on network manager after the completion of script..type--> service NetworkManager start <--and hit enter..."
sleep 10
clear
echo "[+] You can speed up the process by de-auth method..use de-auth-autofi.sh -->>NOT RECOMENDED<<--"
sleep 10
clear
airodump-ng -c $chn --bssid $bssid -w $file $mni
