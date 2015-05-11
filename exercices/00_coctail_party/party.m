% load the audio files
[x,Fs,bps] = wavread('CoctailPartyLeft.wav');
[y,Fs,bps] = wavread('CoctailPartyRight.wav');

% no brain, just the code from the lecture
[W,s,v] = svd((repmat(sum(x.*x,1),size(x,1),1).*x)*x');
