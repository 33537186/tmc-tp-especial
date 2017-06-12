
function [probabilidad, todas_las_probabilidades] = probabilidad_fallos_por2(epsilon)

  % Inicializo las variables
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  cantidad_pruebas = 0;
  todas_las_probabilidades = [];
  
  
  % Mientras no converge
   while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, cantidad_pruebas)
  
   
    probabilidad_anterior = probabilidad_actual;
  
    % Realizo la funcion my_mex_service
    caso1= my_mex_service(33537186);
    caso2= my_mex_service(33537186);
      
    % sumo pruebas
    cantidad_pruebas = cantidad_pruebas+ 1;
    
     if ((caso1==0)&&(caso2)==0)
      casos_favorables = casos_favorables + 1;
    end
    
    % probabilidad actual
    probabilidad_actual = casos_favorables / cantidad_pruebas;
    
    % Esto es solamente para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
        
  end
 
  probabilidad = probabilidad_actual;

end
