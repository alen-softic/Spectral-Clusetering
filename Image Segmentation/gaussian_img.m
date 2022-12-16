function W = gaussian_img(I,s,r,f)
%Gauss_img The input is an image 'I' of dimensions [h,w,3], Gaussian distance parameter sigma 's' 
% a cutoff radius 'r' and a featuredistance parameter 'f'. s=0 is allowed
% and means no distance
% The output is an adjacency matrix of a waighted graph

[h,w,~]=size(I);
n=h*w;
W=zeros(n); %initialize the adjacency matrix of a wighted graph



J=reshape(rgb2oklab(double(I)),n,3); 
% matricize the image using oklab for better colour differentiation
if s==0
        
            for x=1:n
            for y=(x+1):n
                % What ore the original indices of vertices x and y?
                fx=floor(x/h);
                jx=fx+ (mod(x,h)>0);
                ix=x-h*fx + h*(mod(x,h)==0);
        
                fy=floor(y/h);
                jy=fy+ (mod(y,h)>0);
                iy=y-h*fy + h*(mod(y,h)==0);
        
                % this follows from the vec properties
        
                if (ix-iy)^2 + (jx-jy)^2 > r^2   % if the pixels are not close enough - continue
                    continue
                else    % otherwise, calculate their distance
                    W(x,y)=exp(-norm(J(x,:)-J(y,:))^2/f^2);
                    W(y,x)=W(x,y);
        
                end
            end
        end

else

        for x=1:n
            for y=(x+1):n
                % What ore the original indices of vertices x and y?
                fx=floor(x/h);
                jx=fx+ (mod(x,h)>0);
                ix=x-h*fx + h*(mod(x,h)==0);
        
                fy=floor(y/h);
                jy=fy+ (mod(y,h)>0);
                iy=y-h*fy + h*(mod(y,h)==0);
        
                % this follows from the vec properties
                a=(ix-iy)^2 + (jx-jy)^2;
                if a > r^2   % if the pixels are not close enough - continue
                    continue
                else    % otherwise, calculate their distance
                    W(x,y)=exp(-a/s^2-norm(J(x,:)-J(y,:))^2/f^2);
                    W(y,x)=W(x,y);
        
                end
            end
        end
        
        end


end