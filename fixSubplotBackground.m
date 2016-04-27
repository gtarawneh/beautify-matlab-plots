% this fixes an issue where, when using subplots, the svg obtained through
% ppdf and pdf2svg conversion has no background in subplot 1

function xml = fixSubplotBackground(xml)

str1 = 'fill:none;stroke:#ffffff;stroke-width:5;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1';
str2 = 'fill:#ffffff;stroke:#ffffff;stroke-width:5;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1';

xml = strrep(xml, str1, str2);

end