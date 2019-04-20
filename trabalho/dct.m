function [y,Fs] = dct(audio)
  [y,Fs] = wavread('audio.wav');
  plot(y);
  
  
  endfunction