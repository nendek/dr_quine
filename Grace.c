#include <stdio.h>
#include <unistd.h>
/*
comment
*/
#define STRING "#include <stdio.h>%2$c#include <unistd.h>%2$c%4$c%3$c%2$ccomment%2$c%3$c%4$c%2$c#define STRING %5$c%1$s%5$c%2$c#define PRINT(fd) fprintf(fd,STRING,STRING,10,42,47,34)%2$c#define FUNC() int main(){FILE *fd;fd=fopen(%5$cGrace_kid.c%5$c, %5$cw%5$c);if(fd>0){PRINT(fd);}return(0);}%2$cFUNC()%2$c"
#define PRINT(fd) fprintf(fd,STRING,STRING,10,42,47,34)
#define FUNC() int main(){FILE *fd;fd=fopen("Grace_kid.c", "w");if(fd>0){PRINT(fd);}return(0);}
FUNC()
