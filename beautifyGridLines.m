% changes the style of grid lines in Matlab-generated SVGs
%
% see DOM's docs for the methods & properties of the object returned by
% xmlread:
%
% http://docs.oracle.com/javase/6/docs/api/org/w3c/dom/package-summary.html

function beautifyGridLines(svgFileIn, svgFileOut)

if nargin<1

    svgFileIn = 'e:\file.svg';
    
    svgFileOut = 'e:\test.svg';

end

if nargin == 1
    
    svgFileOut = svgFileIn;
    
end

gridLineStyle = 'fill:none;stroke:#808080;stroke-width:5;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:5, 15;stroke-dashoffset:0;stroke-opacity:1';

dom = xmlread(svgFileIn);

root = dom.getDocumentElement;

pathObjs = root.getElementsByTagName('path');

for i=1:pathObjs.getLength
    
    styleAttr = pathObjs.item(i-1).getAttributeNode('style');
    
    if ~isempty(styleAttr)
        
        styleAttrPropsStr = styleAttr.getValue;
        
        if styleAttrPropsStr.indexOf('stroke-dasharray:5, 40;') > 0
            
            % this path object is a Matlab grid line
            
            styleAttr.setValue(gridLineStyle);
            
        end

    end
 
end

xmlwrite(svgFileOut, dom);

end