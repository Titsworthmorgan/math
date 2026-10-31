---
geometry:
  - top=0.4in
  - bottom=0.4in
  - left=0.4in
  - right=0.4in
fontsize: 9pt
documentclass: extarticle
linestretch: 0.95
header-includes: |
  \usepackage{amsmath,amssymb}
  \usepackage{mathptmx}
  \usepackage{relsize}
  \usepackage{multicol}
  \usepackage{enumitem}
  \usepackage{needspace}
  \usepackage{array}
  \usepackage{pgfplots}
  \pgfplotsset{compat=1.18}
  \usepgfplotslibrary{fillbetween}
  \usetikzlibrary{patterns,arrows.meta,positioning,calc}
  \usepackage{xcolor}
  \pagecolor[rgb]{0,0,0}
  \color[rgb]{1,1,1}
  \definecolor{uHi}{HTML}{5B9DB8}
  \definecolor{duHi}{HTML}{C68A52}
  \definecolor{keyHi}{HTML}{8BB87A}
  \definecolor{warnHi}{HTML}{CF8070}
  \definecolor{termHi}{HTML}{9BB6C7}
  \definecolor{titleHi}{HTML}{D8BE6E}
  \definecolor{numHi}{HTML}{B5CEA8}
  \definecolor{opHi}{HTML}{D4D4D4}
  \definecolor{funcHi}{HTML}{DCDCAA}
  \definecolor{varHi}{HTML}{9CDCFE}
  \definecolor{delimHi}{HTML}{DA70D6}
  \newcommand{\ubox}[1]{\fcolorbox{uHi}{black}{\textcolor{uHi}{$#1$}}}
  \newcommand{\dubox}[1]{\fcolorbox{duHi}{black}{\textcolor{duHi}{$#1$}}}
  \newcommand{\stepbox}[2]{{\setlength{\fboxsep}{2.5pt}\noindent\fcolorbox{termHi}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{\scriptsize\textcolor{termHi}{\textbf{#1}}}\\[1pt]\small #2\end{minipage}}\par}}
  \newcommand{\stepdown}{\par\vspace{-1pt}{\centering\textcolor{termHi}{$\downarrow$}\par}\nopagebreak\vspace{-1pt}\nopagebreak}
  \renewcommand{\filbreak}{\needspace{4\baselineskip}}
  \newcommand{\keyres}[1]{\textcolor{keyHi}{#1}}
  \newcommand{\warn}[1]{\textcolor{warnHi}{#1}}
  \newcommand{\term}[1]{\textcolor{termHi}{\textbf{#1}}}
  \let\origsection\section
  \renewcommand{\section}[1]{\origsection{{\color{white}#1}}}
  \let\origsubsection\subsection
  \renewcommand{\subsection}[1]{\origsubsection{{\color{white}#1}}}
  \let\origsubsubsection\subsubsection
  \renewcommand{\subsubsection}[1]{\origsubsubsection{{\itshape\color{white}#1}}}
  \setlist[itemize]{nosep, leftmargin=*, topsep=0pt, partopsep=0pt, itemsep=1pt}
  \setlist[enumerate]{nosep, leftmargin=*, topsep=0pt, partopsep=0pt, itemsep=1pt}
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{1pt}
  \setlength{\columnsep}{12pt}
  \raggedright
  \everymath{\larger[1]}
  \pagestyle{empty}
---

```{=latex}
\makeatletter
% ---- math syntax highlighting (VS Code Dark Modern) ----
\newif\ifsyntaxon \syntaxontrue
\def\@synord#1#2{{\ifsyntaxon\color{#2}\fi#1}}
\def\synmk#1#2{\synmkx#1{#2}\relax}
\def\synmkx#1#2#3{%
  \expandafter\mathchardef\csname syng\string#1\endcsname=\numexpr\mathcode`#1-4096*(\mathcode`#1/4096)\relax
  \expandafter\edef\csname synmc\string#1\endcsname{\the\mathcode`#1}%
  \begingroup \lccode`\~=`#1\relax
    % preserve ALL capitals from \lowercase: \string#1 of an uppercase letter must not
    % be lowercased (else active B prints \syngb = lowercase glyph), and color names (varHi...) keep their H
    \lccode`\A=`\A\lccode`\B=`\B\lccode`\C=`\C\lccode`\D=`\D\lccode`\E=`\E\lccode`\F=`\F\lccode`\G=`\G\lccode`\H=`\H\lccode`\I=`\I\lccode`\J=`\J\lccode`\K=`\K\lccode`\L=`\L\lccode`\M=`\M\lccode`\N=`\N\lccode`\O=`\O\lccode`\P=`\P\lccode`\Q=`\Q\lccode`\R=`\R\lccode`\S=`\S\lccode`\T=`\T\lccode`\U=`\U\lccode`\V=`\V\lccode`\W=`\W\lccode`\X=`\X\lccode`\Y=`\Y\lccode`\Z=`\Z\relax
    \lowercase{\endgroup\expandafter\gdef\expandafter~\expandafter{\expandafter#3\expandafter{\expandafter\@synord\expandafter{\csname syng\string#1\endcsname}{#2}}}}%
  \mathcode`#1="8000\relax }
\def\synv#1{\synmk #1{varHi}}\def\synf#1{\synmk #1{funcHi}}
\synmk 0{numHi}\synmk 1{numHi}\synmk 2{numHi}\synmk 3{numHi}\synmk 4{numHi}\synmk 5{numHi}\synmk 6{numHi}\synmk 7{numHi}\synmk 8{numHi}\synmk 9{numHi}%
\synmkx +{opHi}\mathbin\synmkx -{opHi}\mathbin\synmkx ={opHi}\mathrel\synmkx <{opHi}\mathrel\synmkx >{opHi}\mathrel%
\synmkx ({delimHi}\mathopen\synmkx ){delimHi}\mathclose\synmkx [{delimHi}\mathopen\synmkx ]{delimHi}\mathclose\synmk |{delimHi}%
\synv a\synv b\synv c\synv d\synv e\synf f\synf g\synf h\synv i\synv j\synv k\synv l\synv m\synv n\synv o\synv p\synv q\synv r\synv s\synv t\synv u\synv v\synv w\synv x\synv y\synv z%
\synv A\synv B\synv C\synv D\synv E\synf F\synf G\synf H\synv I\synv J\synv K\synv L\synv M\synv N\synv O\synv P\synv Q\synv R\synv S\synv T\synv U\synv V\synv W\synv X\synv Y\synv Z%
% restore all letters to their normal (non-active) mathcode, locally
\def\syn@lettersoff{\mathcode`\a="7161\mathcode`\b="7162\mathcode`\c="7163\mathcode`\d="7164\mathcode`\e="7165\mathcode`\f="7166\mathcode`\g="7167\mathcode`\h="7168\mathcode`\i="7169\mathcode`\j="716A\mathcode`\k="716B\mathcode`\l="716C\mathcode`\m="716D\mathcode`\n="716E\mathcode`\o="716F\mathcode`\p="7170\mathcode`\q="7171\mathcode`\r="7172\mathcode`\s="7173\mathcode`\t="7174\mathcode`\u="7175\mathcode`\v="7176\mathcode`\w="7177\mathcode`\x="7178\mathcode`\y="7179\mathcode`\z="717A\mathcode`\A="7141\mathcode`\B="7142\mathcode`\C="7143\mathcode`\D="7144\mathcode`\E="7145\mathcode`\F="7146\mathcode`\G="7147\mathcode`\H="7148\mathcode`\I="7149\mathcode`\J="714A\mathcode`\K="714B\mathcode`\L="714C\mathcode`\M="714D\mathcode`\N="714E\mathcode`\O="714F\mathcode`\P="7150\mathcode`\Q="7151\mathcode`\R="7152\mathcode`\S="7153\mathcode`\T="7154\mathcode`\U="7155\mathcode`\V="7156\mathcode`\W="7157\mathcode`\X="7158\mathcode`\Y="7159\mathcode`\Z="715A}
\def\syncm#1#2{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{{\noexpand\ifsyntaxon\noexpand\color{#2}\noexpand\fi\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}}
\def\syncmc#1#2#3{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{\noexpand#3{\noexpand\textcolor{#2}{\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}}}
\def\syncmop#1#2{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{\mathop{{\noexpand\ifsyntaxon\noexpand\color{#2}\noexpand\fi\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}\nolimits}}
% math-alphabet commands must not let active letters override their font
\let\synm@mrm\mathrm \protected\def\mathrm#1{{\syn@lettersoff\synm@mrm{#1}}}
\let\synm@mbf\mathbf \protected\def\mathbf#1{{\syn@lettersoff\synm@mbf{#1}}}
\let\synm@mbb\mathbb \protected\def\mathbb#1{{\syn@lettersoff\synm@mbb{#1}}}
\let\synm@mcal\mathcal \protected\def\mathcal#1{{\syn@lettersoff\synm@mcal{#1}}}
\let\synm@msf\mathsf \protected\def\mathsf#1{{\syn@lettersoff\synm@msf{#1}}}
\let\synm@mit\mathit \protected\def\mathit#1{{\syn@lettersoff\synm@mit{#1}}}
\syncmop\sin{funcHi}\syncmop\cos{funcHi}\syncmop\tan{funcHi}\syncmop\cot{funcHi}\syncmop\sec{funcHi}\syncmop\csc{funcHi}%
\syncmop\ln{funcHi}\syncmop\log{funcHi}\syncmop\arcsin{funcHi}\syncmop\arccos{funcHi}\syncmop\arctan{funcHi}%
\syncmc\leq{opHi}\mathrel\syncmc\geq{opHi}\mathrel\syncmc\neq{opHi}\mathrel\syncmc\to{opHi}\mathrel\syncmc\Rightarrow{opHi}\mathrel%
\syncmc\in{opHi}\mathrel\syncmc\subseteq{opHi}\mathrel\syncmc\approx{opHi}\mathrel\syncmc\equiv{opHi}\mathrel%
\syncmc\cdot{opHi}\mathbin\syncmc\times{opHi}\mathbin\syncmc\div{opHi}\mathbin\syncmc\pm{opHi}\mathbin\syncmc\cup{opHi}\mathbin\syncmc\cap{opHi}\mathbin%
\syncm\pi{varHi}\syncm\theta{varHi}\syncm\infty{numHi}%
% multi-letter variable name: one word in varHi with text-italic spacing (no per-letter coloring)
\protected\def\vname#1{{\ifsyntaxon\color{varHi}\fi\mathit{#1}}}
% amsmath's \resetMathstrut@ reads \mathcode`( into a \mathchardef; restore the original there so it doesn't choke on the active "8000
\let\synOrigReset\resetMathstrut@
\def\resetMathstrut@{\mathcode`\(=\csname synmc(\endcsname\relax\synOrigReset\mathcode`\(="8000\relax}
% delimiter-sizing commands scan a delimiter char; restore the originals locally so the active delimiters don't break the scan
\def\syn@delimoff{\mathcode`\(=\csname synmc(\endcsname\mathcode`\)=\csname synmc)\endcsname\mathcode`\[=\csname synmc[\endcsname\mathcode`\]=\csname synmc]\endcsname\mathcode`\|=\csname synmc|\endcsname\relax}
\let\synszL\left\def\left{\syn@delimoff\synszL}
\let\synszR\right\def\right{\syn@delimoff\synszR}
\tikzset{every picture/.append style={execute at begin picture={\syntaxonfalse}}}

\tikzset{res/.style={draw=white, thick, fill=black, minimum width=0.75cm, minimum height=0.22cm, inner sep=0pt},
vres/.style={res, minimum width=0.22cm, minimum height=0.75cm},
src/.style={draw=white, thick, circle, minimum size=0.6cm, inner sep=0pt, font=\scriptsize},
wire/.style={white, thick},
iarrow/.style={-{Latex[length=1.6mm]}, uHi, thick}}

\newcommand{\why}[1]{\emph{\scriptsize(#1)}}
% ---- puzzle-piece format: a colored piece in the diagram goes in the same-colored slot ----
\definecolor{pcA}{HTML}{F0955F}
\definecolor{pcB}{HTML}{5CCB96}
\definecolor{pcC}{HTML}{B3A6F5}
\definecolor{pcD}{HTML}{66B8F0}
\definecolor{pcE}{HTML}{E8C95A}
\newcommand{\pA}[1]{\leavevmode{\syntaxonfalse\color{pcA}#1}}
\newcommand{\pB}[1]{\leavevmode{\syntaxonfalse\color{pcB}#1}}
\newcommand{\pC}[1]{\leavevmode{\syntaxonfalse\color{pcC}#1}}
\newcommand{\pD}[1]{\leavevmode{\syntaxonfalse\color{pcD}#1}}
\newcommand{\pE}[1]{\leavevmode{\syntaxonfalse\color{pcE}#1}}
% empty slot in a template: \slot{color}{what goes here}
\newcommand{\slot}[2]{{\setlength{\fboxsep}{1.2pt}\fcolorbox{#1}{black}{\syntaxonfalse\color{#1}\scriptsize #2}}}
% ground symbol at a coordinate
\newcommand{\gnd}[1]{\draw[wire] #1 -- ++(0,-0.12); \draw[wire] #1 ++(-0.15,-0.12) -- ++(0.3,0); \draw[wire] #1 ++(-0.09,-0.18) -- ++(0.18,0); \draw[wire] #1 ++(-0.03,-0.24) -- ++(0.06,0);}
\newcommand{\wk}[2]{\needspace{#1\baselineskip}\subsubsection{Worked: #2}}
% single loop: source #1, top resistor #2, right resistor #3
\newcommand{\loopckt}[3]{%
\begin{tikzpicture}[font=\scriptsize]
\node[src] (vs) at (0,1) {};
\node[font=\tiny] at (0,1.13) {$+$};
\node[font=\tiny] at (0,0.85) {$-$};
\node[left=0.05cm of vs] {#1};
\node[res] (r1) at (1.5,2) {};
\node[above=0.05cm of r1] {#2};
\node[vres] (r2) at (3,1) {};
\node[right=0.12cm of r2] {#3};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (3,2) -- (r2.north);
\draw[wire] (r2.south) -- (3,0) -- (0,0) -- (vs.south);
\draw[iarrow] (0.35,2.2) -- (0.9,2.2) node[midway, above] {$i$};
\node[text=keyHi] at (1.05,1.75) {$+$}; \node[text=keyHi] at (1.95,1.75) {$-$};
\node[text=keyHi, below=0.08cm of r1] {$v_1$};
\node[text=keyHi] at (2.72,1.35) {$+$}; \node[text=keyHi] at (2.72,0.65) {$-$};
\node[text=keyHi] at (2.6,1) {$v_2$};
\end{tikzpicture}}
% source #1, series resistor #2, then #3 parallel with #4; nodes a, b, c
\newcommand{\threeckt}[4]{%
\begin{tikzpicture}[font=\scriptsize]
\node[src] (vs) at (0,1) {};
\node[font=\tiny] at (0,1.13) {$+$};
\node[font=\tiny] at (0,0.85) {$-$};
\node[left=0.05cm of vs] {#1};
\node[res] (r1) at (1.5,2) {};
\node[above=0.05cm of r1] {#2};
\node[vres] (r2) at (3,1) {};
\node[right=0.1cm of r2] {#3};
\node[vres] (r3) at (4.5,1) {};
\node[right=0.1cm of r3] {#4};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (4.5,2) -- (r3.north);
\draw[wire] (3,2) -- (r2.north);
\draw[wire] (r2.south) -- (3,0);
\draw[wire] (r3.south) -- (4.5,0) -- (0,0) -- (vs.south);
\fill[keyHi] (0,2) circle (1.6pt) node[above left, text=keyHi] {a};
\fill[keyHi] (3,2) circle (1.6pt) node[above, text=keyHi] {b};
\fill[keyHi] (3,0) circle (1.6pt) node[below, text=keyHi] {c};
\end{tikzpicture}}

\newcommand{\st}{\rule[-7pt]{0pt}{19pt}}
% formula table: symbols | words
\newenvironment{ftab}{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.3}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.40\linewidth}>{\raggedright\arraybackslash}p{0.555\linewidth}@{}}\term{Formula} & \term{In words} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
% quick-example table: given | work and answer
\newenvironment{qtab}{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.3}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.36\linewidth}>{\raggedright\arraybackslash}p{0.595\linewidth}@{}}\term{Quick example} & \term{Work $\to$ answer} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
% plain two-column lookup table
\newenvironment{ltab}[2]{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.2}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.40\linewidth}>{\raggedright\arraybackslash}p{0.555\linewidth}@{}}\term{#1} & \term{#2} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
\newcommand{\idea}[1]{{\setlength{\fboxsep}{3pt}\noindent\fcolorbox{titleHi}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{\scriptsize\textcolor{titleHi}{\textbf{THE IDEA}}}\\[1pt]\small #1\end{minipage}}\par\vspace{2pt}}}
\newcommand{\trap}[1]{\par\noindent\warn{\textbf{Trap:}} #1\par}
\newcommand{\bk}[1]{{\scriptsize\textcolor{white!55}{[book #1]}}}
% resistor color swatch
\newcommand{\sw}[1]{\fcolorbox{white!60}{#1}{\rule{0pt}{5pt}\hspace{9pt}}}
\definecolor{rcBlack}{HTML}{000000}\definecolor{rcBrown}{HTML}{8B4513}\definecolor{rcRed}{HTML}{D32F2F}
\definecolor{rcOrange}{HTML}{F57C00}\definecolor{rcYellow}{HTML}{FBC02D}\definecolor{rcGreen}{HTML}{388E3C}
\definecolor{rcBlue}{HTML}{1976D2}\definecolor{rcViolet}{HTML}{8E24AA}\definecolor{rcGray}{HTML}{9E9E9E}
\definecolor{rcWhite}{HTML}{FFFFFF}\definecolor{rcGold}{HTML}{D4AF37}\definecolor{rcSilver}{HTML}{C0C0C0}
\definecolor{rcBody}{HTML}{D9C7A0}

\section{DC Circuits --- Reference}

\begin{multicols}{2}
\raggedcolumns

Textbook: Ulaby, Maharbiz, Furse, \emph{Circuit Analysis and Design}, 3rd ed., chapters 1--3. Gray tags like \bk{2-1} point to the book section. The book writes voltage as $\upsilon$ (upsilon). These notes write $v$.

\filbreak \subsection{how to read this note}
Every method is a chain of steps. Each step is a template with empty colored slots.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.27\linewidth}p{0.684\linewidth}@{}}
\term{Do} & \term{How} \\\hline
1. find the pieces & Each topic opens with a PIECES table. It says where each piece is in the circuit or the problem, and its color. \\[1pt]
2. fill the slots & A piece goes in the slot of the same color: \pA{own $R$} goes in \slot{pcA}{own}. In a diagram, a colored element is that piece. \\[1pt]
3. one box at a time & Each box is one move. Do not merge two boxes. \\
\end{tabular}}
\par\vspace{2pt}
Each topic page sets its own colors. The number in parentheses in the tables below is the topic.


\filbreak \subsection{prefixes}
{\small
\begin{tabular}{@{}c|l|c|r|l@{}}
\term{Symbol} & \term{Prefix} & \term{Power} & \term{Multiply by} & \term{In words} \\\hline
E & exa & $10^{18}$ & & quintillion \\
P & peta & $10^{15}$ & & quadrillion \\
T & tera & $10^{12}$ & 1,000,000,000,000 & trillion \\
G & giga & $10^{9}$ & 1,000,000,000 & billion \\
M & mega & $10^{6}$ & 1,000,000 & million \\
k & kilo & $10^{3}$ & 1,000 & thousand \\\hline
--- & (none) & $10^{0}$ & 1 & one \\\hline
m & milli & $10^{-3}$ & 0.001 & thousandth \\
$\mu$ & micro & $10^{-6}$ & 0.000\,001 & millionth \\
n & nano & $10^{-9}$ & 0.000\,000\,001 & billionth \\
p & pico & $10^{-12}$ & 0.000\,000\,000\,001 & trillionth \\
f & femto & $10^{-15}$ & & quadrillionth \\
a & atto & $10^{-18}$ & & quintillionth \\
\end{tabular}}
\par\vspace{2pt}
\warn{Capital M (mega) and small m (milli) are $10^9$ apart.} \bk{Table 1-2}

\filbreak \subsection{quantities and units}
{\small
\begin{tabular}{@{}l|c|l|l@{}}
\term{Quantity} & \term{Symbol} & \term{Unit} & \term{In base units} \\\hline
charge & $q$, $Q$ & coulomb (C) & A$\cdot$s \\
current & $i$, $I$ & ampere (A) & C/s \\
voltage & $v$, $V$ (book: $\upsilon$) & volt (V) & J/C \\
power & $p$, $P$ & watt (W) & J/s $=$ V$\cdot$A \\
energy & $w$, $W$ & joule (J) & W$\cdot$s \\
resistance & $R$ & ohm ($\Omega$) & V/A \\
conductance & $G$ & siemens (S) & A/V $=1/\Omega$ \\
resistivity & $\rho$ (rho) & ohm-meter & $\Omega\cdot$m \\
conductivity & $\sigma$ (sigma) & siemens/meter & S/m \\
capacitance & $C$ & farad (F) & C/V \\
inductance & $L$ & henry (H) & V$\cdot$s/A \\
frequency & $f$ & hertz (Hz) & 1/s \\
length, area & $\ell$, $A$ & m, m$^2$ & --- \\
time & $t$ & second (s) & --- \\
temperature & $T$ & kelvin (K), $^\circ$C & K $=^\circ$C$+273$ \\
\end{tabular}}
\par\vspace{2pt}
Lowercase ($q$, $i$, $v$, $p$, $w$) can change with time. Uppercase ($Q$, $I$, $V$, $P$, $W$) is a constant (dc). \bk{Table 1-1}

\filbreak \subsection{constants and conversions}
{\small
\begin{tabular}{@{}p{0.42\linewidth}p{0.534\linewidth}@{}}
\term{Item} & \term{Value} \\\hline
charge of one electron & $-e$, \; $e=1.6\times10^{-19}$ C \; (more exact: $1.602$) \\[1pt]
charge of one proton & $+e$ \\[1pt]
electrons in $1$ C & $6.25\times10^{18}$ \\[1pt]
minute, hour & $1$ min $=60$ s, \; $1$ h $=3600$ s \\[1pt]
ampere-hour & $1$ Ah $=3600$ C, \; $1$ mAh $=3.6$ C \\[1pt]
watt-hour, kilowatt-hour & $1$ Wh $=3600$ J, \; $1$ kWh $=3.6\times10^{6}$ J \\[1pt]
length & $1$ mm $=10^{-3}$ m, \; $1$ cm $=10^{-2}$ m \\[1pt]
area & $1$ mm$^2=10^{-6}$ m$^2$, \; $1$ cm$^2=10^{-4}$ m$^2$ \\[1pt]
specific heat of water & $c=4186$ J/(kg$\cdot^\circ$C) \\[1pt]
mass of water & $1$ L $\approx1$ kg, \; $1$ fl oz $\approx0.02957$ kg \\
\end{tabular}}
\par\vspace{2pt}
The book uses $e=1.6\times10^{-19}$ C. Use it to match the book's answers.

\filbreak \subsection{circuit terminology}
{\small
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Term} & \term{Meaning} \bk{Table 1-4} \\\hline
node & all the wire between elements: one voltage. Points joined by a wire or a short are the \keyres{same node} \\[1pt]
ordinary node & connects to \keyres{2} elements \\[1pt]
extraordinary node & connects to \keyres{3 or more} elements \\[1pt]
branch & one element between two nodes \\[1pt]
path & a chain of branches that repeats no node \\[1pt]
extraordinary path & a path between two adjacent extraordinary nodes \\[1pt]
loop & a closed path \\[1pt]
independent loop & a loop with at least one branch that no other chosen loop has \\[1pt]
mesh & a loop that encloses no other loop \\[1pt]
in series & same current: only ordinary nodes between them \\[1pt]
in parallel & same voltage: they share both end nodes \\[1pt]
planar circuit & can be drawn with no crossing wires. A crossing without a dot is \warn{not} a connection \\[1pt]
open circuit & $i=0$, \; $R=\infty$, any voltage \\[1pt]
short circuit & $v=0$, \; $R=0$, any current \\[1pt]
ground & the $0$ V reference node. Chassis ground: the metal frame. Earth ground: a rod in the soil \\
\end{tabular}}

\filbreak \subsection{conductivity and resistivity, $20^\circ$C}
{\small\renewcommand{\arraystretch}{1.05}
\begin{tabular}{@{}l|l|l@{}}
\term{Material} & \term{$\sigma$ (S/m)} & \term{$\rho=1/\sigma$ ($\Omega\cdot$m)} \\\hline
\multicolumn{3}{@{}l}{\term{Conductors}} \\
silver & $6.17\times10^{7}$ & $1.62\times10^{-8}$ \\
copper & $5.81\times10^{7}$ & $1.72\times10^{-8}$ \\
gold & $4.10\times10^{7}$ & $2.44\times10^{-8}$ \\
aluminum & $3.82\times10^{7}$ & $2.62\times10^{-8}$ \\
iron & $1.03\times10^{7}$ & $9.71\times10^{-8}$ \\
mercury (liquid) & $1.04\times10^{6}$ & $9.58\times10^{-7}$ \\
\multicolumn{3}{@{}l}{\term{Semiconductors}} \\
carbon (graphite) & $7.14\times10^{4}$ & $1.40\times10^{-5}$ \\
pure germanium & $2.13$ & $0.47$ \\
pure silicon & $4.35\times10^{-4}$ & $2.30\times10^{3}$ \\
\multicolumn{3}{@{}l}{\term{Insulators}} \\
paper & $\sim10^{-10}$ & $\sim10^{10}$ \\
glass & $\sim10^{-12}$ & $\sim10^{12}$ \\
teflon & $\sim3.3\times10^{-13}$ & $\sim3\times10^{12}$ \\
porcelain & $\sim10^{-14}$ & $\sim10^{14}$ \\
mica & $\sim10^{-15}$ & $\sim10^{15}$ \\
polystyrene & $\sim10^{-16}$ & $\sim10^{16}$ \\
fused quartz & $\sim10^{-17}$ & $\sim10^{17}$ \\
\multicolumn{3}{@{}l}{\term{Common materials}} \\
distilled water & $5.5\times10^{-6}$ & $1.8\times10^{5}$ \\
drinking water & $\sim5\times10^{-3}$ & $\sim200$ \\
sea water & $4.8$ & $0.2$ \\
rubber & $10^{-13}$ & $10^{13}$ \\
\multicolumn{3}{@{}l}{\term{Biological tissues}} \\
blood, muscle & $\sim1.5$ & $\sim0.67$ \\
fat & $\sim0.1$ & $10$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Small $\rho$ (big $\sigma$) = good conductor.} \bk{Table 2-1} \; If a problem gives $\rho$ or $\sigma$, use the problem's value.

\filbreak \subsection{wire size (AWG) and cross-section area}
{\small
\begin{tabular}{@{}c|c|c@{}}
\term{AWG} & \term{Diameter $d$ (mm)} & \term{Area $A=\pi d^2/4$ (m$^2$)} \\\hline
0 & 8.3 & $5.41\times10^{-5}$ \\
2 & 6.5 & $3.32\times10^{-5}$ \\
4 & 5.2 & $2.12\times10^{-5}$ \\
6 & 4.1 & $1.32\times10^{-5}$ \\
10 & 2.6 & $5.31\times10^{-6}$ \\
14 & 1.6 & $2.01\times10^{-6}$ \\
18 & 1.0 & $7.85\times10^{-7}$ \\
20 & 0.8 & $5.03\times10^{-7}$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Bigger AWG number = thinner wire.} \bk{Table 2-2}
\begin{ftab}
$A=\pi r^2=\dfrac{\pi d^2}{4}$ & round wire: (area) $=\pi$(radius)$^2$ \st\\
$d=\sqrt{\dfrac{4A}{\pi}}$ & (diameter) from the area \st\\
$A=w\cdot h$ & rectangle: (width)(thickness), the face the current passes \emph{through} \\
$A=\pi\big(b^2-a^2\big)$ & hollow tube: outer radius $b$, inner radius $a$ \\
\end{ftab}
\warn{Convert mm to m before you square}: $(1\text{ mm})^2=10^{-6}$ m$^2$. \; \warn{$\ell$ is along the current, $A$ is across it.} For a block, the current direction decides which side is $\ell$.

\filbreak \subsection{resistor color code}
{\small\renewcommand{\arraystretch}{1.08}
\begin{tabular}{@{}c|l|c|l|l|l@{}}
 & \term{Color} & \term{Digit} & \term{Multiplier} & \term{Tolerance} & \term{Temp. coef.} \\\hline
\sw{rcBlack} & black & $0$ & $\times1$ & --- & --- \\
\sw{rcBrown} & brown & $1$ & $\times10$ & $\pm1\%$ & $100$ ppm \\
\sw{rcRed} & red & $2$ & $\times100$ & $\pm2\%$ & $50$ ppm \\
\sw{rcOrange} & orange & $3$ & $\times1$k & --- & $15$ ppm \\
\sw{rcYellow} & yellow & $4$ & $\times10$k & --- & $25$ ppm \\
\sw{rcGreen} & green & $5$ & $\times100$k & $\pm0.5\%$ & --- \\
\sw{rcBlue} & blue & $6$ & $\times1$M & $\pm0.25\%$ & $10$ ppm \\
\sw{rcViolet} & purple (violet) & $7$ & $\times10$M & $\pm0.1\%$ & $5$ ppm \\
\sw{rcGray} & gray & $8$ & --- & --- & --- \\
\sw{rcWhite} & white & $9$ & --- & --- & --- \\
\sw{rcGold} & gold & --- & $\times0.1$ & $\pm5\%$ & --- \\
\sw{rcSilver} & silver & --- & $\times0.01$ & $\pm10\%$ & --- \\
\end{tabular}}
\par\vspace{2pt}
\bk{Fig. 2-2} \; Hold it so the \keyres{wider gap} is before the last band(s), on the right. Read left to right.
\begin{ftab}
4 bands: $R=(b_1b_2)\times10^{b_4}\pm b_5$ & (two digits) $\times$ (multiplier) $\pm$ (tolerance) \\
5 bands: $R=(b_1b_2b_3)\times10^{b_4}\pm b_5$ & (three digits) $\times$ (multiplier) $\pm$ (tolerance) \\
6 bands: add $b_6$ & 5-band reading plus the temperature coefficient, ppm/$^\circ$C \\
\end{ftab}
The multiplier band is the \keyres{number of zeros}. Digits $2$--$7$ follow the rainbow: red, orange, yellow, green, blue, purple.

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\draw[white!70, thick] (-0.6,0) -- (0,0); \draw[white!70, thick] (3,0) -- (3.6,0);
\draw[fill=rcBody, draw=white!60, rounded corners=3pt] (0,-0.32) rectangle (3,0.32);
\fill[rcYellow] (0.45,-0.32) rectangle (0.7,0.32);
\fill[rcViolet] (0.95,-0.32) rectangle (1.2,0.32);
\fill[rcRed] (1.45,-0.32) rectangle (1.7,0.32);
\fill[rcGold] (2.35,-0.32) rectangle (2.6,0.32);
\node[below, text=pcA] at (0.575,-0.35) {$4$}; \node[below, text=pcB] at (1.075,-0.35) {$7$};
\node[below, text=pcC] at (1.575,-0.35) {$\times100$}; \node[below, text=pcD] at (2.475,-0.35) {$\pm5\%$};
\node[above, text=pcA] at (0.575,0.35) {1}; \node[above, text=pcB] at (1.075,0.35) {2}; \node[above, text=pcC] at (1.575,0.35) {mult}; \node[above, text=pcD] at (2.475,0.35) {tol};
\end{tikzpicture}

\subsubsection{Steps --- read the bands}
\stepbox{1. ORIENT}{Wide gap on the right. Read left to right.}
\stepdown
\stepbox{2. READ THE PIECES}{\pA{digit 1}, \pB{digit 2} (5 bands: a third digit), \pC{multiplier}, \pD{tolerance}}
\stepdown
\stepbox{3. TEMPLATE}{$R=\big(\slot{pcA}{digit 1}\,\slot{pcB}{digit 2}\big)\times\slot{pcC}{multiplier}\;\pm\;\slot{pcD}{tolerance}$}
\stepdown
\stepbox{4. RANGE}{$R\pm R\cdot\slot{pcD}{tolerance}$}
\stepdown
\stepbox{5. REVERSE ($R\to$ colors)}{Write $R$ as two digits $\times10^{k}$. Bands: digit, digit, $k$ zeros.}

\begin{qtab}
brown, black, orange, gold & $10\times10^3=\keyres{10\text{ k}\Omega}$, $\pm5\%$ \\
5 bands: brown, black, black, red, brown & $100\times10^2=\keyres{10\text{ k}\Omega}$, $\pm1\%$ \\
red, red, gold, gold & $22\times0.1=\keyres{2.2\,\Omega}$, $\pm5\%$ \\
(reverse) $330\,\Omega$, $\pm5\%$ & $33\times10^1$: \keyres{orange, orange, brown, gold} \\
\end{qtab}

\filbreak \subsection{formula sheet (symbols only)}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.34\linewidth}>{\raggedright\arraybackslash}p{0.614\linewidth}@{}}
\term{2. charge, current} & $Q=It$, \; $i=\dfrac{dq}{dt}$, \; $\Delta Q=\int_{t_1}^{t_2}i\,dt$, \; $n=\dfrac{\lvert Q\rvert}{e}$ \st\\
\term{3. voltage} & $v_{ab}=\dfrac{dw}{dq}$, \; $V_{ab}=V_a-V_b$, \; $W=QV$ \st\\
\term{4. power, energy} & $p=vi$, \; $\sum p=0$, \; $w=\int p\,dt$, \; $W=Pt$, \; $P_{av}=\dfrac1T\int_0^Tp\,dt$ \st\\
\term{5. extras} & $\text{Wh}=V\cdot\text{Ah}$, \; $t=\dfrac{\text{Ah}}{I}$, \; $E=cm\Delta T$, \; kWh $=\dfrac{\text{J}}{3.6\times10^6}$ \st\\
\term{6. sources} & $V_L=\dfrac{R_L}{R_s+R_L}v_s$. \; dependent: $\alpha v_x$, $r i_x$, $g v_x$, $\beta i_x$ \st\\
\term{7. resistors} & $V=IR$, \; $R=\dfrac{\rho\ell}{A}=\dfrac{\ell}{\sigma A}$, \; $P=I^2R=\dfrac{V^2}{R}$, \; $R=R_0(1+\alpha T)$ \st\\
\term{8. KCL, KVL} & $\sum i_{\text{in}}=\sum i_{\text{out}}$, \; $\sum v=0$. \; $N$ unknowns: $M$ KVL $+$ $(N-M)$ KCL \\
\term{9. combine} & $R_1+R_2$, \; $\dfrac{R_1R_2}{R_1+R_2}$, \; $G_{eq}=\sum G$ \st\\
\term{10. dividers} & $v_1=\dfrac{R_1}{R_1+R_2}v_s$, \; $i_1=\dfrac{R_2}{R_1+R_2}i_s=\dfrac{G_1}{G_{eq}}i_s$ \st\\
\term{11. source transf.} & $i_s=\dfrac{v_s}{R_s}$, \; $v_s=i_sR_s$ (same $R_s$) \st\\
\term{12. $\Delta\to Y$} & $R_1=\dfrac{R_bR_c}{R_a+R_b+R_c}$, \; $R_a=\dfrac{R_1R_2+R_2R_3+R_1R_3}{R_1}$ \st\\
\term{13. bridge} & $R_x=\dfrac{R_2}{R_1}R_3$, \; $V_{out}\approx\dfrac{V_0}{4}\dfrac{\Delta R}{R}$, \; $R=R_0(1+\alpha P)$ \st\\
\term{14. diode, LED} & forward: $I=\dfrac{V_s-V_F}{R}$, \; $V_F\approx0.7$ V (Si) \st\\
\term{16. linearity} & sources $\times K$: $v,i\times K$, \; $p\times K^2$. \; unit output: $K=\dfrac{v_s}{v_s'}$ \st\\
\term{17. mesh} & $(\sum R_k)I_k-\sum R_{kj}I_j=\sum v_{\text{rise}}$, \; $i_{\text{shared}}=I_a-I_b$, \; supermesh: $I_b-I_a=i_s$ \\
\term{18. superposition} & $v=v_1+\cdots+v_n$. \; off: $v_s\to$ short, $i_s\to$ open. \; $p\neq\sum p_k$ \\
\term{19. validation} & $\%\,\text{err}=\dfrac{\lvert\text{sim}-\text{hand}\rvert}{\lvert\text{hand}\rvert}100$ \st\\
\end{tabular}}

\filbreak \subsection{calculus and algebra tools}
\term{Derivatives} ($a$, $\omega$, $n$, $c$ constants):
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.34\linewidth}p{0.614\linewidth}@{}}
\term{Function} & \term{Derivative} \\\hline
$c$, \; $t^n$ & $0$, \; $n\,t^{n-1}$ \\
$e^{at}$ & $a\,e^{at}$ \\
$\sin(\omega t)$, \; $\cos(\omega t)$ & $\omega\cos(\omega t)$, \; $-\omega\sin(\omega t)$ \\
$f\cdot g$ (product) & $f'g+fg'$ \\
$f(g(t))$ (chain) & $f'(g)\cdot g'$. \; For example, $\sin^2(\omega t)\to2\omega\sin(\omega t)\cos(\omega t)$ \\
\end{tabular}}
\par\vspace{2pt}
\term{Integrals}:
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.34\linewidth}p{0.614\linewidth}@{}}
\term{Function} & \term{Antiderivative} \\\hline
$t^n$ & $\dfrac{t^{n+1}}{n+1}$ \st\\
$e^{at}$ & $\dfrac{e^{at}}{a}$ \st\\
$\sin(\omega t)$, \; $\cos(\omega t)$ & $-\dfrac{\cos(\omega t)}{\omega}$, \; $\dfrac{\sin(\omega t)}{\omega}$ \st\\
$e^{at}\cos(bt)$ & $\dfrac{e^{at}\big(a\cos bt+b\sin bt\big)}{a^2+b^2}$ \st\\
$e^{at}\sin(bt)$ & $\dfrac{e^{at}\big(a\sin bt-b\cos bt\big)}{a^2+b^2}$ \st\\
$\int_0^\infty Ae^{-at}\,dt$ & $\dfrac{A}{a}$ \; ($a>0$) \st\\
\end{tabular}}
\par\vspace{2pt}
\term{Definite integral}: $F(\text{top})-F(\text{bottom})$. \; $e^0=1$. \; $e^{-at}\to0$ as $t\to\infty$.

\term{Trig identities}: $\sin x\cos x=\tfrac12\sin2x$, \; $\cos^2x=\tfrac12(1+\cos2x)$, \; $\sin^2x=\tfrac12(1-\cos2x)$.

\term{Maximum or minimum}: set the derivative to $0$ and solve for $t$. Example: largest $q$ where $\frac{dq}{dt}=0$, and the largest $p$ where $\frac{dp}{dt}=0$.

\filbreak \subsubsection{Solving simultaneous equations}
\term{2 unknowns} ($a_1x+b_1y=c_1$, \; $a_2x+b_2y=c_2$), Cramer's rule:
$$D=a_1b_2-a_2b_1 \qquad x=\frac{c_1b_2-c_2b_1}{D} \qquad y=\frac{a_1c_2-a_2c_1}{D}$$
\term{3 unknowns}: $D=\begin{vmatrix}a_1&b_1&c_1\\a_2&b_2&c_2\\a_3&b_3&c_3\end{vmatrix}=a_1(b_2c_3-b_3c_2)-b_1(a_2c_3-a_3c_2)+c_1(a_2b_3-a_3b_2)$. \; $x_k=\dfrac{D_k}{D}$, where $D_k$ is $D$ with column $k$ replaced by the right-hand sides. Or: eliminate one unknown at a time, or use a calculator's matrix solver (rref). \bk{App. B}
\begin{qtab}
$3x+2y=12$, \; $x-y=-1$ & $D=3(-1)-1(2)=-5$. \; $x=\frac{12(-1)-(-1)(2)}{-5}=\keyres{2}$, \; $y=\frac{3(-1)-1(12)}{-5}=\keyres{3}$ \\
\end{qtab}

\filbreak \subsection{which tool? --- given $\to$ find}
The number in parentheses is the topic.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.46\linewidth}p{0.494\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
a circuit $\to$ nodes, series, parallel & terminology table \hfill (1) \\[1pt]
charge $Q\to$ electrons & $n=\lvert Q\rvert/e$ \hfill (2) \\[1pt]
$q(t)\to i$ / $i(t)\to\Delta Q$ & differentiate / integrate \hfill (2) \\[1pt]
a $q(t)$ or $i(t)$ graph & slope / area \hfill (2) \\[1pt]
node voltages, new ground & subtract the new ground's old value \hfill (3) \\[1pt]
$V$, $I\to$ power, sign & $P=VI$, passive sign convention \hfill (4) \\[1pt]
$v(t)$, $i(t)\to$ energy, average power & $\int vi\,dt$ / $\frac1T\int p\,dt$ \hfill (4) \\[1pt]
battery, kWh, heat, cost & extras \hfill (5) \\[1pt]
switch at $t_0$ & redraw: closed $=$ short, open $=$ open \hfill (6) \\[1pt]
two of $V$, $I$, $R\to$ the third & Ohm's law \hfill (7) \\[1pt]
wire: $R\leftrightarrow\ell$, $A$, material & $R=\rho\ell/A$ and the tables \hfill (7) \\[1pt]
resistance at a new temperature & $R=R_0(1+\alpha T)$ \hfill (7) \\[1pt]
color bands $\to R$ & color chart (ref) \\[1pt]
currents at a node / voltages in a loop & KCL / KVL \hfill (8) \\[1pt]
$N$ unknown currents & $M$ KVL $+$ $(N-M)$ KCL, solve \hfill (8) \\[1pt]
network $\to R_{eq}$ & combination chart \hfill (9) \\[1pt]
series $\to v$ share / parallel $\to i$ share & dividers \hfill (10) \\[1pt]
mixed sources and resistors & source transformation \hfill (11) \\[1pt]
not series, not parallel (a bridge) & $\Delta\leftrightarrow Y$ \hfill (12) \\[1pt]
bridge balance / sensor output & Wheatstone \hfill (13) \\[1pt]
force on a sensor $\to V_{out}$ & piezoresistor, cantilever \hfill (13) \\[1pt]
diode or LED in a circuit & assume on, check $I>0$ \hfill (14) \\[1pt]
a known answer, new source value & scale by $K$, power by $K^2$ \hfill (16) \\[1pt]
a ladder $\to$ output & unit output, then scale \hfill (16) \\[1pt]
planar circuit, many loops & mesh currents, one KVL per mesh \hfill (17) \\[1pt]
current source between two meshes & supermesh \hfill (17) \\[1pt]
several independent sources & superposition, one at a time \hfill (18) \\[1pt]
simulation vs hand answer & percent error, same ground and directions \hfill (19) \\
\end{tabular}}

\end{multicols}

% ---- topic pages: explanation left, work right ----
\newenvironment{lcol}{\noindent\begin{minipage}[t]{0.475\linewidth}\vspace{0pt}{\scriptsize\textcolor{titleHi}{\textbf{EXPLANATION}}}\par\vspace{2pt}}{\end{minipage}\hfill}
\newenvironment{rcol}{\begin{minipage}[t]{0.475\linewidth}\vspace{0pt}{\scriptsize\textcolor{titleHi}{\textbf{WORK}}}\par\vspace{2pt}}{\end{minipage}\par\vspace{8pt}}
\newcommand{\lesson}[1]{\newpage\section{#1}}

% ============================================================ 1-3
\lesson{1--3 --- reading a circuit, charge and current, voltage}

\subsection{1. Reading a circuit \bk{1-3}}
\begin{lcol}
\idea{Label the nodes first. Every wire segment between elements is one node, even if it is drawn long.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{ordinary node} & a node that touches exactly $2$ elements \\
\pB{extraordinary node} & a node that touches $3$ or more \\
\pC{branch} & one element (or a series chain) between two nodes \\
\pD{mesh} & a loop with no other loop inside \\
\end{ltab}
\term{Meters} \bk{Fig. 1-18}: voltmeter in \keyres{parallel} (across), red lead on $+$. Ammeter in \keyres{series} (in the path).
\trap{Points joined by a plain wire are the same node. Merge them.}
\trap{Same branch, same direction $=$ same current. Opposite arrows are negatives.}
\end{lcol}
\begin{rcol}
\stepbox{1. LABEL THE NODES}{Mark every wire segment between elements. Merge wire-joined points.}
\stepdown
\stepbox{2. WHAT TOUCHES EACH NODE}{List the elements at each node. $2$ $\to$ \pA{ordinary}. $3+$ $\to$ \pB{extraordinary}.}
\stepdown
\stepbox{3. SERIES?}{Only an \slot{pcA}{ordinary node} between two elements $\Rightarrow$ series.}
\stepdown
\stepbox{4. PARALLEL?}{Two elements share \slot{pcB}{both end nodes} $\Rightarrow$ parallel.}
\stepdown
\stepbox{5. COUNT MESHES}{$\slot{pcD}{meshes}=\slot{pcC}{branches}-\text{nodes}+1$ \why{check against the drawing}}
\end{rcol}

\subsection{2. Charge and current \bk{1-4}}
\begin{lcol}
\idea{Current is the flow of \keyres{positive} charge. Electrons moving one way count as current the \keyres{other} way.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$q(t)$} & charge as a function of time \\
\pB{$i(t)$} & current as a function of time \\
\pC{$t_1$, $t_2$} & the time window (seconds) \\
\pD{$Q$} & a total charge. $e=1.6\times10^{-19}$ C \\
\end{ltab}
\begin{ftab}
$n=\dfrac{\lvert Q\rvert}{e}$ & (electrons) $=$ (charge) $\div$ (charge of one) \st\\
$Q=It$, \; $I=\dfrac Qt$, \; $t=\dfrac QI$ & constant current \st\\
$i=\dfrac{dq}{dt}$ & differentiate the charge \st\\
$\Delta Q=\int_{t_1}^{t_2}i\,dt$ & integrate the current \\
$\int_0^\infty Ae^{-at}\,dt=\dfrac Aa$ & shortcut, $a>0$ \st\\
\end{ftab}
\trap{Given charge, find current: \keyres{differentiate}. A higher power of $t$ means you integrated.}
\trap{Electrons one way plus protons the other way: both count toward the same current direction.}
\trap{Time in seconds.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- $q(t)\to i(t)$}
\stepbox{1. DIFFERENTIATE}{$i=\dfrac{d}{dt}\slot{pcA}{$q(t)$}$ \why{product rule: $(fg)'=f'g+fg'$}}

\subsubsection{Steps --- $i(t)\to\Delta Q$}
\stepbox{1. ANTIDERIVATIVE}{$F(t)=\displaystyle\int\slot{pcB}{$i(t)$}\,dt$}
\stepdown
\stepbox{2. TOP MINUS BOTTOM}{$\Delta Q=F(\slot{pcC}{$t_2$})-F(\slot{pcC}{$t_1$})$ \why{$e^0=1$}}

\subsubsection{Steps --- from a graph}
\stepbox{1. $q$ GRAPH $\to$ CURRENT}{current $=$ \keyres{slope} of each straight piece of \pA{$q$}}
\stepdown
\stepbox{2. $i$ GRAPH $\to$ CHARGE}{charge $=$ \keyres{area} under \pB{$i$}, piece by piece}

\subsubsection{Steps --- largest charge}
\stepbox{1. SET $\frac{dq}{dt}=0$}{Solve for $t$. Plug that $t$ back into \pA{$q(t)$}.}
\end{rcol}

\subsection{3. Voltage, node voltage, ground \bk{1-5.1}}
\begin{lcol}
\idea{Voltage is energy per charge between two points. A \term{node voltage} is measured from ground ($0$ V).}
\begin{ftab}
$V=\dfrac WQ$, \; $W=QV$ & energy per charge \st\\
$V_{ab}=V_a-V_b$ & between two nodes \\
$V_{ab}=-V_{ba}$ & reverse order flips the sign \\
\end{ftab}
\trap{Moving ground shifts every node voltage. Differences do not change.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- move the ground}
\stepbox{1. OLD VALUE AT THE NEW GROUND}{Read $V_{\text{new ground}}$ in the old labels.}
\stepdown
\stepbox{2. SUBTRACT IT FROM EVERY NODE}{$V_{\text{new}}=V_{\text{old}}-V_{\text{new ground}}$}
\stepdown
\stepbox{3. CHECK}{Any $V_{ab}$ is the same before and after.}
\end{rcol}

% ============================================================ 4-5
\lesson{4--5 --- power and energy}

\subsection{4. Power and the passive sign convention \bk{1-5.2}}
\begin{lcol}
\idea{Power is $v\cdot i$. The sign tells you whether the device \keyres{receives} power or \keyres{supplies} it.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$+$ side} & the current arrow enters the $+$ mark of $v$ \\
\pC{$-$ side} & the current arrow enters the $-$ mark \\
$v$, $i$ & the values, with their own signs \\
\end{ltab}
\begin{ftab}
$p=vi$, \; $I=\dfrac PV$, \; $V=\dfrac PI$ & power \st\\
$\sum p_k=0$ & supplied $=$ received \\
$W=Pt$, \; $W=VIt$ & constant power \\
$w=\int_{t_1}^{t_2}v\,i\,dt$ & energy from $v(t)$, $i(t)$ \\
$P_{av}=\dfrac1T\int_0^Tp\,dt$ & average power \st\\
\end{ftab}
\trap{$\int v\,i\,dt\neq\int v\,dt\cdot\int i\,dt$. Multiply first.}
\trap{A resistor always receives power.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- sign of the power}
\stepbox{1. WHICH SIDE?}{Does $i$ enter the \pA{$+$} or the \pC{$-$} of $v$?}
\stepdown
\stepbox{2. TEMPLATE}{$p=\slot{pcA}{$+$}\!/\!\slot{pcC}{$-$}\;v\,i$}
\stepdown
\stepbox{3. READ}{$p>0$: \keyres{receives}. \quad $p<0$: \keyres{supplies}.}
\stepdown
\stepbox{4. CHECK}{Every $p$ in the circuit adds to $0$.}

\subsubsection{Steps --- energy from $v(t)$ and $i(t)$}
\stepbox{1. MULTIPLY FIRST}{$p(t)=v(t)\cdot i(t)$. Simplify: $e^{-at}e^{-bt}=e^{-(a+b)t}$.}
\stepdown
\stepbox{2. INTEGRATE}{$w=\displaystyle\int_{t_1}^{t_2}p\,dt$. \; To $\infty$: $\int_0^\infty Ae^{-at}dt=\frac Aa$ per term.}
\stepdown
\stepbox{3. UNITS}{V$\cdot$mA$\cdot$s $=$ mJ.}

\subsubsection{Steps --- maximum power}
\stepbox{1. SET $\frac{dp}{dt}=0$}{Solve for $t$, then plug into $p(t)$.}
\end{rcol}

\subsection{5. Batteries, utility energy, heat, cost}
\begin{lcol}
\idea{Ah is \keyres{charge}. Wh and kWh are \keyres{energy}. Convert everything to joules or watt-hours before you compare.}
\begin{ftab}
$\text{Wh}=V\cdot\text{Ah}$ & energy rating \\
$t=\dfrac{\text{Ah}}{I}=\dfrac{\text{Wh}}{P}$ & run time, hours \st\\
$\text{J}=\text{Wh}\cdot3600$ & hours to seconds \\
$E=c\,m\,\Delta T$, \; $\Delta T=\dfrac{E}{cm}$ & heat (water: $c=4186$) \st\\
cost $=\dfrac{\text{J}}{3.6\times10^6}\cdot$ rate & joules $\to$ kWh $\to$ cost \st\\
\end{ftab}
\trap{A count of batteries filled rounds \keyres{down}.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- run time}
\stepbox{1. SAME UNITS}{mAh $\to$ Ah, mA $\to$ A.}
\stepdown
\stepbox{2. DIVIDE}{$t=\dfrac{\text{Ah}}{I}$ \; or \; $t=\dfrac{\text{Wh}}{P}$ (hours)}

\subsubsection{Steps --- how many batteries}
\stepbox{1. ONE BATTERY IN J}{$W_{\text{one}}=V\cdot\text{Ah}\cdot3600$}
\stepdown
\stepbox{2. DIVIDE, ROUND DOWN}{$n=\dfrac{W}{W_{\text{one}}}$}

\subsubsection{Steps --- heat and cost}
\stepbox{1. HEAT}{$E=c\,m\,\Delta T$ (J)}
\stepdown
\stepbox{2. TO kWh}{$\dfrac{E}{3.6\times10^6}$}
\stepdown
\stepbox{3. COST}{kWh $\times$ rate}
\end{rcol}

% ============================================================ 6-7
\lesson{6--7 --- sources, switches, Ohm's law, resistance}

\subsection{6. Sources and switches \bk{1-6}}
\begin{lcol}
\idea{An ideal voltage source fixes $v$ for any current. An ideal current source fixes $i$ for any voltage. A real source adds an internal $R_s$.}
\begin{ltab}{Element}{Rule}
ideal voltage source & $v=V_s$, any $i$ \\
ideal current source & $i=I_s$, any $v$ \\
real voltage source & $v_s$ in \keyres{series} with $R_s$ \\
real current source & $i_s$ in \keyres{parallel} with $R_s$ \\
switch & closed $=$ short, open $=$ open, changes at $t_0$ \\
\end{ltab}
\begin{ltab}{Dependent source}{Value, gain unit}
VCVS & $\alpha v_x$, no unit \\
CCVS & $r\,i_x$, $\Omega$ \\
VCCS & $g\,v_x$, S \\
CCCS & $\beta\,i_x$, no unit \\
\end{ltab}
\trap{A dependent source is a model, not an energy source. Its value comes from $v_x$ or $i_x$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- load voltage of a real source}
\stepbox{1. DIVIDER}{$V_L=\dfrac{\slot{pcA}{$R_L$}}{\slot{pcB}{$R_s$}+\slot{pcA}{$R_L$}}\,v_s$}

\subsubsection{Steps --- a dependent source}
\stepbox{1. FIND THE CONTROL}{Write $v_x$ or $i_x$ in terms of your unknowns.}
\stepdown
\stepbox{2. VALUE}{gain $\times$ control: $\alpha v_x$, $r i_x$, $g v_x$, $\beta i_x$}
\stepdown
\stepbox{3. TREAT AS A SOURCE}{Use it in KVL or KCL like any source.}

\subsubsection{Steps --- a switch}
\stepbox{1. TWO CIRCUITS}{Draw $t<t_0$ and $t>t_0$. Closed $=$ short, open $=$ open.}
\end{rcol}

\subsection{7. Ohm's law, resistance of a shape, power rating \bk{2-1}}
\begin{lcol}
\idea{$V=IR$ for one resistor. The shape and material set $R$. The power rating caps the current.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$\rho$} or \pA{$\sigma$} & the material table (Table 2-1) \\
\pB{$\ell$} & length. A two-wire cable: \keyres{twice} the run \\
\pC{$A$} & cross-section area. Wire: $\frac{\pi d^2}{4}$, $d$ from AWG \\
\pD{$R_0$}, \pD{$\alpha$} & resistance at $0^\circ$C and the temperature coefficient \\
\end{ltab}
\begin{ftab}
$V=IR$, \; $I=\dfrac VR$, \; $R=\dfrac VI$ & Ohm's law \st\\
$I=\dfrac{V_a-V_b}{R}$ & current a $\to$ b \st\\
$R=\dfrac{\rho\ell}{A}$, \; $\ell=\dfrac{RA}{\rho}$, \; $A=\dfrac{\rho\ell}{R}$ & shape \st\\
$R=R_0(1+\alpha T)$, \; $T=\dfrac{R/R_0-1}{\alpha}$ & temperature \st\\
$P=I^2R=\dfrac{V^2}{R}$ & power in a resistor \st\\
$I_{max}=\sqrt{\dfrac{P_{rated}}{R}}$, \; $V_{max}=\sqrt{P_{rated}R}$ & safe limits \st\\
\end{ftab}
\trap{If $I$ enters the $-$ side, $I=-V/R$.}
\trap{Convert mm to m before squaring.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- wire design ($R\to\ell$)}
\stepbox{1. $R$}{$R=\dfrac VI$ if not given.}
\stepdown
\stepbox{2. DIAMETER}{$d$ from the AWG table, in meters.}
\stepdown
\stepbox{3. AREA}{$\slot{pcC}{$A$}=\dfrac{\pi d^2}{4}$}
\stepdown
\stepbox{4. LENGTH}{$\slot{pcB}{$\ell$}=\dfrac{R\,\slot{pcC}{$A$}}{\slot{pcA}{$\rho$}}$ \why{a cable run is $\ell/2$}}

\subsubsection{Steps --- resistance at a temperature}
\stepbox{1. TEMPLATE}{$R=\slot{pcD}{$R_0$}\big(1+\slot{pcD}{$\alpha$}\,T\big)$ \why{$T$ for a target $R$: $\frac{R/R_0-1}{\alpha}$}}

\subsubsection{Steps --- power rating}
\stepbox{1. LIMIT}{$I_{max}=\sqrt{P_{rated}/R}$. \; Your $I$ above it $\Rightarrow$ too small a rating.}
\stepdown
\stepbox{2. FRACTION TO THE LOAD}{$\dfrac{I^2R_L}{V_sI}$}
\end{rcol}

% ============================================================ 8
\lesson{8 --- Kirchhoff's laws and nodal analysis \bk{2-2, 3-2}}

\subsection{KCL, KVL, and the path rule}
\begin{lcol}
\idea{KCL: what flows into a node flows out. KVL: around any closed loop the voltages add to $0$.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{in} & arrows pointing into the node \\
\pB{out} & arrows pointing out of the node \\
\pA{$+$ first} & walking the loop, you meet the $+$ mark first: write $+v$ \\
\pC{$-$ first} & you meet the $-$ mark first: write $-v$ \\
\end{ltab}
\begin{ftab}
$\sum i_{\text{in}}=\sum i_{\text{out}}$ & KCL \\
$\sum v=0$ around a loop & KVL \\
$V_{ab}=$ sum along any path a $\to$ b & path rule: $+v$ if you meet $+$ first \\
\end{ftab}
\term{Polarity on a resistor}: put $+$ where your current arrow \keyres{enters}. Then $v=+iR$.
\trap{A negative answer is fine: the current flows opposite to your arrow.}
\trap{Never write KVL through a current source. Its voltage is unknown.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- KCL at a node}
\stepbox{1. TEMPLATE}{$\sum\slot{pcA}{in}=\sum\slot{pcB}{out}$. Solve for the unknown.}

\subsubsection{Steps --- KVL around a loop}
\stepbox{1. MARK POLARITIES}{Each resistor: $+$ where its current arrow enters. Each source: as drawn.}
\stepdown
\stepbox{2. WALK CLOCKWISE}{Start at any corner. One term per element: $\slot{pcA}{$+v$}$ if $+$ first, $\slot{pcC}{$-v$}$ if $-$ first.}
\stepdown
\stepbox{3. OHM IN}{Each resistor term: $v=iR$.}
\stepdown
\stepbox{4. SET TO ZERO, SOLVE}{$\sum=0$.}

\subsubsection{Steps --- voltage between two points (path rule)}
\stepbox{1. WALK a $\to$ b}{Any path. $+v$ if you meet $+$ first, $-v$ if $-$ first. The sum is $V_{ab}$.}
\stepdown
\stepbox{2. CHECK}{Walk another path. Same answer.}
\end{rcol}

\subsection{Branch-current method: KCL and KVL together \bk{2-2.3}}
\begin{lcol}
\idea{Every branch gets its own unknown current. KCL and KVL together give exactly as many equations as unknowns.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$N$} & the number of unknown branch currents \\
\pB{$n_{ex}$} & extraordinary nodes (3 or more elements) \\
\pC{$M$} & meshes that do not pass through a current source \\
\pD{known currents} & a branch with a current source: that current is given \\
\end{ltab}
\begin{ftab}
KCL equations $=n_{ex}-1$ & one node is left out: it repeats the others \\
KVL equations $=N-(n_{ex}-1)$ & the rest, one per mesh \\
\end{ftab}
\trap{Each new KVL loop must use an element not used before.}
\trap{Arrow directions are guesses. Keep them. A negative answer means reversed.}
\end{lcol}
\begin{rcol}
\stepbox{1. LABEL}{An arrow and a name $i_1,i_2,\ldots$ on each branch. \pD{Known} source currents too.}
\stepdown
\stepbox{2. POLARITIES}{$+$ where each arrow enters each resistor.}
\stepdown
\stepbox{3. COUNT}{\pA{$N$} unknowns. Need $\slot{pcB}{$n_{ex}$}-1$ KCL and the rest KVL.}
\stepdown
\stepbox{4. KCL}{At $\slot{pcB}{$n_{ex}$}-1$ extraordinary nodes: in $=$ out.}
\stepdown
\stepbox{5. KVL}{Around \pC{meshes} that skip current sources. Resistor terms as $iR$.}
\stepdown
\stepbox{6. SOLVE THE SYSTEM}{See ``Solving the system'' below: solve one, plug back in.}
\stepdown
\stepbox{7. CHECK}{The unused KCL node balances. \; Power: supplied $=$ received.}
\end{rcol}

\subsection{Nodal analysis: the walk \bk{3-2}}
\begin{lcol}
\idea{Unknowns are node voltages. Stand at an unknown node, cross each resistor, and note where you land. One KCL per unknown node.}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src] (v1) at (0,0.6) {}; \node[font=\tiny] at (0,0.73) {$+$}; \node[font=\tiny] at (0,0.45) {$-$};
\node[left=0.05cm of v1] {$V_1$};
\node[vres, draw=pcB] (r1) at (0,1.65) {}; \node[left=0.08cm of r1, text=pcB] {$R_1$};
\node[vres, draw=pcC] (r2) at (1.5,1.2) {}; \node[right=0.08cm of r2, text=pcC] {$R_2$};
\node[res, draw=pcE] (r3) at (2.5,2.3) {}; \node[above=0.05cm of r3, text=pcE] {$R_3$};
\node[vres] (r4) at (3.5,1.2) {}; \node[right=0.08cm of r4] {$R_4$};
\node[vres, draw=pcD] (r5) at (5,1.65) {}; \node[right=0.08cm of r5, text=pcD] {$R_5$};
\node[src] (v2) at (5,0.6) {}; \node[font=\tiny] at (5,0.73) {$+$}; \node[font=\tiny] at (5,0.45) {$-$};
\node[right=0.05cm of v2] {$V_2$};
\draw[wire] (v1.north) -- (r1.south); \draw[wire] (r1.north) -- (0,2.3) -- (r3.west);
\draw[wire] (r3.east) -- (5,2.3) -- (r5.north); \draw[wire] (r5.south) -- (v2.north);
\draw[wire] (1.5,2.3) -- (r2.north); \draw[wire] (r2.south) -- (1.5,0);
\draw[wire] (3.5,2.3) -- (r4.north); \draw[wire] (r4.south) -- (3.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (v2.south);
\fill[pcB] (0,1.0) circle (1.6pt) node[right, text=pcB] {$V_1$};
\fill[pcD] (5,1.0) circle (1.6pt) node[left, text=pcD] {$V_2$};
\fill[pcA] (1.5,2.3) circle (2.2pt) node[above, text=pcA] {$V_a$};
\fill[pcA] (3.5,2.3) circle (2.2pt) node[above, text=pcA] {$V_b$};
\node[below] at (2.5,0) {ground $0$};
\end{tikzpicture}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$V_{\text{here}}$} & the unknown node you stand at ($V_a$, then $V_b$) \\
far node & the node across each $R$: a known value, $0$, or another unknown \\
\pB{known node} & a source top: $+v_s$, \; $-v_s$ if $-$ is on top \\
\pE{shared $R$} & joins two unknowns. In both equations, flipped \\
\end{ltab}
\begin{ltab}{At $V_a$ above}{Fractions}
through \pB{$R_1$} to \pB{$V_1$} & $\frac{V_a-V_1}{R_1}$ \\
through \pC{$R_2$} to ground & $\frac{V_a-0}{R_2}$ \\
through \pE{$R_3$} to $V_b$ & $\frac{V_a-V_b}{R_3}$ \\
\end{ltab}
\trap{Multiply \emph{every} term by the LCD. A minus before parentheses flips every term inside.}
\trap{At $V_b$ the shared term is $\frac{V_b-V_a}{R_3}$: here minus far.}
\end{lcol}
\begin{rcol}
\stepbox{1. GROUND}{Pick the node most sources touch. It is $0$ V.}
\stepdown
\stepbox{2. KNOWN NODES}{Each source top is known: $\pm v_s$. \why{voltage source between two unknowns: supernode, below}}
\stepdown
\stepbox{3. LIST THE UNKNOWNS}{$V_a$, $V_b$, \ldots\ One equation each.}
\stepdown
\stepbox{4. KCL AT EACH UNKNOWN}{$\displaystyle\sum\frac{\slot{pcA}{$V_{\text{here}}$}-\slot{white}{far}}{\slot{white}{$R$}}=0$ \why{one fraction per $R$, all leaving. Current source leaving: $+i_s$, entering: $-i_s$}}
\stepdown
\stepbox{5. CLEAR FRACTIONS}{Multiply every term by the LCD of that equation.}
\stepdown
\stepbox{6. STANDARD FORM}{Collect: $(\;)V_a+(\;)V_b=$ number. Numbers to the right side.}
\stepdown
\stepbox{7. SOLVE THE SYSTEM}{One unknown: divide. Two or more: ``Solving the system'' below.}
\stepdown
\stepbox{8. PLUG BACK IN}{Each $V$ into every original equation: each must give $0$.}
\stepdown
\stepbox{9. CURRENTS AND POWER}{$i=\dfrac{V_{\text{here}}-V_{\text{far}}}{R}$ for each $R$. \; $p=i^2R$. \; Source: $p=v_s\,i$.}
\stepdown
\stepbox{10. CHECK}{KCL at each node with the numbers. Supplied power $=$ received.}
\end{rcol}

\subsection{Supernode and dependent sources in nodal}
\begin{lcol}
\idea{A voltage source between two unknown nodes hides its current. Put a boundary around both nodes and treat them as one big node.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$V_{+}$}, \pB{$V_{-}$} & the nodes at the $+$ and $-$ ends of the floating source \\
\pC{$v_s$} & the floating source \\
\pD{boundary} & a loop drawn around both nodes and the source \\
\end{ltab}
\trap{Inside the boundary, skip the source branch. Its current is unknown.}
\trap{A dependent source: write its control $v_x$ or $i_x$ in node voltages, for example $i_x=\frac{V_a-V_b}{R}$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- supernode}
\stepbox{1. CONSTRAINT}{$\slot{pcA}{$V_{+}$}-\slot{pcB}{$V_{-}$}=\slot{pcC}{$v_s$}$}
\stepdown
\stepbox{2. ONE KCL FOR THE BOUNDARY}{Sum every current leaving the \pD{boundary} $=0$. Each $R$ leaving uses the node it starts from.}
\stepdown
\stepbox{3. OTHER NODES}{Normal KCL at any unknown node outside the boundary.}
\stepdown
\stepbox{4. SOLVE}{Substitute the constraint, then ``Solving the system''.}

\subsubsection{Steps --- dependent source}
\stepbox{1. CONTROL IN NODE VOLTAGES}{$v_x=V_{\text{its}+}-V_{\text{its}-}$, \; $i_x=\dfrac{V_{\text{start}}-V_{\text{end}}}{R_x}$}
\stepdown
\stepbox{2. SUBSTITUTE}{Put that into the source value, then into KCL. Move unknowns left.}
\end{rcol}

\subsection{Solving the system (2 or 3 unknowns) \bk{App. B}}
\begin{lcol}
\idea{Solve for one unknown, then \keyres{plug it back in} to get the rest. Every answer must satisfy every original equation.}
\subsubsection{Pieces (standard form)}
\begin{ltab}{Piece}{Where to find it}
\pA{$a_1$, $b_1$} & coefficients of $x$, $y$ in equation 1 \\
\pB{$a_2$, $b_2$} & coefficients of $x$, $y$ in equation 2 \\
\pC{$c_1$, $c_2$} & the right-side numbers \\
\end{ltab}
$\pA{a_1}x+\pA{b_1}y=\pC{c_1}$ \qquad $\pB{a_2}x+\pB{b_2}y=\pC{c_2}$
\begin{ltab}{If}{Use}
a coefficient is $1$ or $-1$ & substitution \\
coefficients are messy & Cramer's rule \\
3 unknowns & eliminate one to get 2, or $3\times3$ Cramer, or a calculator (rref) \\
\end{ltab}
\trap{Plug back into the \emph{original} equations, not the rearranged ones.}
\trap{Keep fractions exact until the end.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- substitution}
\stepbox{1. ISOLATE}{Pick a variable with coefficient $\pm1$. Solve its equation for it: $x=\ldots y\ldots$}
\stepdown
\stepbox{2. SUBSTITUTE}{Put that into the \emph{other} equation. Now one unknown.}
\stepdown
\stepbox{3. SOLVE}{Find $y$.}
\stepdown
\stepbox{4. PLUG BACK IN}{$y$ into step 1: find $x$.}
\stepdown
\stepbox{5. CHECK}{Both values into both original equations.}

\subsubsection{Steps --- Cramer's rule (2 unknowns)}
\stepbox{1. DETERMINANT}{$D=\slot{pcA}{$a_1$}\slot{pcB}{$b_2$}-\slot{pcB}{$a_2$}\slot{pcA}{$b_1$}$ \why{$D=0$: no single answer}}
\stepdown
\stepbox{2. FIRST UNKNOWN}{$x=\dfrac{\slot{pcC}{$c_1$}\slot{pcB}{$b_2$}-\slot{pcC}{$c_2$}\slot{pcA}{$b_1$}}{D}$ \why{replace the $x$ column with $c$}}
\stepdown
\stepbox{3. SECOND UNKNOWN}{$y=\dfrac{\slot{pcA}{$a_1$}\slot{pcC}{$c_2$}-\slot{pcB}{$a_2$}\slot{pcC}{$c_1$}}{D}$ \why{or plug $x$ back in}}

\subsubsection{Steps --- 3 unknowns by elimination}
\stepbox{1. ELIMINATE ONE}{Combine equations 1 and 2, then 1 and 3, to cancel the same variable.}
\stepdown
\stepbox{2. SOLVE THE 2 BY 2}{Substitution or Cramer.}
\stepdown
\stepbox{3. PLUG BACK IN}{Both answers into any original equation for the third.}
\end{rcol}

% ============================================================ 9-10
\lesson{9--10 --- series, parallel, and dividers \bk{2-3}}

\subsection{9. Reduce a network to $R_{eq}$}
\begin{lcol}
\idea{Replace a clear series pair or parallel pair with one resistor. Redraw. Repeat from the end farthest from the terminals.}
\begin{ftab}
$R_1+R_2+\cdots$ & series: add \\
$\dfrac{R_1R_2}{R_1+R_2}$ & two in parallel: product over sum \st\\
$\dfrac{1}{1/R_1+1/R_2+\cdots}$ & any number in parallel \st\\
$\dfrac RN$ & $N$ equal in parallel \st\\
$R\parallel0=0$, \; $R\parallel\infty=R$ & short across, open branch \\
$R=\dfrac{R_{eq}R_1}{R_1-R_{eq}}$ & missing $R$ in parallel \st\\
\end{ftab}
\trap{Series total $>$ the biggest. Parallel total $<$ the smallest.}
\end{lcol}
\begin{rcol}
\stepbox{1. LABEL NODES}{Merge nodes joined by wires or shorts.}
\stepdown
\stepbox{2. FARTHEST PAIR}{Find a series or parallel pair far from the terminals a, b.}
\stepdown
\stepbox{3. REPLACE}{series: $\slot{pcA}{$R$}+\slot{pcA}{$R$}$ \quad parallel: $\dfrac{\slot{pcB}{$R$}\cdot\slot{pcB}{$R$}}{\slot{pcB}{$R$}+\slot{pcB}{$R$}}$}
\stepdown
\stepbox{4. REDRAW, REPEAT}{Until one resistor is left between a and b.}
\stepdown
\stepbox{5. CHECK}{Each parallel result is below its smaller part.}
\end{rcol}

\subsection{10. Voltage and current dividers}
\begin{lcol}
\idea{Series resistors share the \keyres{voltage}, in proportion to $R$. Parallel resistors share the \keyres{current}, in proportion to $\frac1R$.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{own $R$} & the resistor you want $v$ or $i$ for \\
\pB{other $R$} & current divider: the other branch \\
\pB{every series $R$} & voltage divider: the whole chain \\
\pC{source} & $v_s$ across the chain, or $i_s$ into the pair \\
\end{ltab}
\begin{ftab}
$V_{\text{node}}=\dfrac{R_{\text{below}}}{R_T}v_s$ & node voltage in a series stack \st\\
$i_k=\dfrac{R_{eq}}{R_k}i_s$ & current divider, any number of branches \st\\
$R_2=\dfrac{R_1v_2}{v_s-v_2}$ & design: $R_2$ for a target $v_2$ \st\\
$R_2=\dfrac{R_1(i_s-i_2)}{i_2}$ & design: $R_2$ for a target $i_2$ \st\\
\end{ftab}
\trap{Voltage divider: \keyres{own} $R$ on top. Current divider: \keyres{other} $R$ on top.}
\trap{A load across a divider changes it. Combine the load first.}
\trap{Node voltage $=$ voltage across only when the other end is ground.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- voltage divider}
\stepbox{1. TEMPLATE}{$v=\dfrac{\slot{pcA}{own $R$}}{\slot{pcB}{every series $R$}}\cdot\slot{pcC}{$v_s$}$}
\stepdown
\stepbox{2. CHECK}{All drops add to $v_s$.}

\subsubsection{Steps --- current divider (two branches)}
\stepbox{1. TEMPLATE}{$i=\dfrac{\slot{pcB}{other $R$}}{\slot{pcA}{own}+\slot{pcB}{other}}\cdot\slot{pcC}{$i_s$}$}
\stepdown
\stepbox{2. CHECK}{Branch currents add to $i_s$. \; Same voltage: $i_1R_1=i_2R_2$.}

\subsubsection{Steps --- loaded divider}
\stepbox{1. MERGE THE LOAD}{$\slot{pcA}{$R_2\parallel R_L$}$ becomes one piece.}
\stepdown
\stepbox{2. DIVIDE}{$v_{out}=\dfrac{\slot{pcA}{$R_2\parallel R_L$}}{\slot{pcB}{$R_1$}+\slot{pcA}{$R_2\parallel R_L$}}\,\slot{pcC}{$v_s$}$ \why{lower than unloaded}}
\end{rcol}

% ============================================================ 11-12
\lesson{11--12 --- source transformation, wye--delta}

\subsection{11. Source transformation and combining sources \bk{2-3}}
\begin{lcol}
\idea{$v_s$ in series with $R_s$ acts exactly like $i_s$ in parallel with the \keyres{same} $R_s$.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pC{$v_s$} & the voltage source, with its $+$ end \\
\pB{$i_s$} & the current source, with its arrow \\
\pA{$R_s$} & the resistor in series ($v_s$) or parallel ($i_s$) \\
\end{ltab}
\begin{ftab}
$v_{eq}=v_1-v_2+\cdots$ & voltage sources in series: add with signs \\
$i_{eq}=i_1-i_2+\cdots$ & current sources in parallel: add with directions \\
\end{ftab}
\trap{Do not transform the element whose $v$ or $i$ you need.}
\trap{Different voltage sources in parallel, or different current sources in series: unrealizable.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- $v_s$ series $\to$ $i_s$ parallel}
\stepbox{1. CURRENT}{$\slot{pcB}{$i_s$}=\dfrac{\slot{pcC}{$v_s$}}{\slot{pcA}{$R_s$}}$}
\stepdown
\stepbox{2. REDRAW}{Same \pA{$R_s$}, now in parallel. The arrow points toward the old $+$.}

\subsubsection{Steps --- $i_s$ parallel $\to$ $v_s$ series}
\stepbox{1. VOLTAGE}{$\slot{pcC}{$v_s$}=\slot{pcB}{$i_s$}\,\slot{pcA}{$R_s$}$}
\stepdown
\stepbox{2. REDRAW}{Same \pA{$R_s$}, now in series. $+$ at the end the arrow pointed to.}
\stepdown
\stepbox{3. CHECK}{Open terminals: same $V_{oc}$. Shorted: same $I_{sc}$.}
\end{rcol}

\subsection{12. Wye--delta (Y--$\Delta$) \bk{2-4}}
\begin{lcol}
\idea{For a network that is neither series nor parallel (a bridge). Both shapes connect the same three nodes 1, 2, 3. Each node has one color: the Y arm \emph{at} it and the $\Delta$ side \emph{opposite} it share that color.}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
% delta
\coordinate (n1) at (1,1.7); \coordinate (n2) at (0,0); \coordinate (n3) at (2,0);
\draw[wire] (n1) -- node[res, sloped, minimum width=0.5cm, draw=pcC] {} (n2);
\draw[wire] (n2) -- node[res, sloped, minimum width=0.5cm, draw=pcA] {} (n3);
\draw[wire] (n3) -- node[res, sloped, minimum width=0.5cm, draw=pcB] {} (n1);
\node[text=pcC] at (0.1,1.05) {$R_c$}; \node[text=pcB] at (1.9,1.05) {$R_b$}; \node[text=pcA] at (1,-0.3) {$R_a$};
\fill[pcA] (n1) circle (1.8pt) node[above, text=pcA] {1};
\fill[pcB] (n2) circle (1.8pt) node[left, text=pcB] {2};
\fill[pcC] (n3) circle (1.8pt) node[right, text=pcC] {3};
\node at (1,-0.7) {$\Delta$: side \emph{opposite} its node};
% wye
\coordinate (m1) at (4.6,1.7); \coordinate (m2) at (3.6,0); \coordinate (m3) at (5.6,0); \coordinate (o) at (4.6,0.65);
\draw[wire] (m1) -- node[res, sloped, minimum width=0.4cm, draw=pcA] {} (o);
\draw[wire] (m2) -- node[res, sloped, minimum width=0.4cm, draw=pcB] {} (o);
\draw[wire] (m3) -- node[res, sloped, minimum width=0.4cm, draw=pcC] {} (o);
\node[text=pcA] at (4.92,1.2) {$R_1$}; \node[text=pcB] at (3.85,0.6) {$R_2$}; \node[text=pcC] at (5.35,0.6) {$R_3$};
\fill[pcA] (m1) circle (1.8pt) node[above, text=pcA] {1};
\fill[pcB] (m2) circle (1.8pt) node[left, text=pcB] {2};
\fill[pcC] (m3) circle (1.8pt) node[right, text=pcC] {3};
\node at (4.6,-0.7) {Y: arm \emph{at} its node};
\end{tikzpicture}

\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\coordinate (n1) at (1.2,2.0); \coordinate (n2) at (0,0); \coordinate (n3) at (2.4,0); \coordinate (o) at (1.2,0.75);
\draw[pcC, thick] (n1) -- (n2) node[midway, left] {$R_c$};
\draw[pcA, thick] (n2) -- (n3) node[midway, below] {$R_a$};
\draw[pcB, thick] (n3) -- (n1) node[midway, right] {$R_b$};
\draw[pcA, dashed, thick] (n1) -- (o); \draw[pcB, dashed, thick] (n2) -- (o); \draw[pcC, dashed, thick] (n3) -- (o);
\node[text=pcA] at (1.38,1.35) {$R_1$}; \node[text=pcB] at (0.62,0.55) {$R_2$}; \node[text=pcC] at (1.8,0.55) {$R_3$};
\fill[pcA] (n1) circle (1.8pt) node[above, text=pcA] {1};
\fill[pcB] (n2) circle (1.8pt) node[left, text=pcB] {2};
\fill[pcC] (n3) circle (1.8pt) node[right, text=pcC] {3};
\node[text width=3.2cm, align=left] at (4.6,1.0) {Overlay: arm \pA{$R_1$} sits between the sides that touch node 1, \pB{$R_b$} and \pC{$R_c$}. It points at its own-color side \pA{$R_a$}.};
\end{tikzpicture}
\subsubsection{Pieces (book labels)}
\begin{ltab}{Piece}{Where to find it}
\pA{$R_1$}, \pB{$R_2$}, \pC{$R_3$} & Y arms, \keyres{at} nodes 1, 2, 3 \\
\pA{$R_a$}, \pB{$R_b$}, \pC{$R_c$} & $\Delta$ sides, \keyres{opposite} nodes 1, 2, 3 \\
$\Sigma$ & $R_a+R_b+R_c$ \\
$N$ & $R_1R_2+R_2R_3+R_1R_3$ \\
\end{ltab}
\begin{ltab}{Color rule}{Formula}
$\Delta\to$Y: arm $=$ the \keyres{other two} colors & $\pA{R_1}=\dfrac{\pB{R_b}\pC{R_c}}{\Sigma}$ \st\\
Y$\to\Delta$: side $=N\div$ the \keyres{same} color & $\pA{R_a}=\dfrac{N}{\pA{R_1}}$ \st\\
balanced (all equal) & $R_Y=\frac{R_\Delta}{3}$, \; $R_\Delta=3R_Y$ \\
\end{ltab}
\trap{Other books swap the letters. Match by position: an arm uses the two sides that \emph{touch} its node.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- spot it in a circuit}
\stepbox{1. LOOK FOR A TRIANGLE OR A STAR}{$\Delta$: three resistors in a closed triangle. \; Y: three resistors meeting at one node that touches nothing else.}
\stepdown
\stepbox{2. NAME THE THREE NODES}{Call them 1, 2, 3. They stay in the circuit after the change.}
\stepdown
\stepbox{3. COLOR EACH RESISTOR}{Y arm: the color of its node. \; $\Delta$ side: the color of the node it does \emph{not} touch.}

\subsubsection{Steps --- $\Delta\to$ Y}
\stepbox{1. SUM}{$\Sigma=\slot{pcA}{$R_a$}+\slot{pcB}{$R_b$}+\slot{pcC}{$R_c$}$}
\stepdown
\stepbox{2. EACH ARM}{$\slot{pcA}{$R_1$}=\dfrac{\slot{pcB}{$R_b$}\,\slot{pcC}{$R_c$}}{\Sigma}$ \quad $\slot{pcB}{$R_2$}=\dfrac{\slot{pcA}{$R_a$}\,\slot{pcC}{$R_c$}}{\Sigma}$ \quad $\slot{pcC}{$R_3$}=\dfrac{\slot{pcA}{$R_a$}\,\slot{pcB}{$R_b$}}{\Sigma}$}
\stepdown
\stepbox{3. CHECK}{Nodes 1--2, node 3 open: \; Y: $R_1+R_2$ \; $=$ \; $\Delta$: $R_c\parallel(R_a+R_b)$}

\subsubsection{Steps --- Y $\to\Delta$}
\stepbox{1. PAIR PRODUCTS}{$N=\slot{pcA}{$R_1$}\slot{pcB}{$R_2$}+\slot{pcB}{$R_2$}\slot{pcC}{$R_3$}+\slot{pcA}{$R_1$}\slot{pcC}{$R_3$}$}
\stepdown
\stepbox{2. EACH SIDE}{$\slot{pcA}{$R_a$}=\dfrac{N}{\slot{pcA}{$R_1$}}$ \quad $\slot{pcB}{$R_b$}=\dfrac{N}{\slot{pcB}{$R_2$}}$ \quad $\slot{pcC}{$R_c$}=\dfrac{N}{\slot{pcC}{$R_3$}}$}
\stepdown
\stepbox{3. CHECK}{Convert back. You get the arms you started with.}

\subsubsection{Steps --- finish the circuit}
\stepbox{1. REDRAW}{Put the new shape on the same nodes 1, 2, 3.}
\stepdown
\stepbox{2. REDUCE}{Now series and parallel pairs appear. Use \S9.}
\end{rcol}

% ============================================================ 13-14
\lesson{13--14 --- Wheatstone bridge, sensors, nonlinear elements}

\subsection{13. Wheatstone bridge and sensors \bk{2-5, 2-6.3}}
\begin{lcol}
\idea{Two voltage dividers side by side. Balanced means both middles sit at the same voltage, so no current crosses.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{tops} & $R_1$ (left), $R_2$ (right) \\
\pB{bottoms} & $R_3$ (left), $R_x$ (right) \\
\pC{$V_0$} & the bridge supply \\
\pD{$\Delta R/R$} & the sensor's fractional change \\
\end{ltab}
\begin{ftab}
$V_{out}=\dfrac{V_0\,\Delta R}{4R+2\Delta R}$ & exact, one arm changed \st\\
$R=R_0(1+\alpha P)$ & piezoresistor, $P$ in N/m$^2$ \\
$P=\dfrac FA$, \; cantilever $P=\dfrac{FL}{WH^2}$ & pressure \st\\
\end{ftab}
Silicon: $\alpha\approx-10^{-9}$ m$^2$/N.
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- balance}
\stepbox{1. SAME RATIO EACH SIDE}{$\dfrac{\slot{pcA}{left top}}{\slot{pcB}{left bottom}}=\dfrac{\slot{pcA}{right top}}{\slot{pcB}{right bottom}}$}
\stepdown
\stepbox{2. SOLVE}{$R_x=\dfrac{R_2}{R_1}R_3$}

\subsubsection{Steps --- sensor output}
\stepbox{1. SMALL CHANGE}{$V_{out}\approx\dfrac{\slot{pcC}{$V_0$}}{4}\cdot\slot{pcD}{$\Delta R/R$}$}
\stepdown
\stepbox{2. REVERSE}{$\dfrac{\Delta R}{R}=\dfrac{4V_{out}}{V_0}$}

\subsubsection{Steps --- piezoresistor chain}
\stepbox{1. PRESSURE}{$P=\dfrac FA$ or $\dfrac{FL}{WH^2}$}
\stepdown
\stepbox{2. CHANGE}{$\dfrac{\Delta R}{R}=\alpha P$}
\stepdown
\stepbox{3. OUTPUT}{$V_{out}=\dfrac{V_0}{4}\,\alpha P$}
\end{rcol}

\subsection{14. Nonlinear elements: fuse, diode, LED \bk{2-1.4, 2-6}}
\begin{lcol}
\idea{A diode is a one-way valve. Off: an open. On: a fixed drop $V_F$.}
\begin{ltab}{Element}{Rule}
fuse & opens above its rated current \\
ideal diode & forward: short, reverse: open \\
real diode & on at $V_F\approx0.7$ V (Si) \\
LED & red $V_F\approx1.6$ V, green or blue $\approx3.3$ V, about $20$ mA \\
\end{ltab}
\begin{ftab}
$R_D\approx\dfrac{\Delta V_D}{\Delta I}$ & slope of the curve above $V_F$ \st\\
\end{ftab}
\trap{Superposition and scaling do \warn{not} work with diodes (\S16).}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- diode in a circuit}
\stepbox{1. ASSUME ON}{Replace it with a $V_F$ drop.}
\stepdown
\stepbox{2. CURRENT}{$I=\dfrac{V_s-V_F}{R}$}
\stepdown
\stepbox{3. CHECK THE GUESS}{$I>0$: on, done. \; $I\le0$: off, $I=0$.}

\subsubsection{Steps --- LED resistor}
\stepbox{1. TEMPLATE}{$R=\dfrac{V_s-V_F}{I}$}
\end{rcol}

% ============================================================ 15-16
\lesson{15--16 --- one full circuit, linear circuits}

\subsection{15. Putting it together: reduce, then expand}
\begin{lcol}
\idea{Reduce to one resistor and find the source current. Then walk back out with Ohm's law, KVL and KCL.}
\trap{Write down each reduced circuit. You walk back through them in reverse.}
\end{lcol}
\begin{rcol}
\stepbox{1. REDUCE}{$R_{eq}$ with \S9.}
\stepdown
\stepbox{2. SOURCE CURRENT}{$i=\dfrac{v_s}{R_{eq}}$}
\stepdown
\stepbox{3. DROPS}{$v=iR$ on each series piece. KVL for what is left.}
\stepdown
\stepbox{4. BRANCH CURRENTS}{$i=\dfrac vR$ in each parallel branch. KCL check.}
\stepdown
\stepbox{5. CHECK (POWER)}{$\sum i^2R=v_s\,i$}
\end{rcol}

\subsection{16. Linear circuits \bk{3-1}}
\begin{lcol}
\idea{A \term{linear circuit} has only independent sources and linear elements. Scale every source by $K$ and every $v$ and $i$ scales by $K$.}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pC{old source} & the source value of the answer you already have \\
\pB{new source} & the changed source value \\
\pA{known answer} & any $v$, $i$ or $p$ from the old circuit \\
\end{ltab}
\begin{ftab}
$v=R(Ki)=K(Ri)$ & \term{homogeneity}: scale in, scale out \\
$v=R(i_1+i_2)=Ri_1+Ri_2$ & \term{additivity}: add in, add out \\
sources $\times K$ & every $v$, $i\times K$, \; every $p\times K^2$ \\
\end{ftab}
\begin{ltab}{Linear}{Not linear}
$R$, $C$, $L$ & diode, LED, fuse \\
dependent source, gain $\times$ one $v$ or $i$ & depends on $v_x^2$ or $v_xi_y$ \\
\end{ltab}
\trap{Power is not linear: $2\times$ the source gives $4\times$ the power.}
\trap{Only independent sources are inputs. A dependent source is not.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- scale a known answer}
\stepbox{1. FACTOR}{$K=\dfrac{\slot{pcB}{new source}}{\slot{pcC}{old source}}$}
\stepdown
\stepbox{2. SCALE}{$v$, $i$: $K\cdot\slot{pcA}{known}$ \qquad $p$: $K^2\cdot\slot{pcA}{known}$}

\subsubsection{Steps --- unit output (ladders)}
\stepbox{1. ASSUME}{The output is $1$ V (or $1$ A).}
\stepdown
\stepbox{2. WALK BACK}{Toward the source: $i=\frac vR$, KVL for the next node, KCL for the next current.}
\stepdown
\stepbox{3. SOURCE YOU FOUND}{Call it $v_s'$.}
\stepdown
\stepbox{4. SCALE}{$K=\dfrac{v_s}{v_s'}$. \quad real output $=K\cdot1$. Every value $\times K$.}
\end{rcol}

% ============================================================ 17
\lesson{17 --- mesh-current analysis \bk{3-3, 3-4}}

\subsection{Mesh currents and KVL}
\begin{lcol}
\idea{Give each mesh one clockwise current. Write one KVL per mesh. A resistor between two meshes carries the \keyres{difference} of their currents.}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcD] (v1) at (0,1) {}; \node[font=\tiny, text=pcD] at (0,1.13) {$+$}; \node[font=\tiny, text=pcD] at (0,0.85) {$-$};
\node[left=0.05cm of v1, text=pcD] {$V_1$};
\node[res, draw=pcA] (r1) at (1.25,2) {}; \node[above=0.05cm of r1, text=pcA] {$R_1$};
\node[vres, draw=pcC] (r3) at (2.5,1) {}; \node[right=0.08cm of r3, text=pcC] {$R_3$};
\node[res, draw=pcB] (r2) at (3.75,2) {}; \node[above=0.05cm of r2, text=pcB] {$R_2$};
\node[src, draw=pcE] (v2) at (5,1) {}; \node[font=\tiny, text=pcE] at (5,1.13) {$+$}; \node[font=\tiny, text=pcE] at (5,0.85) {$-$};
\node[right=0.05cm of v2, text=pcE] {$V_2$};
\draw[wire] (v1.north) -- (0,2) -- (r1.west); \draw[wire] (r1.east) -- (r2.west); \draw[wire] (r2.east) -- (5,2) -- (v2.north);
\draw[wire] (2.5,2) -- (r3.north); \draw[wire] (r3.south) -- (2.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (v2.south);
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]1.25,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (1.25,1) {$I_1$};
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]3.75,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (3.75,1) {$I_2$};
\end{tikzpicture}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{own $R$} & resistors only in this mesh (\pA{$R_1$} for mesh 1) \\
\pC{shared $R$} & a resistor on the border of two meshes (\pC{$R_3$}) \\
\pD{rise} & a source clockwise enters at $-$: $+v_s$ \\
\pE{drop} & a source clockwise enters at $+$: $-v_s$ \\
\end{ltab}
\begin{ftab}
$i_{\text{shared}}=I_{\text{this}}-I_{\text{other}}$ & current in a shared $R$ \\
\end{ftab}
\trap{The shared $R$ is in both equations, with the other mesh current subtracted.}
\trap{Mesh analysis needs a planar circuit (no crossing wires).}
\trap{A negative mesh current flows counterclockwise.}
\end{lcol}
\begin{rcol}
\stepbox{1. MARK THE MESHES}{One clockwise $I_1$, $I_2$, \ldots\ per mesh.}
\stepdown
\stepbox{2. READ THE PIECES PER MESH}{\pA{own $R$}, \pC{shared $R$} (and with whom), sources as \pD{rise} or \pE{drop}.}
\stepdown
\stepbox{3. ONE KVL PER MESH (BY INSPECTION)}{$\Big(\sum\slot{pcA}{own}+\sum\slot{pcC}{shared}\Big)I_k-\sum\slot{pcC}{shared with $j$}\,I_j=\sum\slot{pcD}{rises}$ \\ \why{a drop enters the right side as $-v_s$}}
\stepdown
\stepbox{4. CHECK THE MATRIX}{Symmetric: the $I_2$ number in row 1 equals the $I_1$ number in row 2. Off-diagonal entries are negative.}
\stepdown
\stepbox{5. SOLVE}{Cramer, substitution, or a calculator (rref).}
\stepdown
\stepbox{6. BRANCH CURRENTS}{Own $R$: $I_k$. \quad Shared $R$: $I_{\text{this}}-I_{\text{other}}$. Then $v=iR$.}
\stepdown
\stepbox{7. CHECK}{KVL around one mesh with the numbers.}
\end{rcol}

\subsection{Current sources: known mesh current or supermesh}
\begin{lcol}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcD] (v1) at (0,1) {}; \node[font=\tiny, text=pcD] at (0,1.13) {$+$}; \node[font=\tiny, text=pcD] at (0,0.85) {$-$};
\node[left=0.05cm of v1, text=pcD] {$V_s$};
\node[res, draw=pcA] (r1) at (1.25,2) {}; \node[above=0.05cm of r1, text=pcA] {$R_1$};
\node[src, draw=pcE] (is) at (2.5,1) {}; \draw[-{Latex[length=1.3mm]}, pcE, thick] (2.5,0.84) -- (2.5,1.17);
\node[right=0.05cm of is, text=pcE] {$i_s$};
\node[res, draw=pcB] (r2) at (3.75,2) {}; \node[above=0.05cm of r2, text=pcB] {$R_2$};
\node[vres, draw=pcB] (r3) at (5,1) {}; \node[right=0.08cm of r3, text=pcB] {$R_3$};
\draw[wire] (v1.north) -- (0,2) -- (r1.west); \draw[wire] (r1.east) -- (r2.west); \draw[wire] (r2.east) -- (5,2) -- (r3.north);
\draw[wire] (2.5,2) -- (is.north); \draw[wire] (is.south) -- (2.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (r3.south);
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]1.25,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (1.25,1) {$I_1$};
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]3.75,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (3.75,1) {$I_2$};
\end{tikzpicture}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pE{$i_s$} & the current source and its arrow \\
\pE{on the edge} & the source is in only one mesh \\
\pE{shared} & the source sits between two meshes (above) \\
\pD{outer loop} & the path around both meshes, skipping the source branch \\
\end{ltab}
\begin{ltab}{Dependent source}{Do this}
CCVS $r\,i_x$ & write $i_x$ in mesh currents ($I_1-I_2$), put it in KVL, move it left \\
dependent current source & treat like \pE{$i_s$}, then write its control in mesh currents \\
\end{ltab}
\trap{Never write KVL through a current source. Its voltage is unknown.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- source on the outer edge}
\stepbox{1. KNOWN CURRENT}{$I_k=+\slot{pcE}{$i_s$}$ if the arrow is clockwise, $-\slot{pcE}{$i_s$}$ if not.}
\stepdown
\stepbox{2. SKIP ITS KVL}{Write KVL only for the other meshes.}

\subsubsection{Steps --- supermesh (shared source)}
\stepbox{1. CONSTRAINT}{$I_{\text{with the arrow}}-I_{\text{against}}=\slot{pcE}{$i_s$}$ \why{above: $I_2-I_1=i_s$}}
\stepdown
\stepbox{2. KVL AROUND THE OUTSIDE}{Walk the \pD{outer loop} of both meshes, skipping the source branch. Each $R$ uses the mesh current it sits in.}
\stepdown
\stepbox{3. SOLVE}{Substitute the constraint into the outer KVL.}
\stepdown
\stepbox{4. CHECK}{The voltage across the source, found from the left and from the right, must match.}
\end{rcol}

% ============================================================ 18-19
\lesson{18--19 --- source superposition, validating with simulation}

\subsection{18. Source superposition \bk{3-5}}
\begin{lcol}
\idea{In a linear circuit with several independent sources, any $v$ or $i$ is the sum of the answers from each source acting alone.}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcD] (v1) at (0,1) {}; \node[font=\tiny, text=pcD] at (0,1.13) {$+$}; \node[font=\tiny, text=pcD] at (0,0.85) {$-$};
\node[left=0.05cm of v1, text=pcD] {$v_s$};
\node[res] (r1) at (1.3,2) {}; \node[above=0.05cm of r1] {$R_1$};
\node[vres, draw=pcA] (r2) at (2.6,1) {}; \node[left=0.08cm of r2, text=pcA] {$R_2$};
\node[src, draw=pcE] (is) at (4,1) {}; \draw[-{Latex[length=1.3mm]}, pcE, thick] (4,0.84) -- (4,1.17);
\node[right=0.05cm of is, text=pcE] {$i_s$};
\draw[wire] (v1.north) -- (0,2) -- (r1.west); \draw[wire] (r1.east) -- (4,2) -- (is.north);
\draw[wire] (2.6,2) -- (r2.north); \draw[wire] (r2.south) -- (2.6,0);
\draw[wire] (v1.south) -- (0,0) -- (4,0) -- (is.south);
\draw[iarrow] (2.9,1.45) -- (2.9,0.75) node[midway, right] {$i$};
\end{tikzpicture}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{the target} & the $v$ or $i$ you want, with its reference arrow \\
\pD{voltage sources} & each independent $v_s$ \\
\pE{current sources} & each independent $i_s$ \\
dependent sources & \warn{stay on} in every sub-circuit \\
\end{ltab}
\begin{ltab}{Turn off}{Replace with}
\pD{voltage source} & a \keyres{short} (wire), $v=0$ \\
\pE{current source} & an \keyres{open} (gap), $i=0$ \\
\end{ltab}
\trap{Power does not superpose. Add the currents, then $p=i^2R$.}
\trap{Keep one reference direction. A part flowing the other way enters the sum negative.}
\end{lcol}
\begin{rcol}
\stepbox{1. LIST THE SOURCES}{Every independent \pD{$v_s$} and \pE{$i_s$}. Mark the \pA{target} arrow.}
\stepdown
\stepbox{2. KEEP ONE, TURN OFF THE REST}{\pD{$v_s$} off $\to$ short. \quad \pE{$i_s$} off $\to$ open. \quad Dependent: keep.}
\stepdown
\stepbox{3. SOLVE THE SMALL CIRCUIT}{Find the part $\slot{pcA}{target}_k$. Often a divider (\S10). Else nodal or mesh.}
\stepdown
\stepbox{4. REPEAT}{Once per independent source.}
\stepdown
\stepbox{5. ADD}{$\slot{pcA}{target}=\slot{pcA}{part}_1+\slot{pcA}{part}_2+\cdots$ \why{all in the same direction}}
\stepdown
\stepbox{6. POWER (IF ASKED)}{From the total: $p=i^2R$. Never add the separate powers.}
\stepdown
\stepbox{7. CHECK}{Solve the full circuit once with nodal or mesh. Same answer.}
\end{rcol}

\subsection{19. Validating with simulation \bk{3-10}}
\begin{lcol}
\idea{A simulator solves the same equations. Use it to check a hand answer, and to test that the circuit behaves linearly.}
\begin{ftab}
$\%\,\text{error}=\dfrac{\lvert\text{sim}-\text{hand}\rvert}{\lvert\text{hand}\rvert}\times100$ & how far apart the answers are \st\\
DC operating point & every node voltage and branch current \\
sweep one source & linear: a straight line through the origin \\
\end{ftab}
\trap{A sign difference is usually a direction mismatch, not a wrong answer.}
\trap{Round only at the end.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- check a hand answer}
\stepbox{1. SAME SETUP}{Same ground node, same reference directions as the hand solution.}
\stepdown
\stepbox{2. RUN}{DC operating point. Read the target $v$ or $i$.}
\stepdown
\stepbox{3. COMPARE}{$\%$ error. A negative reading means the current flows opposite to your arrow.}

\subsubsection{Steps --- check linearity}
\stepbox{1. SCALE TEST}{Double one source. The output must double.}
\stepdown
\stepbox{2. SUPERPOSITION TEST}{Run each source alone, then all on. The parts must add to the total.}
\end{rcol}

\makeatother
```
