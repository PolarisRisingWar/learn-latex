\NeedsTeXFormat{LaTeX2e}  %specify the version of LaTeX as `LaTeX2e`
\ProvidesClass{conveyoptions}[2024/05/17 v1.0 My Custom LaTeX Class for Teaching How to Covey Options]  %define the class name and version

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

\ProcessOptions\relax

\LoadClass{ctexbook}  %load the article class

\newif\if@showdate
\@showdatetrue  %set the default value to true
\DeclareOption{nodate}{\@showdatefalse}  %Declare an option to hide the date

\ProcessOptions\relax

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