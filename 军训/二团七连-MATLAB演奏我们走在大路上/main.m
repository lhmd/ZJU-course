%我爱二团七连！
%我们共同走在时代的大路上！
Fs = 8192;
y=[];
music = [15,25,3,35,55,6,9,8,8,8,85,95,10,105,95,95,94,84,65,55,...
    5,5,5,65,75,8,65,64,84,4,65,64,84,5,5,3,35,25,1,4,35,34,54,25,15,1,1,1,...
    55,54,54,8,8,8,105,104,94,8,8,8,65,75,8,7,95,94,84,65,65,5,5,5,85,84,84,6,6,6,75,74,64,...
    9,9,9,85,65,5,65,64,64,3,5,8,8,8];
music_length = length(music(:));

y1 = gen_wave(1,1);
y2 = gen_wave(2,1);
y3 = gen_wave(3,1);
y4 = gen_wave(4,1);
y5 = gen_wave(5,1);
y6 = gen_wave(6,1);
y7 = gen_wave(7,1);
y8 = gen_wave(8,1);
y9 = gen_wave(9,1);
y10 = gen_wave(10,1);
y15 = gen_wave(1,0.5);
y25 = gen_wave(2,0.5);
y35 = gen_wave(3,0.5);
y45 = gen_wave(4,0.5);
y55 = gen_wave(5,0.5);
y65 = gen_wave(6,0.5);
y75 = gen_wave(7,0.5);
y85 = gen_wave(8,0.5);
y95 = gen_wave(9,0.5);
y105 = gen_wave(10,0.5);
y104 = gen_wave(10,0.25);
y84 = gen_wave(8,0.25);
y94 = gen_wave(9,0.25);
y34 = gen_wave(3,0.25);
y54 = gen_wave(5,0.25);
y64 = gen_wave(6,0.25);
y74 = gen_wave(7,0.25);

for i = 1:1:music_length
    if music(i) == 1
        y=[y,y1];
        
    elseif music(i) == 2
        y=[y,y2];
        
    elseif music(i) == 3
        y=[y,y3];
        
    elseif music(i) == 4
        y=[y,y4];
        
    elseif music(i) == 5
        y=[y,y5];
        
    elseif music(i) == 6
        y=[y,y6];
        
    elseif music(i) == 7
        y=[y,y7];    
        
    elseif music(i) == 8
        y=[y,y8];    
        
    elseif music(i) == 9
        y=[y,y9];    
        
    elseif music(i) == 10
        y=[y,y10];        
        
    elseif music(i) == 15
        y=[y,y15];        
        
    elseif music(i) == 25
        y=[y,y25];        
        
    elseif music(i) == 35
        y=[y,y35];    
        
    elseif music(i) == 45
        y=[y,y45];        
        
    elseif music(i) == 55
        y=[y,y55];        
        
    elseif music(i) == 65
        y=[y,y65];        
        
    elseif music(i) == 75
        y=[y,y75];            
        
    elseif music(i) == 85
        y=[y,y85];        
        
    elseif music(i) == 95
        y=[y,y95];        
        
    elseif music(i) == 105
        y=[y,y105];  
        
    elseif music(i) == 84
        y=[y,y84];
        
    elseif music(i) == 94
        y=[y,y94];
        
    elseif music(i) == 34
        y=[y,y34];
        
    elseif music(i) == 54
        y=[y,y54];
        
    elseif music(i) == 64
        y=[y,y64]; 
        
    elseif music(i) == 74
        y=[y,y74];  
        
    elseif music(i) == 104
        y=[y,y104];  
    end
end

sound(y, Fs);
