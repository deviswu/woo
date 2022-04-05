# pdf文件 拼接问题
```
\documentclass[a4paper]{article}
\usepackage{pdfpages}
\begin{document}
\includepdfmerge{1.pdf,1-3}
\includepdfmerge{2.pdf,5-13}
\end{document}
```
直接输入页码即可选择性地引用原pdf内容。
