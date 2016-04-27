function processSvg(svgFile, varargin)

xml = fileread(svgFile);

for i=1:nargin-1
    
    xml = varargin{i}(xml);
    
end

fid = fopen(svgFile, 'w'); fprintf(fid, xml); fclose(fid);

end