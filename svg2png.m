% invokes inkscape to convert pdf to svg

function svg2png(svgFile, pngFile, dpi)

if nargin<3
    
    dpi = 160;
    
end

cmd = 'inkscape %s --export-png=%s --export-dpi=%d';

cmd2 = sprintf(cmd, svgFile, pngFile, dpi);

status = system(cmd2);

if status
    
    error('could not run inkscape, make sure inkscape is in PATH and specified input/output files are accessible');
    
end

end