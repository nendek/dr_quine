#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
int main(void){
char str[]="#include <stdio.h>%2$c#include <unistd.h>%2$c#include <stdlib.h>%2$c#include <fcntl.h>%2$cint main(void){%2$cchar str[]=%5$c%1$s%5$c;int fd;%2$cint i=%7$d;%2$c#ifdef VAR%2$ci--;%2$c#endif%2$cchar *name_exec,*name_c,*compile,*exec;%2$cif(i<=0)return(0);%2$cif(!asprintf(&name_exec, %5$cSully_%6$cd%5$c, i))return(0);%2$cif(!asprintf(&name_c, %5$cSully_%6$cd.c%5$c, i))return(0);%2$cif(!asprintf(&compile, %5$cgcc -D VAR %6$cs -o %6$cs%5$c, name_c, name_exec))return(0);%2$cif(!asprintf(&exec, %5$c./%6$cs%5$c, name_exec))return(0);%2$cif(!(fd=open(name_c, O_CREAT | O_TRUNC | O_RDWR, 0644)))return(0);%2$cif(!(dprintf(fd,str,str,10,42,47,34,37,i)))return(0);%2$cclose(fd);%2$cif(system(compile)==-1)return(0);%2$cif(system(exec)==-1)return(0);%2$cfree(name_exec);%2$cfree(name_c);%2$cfree(compile);%2$cfree(exec);%2$cname_exec=NULL;%2$cname_c=NULL;%2$ccompile=NULL;%2$cexec=NULL;%2$creturn(0);}%2$c";
int fd;
int i=5;
#ifdef VAR
i--;
#endif
char *name_exec,*name_c,*compile,*exec;
if(i<=0)return(0);
if(!asprintf(&name_exec, "Sully_%d", i))return(0);
if(!asprintf(&name_c, "Sully_%d.c", i))return(0);
if(!asprintf(&compile, "gcc -D VAR %s -o %s", name_c, name_exec))return(0);
if(!asprintf(&exec, "./%s", name_exec))return(0);
if(!(fd=open(name_c, O_CREAT | O_TRUNC | O_RDWR, 0644)))return(0);
if(!(dprintf(fd,str,str,10,42,47,34,37,i)))return(0);
close(fd);
if(system(compile)==-1)return(0);
if(system(exec)==-1)return(0);
free(name_exec);
free(name_c);
free(compile);
free(exec);
name_exec=NULL;
name_c=NULL;
compile=NULL;
exec=NULL;
return(0);}
