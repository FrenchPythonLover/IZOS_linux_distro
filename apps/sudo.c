#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
char* helpstr = "\x1b[1;31;49mSudo utility - Run a command as root\x1b[0;39;49m\nCopyright \x1b[1;34;49mIZOS\x1b[0;39;49m 2026\nWarning: Do not use this program as a replacement to the original sudo, it is soo dangerous\nUsage: sudo <cmd> [args...]\n";
int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, helpstr);
        return 1;
    }

    setuid(0);   // passer root
    execvp(argv[1], &argv[1]); // executer commande

    perror("execvp");
    return 1;
}
