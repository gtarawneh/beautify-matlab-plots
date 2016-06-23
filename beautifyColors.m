% changes default line colors

function xml = beautifyColors(xml)

% each row is: from, to

colorTable = {
    '#0000ff', '#0072bd'
    '#0080ff', '#77ac30'
    '#ff0000', '#d95319'
    '#00bfbf', '#edb120'
    '#bf00bf', '#7e2f8e'
    '#bfbf00', '#888888'
    };

n = size(colorTable, 1);

for i=1:n
    
    cr = colorTable(i, :);
    
    xml = strrep(xml, cr{1}, cr{2});
    
end

end