function handles = drawSlots( handles, slots, marks )
%DRAWSLOTS Draw slots

for i = 1:size(slots,1)
    if slots(i,1)>size(marks,1)||slots(i,2)>size(marks,1)
        set(handles.TableInfo, 'String', 'Invalid Point in Table');
        continue;
    end
    
    x1 = marks(slots(i,1),1);
    y1 = marks(slots(i,1),2);
    x2 = marks(slots(i,2),1);
    y2 = marks(slots(i,2),2);
    x3 = marks(slots(i,3),1);
    y3 = marks(slots(i,3),2);
    x4 = marks(slots(i,4),1);
    y4 = marks(slots(i,4),2);
    
    x5 = (x1+x2)/2;
    y5 = (y1+y2)/2;
    x6 = (x3+x4)/2;
    y6 = (y3+y4)/2;
    
    vec1 = [x2-x1, y2-y1]*[0, -1; 1, 0];
    sideLength1 = norm(vec1);
    vec1 = vec1 / norm(vec1);
    
    vec2 = [x4-x3, y4-y3]*[0, -1; 1, 0];
    sideLength2 = norm(vec2);
    vec2 = vec2 / norm(vec2);
    
    vec = [x6-x5, y6-y5]*[0, -1; 1, 0];
    sideLength = norm(vec);
    vec = vec / norm(vec);

    handles.markLines = [handles.markLines;...
        plot([x1*3/2-x2/2-vec1(1)*sideLength1/4, x1*3/2-x2/2+vec1(1)*sideLength1/4],[y1*3/2-y2/2-vec1(2)*sideLength1/4, y1*3/2-y2/2+vec1(2)*sideLength1/4],  'k', 'LineWidth', 1),...
        plot([x2*3/2-x1/2-vec1(1)*sideLength1/4, x2*3/2-x1/2+vec1(1)*sideLength1/4],[y2*3/2-y1/2-vec1(2)*sideLength1/4, y2*3/2-y1/2+vec1(2)*sideLength1/4],  'k', 'LineWidth', 1),...
        plot([x1*3/2-x2/2+vec1(1)*sideLength1/4, x2*3/2-x1/2+vec1(1)*sideLength1/4],[y1*3/2-y2/2+vec1(2)*sideLength1/4, y2*3/2-y1/2+vec1(2)*sideLength1/4], 'k', 'LineWidth', 1),...
        plot([x1*3/2-x2/2-vec1(1)*sideLength1/4, x2*3/2-x1/2-vec1(1)*sideLength1/4],[y1*3/2-y2/2-vec1(2)*sideLength1/4, y2*3/2-y1/2-vec1(2)*sideLength1/4], 'k', 'LineWidth', 1),...
        plot([x3*3/2-x4/2-vec2(1)*sideLength2/4, x3*3/2-x4/2+vec2(1)*sideLength2/4],[y3*3/2-y4/2-vec2(2)*sideLength2/4, y3*3/2-y4/2+vec2(2)*sideLength2/4],  'k', 'LineWidth', 1),...
        plot([x4*3/2-x3/2-vec2(1)*sideLength2/4, x4*3/2-x3/2+vec2(1)*sideLength2/4],[y4*3/2-y3/2-vec2(2)*sideLength2/4, y4*3/2-y3/2+vec2(2)*sideLength2/4],  'k', 'LineWidth', 1),...
        plot([x3*3/2-x4/2+vec2(1)*sideLength2/4, x4*3/2-x3/2+vec2(1)*sideLength2/4],[y3*3/2-y4/2+vec2(2)*sideLength2/4, y4*3/2-y3/2+vec2(2)*sideLength2/4], 'k', 'LineWidth', 1),...
        plot([x3*3/2-x4/2-vec2(1)*sideLength2/4, x4*3/2-x3/2-vec2(1)*sideLength2/4],[y3*3/2-y4/2-vec2(2)*sideLength2/4, y4*3/2-y3/2-vec2(2)*sideLength2/4], 'k', 'LineWidth', 1),...
        plot([x5*7/4-x6*3/4-vec(1)*sideLength/2, x5*7/4-x6*3/4-vec(1)*sideLength*3],[y5*7/4-y6*3/4-vec(2)*sideLength/2, y5*7/4-y6*3/4-vec(2)*sideLength*3],  'k', 'LineWidth', 1),...
        plot([x6*7/4-x5*3/4-vec(1)*sideLength/2, x6*7/4-x5*3/4-vec(1)*sideLength*3],[y6*7/4-y5*3/4-vec(2)*sideLength/2, y6*7/4-y5*3/4-vec(2)*sideLength*3],  'k', 'LineWidth', 1),...
        plot([x5*7/4-x6*3/4-vec(1)*sideLength/2, x6*7/4-x5*3/4-vec(1)*sideLength/2],[y5*7/4-y6*3/4-vec(2)*sideLength/2, y6*7/4-y5*3/4-vec(2)*sideLength/2], 'k', 'LineWidth', 1),...
        plot([x5*7/4-x6*3/4-vec(1)*sideLength*3, x6*7/4-x5*3/4-vec(1)*sideLength*3],[y5*7/4-y6*3/4-vec(2)*sideLength*3, y6*7/4-y5*3/4-vec(2)*sideLength*3], 'k', 'LineWidth', 1)];
    set(handles.TableInfo, 'String', '');
end

end

