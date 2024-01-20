#include "stdio.h"
#include "unistd.h"
#include "string.h"

#define CAT_BUF_SIZE 509

#define REDIR_TYPE_NONE     0
#define REDIR_TYPE_APPEND   1
#define REDIR_TYPE_COVER    2

char string_buf[2048];
char filename[2048];

int atoi(char* str) {
    int ret = 0;
    int len = strlen(str);
    for (int i = 0; i < len; i++) {
        ret = ret * 10 + str[i] - '0';
    }
    return ret;
}

char* get_param(char* cmd) {
    while (*cmd == ' ') {
        cmd++;
    }
    int pos = 0;
    while (*cmd != '\0' && *cmd != ' ') {
        string_buf[pos++] = *(cmd++);
    }
    string_buf[pos] = '\0';
    return string_buf;
}

char* get_string(char* cmd) {
    while (*cmd == ' ') {
        cmd++;
    }

    if (*cmd == '"') { // quote wrapped
        cmd++;
        int pos = 0;
        while (*cmd != '"') {
            string_buf[pos++] = *(cmd++);
        }
        string_buf[pos] = '\0';
        return string_buf;
    } else {
        return get_param(cmd);
    }
}

int get_redir_type_and_filename(char* cmd) {
    int ret = REDIR_TYPE_NONE;

    while (*cmd == ' ' && *cmd != '\0') {
        cmd++;
    }

    if (*cmd == '>') {
        cmd++;
        if (*cmd == '>') {
            return REDIR_TYPE_APPEND;
        } else {
            return REDIR_TYPE_COVER;
        }
    }

    while (*cmd == ' ' && *cmd != '\0') {
        cmd++;
    }

    int pos = 0;
    while (*cmd != ' ' && *cmd != '\0') {
        filename[pos++] = *(cmd++);
    } 

    return ret;
}

void parse_cmd(char* cmd, int len) {
    if (cmd[0] == 'e' && cmd[1] == 'c' && cmd[2] == 'h' && cmd[3] == 'o') {
        // char* param = get_param(cmd + 4, len - 4);
        // int len = strlen(param);
        // char *param = 
        cmd += 4;
        char* echo_content = get_string(cmd);
        len = strlen(echo_content);
        // write(1, echo_content, len);
        cmd += len;
        write(1, echo_content, len);
        write(1, "\n\r", 2);
    } else if (cmd[0] == 'c' && cmd[1] == 'a' && cmd[2] == 't') {
        char* filename = get_param(cmd + 3);
        char last_char;
        int fd = open(filename, O_RDONLY);
        char cat_buf[CAT_BUF_SIZE];
        // printf("fd: %d\n", fd);
        // printf("cat_buf: %016llx\n", cat_buf);
        while (1) {
            int num_chars = read(fd, cat_buf, CAT_BUF_SIZE);
            // printf("***** num_chars: %d\n", num_chars);
            if (num_chars == 0) {
                if (last_char != '\n') {
                    printf("$\n");
                }
                break;
            }
            for (int i = 0; i < num_chars; i++) {
                if (cat_buf[i] == 0) {
                    write(1, "x", 1);
                } else {
                    write (1, &cat_buf[i], 1);
                }
                // printf("%c", cat_buf[i]);
                last_char = cat_buf[i];
            }
        }
        close(fd);
    // modify
    } else if (cmd[0] == 'e' && cmd[1] == 'd' && cmd[2] == 'i' && cmd[3] == 't' ) {
        cmd += 4;
        while (*cmd == ' ' && *cmd != '\0') {
            cmd++;
        }
        char* temp = get_param(cmd);
        int len = strlen(temp); 
        char filename[len + 1];
        for (int i = 0; i < len; i++) {
            filename[i] = temp[i];
        }
        filename[len] = '\0';
        cmd += len;

        while (*cmd == ' ' && *cmd != '\0') {
            cmd++;
        }
        temp = get_param(cmd);
        len = strlen(temp);
        char offset[len + 1];
        for (int i = 0; i < len; i++) {
            offset[i] = temp[i];
        }
        offset[len] = '\0';
        cmd += len;

        while (*cmd == ' ' && *cmd != '\0') {
            cmd++;
        }
        temp = get_string(cmd);
        len = strlen(temp);
        char content[len + 1];
        for (int i = 0; i < len; i++) {
            content[i] = temp[i];
        }
        content[len] = '\0';
        cmd += len;

        int offset_int = atoi(offset);


        printf("%s\n", filename);
        printf("%d\n", offset_int);
        printf("%s\n", content);

        // while (1);
        int fd = open(filename, O_RDWR);
        lseek(fd, offset_int, SEEK_SET);
        write(fd, content, len);
        close(fd);
    } else {
        printf("command not found: %s\n", cmd);
    }
}

int main() {
    write(1, "hello, stdout!\n", 15);
    write(2, "hello, stderr!\n", 15);
    // printf("echoing\n");
    char read_buf[2];
    char line_buf[128];
    int  char_in_line = 0;
    write(1, "SHELL > ", 8);
    while (1) {
        read(0, read_buf, 1);
        // printf("%x\n", read_buf[0]);
        if (read_buf[0] == '\r') {
            write(1, "\n", 1);
        } else if (read_buf[0] == 0x7f) {
            if (char_in_line > 0) {
                write(1, "\b \b", 3);
                char_in_line--;
            }
            continue;
        }
        write(1, read_buf, 1);
        if (read_buf[0] == '\r') {
            // write(1, line_buf, char_in_line);
            line_buf[char_in_line] = '\0';
            parse_cmd(line_buf, char_in_line);
            char_in_line = 0;
            // write(1, "\n", 1);
            // write(1, "\r", 1);
            write(1, "SHELL > ", 8);
        } else {
            line_buf[char_in_line++] = read_buf[0];
        }
    }
    return 0;
}