% Yachay Tech University undergraduate thesis style - Revised
% Adapted for the MSc in Physics (Fundamental Physics) following
% "Anexo 3. Formato de presentación" (posgrado), 2026.
% Based on Dr. Mowbray's class <dmowbray@yachaytech.edu.ec>
% Author: Daniel Villarruel <daniel.villarruel@yachaytech.edu.ec>

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2006/06/25]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

\LoadClass{report}

\usepackage{float}
\usepackage[percent]{overpic}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsthm}
\usepackage[UKenglish]{babel}
%\usepackage[hyphenbreaks]{breakurl}
\usepackage{color}
\usepackage{colortbl,cuted,bm}
\usepackage{enumerate}
%\usepackage{enumitem}
\usepackage{euscript}
\usepackage[T1]{fontenc}
\usepackage[symbol]{footmisc}
\usepackage[acronym,toc,style=index,nopostdot=true,nomain]{glossaries}
\usepackage{graphicx}
\usepackage[breaklinks]{hyperref}
\usepackage{makecell}
\usepackage{makeidx}
\usepackage{mathrsfs}
\usepackage[letterspace=50]{microtype}
\usepackage{multicol}
\usepackage{multirow}
\usepackage[version=4]{mhchem}
\usepackage{nicematrix}
\usepackage{newtxtext}
\RequirePackage[sort&compress]{natbib}
\usepackage{physics}
\usepackage[outercaption]{sidecap}
\usepackage{tikz}
\usepackage{twoopt}
\usepackage{units}
\usepackage{upgreek}
\usepackage{xfrac}
\usepackage{wasysym}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\usetikzlibrary{shapes,arrows,fit,decorations.pathmorphing,backgrounds,positioning,petri}

\makeindex
\makeglossary
\renewcommand{\baselinestretch}{1.5}

\setlength{\marginparwidth}{0pt}
\setlength{\marginparsep}{0pt}
\setlength{\textwidth}{6.375in}
% Centre the text block horizontally on the chosen paper (A4 for the posgrado binding)
\setlength{\oddsidemargin}{\paperwidth}
\addtolength{\oddsidemargin}{-\textwidth}
\setlength{\oddsidemargin}{0.5\oddsidemargin}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}
\raggedbottom

% ---
% Thesis specific macros
% ---


\def\@clearChapterPage{\clearpage}

\renewcommand{\cleardoublepage}{\clearpage}

