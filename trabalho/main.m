
[audio,fs] = audioread('audio.wav'); %audio guarda os valores contidos no audio; fs guarda a frequencia

function y = ourDCT(signal)
  realx = isreal(signal);
  transpose = (rows (signal) == 1);

  if transpose, signal = signal (:); endif
  [nr, nc] = size (signal);
  
  n = nr;

  if n == 1
    w = 1/2;
  else
    w = [ sqrt(1/4/n); sqrt(1/2/n)*exp((-1i*pi/2/n)*[1:n-1]') ] * ones (1, nc);
  endif
  
  if ( realx && rem (n, 2) == 0 )
    y = fft ([ signal(1:2:n,:) ; signal(n:-2:1,:) ]);
    y = 2 * real( w .* y );
  else
    y = fft ([ signal ; flipud(x) ]);
    y = w .* y (1:n, :);
    if (realx) y = real (y); endif
  endif
  
  if transpose, y = y.'; endif
  
endfunction

while true
  disp("\n\n");
  disp("Menu");
  disp("0 - Encerrar execução")
  disp("1 - audio");
  disp("2 - imagem");
  disp("3 - deslocador de frequencia");
  valor = input('Escolha uma opcao entre 0 e 8 : ');
  
  switch valor
    case 0
      break;
    case 1
      y = ourDCT(audio);
      disp(y);
      disp("y");
      %q = dct(audio);
      %disp(q);
      %disp("q");
%    case 2
%           
%    case 3
%     
  endswitch    

  endwhile
  








