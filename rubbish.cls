\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rubbish}[2026/02/17 Official Rubbish Journal LaTeX Class]
\LoadClass[10pt]{article}

%% ================================================================
%%  RUBBISH JOURNAL — LaTeX Document Class
%%  https://github.com/arnold117/rubbish-template
%% ================================================================

%% ========== Required Packages ==========
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb}
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{indentfirst}
\RequirePackage{booktabs}
\RequirePackage{listings}
\RequirePackage{fontspec}   % Requires XeLaTeX
\RequirePackage{xeCJK}      % CJK support
\tcbuselibrary{skins,breakable}

%% ========== Fonts ==========
\setmainfont{Times New Roman}
\newfontfamily\bodyfont{Baskerville}[
  ItalicFont=Baskerville-Italic,
  BoldFont=Baskerville-Bold,
]                                            % macOS built-in; Overleaf: use TeX Gyre Pagella
\newfontfamily\georgiafont{Georgia}
\setCJKmainfont{PingFang SC}      % macOS default; SimSun (Windows), Noto Serif CJK SC (Linux)
\setCJKmonofont{PingFang SC}     % Suppress xeCJK monofont warning

%% ========== Page Geometry ==========
\geometry{
  a4paper,
  left=1.5cm,
  right=1.5cm,
  top=2.0cm,
  bottom=2.0cm,
  headheight=15pt
}

