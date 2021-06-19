function tf2asbode(tf,Y,W_axes,M_axes,F_axes)
switch nargin
    case 1
        Y = 3;
        W_axes = [];
        M_axes = [];
        F_axes = [];
    case 2
        W_axes = [];
        M_axes = [];
        F_axes = [];
    case 5
    otherwise
        disp('Errore: controllare gli argomenti');
end
[num,den] = tfdata(tf,'v');
asbode2(num,den,W_axes,M_axes,F_axes,0,0,0,Y);

