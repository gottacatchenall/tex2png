#! /usr/bin/env sh

tex_src="\documentclass[preview]{standalone}
    \usepackage{xcolor}
    \begin{document}
        \color{white}
        \begin{equation}
        $1 
        \end{equation}
\end{document}"


pdflatex $tex_src
convert -density 1000 texput.pdf -quality 90 out.png
rm texput.pdf texput.aux texput.log
