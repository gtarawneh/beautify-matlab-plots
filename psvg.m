function psvg(svgFile, psize)

if nargin < 2, psize = [16 16]; end

pdfFile = strcat(tempname, '.pdf');

ppdf(pdfFile, psize);

pdf2svg(pdfFile, svgFile);

processSvg(svgFile, @fixSubplotBackground, @beautifyColors);

beautifyGridLines(svgFile);

delete(pdfFile);

end