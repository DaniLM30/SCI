close all; clear all;
Ts=0.1;
%Referencia x-y de posicion
x_0=0.05;
y_0=0.0;
th_0=0;
%Ejecutar simulacion
sim('TrajectoryControl.slx')
x=salida_x.signals.values;
y=salida_y.signals.values;
x_control=salida_x_g.signals.values;
y_control=salida_y_g.signals.values;
figure;
plot(x,y);
hold on;
plot(x_control,y_control);
hold off;
grid on;

E_d_vec=E_d.signals.values;
E_theta_vec=E_theta.signals.values;
V_vec=V.signals.values;
W_vec=W.signals.values;
inputs=[E_d_vec';E_theta_vec'];
outputs=[V_vec';W_vec'];

N=5;
net = narxnet(0:1,1,[N]);
nT=size(inputs,2);
inputsc=mat2cell(inputs,2,ones(nT,1));
outputsc=mat2cell(outputs,2,ones(nT,1));
[x,xi,ai,t] = preparets(net,inputsc,{},outputsc);
net = train(net,x,t,xi,ai);
net = closeloop(net);
view(net);

gensim(net,Ts);