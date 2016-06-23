% removes redundant axis labels from subplots
%
% to remove only x labels, use stripExtraLabels(gcf, 'x'), same for y

function stripExtraLabels(h, option)

if ~nargin, h = gcf; end

if nargin<2, option = 'xy'; end

ax = findobj(h, 'type', 'axes', '-not', ...
    'Tag', 'legend', '-not', 'Tag', 'Colorbar');

pos = cell2mat(get(ax,'position'));

minx = min(pos(:,1));
miny = min(pos(:,2));

stripY = ~isempty(strfind(option, 'y'));
stripX = ~isempty(strfind(option, 'x'));

for i=1:length(ax)

    p = get(ax(i), 'position');

    if (p(1) > minx) && stripY

        ylabel(ax(i), '');

    end

    if (p(2) > miny) && stripX

        xlabel(ax(i), '');

    end

end

end