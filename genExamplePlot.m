% generates example plots for testing

function genExamplePlot(ind)

clf;

if ~nargin, ind = 1; end

funcs = {@gen_wave, @gen_3d, @gen_multi_wave};

if ismember(ind, 1:length(funcs))
    
    funcs{ind}();
    
else
    
    funcs{1}();
    
end

end

function gen_multi_wave()
   
    for i=1:4
        
        subplot(2, 2, i); gen_wave();
        
    end

end

function gen_wave()

t = (0:0.1:10)';
y1 = sin(2*pi*(t*1/10));
y2 = sin(2*pi*(t*1/10 + 0.25));
y3 = sin(2*pi*(t*1/10 + 0.5));
plot(t, [y1 y2 y3]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Wave Functions')
grid on

end

function gen_3d()

t = linspace(-25, 25, 5e3);
e = exp(-t.^2/1e3);
s = sin(2*pi*t*1/200);
f = 1;
x = t;
y = sin(2*pi*t*f) .* e .* s;
z = cos(2*pi*t*f) .* e .* s;
plot3(x, y, z);
xlabel('Time (sec)')
ylabel('Horizontal (unit)')
zlabel('Vertical (unit)')
grid on
axis square

end