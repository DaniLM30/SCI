Ts=0.1;
x_0 = 0.05;
y_0=0.0;
th_0=0;
I=50;
E_d_vec=[];
E_theta_vec=[];
V_vec=[];
W_vec=[];
for i=1:I
    x_0 = 3*rand;
    y_0=3*rand;
    % Ejecutar Simulacion
    sim('TrajectoryControl.slx');
    % Mostrar la trayectirua
    x=ans.salida_x.signals.values;
    y=ans.salida_y.signals.values;
    x_gen=ans.salida_x_gen.signals.values;
    y_gen=ans.salida_y_gen.signals.values;
    E_d_vec=[E_d_vec;ans.E_d.signals.values];
    E_theta_vec=[E_theta_vec;ans.E_theta.signals.values];
    V_vec=[V_vec; ans.V.signals.values];
    W_vec=[W_vec; ans.W.signals.values];
end
inputs=[E_d_vec';E_theta_vec'];
outputs=[V_vec';W_vec'];

N=20;
net = narxnet(1:2,1:2,[N]);
nT=size(inputs,2);
inputsc=mat2cell(inputs,2,ones(nT,1));
outputsc=mat2cell(outputs,2,ones(nT,1));
[x,xi,ai,t] = preparets(net,inputsc,{},outputsc);
net = train(net,x,t,xi,ai);
net = closeloop(net);
view(net)
gensim(net,Ts)