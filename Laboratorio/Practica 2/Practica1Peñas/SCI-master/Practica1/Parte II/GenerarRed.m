%Tiempo de muestreo
Ts=100e-3;
N=20;
E_d_vec=[];
E_theta_vec=[];
V_vec=[];
W_vec=[];
for i=1:N
refx=10*rand-5;
refy=10*rand-5;
sim('PositionControl.slx');
E_d_vec=[E_d_vec;ans.E_d.signals.values];
E_theta_vec=[E_theta_vec;ans.E_theta.signals.values];
V_vec=[V_vec; ans.V.signals.values];
W_vec=[W_vec; ans.W.signals.values];
end
inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];
net = feedforwardnet([10]);
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);
% Generar bloque de Simulink con el controlador neuronal
gensim(net,Ts)