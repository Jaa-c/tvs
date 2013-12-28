//This file was generated from (Academic) UPPAAL 4.0.13 (rev. 4577), September 2010

/*

*/
E<> cas < cas_prvni

/*
chytry pristav nebude na stejne fronte lodi nikdy horsi nez hloupy
*/
A<> cas <= cas_prvni

/*
chytry pristav ma lepsi horni limit v nejhorsim pripade
*/
E<> prist_chytry.Konec and cas > 36

/*
horni limit chytreho pristavu je mensi nez u hloupeho prostavu
*/
E<> prist.Konec and cas_prvni > 36

/*
jde dosahnout konce v optimalnim casu (ocekava stejny pocet vsech typu lodi)
*/
E<> prist_chytry.Konec and cas == (queue_size / 3) * delka_vykladky

/*
jde dosahnout konce v optimalnim casu (ocekava stejny pocet vsech typu lodi) - v optimalnim pripade to tak jde poskladat...
*/
E<> prist.Konec and cas_prvni == (queue_size / 3) * delka_vykladky

/*
kontrola...
*/
A[] not deadlock
