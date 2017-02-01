clc
clear
data=load('xxx');  %input,two columns:wavenumber and intensity
savename=('xxxfl'); %output also two columns
x = linspace(800,4000,1600); %region of the spectra
y = 0;
a=0;
n=size(data,1); %column number
for i = 1:n
    a=data(i,2).*8./((x-data(i,1)).^2+ 8.^2);   %Lorentz fit with w=8
    y=y+a;
end
ldata=[x;y]'; 
save(savename,'ldata','-tabs','-ascii');  
plot(x,y)  %draw the figure
