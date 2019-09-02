#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
/*
comment
*/
#define STRING "#include <stdio.h>%2$c#include <unistd.h>%2$c#include <fcntl.h>%2$c%4$c%3$c%2$ccomment%2$c%3$c%4$c%2$c#define STRING %5$c%1$s%5$c%2$c#define PRINT(fd) dprintf(fd,STRING,STRING,10,42,47,34)%2$c#define FUNC() int main(){int fd;fd=open(%5$cGrace_kid.c%5$c, O_CREAT | O_WRONLY | O_TRUNC);if(fd!=-1){PRINT(fd);}return(0);}%2$cFUNC()%2$c"
#define PRINT(fd) dprintf(fd,STRING,STRING,10,42,47,34)
#define FUNC() int main(){int fd;fd=open("Grace_kid.c", O_CREAT | O_WRONLY | O_TRUNC);if(fd!=-1){PRINT(fd);}return(0);}
FUNC()