%% ========== Colors (from original .doc template: #007146) ==========
\definecolor{rubbishgreen}{HTML}{007146}
\definecolor{abstractbg}{RGB}{230,243,235}
\definecolor{linkblue}{HTML}{000080}

%% ========== Hyperlink Setup ==========
\hypersetup{
  colorlinks=true,
  linkcolor=linkblue,
  citecolor=linkblue,
  urlcolor=linkblue
}

%% ========== Code Listing Style ==========
\lstset{
  basicstyle=\ttfamily\small,
  breaklines=true,
  frame=single,
  rulecolor=\color{rubbishgreen!40},
  backgroundcolor=\color{abstractbg},
  keywordstyle=\color{rubbishgreen}\bfseries,
}

%% ========== Header and Footer ==========
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[L]{%
  {\footnotesize\color{rubbishgreen}\textit{Rubbish}\,}%
  {\footnotesize| Volume XX | February 2026 | XXXX}%
}
\fancyfoot[R]{\footnotesize\textbf{PAGE \thepage}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyfoot[L]{\footnotesize\textbf{PAGE \thepage}}
  \fancyfoot[R]{%
    {\footnotesize\color{rubbishgreen}\textit{Rubbish}\,}%
    {\footnotesize| Volume XX | February 2026 | XXXX}%
  }
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}

%% ========== Section Formatting (bold italic green) ==========
\titleformat{\section}
  {\normalfont\fontsize{12}{14}\selectfont\bfseries\itshape\color{rubbishgreen}}
  {\thesection}{0.5em}{}
\titlespacing{\section}{0pt}{12pt plus 2pt minus 1pt}{4pt plus 1pt minus 1pt}

\titleformat{\subsection}
  {\normalfont\fontsize{10.5}{13}\selectfont\bfseries\itshape\color{rubbishgreen}}
  {\thesubsection}{0.5em}{}
\titlespacing{\subsection}{0pt}{8pt plus 2pt minus 1pt}{3pt plus 1pt minus 1pt}

\titleformat{\subsubsection}
  {\normalfont\fontsize{9}{11}\selectfont\bfseries\itshape\color{rubbishgreen}}
  {\thesubsubsection}{0.5em}{}
\titlespacing{\subsubsection}{0pt}{6pt plus 1pt minus 1pt}{2pt plus 1pt minus 1pt}

%% ========== Body Text ==========
\setlength{\parindent}{21pt}

%% ================================================================
%%  METADATA INTERFACE
%%  Use these commands in the preamble of your .tex file.
%% ================================================================

%% Internal storage
\newcommand{\@rubbishtitle}{Untitled}
\newcommand{\@rubbishmid}{MID: xx.xxxx/xxxx}
\newcommand{\@rubbishreceived}{Received 00th January 20xx,}
\newcommand{\@rubbishaccepted}{Accepted 00th January 20xx}
\newcommand{\@rubbishtype}{Research Article}
\newcommand{\@rubbishaccess}{Open Access}
\newcommand{\@rubbishauthors}{Author Name\textsuperscript{1}}
\newcommand{\@rubbishaffiliations}{%
  \textsuperscript{1}Institution%
}
\newcommand{\@rubbishkeywords}{keyword one; keyword two}

%% Public setters
\newcommand{\rubbishtitle}[1]{\renewcommand{\@rubbishtitle}{#1}}
\newcommand{\rubbishmid}[1]{\renewcommand{\@rubbishmid}{#1}}
\newcommand{\rubbishreceived}[1]{\renewcommand{\@rubbishreceived}{#1}}
\newcommand{\rubbishaccepted}[1]{\renewcommand{\@rubbishaccepted}{#1}}
\newcommand{\rubbishtype}[1]{\renewcommand{\@rubbishtype}{#1}}
\newcommand{\rubbishaccess}[1]{\renewcommand{\@rubbishaccess}{#1}}
\newcommand{\rubbishauthors}[1]{\renewcommand{\@rubbishauthors}{#1}}
\newcommand{\rubbishaffiliations}[1]{\renewcommand{\@rubbishaffiliations}{#1}}
\newcommand{\rubbishkeywords}[1]{\renewcommand{\@rubbishkeywords}{#1}}

%% ================================================================
%%  TITLE BLOCK — \makerubbishtitle
%%  Renders logo, info box, title, authors.
%%  Affiliations are placed directly below the author names.
%% ================================================================
\newcommand{\makerubbishtitle}{%
  \thispagestyle{firstpage}%
  %% --- Logo + Info Box ---
  \noindent
  \begin{minipage}[t]{0.55\textwidth}
    \vspace{0pt}%
    \includegraphics[width=3.5cm]{logo.png}%
  \end{minipage}%
  \hfill
  \begin{minipage}[t]{0.40\textwidth}
    \vspace{0pt}%
    \begin{tcolorbox}[
      colback=abstractbg,
      colframe=rubbishgreen,
      boxrule=0pt,
      leftrule=3pt,
      arc=0pt,
      left=10pt, right=10pt, top=8pt, bottom=8pt,
      fontupper=\small
    ]
      \textbf{\@rubbishaccess}\\[2pt]
      \textbf{\@rubbishtype}\\[4pt]
      \@rubbishreceived\\
      \@rubbishaccepted\\[4pt]
      {\color{rubbishgreen}\textbf{\@rubbishmid}}
    \end{tcolorbox}
  \end{minipage}
  \vspace{14pt}
  %% --- Journal Name ---
  {\noindent\fontsize{48}{52}\selectfont\bfseries\color{rubbishgreen}RUBBISH\par}
  \vspace{6pt}
  %% --- Article Title ---
  {\noindent\fontsize{18}{22}\selectfont\bfseries \@rubbishtitle\par}
  \vspace{8pt}
  %% --- Author Names ---
  {\noindent\fontsize{10.5}{13}\selectfont\@rubbishauthors\par}
  \vspace{3pt}
  %% --- Affiliations ---
  {\noindent\fontsize{9}{11}\selectfont\@rubbishaffiliations\par}
  \vspace{10pt}
}

%% ================================================================
%%  ABSTRACT ENVIRONMENT — \begin{rubbishabstract} ... \end{rubbishabstract}
%%  Renders the green-accented abstract box followed by keywords.
%% ================================================================
\newenvironment{rubbishabstract}{%
  \begin{tcolorbox}[
    colback=abstractbg,
    colframe=rubbishgreen,
    boxrule=0pt,
    leftrule=3pt,
    arc=0pt,
    left=10pt, right=10pt, top=8pt, bottom=8pt,
    fontupper=\fontsize{10}{12}\selectfont
  ]
}{%
  \end{tcolorbox}
  \vspace{6pt}
  {\noindent\fontsize{10.5}{13}\selectfont
    \textbf{Keywords:} \@rubbishkeywords\par}
  \vspace{8pt}
}

%% ================================================================
%%  BODY ENVIRONMENT — \begin{rubbishbody} ... \end{rubbishbody}
%%  Two-column layout with Pagella body font.
%% ================================================================
\newenvironment{rubbishbody}{%
  \begin{multicols}{2}
  \bodyfont
}{%
  \end{multicols}
}

\endinput
