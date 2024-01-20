#include "test_schedule.h"
#include "proc.h"
#include "printk.h"

extern uint64 current;

char task_test_char[NR_TASKS];
uint64 task_test_priority[NR_TASKS];
uint64 task_test_counter[NR_TASKS];
uint64 task_test_index;
char task_test_output[(NR_TASKS+1) * 13];

void test_init(int num_tasks) {
    task_test_index = 0;
    char init_char = 'A';
    uint64 priority = PRIORITY_SEED;
    uint64 counter = COUNTER_SEED;

    for (char i = 0; i < num_tasks; i++){
        if(i < 26){
            task_test_char[i] = init_char + i;
        }
        else{
            task_test_char[i] = init_char + (i - 26) + 32;
        }

        priority = (priority * 5) % 97;
        task_test_priority[i] = priority;

        counter = (counter * 5) % 193;
        task_test_counter[i] = counter % 13 + 1;

        task_test_output[i] = '\0';
    }
    task_test_output[num_tasks]  = '\0';
}

void schedule_test(){
    struct task_struct* _current = (struct task_struct*)current;
    uint64 counter_now = _current->counter + 1;

    uint64 num_tasks = NR_TASKS;
    char priority_16[] = "FFFFFFFFFFFFKKKKKKKKKKKGGGGGGGGGGCCCCCCCCCDDDDDDDDJJJJJJJPPPPPPEEEEEMMMMBBBBNNNLLLOOHHI";
    char priority_8[] = "FFFFFFFFFFFFGGGGGGGGGGCCCCCCCCCDDDDDDDDEEEEEBBBBHH";
    char priority_4[] = "CCCCCCCCCDDDDDDDDBBBB";

    char SJF_16[] = "IHHOOLLLNNNBBBBMMMMEEEEEPPPPPPJJJJJJJDDDDDDDDCCCCCCCCCGGGGGGGGGGKKKKKKKKKKKFFFFFFFFFFFF";
    char SJF_8[] = "HHBBBBEEEEEDDDDDDDDCCCCCCCCCGGGGGGGGGGFFFFFFFFFFFF";
    char SJF_4[] = "BBBBDDDDDDDDCCCCCCCCC";

    char * priority_output;
    char * SJF_output;
    uint64 output_length = 0;

    switch(num_tasks){
        case 16 :
            priority_output = priority_16;
            SJF_output = SJF_16;
            output_length = 87;
            break;
        case 8 :
            priority_output = priority_8;
            SJF_output = SJF_8;
            output_length = 50;
            break;
        case 4 :
            priority_output = priority_4;
            SJF_output = SJF_4;
            output_length = 21;
            break;
        default :
            printk("unknown test case\n");
            break;
    }
    
    while(1){
        if(counter_now == _current->counter + 1 && counter_now){
            counter_now--;
            printk("%c\n", task_test_char[_current->pid]);
            task_test_output[task_test_index++] = task_test_char[_current->pid];
            
            for(int i = 0; i < task_test_index; i++){
                printk("%c", task_test_output[i]);
            }
            
            if(task_test_index == output_length){
                #ifdef SJF
                    for(int i = 0; i < output_length; i++){
                        if(SJF_output[i] != task_test_output[i]){
                            printk("\nNR_TASKS = %d, SJF test failed!\n\n", NR_TASKS);
                            goto stuck;
                        }
                    }
                    printk("\nNR_TASKS = %d, SJF test passed!\n\n", NR_TASKS);
                    goto stuck;
                #else
                    for(int i = 0; i < output_length; i++){
                        if(priority_output[i] != task_test_output[i]){
                            printk("\nNR_TASKS = %d, PRIORITY test failed!\n\n", NR_TASKS);
                            goto stuck;
                        }
                    }
                    printk("\nNR_TASKS = %d, PRIORITY test passed!\n\n", NR_TASKS);
                    goto stuck;
                #endif
            }
        }
        stuck:
    }
}