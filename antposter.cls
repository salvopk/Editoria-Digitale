% This material is declared a work of the United States Government and is not
% subject to copyright protection in the United States.
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and sell copies
% of the Software, and to permit persons to whom the Software is furnished to do
% so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.
% ------------------------------------------------------------------------------
% Author: David Woodburn
% Description: business presentation template
% ------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{antposter}[2024/10/01 ANT Center Poster]
\def\@version{20241001}

% Process options.
\newif\ifdefineul\defineultrue
\DeclareOption{noul}{\defineulfalse}

\newif\ifcompassonly\compassonlyfalse
\DeclareOption{compassonly}{\compassonlytrue}
\newif\ifafit\afitfalse
\DeclareOption{afit}{\afittrue}

\def\@colortheme{1} % default color theme
\DeclareOption{blue}{\def\@colortheme{0}}
\DeclareOption{azure}{\def\@colortheme{1}}
\DeclareOption{cyan}{\def\@colortheme{2}}
\DeclareOption{green}{\def\@colortheme{3}}
\DeclareOption{lime}{\def\@colortheme{4}}
\DeclareOption{yellow}{\def\@colortheme{5}}
\DeclareOption{orange}{\def\@colortheme{6}}
\DeclareOption{red}{\def\@colortheme{7}}
\DeclareOption{magenta}{\def\@colortheme{8}}
\DeclareOption{purple}{\def\@colortheme{9}}

\def\@layouttheme{0} % default layout theme
\DeclareOption{twopart}{\def\@layouttheme{1}}

\DeclareOption*{\PackageWarning{antposter}{Unknown '\CurrentOption'}}
\ProcessOptions\relax

% Load the base class.
\ifnum\@layouttheme=0 % center
    \LoadClass[twocolumn, 10pt, fleqn]{article}
\fi
\ifnum\@layouttheme=1 % left
    \LoadClass[onecolumn, 10pt, fleqn]{article}
\fi

% Packages
\RequirePackage[T1]{fontenc} % use 8-bit fonts
\RequirePackage{geometry} % page dimensions and margins
\RequirePackage{pgfplots} % includes tikz, xcolor, graphicx
\RequirePackage{amsmath, amsfonts, amssymb} % improved math
\RequirePackage{bm} % bold math (must be after amsmath)
\RequirePackage{cancel} % strike-through in equations
\RequirePackage{upquote} % upright single quotes in verbatim
\RequirePackage{array} % custom column alignment types
\RequirePackage[absolute]{textpos} % free placement of objects
\RequirePackage{enumitem} % custom lists and list spacing
\RequirePackage{qrcode} % QR code generation
\RequirePackage{hyperref} % hyperlinks

\pgfplotsset{compat=newest}

% ----------------------
% Added content features
% ----------------------

