Fs = 10000000; % Sampling rate is 8000000 samples per second.
Fc = 1000000; % Carrier frequency in Hz
t = [0:.1*Fs]'/Fs; % Sampling times for .1 second
t = [-10:0.2:10];
duty = 50;
x = square(t,duty); % Representation of the signal
plot(x)
y = ammod(x,Fc,Fs); % Modulate x to produce y.
figure;
subplot(2,1,1); plot(t,x); % Plot x on top.
subplot(2,1,2); plot(t,y)% Plot y below.
