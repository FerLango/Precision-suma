%% Valor inicial
%n=10^5
%n=10^6
%n=10^7
n=10^8

%% Vector x
x=[];
for i=1:n
    x(i)=1/i^2;
end
x;

%% Parejas
parejas=x;
while length(parejas)~=1
    aux=[];
    for i=1:length(parejas)/2
        aux(i)=parejas(2*i-1)+parejas(2*i);
    end
    if mod(length(parejas),2)~=0
        aux(i+1)=parejas(length(parejas));
    end
    parejas=aux;
end
parejas

%% Tradicional 
tradicional=x;
aux=0;
for i=1:length(tradicional)
    aux=aux+tradicional(i);
end
tradicional=aux

%% Real n->inf
real=pi^2/6

%% Error
error_parejas= abs(real-parejas)
error_tradicional= abs(real-tradicional)



    
    
    
    