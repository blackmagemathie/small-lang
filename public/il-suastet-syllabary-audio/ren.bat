@echo off
setlocal enabledelayedexpansion

:: Define the array of names
set names=Tll Dll Gll Kll Mll Nll Fll Bll Vll Pll Rll Lll THll DZll Sll SHll Zll Hll CHll STll SCll SZll ^
Tyr Dyr Gyr Kyr Myr Nyr Fyr Byr Vyr Pyr Ryr Lyr THyr DZyr Syr SHyr Zyr Hyr CHyr STyr SCyr SZyr ^
Ter Der Ger Ker Mer Ner Fer Ber Ver Per Rer Ler THer DZer Ser SHer Zer Her CHer STer SCer SZer ^
Teh Deh Geh Keh Meh Neh Feh Beh Veh Peh Reh Leh THeh DZeh Seh SHeh Zeh Heh CHeh STeh SCeh SZeh ^
Tei Dei Gei Kei Mei Nei Fei Bei Vei Pei Rei Lei THei DZei Sei SHei Zei Hei CHei STei SCei SZei ^
Tii Dii Gii Kii Mii Nii Fii Bii Vii Pii Rii Lii THii DZii Sii SHii Zii Hii CHii STii SCii SZii ^
Toh Doh Goh Koh Moh Noh Foh Boh Voh Poh Roh Loh THoh DZoh Soh SHoh Zoh Hoh CHoh SToh SCoh SZoh ^
Tuu Duu Guu Kuu Muu Nuu Fuu Buu Vuu Puu Ruu Luu THuu DZuu Suu SHuu Zuu Huu CHuu STuu SCuu SZuu ^
Tuh Duh Guh Kuh Muh Nuh Fuh Buh Vuh Puh Ruh Luh THuh DZuh Suh SHuh Zuh Huh CHuh STuh SCuh SZuh ^
Tar Dar Gar Kar Mar Nar Far Bar Var Par Rar Lar THar DZar Sar SHar Zar Har CHar STar SCar SZar ^
Taa Daa Gaa Kaa Maa Naa Faa Baa Vaa Paa Raa Laa THaa DZaa Saa SHaa Zaa Haa CHaa STaa SCaa SZaa ^
Tih Dih Gih Kih Mih Nih Fih Bih Vih Pih Rih Lih THih DZih Sih SHih Zih Hih CHih STih SCih SZih

:: Load names into an indexed array
set i=0
for %%n in (%names%) do (
    set name[!i!]=%%n
    set /a i+=1
)

:: Loop from 0 to 263 (syl-00.ogg to syl-263.ogg)
for /L %%i in (0,1,263) do (
    set "idx=%%i"
    if %%i LSS 10 (
        set "file=syl-0%%i.ogg"
    ) else (
        set "file=syl-%%i.ogg"
    )
    call set "newname=%%name[%%i]%%"
    if exist "!file!" (
        ren "!file!" "!newname!.ogg"
        echo Renamed !file! to !newname!.ogg
    ) else (
        echo File !file! not found!
    )

)

:end
echo All done!
pause
