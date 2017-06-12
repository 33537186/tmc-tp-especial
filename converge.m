
function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_pruebas)

  % si total de tiradas es mayor a 1000
  if total_de_pruebas > 1000
    % diferencia entre la probabilidad anterior y la actual
      if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
      % Converge
      convergio = true;
    else
      % No converge
      convergio = false;
    end
  else
    % No converge
    convergio = false;
  end

end