#include <stdio.h>
/*
comment1
*/
int main(void){
/*
comment2
*/
char *s="#include <stdio.h>%2$c%4$c%3$c%2$ccomment1%2$c%3$c%4$c%2$cint main(void){%2$c%4$c%3$c%2$ccomment2%2$c%3$c%4$c%2$cchar *s=%5$c%1$s%5$c;printf(s,s,10,42,47,34);return(0);}%2$c";printf(s,s,10,42,47,34);return(0);}
