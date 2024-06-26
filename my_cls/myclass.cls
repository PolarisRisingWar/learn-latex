\NeedsTeXFormat{LaTeX2e}  %specify the version of LaTeX as `LaTeX2e`
\ProvidesClass{myclass}[2024/05/17 v1.0 My Custom LaTeX Class]  %define the class name and version

\LoadClass{article}  %load the article class

\newif\if@showdate
\@showdatetrue  %set the default value to true
\DeclareOption{nodate}{\@showdatefalse}  %Declare an option to hide the date

\ProcessOptions\relax

\RequirePackage{ctex}  %load the ctex package to support Chinese

% Redefine \maketitle to conditionally show date
\renewcommand{\maketitle}{
    \begin{center}
        \LARGE \@title \\
        \large \@author \\
        \if@showdate
            \@date
        \fi
    \end{center}
}