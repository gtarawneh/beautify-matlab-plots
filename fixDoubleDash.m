% makes dashes plotted by plot(~, ~, '--') smaller

function xml = fixDoubleDash(xml)

xml = strrep(xml, 'stroke-dasharray:60;', 'stroke-dasharray:20;');

end