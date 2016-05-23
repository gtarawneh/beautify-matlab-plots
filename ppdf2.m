% export current figure to pdf in high resolution

function ppdf2(pdfFile, psize)

if nargin < 2, psize = [16 16]; end

svgFile = strcat(tempname, '.svg');

psvg(svgFile, psize);

svg2pdf(svgFile, pdfFile);

delete(svgFile);

end