\newcommand{\newPrepageEnvironment}[2]{
  \@ifundefined{#1}%
     {\let\@tempa=\newenvironment
     }{\let\@tempa=\renewenvironment}
  \@tempa{#1}{
    \clearpage
    \thispagestyle{empty} % Anexo 3: no page numbers on initial sections
    \null\vfil
    \begin{center} \textbf{\Large #2} \end{center}
  }{\par\vfil\null \clearpage}
}

\RequirePackage{fancyhdr}
\headheight 14.5 pt
\if@twoside
  \lhead[\fancyplain{}{\thepage}]%
        {\fancyplain{}{\slshape\leftmark}}
  \rhead[\fancyplain{}{\slshape{\rightmark}}]%
        {\fancyplain{}{\thepage}}
\else
    \lhead%
        {\fancyplain{}{\slshape\leftmark}}
    \rhead%
        {\fancyplain{}{\thepage}}
\fi

\cfoot[{}]%
          {\fancyplain{\thepage}{}}

\def\prepages{\pagenumbering{roman}}
\def\mainbody{
  \@clearChapterPage
  \pagenumbering{arabic}
  \pagestyle{plain} % Anexo 3: page numbers only, no additional running headers
%  \pagestyle{myheadings}
}

\bibpunct{(}{)}{;}{a}{}{,}             %% natbib format for A&A and ApJ
\definecolor{cobalt}{rgb}{0.06, 0.2, 0.65}
\hypersetup{
  colorlinks,
  citecolor=blue,
  linkcolor=black,
  urlcolor=blue,
}

\newcommand{\apjs}{ApJS}
\newcommand{\apj}{ApJ}
\newcommand{\apjl}{ApJ}
\newcommand{\mnras}{MNRAS}
\newcommand{\aap}{A\&A}
\newcommand{\aj}{AJ}
\newcommand{\nat}{Nature}
\newcommand{\bain}{Bull.~Astron.~Inst.~Netherlands} 
\newcommand{\araa}{ARA\&A}
\newcommand{\icarus}{Icarus}
\newcommand{\rmxaa}{RMXAA}
\newcommand{\pasp}{PASP}
\newcommand{\pasj}{PASJ}
\newcommand{\physrep}{Physics Report}

% ---
% Special pages
% ---

% TITLE PAGE

\renewcommand{\year}[1]{\gdef\@year{#1}}
\renewcommand{\month}[1]{\gdef\@month{#1}}

\newcommand{\id}[1]{\gdef\@id{#1}}
\newcommand{\school}[1]{\gdef\@school{#1}}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\fullname}[1]{\gdef\@fullname{#1}}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\renewcommand{\maketitle}{
\begin{titlepage} \setlength{\parindent}{0pt}
\let\footnotesize\small
\let\footnoterule\relax
\setcounter{page}{1}
\vfill
\begin{center}
    \includegraphics[width=7cm]{images/logos/yachay_logo.pdf}
\end{center}
\vspace*{.15cm}

\parbox{\linewidth}{
    \begin{center}
        {\LARGE {\bf\lsstyle UNIVERSIDAD DE INVESTIGACIÓN DE}}\\
        {\LARGE {\bf\lsstyle TECNOLOGÍA EXPERIMENTAL YACHAY}}\\
        \vspace*{1.0cm}
        {\Large {\bf \@school}}\\
        \vspace*{.5cm}
        {\LARGE {\bf \@title}}
    \end{center}
    \vspace*{0.5cm}
}

\parbox{\linewidth}{
    \begin{center}
        {\LARGE Trabajo de titulación presentado como requisito para la}\\\vspace{.15cm}
        {\LARGE obtención del título de \@degree}\\\vspace{.15cm}
    \end{center}
    \vspace*{0.5cm}
}

\parbox{\linewidth}{
    \begin{center}
        {\Large {\bf Autor:}}\\
        \vspace*{.25cm}
        {\Large \lineskip .75em
            \begin{tabular}[t]{c} \@author \end{tabular}
        } \\
        \vspace*{0.5cm}
        {\Large {\bf Tutor:}}\\
        \vspace*{.25cm}
        {\Large \lineskip .75em
            \begin{tabular}[t]{c} \@supervisor \end{tabular}
        } \\
        \vspace*{1.0cm}
    \end{center}
    \vfill
}

\parbox{\linewidth}{
    \begin{center}
        {\Large Urcuquí, \@month\,de\,\@year}
    \end{center}
}

\end{titlepage}
    \setcounter{footnote}{0}
    \let\thanks\relax
    \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax
}

% AUTHORSHIP

\def\authorshippage{
\clearpage
\setcounter{page}{2}
\noindent\parbox{\linewidth}{
     \begin{center}
        {\LARGE {\bf Autoría}}\\
        \vspace*{1cm}        
    \end{center}
}

\noindent\parbox{\linewidth}{
    Yo, {\bf \@fullname}, con cédula de identidad \@id, declaro que las ideas, juicios, valoraciones, interpretaciones, consultas bibliográficas, definiciones y conceptualizaciones expuestas en el presente trabajo, así como los procedimientos y/o herramientas utilizadas en la investigación, son de absoluta responsabilidad de el/la autor/a del trabajo de titulación. Así mismo, me acojo a los reglamentos internos de la Universidad de Investigación de Tecnología Experimental Yachay.\\
    \vspace*{0.5cm}
    
    San Miguel de Urcuquí, \@month \,de\, \@year\\
    \vspace*{2cm}
}

\noindent\parbox{\linewidth}{
    \begin{center}
        \rule[0mm]{60mm}{0.1mm}\\
        \@fullname\\
        CI. \@id
    \end{center}
}

\thispagestyle{empty}

}

% PUBLICATION

\def\publicationpage{
\clearpage
\setcounter{page}{3}
\noindent\parbox{\linewidth}{
     \begin{center}
        {\LARGE {\bf Autorización de Publicación}}\\
        \vspace*{1cm}        
    \end{center}
}

\noindent\parbox{\linewidth}{
    Yo, {\bf \@fullname}, con cédula de identidad \@id, cedo a la Universidad de Investigación de Tecnología Experimental Yachay los derechos de publicación de la presente obra, sin que deba existir un reconocimiento económico por este concepto. Declaro además que el texto del presente trabajo de titulación no podrá ser cedido a ninguna empresa editorial para su publicación u otros fines sin contar previamente con la autorización escrita de la Universidad.\\

    Asimismo, autorizo a la Universidad que realice la digitalización y publicación de este trabajo de titulación en el repositorio virtual, de conformidad a lo dispuesto en el Art. 144 de la Ley Orgánica de Educación Superior; así como también al Artículo 114 del Código Orgánico de la Economía Social de los Conocimientos, Creatividad e Innovación.\\\vspace*{0.5cm}
    
    San Miguel de Urcuquí, \@month \,de\, \@year\\
    \vspace*{2cm}
}

\noindent\parbox{\linewidth}{
    \begin{center}
        \rule[0mm]{60mm}{0.1mm}\\
        \@fullname\\
        CI. \@id
    \end{center}
}

\thispagestyle{empty}

}

% DEDICATION
\newPrepageEnvironment{dedication}{Dedicatoria}

% ACKNOWLEDGEMENT
\newPrepageEnvironment{acknowledgements}{Agradecimiento}

% RESUMEN
\newPrepageEnvironment{resumen}{Resumen}

% ABSTRACT
\newPrepageEnvironment{abstract}{Abstract}

% BIBLIOGRAPHY
\def\thebibliography#1{\chapter*{Bibliography\@mkboth
  {BIBLIOGRAPHY}{BIBLIOGRAPHY}}\addcontentsline{toc}{chapter}{Bibliography}\list
  {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \usecounter{enumi}}
    \def\newblock{\hskip .11em plus .33em minus .07em}
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax}

% Allow an empty bibliography (no citations yet) without errors
\def\endthebibliography{\if@newlist\item[]\fi\endlist}