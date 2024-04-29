% RUNLIDAR2
% programa para ejecutar escaneos peri�dicos con el lidar HOKUYO URG-04LX,
% crea un archivo LIDARSET2 que contiene una fila de datos por cada
% escaneo. Se ejecutan 10 escaneos con separaci�n de 6 segundos.
% Ricardo Ram�rez Heredia. Universidad Nacional de Colombia. Usa el programa
% LidarScan  creado por Shikhar Shrestha, IIT Bhubaneswar.
% Editado por Felipe Cruz para la pr�ctica de incertidumbre del curso
% Rob�tia M�vil - Universidad Nacional de Colombia 2024-1S

%El lidar debe estar conectado y realizada la conexi�n con SetupLidar.

numEscaneos = 3; % Cu�ntos escaneos realizar
tiempoEntreScan = 3; % Tiempo entre cada escaneo

disp('Inicio escaneo')
LidarSet3=zeros(50,682);
for i=1:numEscaneos
disp('Escaneo n�mero:' + i)
[rangescan]=LidarScan(lidar);
iplot(rangescan)
LidarSet3(i,:)=rangescan;
pause(tiempoEntreScan)
end
disp('Escaneo finalizado')
disp('Guardando datos...')
writematrix(LidarSet3,'Scan3.csv') 
disp('Datos guardados!')