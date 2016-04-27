% removes redundant axis labels from subplots

function stripExtraLabels(h)

if ~nargin, h = gcf; end

ax = findobj(h, 'type', 'axes', '-not', ...
    'Tag', 'legend', '-not', 'Tag', 'Colorbar');

pos = cell2mat(get(ax,'position'));

minx = min(pos(:,1));
miny = min(pos(:,2));

for i=1:length(ax)

    p = get(ax(i), 'position');
    
    if p(1) > minx, ylabel(ax(i), ''); end
    
    if p(2) > miny, xlabel(ax(i), ''); end
    
end

end