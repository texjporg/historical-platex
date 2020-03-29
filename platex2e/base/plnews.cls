\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{plnews}[1997/02/01 v1.0a Standard pLaTeX class]

\InputIfFileExists{polnews.cfg}%
  {\ClassInfo{plnews}{Using local configuration file}}%
  {\ClassInfo{plnews}{No local configuration file}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{plnews}}
\ProcessOptions
\LoadClass[a4j,twocolumn,oneside]{jarticle}
\RequirePackage{shortvrb}
\MakeShortVerb{\|}
\setlength{\footskip}{15mm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \maketitle parameters.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\title{p\LaTeX~�˥塼��}
\newcommand{\@titlefont}{\normalfont\Huge}

\newcommand{\publicationmonth}{\renewcommand{\@month}}
\newcommand{\@month}{\ClassError{ltnews}
   {No \protect\publicationmonth~given}\@eha}

\newcommand{\publicationyear}{\renewcommand{\@year}}
\newcommand{\@year}{\ClassError{ltnews}
   {No \protect\publicationyear~given}\@eha}

\newcommand{\publicationissue}{\renewcommand{\@issue}}
\newcommand{\@issue}{\ClassError{ltnews}
   {No \protect\publicationissue~given}\@eha}
\newcommand{\issuename}{Issue}

\renewcommand{\maketitle}{%
   \twocolumn[{%
      \parbox[t][7\baselineskip]{\textwidth}{%
         \@titlefont\@title\hspace{3mm}%
         \normalsize ��{\@issue}��\\[\medskipamount]
         \normalfont{\@year}ǯ{\@month}��~ȯ��\\
         �����ԡ�\@author
      }%
   }]%
}

\newcommand{\ps@titlepage}{%
   \renewcommand{\@oddhead}{\hfill}%
   \renewcommand{\@evenhead}{\hfill}%
   \renewcommand{\@oddfoot}{\@title~��{\@issue}��\hfil\thepage}%
   \renewcommand{\@evenfoot}{\@title~��{\@issue}��\hfil\thepage}%
}
\pagestyle{titlepage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sectioning
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\section}{%
    \@startsection{section}{1}{\z@}
       {1.5\Cvs \@plus.6\Cdp \@minus.2\Cdp}%
       {.5\Cvs \@plus.3\Cdp}{\reset@font\Large\bfseries}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% misc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\file#1{\textsf{#1}}
\def\option#1{\texttt{#1}}

\endinput