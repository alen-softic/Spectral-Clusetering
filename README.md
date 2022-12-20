# k-means and Multiclass Spectral Clusetering 
Alen Softic

## About this project
There are three topics in this project.
1. Classification of handwritten digits. 
+ We attempt to classify the hadwritten digits, links to which can be found in [here](https://users.mai.liu.se/larel04/matrix-methods/index.html), under the 'Computer assignments'. In the spirit of unsupervised learning, methods used are iterative k-means, relaxed k-means and spectral clustering using Gaussian kernels. While perhaps not suitable, using spectral clustering here serves only as a comparison metheod. 
2. Classification of points in R^2.
 + Using the above methods to classify 1D and 2D data, showing how spectral clusstering may be used to classify highly nonlinear data where most classification methods like LDA and QDA would fail. An app called 'Multiclass Spectral Clusetering' provides a GUI for this purpose. Gaussian kernel is used here as well.
 + **Installing the app:** 
To instal the app simply go to the 'Apps' window in MATLAB, click 'Install App' and select

'Multiclass Spectral Clusetering.mlappinstall'.
3. Image segmentation.
+ Segmeting our university logo and oliympic rings due to their interesting structure and color.

## App Images

<img width="400" alt="S1" src="https://user-images.githubusercontent.com/120649885/208684625-9a503c8d-1661-4d19-84b6-ecfe7ceb6010.png"> <img width="400" alt="S2" src="https://user-images.githubusercontent.com/120649885/208684633-fb71d301-f2cb-46bd-b169-c6e1ed2add0f.png">
<img width="400" alt="S3" src="https://user-images.githubusercontent.com/120649885/208684640-cc8ec58e-b110-43f4-a931-95a7858d0b9a.png"> <img width="400" alt="S4" src="https://user-images.githubusercontent.com/120649885/208684647-f57f5bad-2fd8-4efa-9d38-e0c368b0a20e.png">

## Get started
All of the folders are self-contained and MATLAB scripts explain the given task. For image segmentation oklab colorspace is used. The folder **'gptoolbox'** must be added to path. I found it siplest to right click on the 'gptoolbox' folder and select 

'Add to path' -> 'Selected folders and subfolders'.

For more detail visit https://github.com/alecjacobson/gptoolbox/.

## References
Some of the lireature this project is based on
+ Ulrike von Luxburg (2007) A Tutorial on Spectral Clustering, Statistics and Computing, 17 (4), 2007.
+ Stella X. Yu, Jianbo Shi (2003) Multiclass Spectral Clustering, Proceedings Ninth IEEE International Conference on Computer Vision
+ Jianbo Shi and Jitendra Malik (2000) Normalized Cuts and Image Segmentation, IEEE Transactions on Pattern Analysis and Machine Intelligence, VOL. 22, NO. 8
+ Hongyuan Zha \& Xiaofeng He, Chris Ding \& Horst Simon,  Ming Gu (2001) Spectral Relaxation for $K$-means Clustering, Advances in Neural Information Processing Systems 14 (NIPS 2001)
+ Andrew Ng, Michael Jordan, Yair Weiss (2001) On Spectral Clustering: Analysis and an algorithm, Advances in Neural Information Processing Systems 14 (NIPS 2001)



