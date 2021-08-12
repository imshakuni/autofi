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

echo "[+] This script is used to crack the handshake..."
sleep 4
echo "[+] This uses aircrack-ng tool to crack.."
sleep 3
echo "Enter the path of wordlist: "
read path
echo "Enter the path of captured file:"
ls
read cap
echo "Enter the bssid:"
read bssid
aircrack-ng -w $path -b $bssid $cap
