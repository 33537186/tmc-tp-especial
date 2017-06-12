% Script_trabajo_especial
clear 
clc

epsilon1 = 0.1;
epsilon2 = 0.01;
epsilon3 = 0.001;

tic


[probabilidad, todas_las_probabilidades] = probabilidad_fallos_por2(epsilon1);

% Mostramos por pantalla 
fprintf('La probabilidad de exito es: %d\n', probabilidad);


% Graficamos la probabilidad 
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');


probabilidad_primerosveinte = std(todas_las_probabilidades(1:20))
probabilidad_ultimosveinte = std(todas_las_probabilidades(end-20:end))


tiempo= toc;
fprintf('El tiempo, en segundos, para calcular la probabilidad fue de: %d\n', tiempo);

%epsilon 2

tic

% Calculamos la probabilidad de dos fallos consecutivos
[probabilidad, todas_las_probabilidades] = probabilidad_fallos_por2(epsilon2);



% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Graficamos como fue evolucionando la probabilidad 
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%probabilidad parcial los primeros y ultimos 20
probabilidad_primerosveinte = std(todas_las_probabilidades(1:20))
probabilidad_ultimosveinte = std(todas_las_probabilidades(end-20:end))


tiempo= toc;
fprintf('El tiempo para calcular la probabilidad fue de: %d\n', tiempo);

%epsilon 3

tic

% Calculamos la probabilidad de dos fallos consecutivos
[probabilidad, todas_las_probabilidades] = probabilidad_fallos_por2(epsilon3);



% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad de exito es: %d\n', probabilidad);

% Graficamos como fue evolucionando la probabilidad 
figure, plot(todas_las_probabilidades);
hold on;
grid on;
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad', 'Probabilidad analitica');

%probabilidad parcial los primeros y ultimos 20
probabilidad_parcial_primeros_veinte = std(todas_las_probabilidades(1:20))
probabilidad_parcial_ultimos_veinte = std(todas_las_probabilidades(end-20:end))

tiempo= toc;
fprintf('El tiempo para calcular la probabilidad fue de: %d\n', tiempo);