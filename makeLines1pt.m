function makeLines1pt(f)

if ~nargin, f = gcf; end

hAxes = findobj(f, 'type', 'axes');

for i=1:length(hAxes)

    h = findobj(hAxes(i), 'Type', 'line');
    
    set(h, 'linewidth', 1);
    
end

end