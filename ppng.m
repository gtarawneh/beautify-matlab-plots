function ppng(pngFile, psize, dpi, varargin)

if nargin < 2, psize = [16 16]; end

if nargin < 3, dpi = 160; end

svgFile = strcat(tempname, '.svg');

if nargin>3

    psvg(svgFile, psize, varargin{:});

else
    
    psvg(svgFile, psize);
    
end

svg2png(svgFile, pngFile, dpi);

delete(svgFile);

end