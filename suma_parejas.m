x = [1:10];

%% Parejas
parejas=x
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