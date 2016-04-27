% invoke inkscape to convert pdf to svg

function pdf2svg(pdfFile, svgFile)

cmd = 'inkscape %s --export-plain-svg=%s';

cmd2 = sprintf(cmd, pdfFile, svgFile);

status = system(cmd2);

if status
    
    error('could not run inkscape, make sure inkscape is in PATH and specified input/output files are accessible');
    
end

end