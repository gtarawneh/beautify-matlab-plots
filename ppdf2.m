% export current figure to pdf in high resolution

function ppdf2(pdfFile, psize, varargin)

if nargin < 2, psize = [16 16]; end

svgFile = strcat(tempname, '.svg');

if nargin>2
    
    psvg(svgFile, psize, varargin{:});
    
else

    psvg(svgFile, psize);
    
end

svg2pdf(svgFile, pdfFile);

delete(svgFile);

end