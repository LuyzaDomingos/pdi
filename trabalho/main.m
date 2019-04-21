

[audio,fs] = audioread('audio.wav'); %audio guarda os valores contidos no audio; fs guarda a frequencia

imagem = imread('lena.bmp'); % essa imagem só tem uma banda; 
                              %para saber informações da imagem colocar na Janela de Comando "info = imfinfo('lena.bmp')";

while true
  disp("\n\n");
  disp("Menu");
  disp("0 - Encerrar execução")
  disp("1 - audio");
  disp("2 - imagem");
  disp("3 - deslocador de frequencia");
  valor = input('Escolha uma opcao entre 0 e 3 : ');
  
  switch valor
    case 0
      break;
    case 1
     audiowrite("audioTESTE.wav",questao1_1(audio),fs); % audiowrite salva o novo áudio, e adiciona a frequência de amostras
     
%    case 2
%           
%    case 3
%     
  endswitch    

  endwhile
