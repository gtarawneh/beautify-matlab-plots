function psvg(svgFile, psize, varargin)

if nargin < 2, psize = [16 16]; end

pdfFile = strcat(tempname, '.pdf');

ppdf(pdfFile, psize);

pdf2svg(pdfFile, svgFile);

if nargin == 2

    processSvg(svgFile, @fixSubplotBackground, @beautifyColors);
    
else
    
    processSvg(svgFile, varargin{:});
    
end

beautifyGridLines(svgFile);

delete(pdfFile);

end