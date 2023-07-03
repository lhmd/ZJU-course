#include<iostream>
#include<ctime>
#include<vector>
#include<string>

//Length and width of the map
#define MaxSize 9

//Define the representation of coordinates
class pos{
public:
    int x, y;
//    Overloaded Operators
    bool operator==(const pos& position) const {
        if(this->x == position.x && this->y == position.y && position.x >=0 && position.y >= 0) return true;
        else return false;
    }
    pos operator+(const pos& b) {
        pos res;
        res.x = this->x + b.x;
        res.y = this->y + b.y;
        return res;
    }
    pos operator-(const pos& b) {
        pos res;
        res.x = this->x - b.x;
        res.y = this->y - b.y;
        return res;
    }
};

//Parent class of all roles
class Role {
protected:
//    Coordinates of each character's presence
    pos cur_pos;
public:
//    Initialize the coordinates of all actors to -1 to prevent
//    bugs. -1 is also taken into account when defining the
//    comparison of pos classes above
    Role() {cur_pos.x = cur_pos.y = -1;}
    pos get_pos() {return cur_pos;}
    void set_pos(int x, int y) {cur_pos.x = x; cur_pos.y = y;}
//    Virtual class that defines the actions of each character at the time of the encounter
    virtual void event(char occur) = 0;
};

//Warrior's class, inherited from role class
class Warrior: public Role {
private:
//    Indicates whether the warrior has walked with the princess
    bool met_prin;
public:
//    The first warriors did not go with the princess
    Warrior() {met_prin = false;}
//    Functions used when Warrior go ahead
    void go(int direction) {
        switch (direction) {
            case 1:     cur_pos.y++; break;
            case 2:     cur_pos.x--; break;
            case 3:     cur_pos.y--; break;
            case 4:     cur_pos.x++; break;
            default: std::cout << "direction error!" << std::endl;
        }
    }
    bool if_meet_prin() const {return met_prin;}
//    The event function for warriors encountering monsters or princesses
    void event(char occur) override {
        switch (occur) {
            case 'm':   std::cout << "Warrior: I will definitely come back!" << std::endl;
                        break;
            case 'p':   met_prin = true;
                        std::cout << "Warrior: I'm here to help you get out!" << std::endl;
                        break;
            default:    std::cout << "event error!" << std::endl;
        }
    }
};

//Princess's class, inherited from role class
class Princess: public Role {
public:
    void event(char occur) override {
        switch (occur) {
            case 'w':   std::cout << "Princess: My warrior! You finally came to save me!" << std::endl;
                        break;
            default:    std::cout << "event error!" << std::endl;
        }
    }
};

//Monster's class, inherited from role class
class Monster: public Role {
public:
    void event(char occur) override {
        switch (occur) {
            case 'w':   std::cout << "Monster: What a delicious dinner, "
                                     "bring it to your door by yourself!" << std::endl;
                        break;
            default:    std::cout << "event error!" << std::endl;
        }
    }
};

//Define the situation in each room
class Room {
private:
//    Number of exits per room
    int exit_num;
//    What direction is the exit of this room respectively
    std::vector<int> exit_direction;
public:
//    Initially define the room without exit
    Room() {
        exit_num = 0;
        exit_direction = std::vector<int>(4, 0);
    }
//    With this function you can add exits for each room
    bool set_exit(int x) {
        if(!exit_direction[x]) {
            exit_direction[x] = 1;
            ++exit_num;
            return true;
        }
//        If there is already an exit in this direction, it is not necessary to set the exit and return false
        else return false;
    }
    int get_exit_num() const {return exit_num;}
//    This function represents the dialogue that occurs after the warrior enters the room
    void enter(int x) {
        std::string room_name;
//        x represents the room label, 1 is the entrance, 2 is mons, 3 is end, 0 is normal
        switch (x) {
            case 0: room_name = "room";         break;
            case 1: room_name = "lobby";        break;
            case 2: room_name = "Monster room"; break;
            case 3: room_name = "Princess room";break;
            default:std::cout << "enter error!" <<std::endl;
        }
//        Output the number of exits and the situation of this room
        std::cout << "Welcome to the "<< room_name << ". " << std::endl;
        std::cout << "There are " << exit_num << " exits:" << std::endl;
        if(exit_direction[0]) std::cout << "east ";
        if(exit_direction[1]) std::cout << "up ";
        if(exit_direction[2]) std::cout << "west ";
        if(exit_direction[3]) std::cout << "down ";
        std::cout << std::endl;
    }

//    When the warrior wants to leave the room,
//    this function is needed to check if it is possible to leave by the direction of the input
    int leave(const std::string& instruction) {
        int dir;
        if(instruction == "east") dir = 1;
        else if(instruction == "up") dir = 2;
        else if (instruction == "west") dir = 3;
        else if(instruction == "down") dir = 4;
        else {std::cout << "leave error!" <<std::endl; return 0;}
        if(exit_direction[dir-1]) return dir;
        else return 0;
    }

};

