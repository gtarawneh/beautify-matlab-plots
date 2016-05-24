function ppng(pngFile, psize, dpi)

if nargin < 2, psize = [16 16]; end

if nargin < 3, dpi = 160; end

svgFile = strcat(tempname, '.svg');

psvg(svgFile, psize);

svg2png(svgFile, pngFile, dpi);

delete(svgFile);

end