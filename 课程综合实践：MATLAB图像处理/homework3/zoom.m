function [J]=zoom(I,d)
imgsize=size(I);
dimension=numel(imgsize);
[r,c,~]=size(I);
R=round(r*d);
C=round(c*d);
if dimension==1
    for i=1:R
        for j=1:C
            x=floor((j-1)/d)+1;
            y=floor((i-1)/d)+1;
            if x==1||x==r||y==1||y==c
                J(1,j)=I(1,y);
                J(i,1)=I(x,1);
                continue;
            end
            dertX=(i-1)/d-x+1;
            dertY=(i-1)/d-y+1;
            J(i,j)=(1-dertX)*(1-dertY)*I(x,y)+(1-dertX)*dertY*I(x,y+1)+(1-dertY)*dertX*I(x+1,y)+dertX*dertY*I(x+1,y+1);
        end
    end
elseif dimension==3
        for i=1:R
            for j=1:C
                x=floor((i-1)/d)+1;
                y=floor((j-1)/d)+1;
                if x==1||x==r||y==1||y==c
                    J(1,j,:)=I(1,y,:);
                    J(i,1,:)=I(x,1,:);
                    continue;
                end
                dertX=(i-1)/d-x+1;
                dertY=(j-1)/d-y+1;
                J(i,j,:)=(1-dertX)*(1-dertY)*I(x,y,:)+(1-dertX)*dertY*I(x,y+1,:)+(1-dertY)*dertX*I(x+1,y,:)+dertX*dertY*I(x+1,y+1,:);
            end
        end
end
end
