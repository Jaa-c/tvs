//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*
jen test, jestli je mozne zaplnit vsechny doky
*/
E<> dok1.Plny_dok and dok2.Plny_dok and dok3.Plny_dok

/*

*/
E<> prist.Konec and cas >= 55

/*
jde dosahnout konce v case 18 (musi prid do doku 3 vzdy 3-3-3)
*/
E<> prist.Konec and cas < 18

/*

*/
A[] not deadlock