//Define the entire map
class Map {
private:
//    Define the location of lobby, princess's room, and monster's room
    pos start{}, end{}, trap{}, now{};
//    Define the four directions in which warriors can move forward
    pos direct[4] = {{0,1},{-1,0},{0,-1},{1,0}};
public:
//    Map of the entire castle
    std::vector<std::vector<Room>> map;
//    Determine if there are rooms in the vicinity of the
//    Warrior's current location that are not yet connected to other rooms
    bool judge() {
        for(auto & h : direct) {
            if(now.x+h.x > -1
               && now.x+h.x < MaxSize
               && now.y+h.y > -1
               && now.y+h.y < MaxSize
               && !map[now.x+h.x][now.y+h.y].get_exit_num()
                    ) return true;
        }
        return false;
    }
//    Recursive functions to generate maps
    void dfs() {
//        Determine if there are rooms nearby that are not yet connected
        while(judge()) {
            pos temp;
//            Randomly select a direction,
//            determine whether the room in this direction already has an exit,
//            if there is already an exit to re-randomize a different direction
            int random;
            do {
                random = rand() % 4;
                temp = direct[random] + now;
            } while (temp.x < 0 || temp.x >= MaxSize
                     || temp.y < 0 || temp.y >= MaxSize
                     || map[temp.x][temp.y].get_exit_num()
                    );
//            Connecting these two rooms
            map[now.x][now.y].set_exit(random);
            map[temp.x][temp.y].set_exit((random+2)%4);
//            Take a step forward to make the room that just tried the direction to the current position
            now = temp;
//            Continue recursive map search
            dfs();
//            Undo the previous forward operation and return to the previous step
            now = now - direct[random];
        }
    }
//    Constructor for Map
    Map() {
//        Define the size of the map
        map = std::vector<std::vector<Room>>(MaxSize, std::vector<Room>(MaxSize));
//        Randomize the lobby location, the monster location and the princess location and make them two different
        start.x = rand()%MaxSize;
        start.y = rand()%MaxSize;
        do {
            end.x = rand()%MaxSize;
            end.y = rand()%MaxSize;
        } while(start == end);
        do {
            trap.x = rand()%MaxSize;
            trap.y = rand()%MaxSize;
        } while((trap == end || trap == start));
//        Start exploring from lobby
        now = start;
//        Start constructing the map
        dfs();
    }
    pos get_start() {return start;}
    pos get_end() {return end;}
    pos get_trap() {return trap;}
//    This is a visual function to show the map and special room locations
    void visualize() {
        std::cout << "This is the map visualization section, "
                     "where the numbers represent the number of exits for each room" << std::endl;
        for(int i = 0; i < MaxSize; ++i) {
            for(int j = 0; j < MaxSize; ++j) {
                std::cout << map[i][j].get_exit_num() << " ";
            }
            std::cout << std::endl;
        }
        std::cout << "The start room is (" << start.x << ", " << start.y << ")" << std::endl;
        std::cout << "The princess room is (" << end.x << ", " << end.y << ")" << std::endl;
        std::cout << "The monster room is (" << trap.x << ", " << trap.y << ")" << std::endl;
    }

};

//The class of a game flow
class Game {
private:
//    All characters and game maps in the game
    Map castle;
    Warrior player;
    Princess prin;
    Monster mons;
public:
    void GameStart() {
//        The visualization function of the game map, you need to comment out when playing
        castle.visualize();
//        Assign the initial position of each generated character to each character
        pos temp = castle.get_start();
        player.set_pos(temp.x, temp.y);
        temp = castle.get_end();
        prin.set_pos(temp.x, temp.y);
        temp = castle.get_trap();
        mons.set_pos(temp.x, temp.y);

//        Game begin
        while(true) {
//            Define variables to determine the condition of the room where the warrior is now
            int now_room = 0;
            std::string command, operation;
            if(player.get_pos() == castle.get_start()) now_room = 1;
            else if(player.get_pos() == castle.get_trap()) now_room = 2;
            else if(player.get_pos() == castle.get_end()) now_room = 3;
//            Enter the room
            castle.map[player.get_pos().x][player.get_pos().y].enter(now_room);
//            For special room departure special events
            if(now_room == 1 && player.if_meet_prin()) {std::cout << "Game Over! You are win!" << std::endl; break;}
            if(now_room == 2) {mons.event('w'); player.event('m'); break;}
            if(now_room == 3 && !player.if_meet_prin()) {player.event('p');prin.event('w');}
//            Read player commands
            std::cout << std::endl << "Enter your command:" << std::endl;
            int dir = 0;
            bool dir_flag = false;
//            Until the player enters the correct command, otherwise keep reminding the player
            while(!dir) {
                bool operation_flag = false;
                if(dir_flag) std::cout << "Please enter the correct direction" << std::endl;
                dir_flag = true;
                do{
                    if(operation_flag) std::cout << "Instructions should start with 'go'" << std::endl;
                    operation_flag = true;
                    std::cin >> operation >> command;
                } while (operation != "go");
//                Define variables to determine the present
                dir = castle.map[player.get_pos().x][player.get_pos().y].leave(command);
            }
//            Control the warriors to move forward
            player.go(dir);
        }
    }
};

int main() {
//    Set the seed for random time
    srand(time(0));
//    Instantiate a new game
    Game newGame;
//    Start the game
    newGame.GameStart();
    return 0;
}