% Standard math macros
\ifdefineul
    \newcommand{\ul}[1] % vectors
        {{}\mkern1mu\underline{\mkern-1mu#1\mkern-1mu}\mkern1mu}
\fi
\DeclareSymbolFont{euler}{U}{eur}{m}{n}     % symbol font
\DeclareMathSymbol{\PI}{\mathord}{euler}{25} % up pi

% Convenience macros
\DeclareMathOperator{\sgn}{sgn}             % sign function
\DeclareMathOperator{\tr}{tr}               % trace of a matrix
\DeclareMathOperator{\adj}{adj}             % adjugate of a matrix
\DeclareMathOperator*{\argmax}{arg\,max}    % argmax operator
\DeclareMathOperator*{\argmin}{arg\,min}    % argmin operator
\newcommand{\abs}[1]{\left\lvert#1\right\rvert} % absolute value
\newcommand{\norm}[1]{\left\lVert#1\right\rVert} % vector or matrix norm
\newcommand{\ssm}[1]{[#1]_{\rule{0pt}{1.38ex}\times}} % skew symmetric matrix
\newcommand{\diff}[2]{\frac{\mathrm{d}{#1}}{\mathrm{d}{#2}}} % derivative
\newcommand{\piff}[2]{\frac{\partial{#1}}{\partial{#2}}} % partial derivative
\newcommand{\EE}[2]{\ensuremath{{{#1}\!\times\!10^{#2}}}} % scientific notation
\newcommand{\rom}[1]{\uppercase\expandafter{\romannumeral #1\relax}}

% Upright math letters
\newcommand{\upc}[1][]{\mathrm{c}_{#1}}     % abbreviated cosine
\newcommand{\ups}[1][]{\mathrm{s}_{#1}}     % abbreviated sine
\newcommand{\upt}[1][]{\mathrm{t}_{#1}}     % abbreviated tangent
\newcommand{\upd}{\mathrm{d}}               % differential operator
\newcommand{\upe}{\mathrm{e}}               % Euler's number
\newcommand{\upi}{\mathrm{i}}               % imaginary number
\newcommand{\upj}{\mathrm{j}}               % imaginary number
\newcommand{\upk}{\mathrm{k}}               % quaternion number

% Custom colors (xcolor package)
\definecolor{blue}{RGB}{76,76,255}          % 4c4cff
\definecolor{azure}{RGB}{0,128,255}         % 0080ff
\definecolor{cyan}{RGB}{0,209,209}          % 00d1d1
\definecolor{green}{RGB}{15,180,0}          % 0fb400
\definecolor{lime}{RGB}{180,216,0}          % b4d800
\definecolor{yellow}{RGB}{255,191,0}        % ffbf00
\definecolor{orange}{RGB}{255,128,0}        % ff8000
\definecolor{red}{RGB}{255,38,38}           % ff2626
\definecolor{magenta}{RGB}{255,0,255}       % ff00ff
\definecolor{purple}{RGB}{153,51,255}       % 9933ff

\definecolor{darkblue}{RGB}{25,25,127}
\definecolor{darkazure}{RGB}{25,76,127}
\definecolor{darkcyan}{RGB}{22,112,112}
\definecolor{darkgreen}{RGB}{27,103,21}
\definecolor{darklime}{RGB}{99,114,23}
\definecolor{darkyellow}{RGB}{127,102,25}
\definecolor{darkorange}{RGB}{127,76,25}
\definecolor{darkred}{RGB}{127,25,25}
\definecolor{darkmagenta}{RGB}{127,25,127}
\definecolor{darkpurple}{RGB}{76,25,127}

% Background color
\ifnum\@colortheme=0 % blue
    \colorlet{dark}{darkblue}
\fi
\ifnum\@colortheme=1 % azure
    \colorlet{dark}{darkazure}
\fi
\ifnum\@colortheme=2 % cyan
    \colorlet{dark}{darkcyan}
\fi
\ifnum\@colortheme=3 % green
    \colorlet{dark}{darkgreen}
\fi
\ifnum\@colortheme=4 % lime
    \colorlet{dark}{darklime}
\fi
\ifnum\@colortheme=5 % yellow
    \colorlet{dark}{darkyellow}
\fi
\ifnum\@colortheme=6 % orange
    \colorlet{dark}{darkorange}
\fi
\ifnum\@colortheme=7 % red
    \colorlet{dark}{darkred}
\fi
\ifnum\@colortheme=8 % magenta
    \colorlet{dark}{darkmagenta}
\fi
\ifnum\@colortheme=9 % purple
    \colorlet{dark}{darkpurple}
\fi

% Arbitrary object placement (textpos package)
\newcommand{\pos}[4][]{%
    \if\relax\detokenize{#1}\relax
        \sbox{\@tempboxa}{#4}
        \begin{textblock*}{\wd\@tempboxa}(#2,#3)
            \usebox{\@tempboxa}
        \end{textblock*}
    \else
        \begin{textblock*}{#1}(#2,#3)
            #4
        \end{textblock*}
    \fi}

% ---------------------------
% General document formatting
% ---------------------------

% Default plot settings
\pgfplotsset{%
    tick label style={font=\scriptsize\sffamily},
    every axis label={font=\sffamily},
    legend style={font=\tiny\sffamily},
    label style={font=\sffamily},
    nodes near coords style=
        {font=\scriptsize,/pgf/number format/assume math mode}
}

% Page style
\pagestyle{empty}

% Paper height and width
\newlength{\@Height}\setlength{\@Height}{27.94cm}
\newlength{\@Width}\setlength{\@Width}{1.41421356\@Height}
\newlength{\@Margin}\setlength{\@Margin}{1cm}
% Abstract margin
\newlength{\@abMargin}\setlength{\@abMargin}{1.5cm}
\newlength{\@abModMargin}\setlength{\@abModMargin}{\@abMargin}
\addtolength{\@abModMargin}{-0.105cm}

% Define the layouts.
\ifnum\@layouttheme=0 % center
    % Abstract x and y position (top-left corner)
    \newlength{\@abX}\setlength{\@abX}{0.25\@Width}
    \newlength{\@abY}\setlength{\@abY}{0cm}
    % Abstract width, textblock width, and height
    \newlength{\@abWidth}\setlength{\@abWidth}{0.5\@Width}
    \newlength{\@abMini}\setlength{\@abMini}{\@abWidth}
    \addtolength{\@abMini}{-0.2cm}
    \newlength{\@abHeight}\setlength{\@abHeight}{\@Height}
    % QR code height and x and y position (top-left corner)
    \newlength{\@qrHeight}\setlength{\@qrHeight}{2.5cm}
    \newlength{\@qrX}\setlength{\@qrX}{\@abX}
    \addtolength{\@qrX}{\@abMargin}
    \newlength{\@qrY}\setlength{\@qrY}{\@abHeight}
    \addtolength{\@qrY}{-\@abMargin}
    \addtolength{\@qrY}{-\@qrHeight}
    % Abstract inner height, inner width, and inner X position.
    \newlength{\@abInnerHeight}\setlength{\@abInnerHeight}{\@abHeight}
    \addtolength{\@abInnerHeight}{-3\@abMargin}
    \addtolength{\@abInnerHeight}{-\@qrHeight}
    \newlength{\@abInnerWidth}\setlength{\@abInnerWidth}{\@abWidth}
    \addtolength{\@abInnerWidth}{-2\@abMargin}
    % Author x position, width, and color
    \newlength{\@authorIX}\setlength{\@authorIX}{\@abX}
    \addtolength{\@authorIX}{\@abMargin}
    \newlength{\@authorIIX}\setlength{\@authorIIX}{\@authorIX}
    \newlength{\@authorWidth}\setlength{\@authorWidth}{\@abInnerWidth}
    \addtolength{\@authorWidth}{-2\@qrHeight}
    \addtolength{\@authorWidth}{-\@Margin} % margins from QR and logo
    \colorlet{authorColor}{white}
    % Author y positions
    \newlength{\@authorIY}\setlength{\@authorIY}{\@qrY}
    \addtolength{\@authorIY}{-0.18cm}
    \newlength{\@authorIVY}\setlength{\@authorIVY}{\@qrY}
    \addtolength{\@authorIVY}{\@qrHeight}
    \addtolength{\@authorIVY}{-0.525cm}
    \newlength{\@authorSpan}\setlength{\@authorSpan}{\@authorIVY}
    \addtolength{\@authorSpan}{-\@authorIY}
    \newlength{\@authorSep}\setlength{\@authorSep}{0.3333\@authorSpan}
    \newlength{\@authorIIY}\setlength{\@authorIIY}{\@authorIY}
    \addtolength{\@authorIIY}{\@authorSep}
    \newlength{\@authorIIIY}\setlength{\@authorIIIY}{\@authorIIY}
    \addtolength{\@authorIIIY}{\@authorSep}
    % Logo x and y positions
    \newlength{\@logoX}\setlength{\@logoX}{25.50392cm}
    \newlength{\@logoY}\setlength{\@logoY}{23.94cm}
    \newlength{\@afitX}\setlength{\@afitX}{23.1348cm}
    \newlength{\@afitY}\setlength{\@afitY}{24.58cm}
    \newlength{\@compassX}\setlength{\@compassX}{25.28cm}
    \newlength{\@compassY}\setlength{\@compassY}{23.59cm}
    \newlength{\@antAfitX}\setlength{\@antAfitX}{25.50392cm}
    \newlength{\@antAfitY}\setlength{\@antAfitY}{23.80917cm}
    % Overall paper geometry
    \newlength{\@columnSep}\setlength{\@columnSep}{0.5\@Width}
    \addtolength{\@columnSep}{2cm}
    \geometry{
        paperwidth=\@Width,
        paperheight=\@Height,
        margin=\@Margin,
        columnsep=21.7565cm}
\fi
\ifnum\@layouttheme=1 % left
    % Abstract x and y position (top-left corner)
    \newlength{\@abX}\setlength{\@abX}{0cm}
    \newlength{\@abY}\setlength{\@abY}{0cm}
    % Abstract width, textblock width, and height
    \newlength{\@abWidth}\setlength{\@abWidth}{0.38197\@Width}
    \newlength{\@abMini}\setlength{\@abMini}{\@abWidth}
    \addtolength{\@abMini}{-0.25cm}
    \newlength{\@abHeight}\setlength{\@abHeight}{\@Height}
    % QR code height and x and y position (top-left corner)
    \newlength{\@qrHeight}\setlength{\@qrHeight}{2.5cm}
    \newlength{\@qrX}\setlength{\@qrX}{\@abX}
    \addtolength{\@qrX}{\@abMargin}
    \newlength{\@qrY}\setlength{\@qrY}{\@abHeight}
    \addtolength{\@qrY}{-\@abMargin}
    \addtolength{\@qrY}{-\@qrHeight}
    % Abstract inner height, inner width, and inner X position.
    \newlength{\@abInnerHeight}\setlength{\@abInnerHeight}{\@abHeight}
    \addtolength{\@abInnerHeight}{-3\@abMargin}
    \addtolength{\@abInnerHeight}{-\@qrHeight}
    \newlength{\@abInnerWidth}\setlength{\@abInnerWidth}{\@abWidth}
    \addtolength{\@abInnerWidth}{-2\@abMargin}
    % Author x position, width, and color
    \newlength{\@authorIX}\setlength{\@authorIX}{\@abWidth}
    \addtolength{\@authorIX}{\@Margin}
    \newlength{\@authorIIX}\setlength{\@authorIIX}{27.3028cm}
    \newlength{\@authorWidth}\setlength{\@authorWidth}{10cm}
    \colorlet{authorColor}{black}
    % Author y positions
    \newlength{\@authorIY}\setlength{\@authorIY}{25.696536cm}
    \newlength{\@authorIIY}\setlength{\@authorIIY}{26.415023cm}
    \newlength{\@authorIIIY}\setlength{\@authorIIIY}{25.696536cm}
    \newlength{\@authorIVY}\setlength{\@authorIVY}{26.415023cm}
    % Logo x and y positions
    \newlength{\@logoX}\setlength{\@logoX}{10.96175cm}
    \newlength{\@logoY}\setlength{\@logoY}{23.94cm}
    \newlength{\@afitX}\setlength{\@afitX}{8.59263cm}
    \newlength{\@afitY}\setlength{\@afitY}{24.58cm}
    \newlength{\@compassX}\setlength{\@compassX}{10.73783cm}
    \newlength{\@compassY}\setlength{\@compassY}{23.59cm}
    \newlength{\@antAfitX}\setlength{\@antAfitX}{10.96175cm}% 25.50392cm
    \newlength{\@antAfitY}\setlength{\@antAfitY}{23.80917cm}% 23.80917cm
    % Overall paper geometry
    \newlength{\@leftMargin}\setlength{\@leftMargin}{\@abWidth}
    \addtolength{\@leftMargin}{\@Margin}
    \newlength{\@bottomMargin}\setlength{\@bottomMargin}{2\@Margin}
    \addtolength{\@bottomMargin}{0.5\@qrHeight}
    \geometry{
        paperwidth=\@Width,
        paperheight=\@Height,
        margin=\@Margin, lmargin=\@leftMargin, bmargin=\@bottomMargin}
\fi

% Paragraph parameters
\renewcommand{\sfdefault}{qhv} % TeX Gyre Heros (like Helvetica)
\setlength{\parindent}{0pt} % indentation of first line of paragraphs
\setlength{\parskip}{1.2ex plus 6pt} % space between paragraphs
\setlength{\emergencystretch}{\hsize} % overfull avoidance
\overfullrule=1mm % overfull black bands
\raggedbottom % page-ending empty space allowed

% Reduce list spacing (enumitem package).
\setlist{
    itemindent=0pt,
    labelsep=0.2cm,
    labelwidth=0.4cm,
    leftmargin=0.6cm,
    topsep=0pt,
    parsep=0.5\parskip,
    itemsep=0.5\parskip,
    before=\raggedright}

% Reduce spacing of other environments (enumitem package).
\setlist[trivlist]{topsep=0pt}

% Hyperlink styling
\hypersetup{
    colorlinks=false, hidelinks,
    hypertexnames=false}

% Remove pdf image warnings.
\pdfsuppresswarningpagegroup=1

% Use French spacing.
\frenchspacing

% headings
\renewcommand{\section}[1]{\vspace{0.5cm}%
    {\sffamily\large\bfseries{#1}}%
    \vspace{0.125cm}}
\renewcommand{\subsection}[1]{\vspace{0.25cm}%
    {\sffamily\large\itshape{#1}}%
    \vspace{0.125cm}}
\renewcommand{\subsubsection}[1]{\vspace{0.25cm}%
    {\sffamily\bfseries{#1}}%
    \vspace{0.125cm}}

% Preamble metadata
\def\@title{}\renewcommand{\title}[1]{\def\@title{#1}}
\def\@subtitle{}\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\def\@author{}\renewcommand{\author}[1]{\def\@author{#1}}
\newif\ifsecondauthor\secondauthorfalse
\def\@secondauthor{}
\newcommand{\secondauthor}[1]{\secondauthortrue\def\@secondauthor{#1}}
\newif\ifthirdauthor\thirdauthorfalse
\def\@thirdauthor{}
\newcommand{\thirdauthor}[1]{\thirdauthortrue\def\@thirdauthor{#1}}
\newif\iffourthauthor\fourthauthorfalse
\def\@fourthauthor{}
\newcommand{\fourthauthor}[1]{\fourthauthortrue\def\@fourthauthor{#1}}
\newif\ifuseqr\useqrfalse
\def\@qrdata{}\newcommand{\qrdata}[1]{\useqrtrue\def\@qrdata{#1}}
\def\@abstract{}\renewcommand{\abstract}[1]{\def\@abstract{#1}}
\newif\ifcustomlogo\customlogofalse
\def\@customlogo{}\newcommand{\logo}[1]{\customlogotrue\def\@customlogo{#1}}

% maketitle
\newlength{\authorpos}
\renewcommand{\maketitle}{%
    % Abstract
    \begin{textblock*}{\@abWidth}(\@abX,\@abY)% {w}(x,y)
        \colorbox{dark}{% set the color
        \begin{minipage}[t][\@abHeight][t]{\@abMini}% used to create margins
            \vspace{\@abModMargin}\hspace{\@abModMargin}% 1.5 cm margins
            \begin{minipage}[t][\@abInnerHeight][t]{\@abInnerWidth}% content
                \color{white}\sffamily\raggedright%
                \sffamily\fontsize{17pt}{25pt}\selectfont%
                \@abstract%
            \end{minipage}
        \end{minipage}}
    \end{textblock*}%
    % QR code
    \ifuseqr
        \begin{textblock*}{\@qrHeight}(\@qrX,\@qrY)
            \textcolor{dark!20!white}{\qrcode[height=\@qrHeight]{\@qrdata}}
        \end{textblock*}
        \ifnum\@layouttheme=0 % center
            \addtolength{\@authorIX}{\@qrHeight}
            \addtolength{\@authorIX}{0.5cm} % margin from QR code
            \addtolength{\@authorIIX}{\@qrHeight}
            \addtolength{\@authorIIX}{0.5cm} % margin from QR code
        \fi
    \fi
    % Authors
    \ifsecondauthor
        \begin{textblock*}{\@authorWidth}(\@authorIX,\@authorIY)
            {\sffamily\color{authorColor}%
            \parbox[b]{0.8cm}{\raggedleft\tiny FIRST\\AUTHOR}
            \,\fontsize{13.2pt}{15pt}\selectfont%
            \MakeUppercase{\@author}}
        \end{textblock*}
        \begin{textblock*}{\@authorWidth}(\@authorIX,\@authorIIY)
            {\sffamily\color{authorColor}%
            \parbox[b]{0.8cm}{\raggedleft\tiny SECOND\\AUTHOR}
            \,\fontsize{13.2pt}{15pt}\selectfont%
            \MakeUppercase{\@secondauthor}}
        \end{textblock*}
        \ifthirdauthor
            \begin{textblock*}{\@authorWidth}(\@authorIIX,\@authorIIIY)
                {\sffamily\color{authorColor}%
                \parbox[b]{0.8cm}{\raggedleft\tiny THIRD\\AUTHOR}
                \,\fontsize{13.2pt}{15pt}\selectfont%
                \MakeUppercase{\@thirdauthor}}
            \end{textblock*}
            \iffourthauthor
                \begin{textblock*}{\@authorWidth}(\@authorIIX,\@authorIVY)
                    {\sffamily\color{authorColor}%
                    \parbox[b]{0.8cm}{\raggedleft\tiny FOURTH\\AUTHOR}
                    \,\fontsize{13.2pt}{15pt}\selectfont%
                    \MakeUppercase{\@fourthauthor}}
                \end{textblock*}
            \fi
        \fi
    \else
        \begin{textblock*}{\@authorWidth}(\@authorIX,\@authorIY)
            {\sffamily\color{authorColor}%
            \parbox[b]{0.8cm}{\raggedleft\tiny AUTHOR\\\,}
            \,\fontsize{13.2pt}{15pt}\selectfont%
            \MakeUppercase{\@author}}
        \end{textblock*}
    \fi
    
    % FIXME Remove spacing blocks
    %\ifnum\@layouttheme=0 % center
    %    \begin{textblock*}{\@abMargin}(9.8782817cm,0cm)
    %        \tikz{\fill[white, opacity=0.1]
    %            (-0.75,0) rectangle (0.75,\@abHeight);}
    %    \end{textblock*}
    %    \begin{textblock*}{\@abMargin}(28.134845cm,0cm)
    %        \tikz{\fill[white, opacity=0.1]
    %            (-0.75,0) rectangle (0.75,\@abHeight);}
    %    \end{textblock*}
    %\fi
    %\ifnum\@layouttheme=1 % left
    %    \begin{textblock*}{\@abMargin}(0cm,0cm)
    %        \tikz{\fill[white, opacity=0.1]
    %            (-0.75,0) rectangle (0.75,\@abHeight);}
    %    \end{textblock*}
    %    \begin{textblock*}{\@abMargin}(13.59267cm,0cm)
    %        \tikz{\fill[white, opacity=0.1]
    %            (-0.75,0) rectangle (0.75,\@abHeight);}
    %    \end{textblock*}
    %\fi
    % Title and subtitle
    {%
        \sffamily\raggedright%
        \itshape\LARGE\textbf{\@title}\\[0.5cm]
        \itshape\Large\@subtitle\vspace{0.25cm}}%
    }
