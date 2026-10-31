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

Textbook: Ulaby, Maharbiz, Furse, \emph{Circuit Analysis and Design}, 3rd ed., chapters 1--2. Gray tags like \bk{2-1} point to the book section. The book writes voltage as $\upsilon$ (upsilon). These notes write $v$.

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

\wk{8}{read the resistor above}
\stepbox{1. PIECES (WIDE GAP ON THE RIGHT, READ LEFT TO RIGHT)}{yellow $\to$ \pA{4}, \; purple $\to$ \pB{7}, \; red $\to$ \pC{$\times100$}, \; gold $\to$ \pD{$\pm5\%$}}
\stepdown
\stepbox{2. TEMPLATE (4 BANDS)}{$R=\big(\slot{pcA}{digit 1}\,\slot{pcB}{digit 2}\big)\times\slot{pcC}{multiplier}\;\pm\;\slot{pcD}{tolerance}$}
\stepdown
\stepbox{3. PLACE}{$R=(\pA{4}\pB{7})\times\pC{100}\pm\pD{5\%}=\keyres{4.7\text{ k}\Omega}$}
\stepdown
\stepbox{4. TOLERANCE RANGE}{$4700\times0.05=235$: \; from $\keyres{4465}$ to $\keyres{4935}\,\Omega$}
\stepdown
\stepbox{5. CHECK (REVERSE)}{$4700=47\times10^2$: digits $4$, $7$, then $2$ zeros: yellow, purple, red \checkmark}

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
The number in parentheses is the concept section.
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

\newpage
\section{DC Circuits --- Concepts}

\begin{multicols}{2}
\raggedcolumns

\term{How to read a worked example.} Every example is a puzzle: a colored piece in the problem or the diagram goes in the slot of the same color.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.27\linewidth}p{0.684\linewidth}@{}}
\term{Step} & \term{What it does} \\\hline
1. PIECES & Read each value off the problem or diagram. Give each one a color. Where to stand or what to read first is named in this title. \\[1pt]
2. TEMPLATE & The formula, with an empty slot \slot{pcA}{like this} for each piece, in the piece's color. \\[1pt]
3. PLACE & Put each piece in its slot. Then do the arithmetic. \\[1pt]
middle steps & One operation each, named by the operation: SOLVE, DROPS, REVERSE. \\[1pt]
last: CHECK & Test the answer: KCL, KVL, power balance, or a reverse calculation. \\
\end{tabular}}
\par\vspace{2pt}
\term{Colors.} Step 1 sets the colors for each example. In a diagram, a colored element goes in the slot of its color.

% ------------------------------------------------------------ 1
\filbreak \subsection{1. reading a circuit \bk{1-3}}
Label the nodes first. Every wire segment between elements is one node, even if it is drawn long. Merge points joined by a wire or a short.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src] (vs) at (0,1) {};
\node[font=\tiny] at (0,1.13) {$+$};
\node[font=\tiny] at (0,0.85) {$-$};
\node[left=0.05cm of vs] {$v_s$};
\node[res] (r1) at (1.5,2) {}; \node[above=0.05cm of r1] {$R_1$};
\node[vres] (r2) at (3,1) {}; \node[right=0.1cm of r2] {$R_2$};
\node[vres] (r3) at (4.5,1) {}; \node[right=0.1cm of r3] {$R_3$};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (4.5,2) -- (r3.north);
\draw[wire] (3,2) -- (r2.north);
\draw[wire] (r2.south) -- (3,0);
\draw[wire] (r3.south) -- (4.5,0) -- (0,0) -- (vs.south);
\fill[pcA] (0,2) circle (2.2pt) node[above left, text=pcA] {a};
\fill[pcB] (3,2) circle (2.2pt) node[above, text=pcB] {b};
\fill[pcC] (3,0) circle (2.2pt) node[below, text=pcC] {c};
\end{tikzpicture}

\wk{8}{classify the circuit above}
\stepbox{1. PIECES (WHAT TOUCHES EACH NODE)}{\pA{a}: $v_s$, $R_1$ (2) \quad \pB{b}: $R_1$, $R_2$, $R_3$ (3) \quad \pC{c}: $v_s$, $R_2$, $R_3$ (3)}
\stepdown
\stepbox{2. TEMPLATES}{\textbf{series}: only an \slot{pcA}{ordinary node (2 elements)} between them\\
\textbf{parallel}: they share \slot{pcB}{one end node} and \slot{pcC}{the other}}
\stepdown
\stepbox{3. PLACE}{\pA{a} ordinary $\Rightarrow$ $v_s$, $R_1$ \keyres{series}. \; $R_2$, $R_3$ share \pB{b} and \pC{c} $\Rightarrow$ \keyres{parallel}.\\
Meshes: ($v_s$, $R_1$, $R_2$) and ($R_2$, $R_3$) $=$ \keyres{2}.}
\stepdown
\stepbox{4. CHECK}{meshes $=$ branches $-$ nodes $+1=4-3+1=2$ \checkmark}

\term{Meters} \bk{Fig. 1-18}: a \keyres{voltmeter} goes in \keyres{parallel} (across the element), red lead on $+$. Ideal: no current. An \keyres{ammeter} goes in \keyres{series} (in the path). Ideal: no drop.

\warn{Same branch, same direction = same current.} Opposite arrows in one branch are negatives.

% ------------------------------------------------------------ 2
\filbreak \subsection{2. charge and current \bk{1-4}}
Current is the flow of \keyres{positive} charge. Electrons ($-e$) moving one way count as current the \keyres{other} way. Protons ($+e$) count in their own direction.
\begin{ftab}
$n=\dfrac{\lvert Q\rvert}{e}$, \; $Q=ne$ & (electrons) $=$ (charge) $\div$ (charge of one) \st\\
$Q=I\,t$, \; $I=\dfrac{Q}{t}$, \; $t=\dfrac{Q}{I}$ & (charge) $=$ (current)(time), constant current \st\\
$i(t)=\dfrac{dq}{dt}$ & (current) $=$ rate of change of (charge): \keyres{differentiate} \st\\
$q(t)=\int_{-\infty}^{t}i\,dt$ & (charge so far) $=$ total of (current): \keyres{integrate} \\
$\Delta Q=q(t_2)-q(t_1)=\int_{t_1}^{t_2}i\,dt$ & (charge moved from $t_1$ to $t_2$) \\
graph of $q(t)$ & current $=$ \keyres{slope} of each straight piece \\
graph of $i(t)$ & charge $=$ \keyres{area} under it (piece by piece) \\
\end{ftab}
\begin{qtab}
$2$ mC $\to$ electrons & $\dfrac{2\times10^{-3}}{1.6\times10^{-19}}=\keyres{1.25\times10^{16}}$ \st\\
$3\times10^{18}$ electrons/s go $+x$ / $10^{18}$ protons/s go $-x$ & both are current toward $-x$: $4\times10^{18}\cdot1.6\times10^{-19}=\keyres{0.64}$ A in $-x$ \\
$90$ C in $30$ s / \ / $0.5$ A for $2$ min & $\keyres{3}$ A / \ / $0.5\cdot120=\keyres{60}$ C \\
$q=3t^2$ mC $\to i$ & $\keyres{6t}$ mA \\
$q=0.8(1-e^{-0.5t})$ nC $\to i$ & $0.8\cdot0.5e^{-0.5t}=\keyres{0.4e^{-0.5t}}$ nA \\
$q$ rises $0\to6$ C in a line over $0$--$3$ s & slope: $6/3=\keyres{2}$ A \\
$i=4$ A for $2$ s, then $0$ & area: $4\cdot2=\keyres{8}$ C \\
$q=10te^{-t}$ C, when is $q$ largest? & $\frac{dq}{dt}=10e^{-t}(1-t)=0$ $\Rightarrow$ $t=\keyres{1}$ s, $q=10/e=3.68$ C \\
$i=0.4e^{-0.5t}$ nA, total to $\infty$ & $\frac{A}{a}=\frac{0.4}{0.5}=\keyres{0.8}$ nC \\
\end{qtab}
\warn{Time in seconds.} \; \warn{Given charge, find current: differentiate.} If your answer has a higher power of $t$, you integrated.

\wk{8}{(integrate) $i(t)=20e^{-0.5t}$ mA from $t=0$ to $4$ s}
\stepbox{1. PIECES}{\pA{$A=20$} mA \qquad \pB{$a=-0.5$} \qquad limits \pC{$0$}, \pC{$4$}}
\stepdown
\stepbox{2. TEMPLATE}{$\Delta Q=\displaystyle\int_{\slot{pcC}{bottom}}^{\slot{pcC}{top}}\slot{pcA}{$A$}\,e^{\slot{pcB}{$a$}t}\,dt=F(\text{top})-F(\text{bottom})$, \quad $F=\dfrac{\slot{pcA}{$A$}}{\slot{pcB}{$a$}}e^{\slot{pcB}{$a$}t}$}
\stepdown
\stepbox{3. PLACE}{$F(t)=\dfrac{\pA{20}}{\pB{-0.5}}e^{\pB{-0.5}t}=-40e^{-0.5t}$}
\stepdown
\stepbox{4. TOP MINUS BOTTOM}{$F(\pC4)-F(\pC0)=-40e^{-2}-(-40)=-5.413+40=\keyres{34.59}$ mC \why{mA$\cdot$s $=$ mC, $e^0=1$}}
\stepdown
\stepbox{5. CHECK}{all the way to $\infty$ gives $\frac{A}{\lvert a\rvert}=40$ mC. \; $34.59<40$, most of it by $4$ s \checkmark}

\wk{8}{(product rule) $q(t)=0.5t\cos(100\pi t)$ $\mu$C}
\stepbox{1. PIECES}{\pA{$f=0.5t$}, \pA{$f'=0.5$} \qquad \pB{$g=\cos(100\pi t)$}, \pB{$g'=-100\pi\sin(100\pi t)$}}
\stepdown
\stepbox{2. TEMPLATE}{$i=\dfrac{dq}{dt}=\slot{pcA}{$f'$}\,\slot{pcB}{$g$}+\slot{pcA}{$f$}\,\slot{pcB}{$g'$}$}
\stepdown
\stepbox{3. PLACE}{$i=\pA{0.5}\,\pB{\cos(100\pi t)}+\pA{0.5t}\,\pB{\big(-100\pi\sin(100\pi t)\big)}=\keyres{0.5\cos(100\pi t)-50\pi t\sin(100\pi t)}$ $\mu$A}
\stepdown
\stepbox{4. CHECK}{$t=0$: $i=0.5$ $\mu$A. Near $0$, $q\approx0.5t$, slope $0.5$ \checkmark}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. voltage, node voltage, and ground \bk{1-5.1}}
\term{Voltage} is energy per charge between two points. It is \emph{across} an element. A \term{node voltage} is measured from \keyres{ground} ($0$ V).
\begin{ftab}
$v_{ab}=\dfrac{dw}{dq}$ & (voltage of a over b) $=$ (energy) per (charge) \st\\
$V=\dfrac{W}{Q}$, \; $W=QV$ & constant case \st\\
$V_{ab}=V_a-V_b$ & (voltage between two nodes) $=$ (node voltage a) $-$ (node voltage b) \\
$V_{ab}=-V_{ba}$ & reversing the order flips the sign \\
\end{ftab}
\keyres{Moving ground} shifts every node voltage by the same amount. Voltage \emph{differences} do not change.
\begin{qtab}
$30$ J moves $5$ C & $V=30/5=\keyres{6}$ V \\
$V_a=9$, $V_b=5$, $V_c=0$ (ground c) $\to$ ground at b & subtract $5$: \; $V_a=\keyres{4}$, $V_b=\keyres{0}$, $V_c=\keyres{-5}$ V \\
$V_{ab}$ before and after & $9-5=4$ \; and \; $4-0=4$: \keyres{same} \\
\end{qtab}

% ------------------------------------------------------------ 4
\filbreak \subsection{4. power and energy \bk{1-5.2}}
\begin{ftab}
$p=v\,i$ & (power) $=$ (voltage)(current) \\
$I=\dfrac{P}{V}$, \; $V=\dfrac{P}{I}$ & rearranged \st\\
$\sum_{k} p_k=0$ & conservation: (power supplied) $=$ (power received) \\
$w=\int_{t_1}^{t_2}p\,dt$ & (energy) $=$ total of (power) over time \\
$W=P\,t$, \; $P=\dfrac{W}{t}$, \; $t=\dfrac{W}{P}$ & constant power \st\\
$W=V\,I\,t$ & (energy) $=$ (voltage)(current)(time) \\
$P_{av}=\dfrac{1}{T}\int_0^T p\,dt$ & (average power) $=$ (energy over $T$) $\div T$ \st\\
\end{ftab}
\term{Passive sign convention}: $i$ enters the $+$ side of $v$ $\Rightarrow$ $p=+vi$. Enters the $-$ side $\Rightarrow$ $p=-vi$. Then $p>0$: the device \keyres{receives} (absorbs) power. $p<0$: it \keyres{supplies} power.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[res, minimum width=1.0cm, minimum height=0.35cm] (e1) at (1,0) {};
\draw[wire] (0,0) -- (e1.west); \draw[wire] (e1.east) -- (2,0);
\node[text=pcA] at (0.3,-0.22) {$+$}; \node at (1.7,-0.22) {$-$};
\node at (1,-0.38) {$v$};
\draw[-{Latex[length=1.6mm]}, pcA, thick] (-0.1,0.25) -- (0.4,0.25) node[midway, above] {$i$};
\node[text=pcA] at (1,0.65) {$p=+v\,i$};
\node[res, minimum width=1.0cm, minimum height=0.35cm] (e2) at (4,0) {};
\draw[wire] (3,0) -- (e2.west); \draw[wire] (e2.east) -- (5,0);
\node at (3.3,-0.22) {$+$}; \node[text=pcC] at (4.7,-0.22) {$-$};
\node at (4,-0.38) {$v$};
\draw[-{Latex[length=1.6mm]}, pcC, thick] (5.1,0.25) -- (4.6,0.25) node[midway, above] {$i$};
\node[text=pcC] at (4,0.65) {$p=-v\,i$};
\end{tikzpicture}

\wk{8}{passive sign: who receives, who supplies}
\stepbox{1. PIECES}{the side the arrow enters: \pA{$+$} or \pC{$-$}, \; and the values $v$, $i$}
\stepdown
\stepbox{2. TEMPLATE}{$p=\slot{pcA}{$+$}\!/\!\slot{pcC}{$-$}\;v\,i$ \qquad $p>0$ receives, \; $p<0$ supplies}
\stepdown
\stepbox{3. PLACE}{$5$ V, $2$ A into \pA{$+$}: $\pA{+}(5)(2)=\keyres{+10}$ W receives \quad into \pC{$-$}: $\pC{-}(5)(2)=\keyres{-10}$ W supplies\\
$-3$ V, $4$ A into \pA{$+$}: $\pA{+}(-3)(4)=\keyres{-12}$ W supplies}
\stepdown
\stepbox{4. CHECK}{a resistor always receives: its current enters $+$, so $p=+vi>0$ \checkmark}

\begin{qtab}
three devices: $+20$, $-50$, $p_3$ & $20-50+p_3=0$ $\Rightarrow$ $p_3=\keyres{30}$ W \\
$24$ W for $1$ h & $24\cdot3600=\keyres{86{,}400}$ J \\
$p=10t$ W over $0$--$2$ s $\to P_{av}$ & $\frac12\int_0^210t\,dt=\frac12(20)=\keyres{10}$ W \\
$p(t)$ graph & energy $=$ \keyres{area} under $p$. \; Build $p=v\cdot i$ piece by piece \\
$v=50(1-e^{-0.5t})$ V, $i=4e^{-0.5t}$ mA at $t=1$ & $19.67\cdot2.426=\keyres{47.7}$ mW \\
\end{qtab}
\warn{$\int v\,i\,dt\neq\int v\,dt\cdot\int i\,dt$.} Multiply first. \; \warn{Maximum power}: set $\frac{dp}{dt}=0$.

\wk{8}{total energy, $v=50(1-e^{-0.5t})$ V, $i=4e^{-0.5t}$ mA, $0\to\infty$}
\stepbox{1. PIECES}{\pA{$v=50(1-e^{-0.5t})$} V \qquad \pB{$i=4e^{-0.5t}$} mA \qquad limits \pC{$0$}, \pC{$\infty$}}
\stepdown
\stepbox{2. TEMPLATE (MULTIPLY FIRST)}{$w=\displaystyle\int_{\slot{pcC}{bottom}}^{\slot{pcC}{top}}\slot{pcA}{$v$}\cdot\slot{pcB}{$i$}\,dt$}
\stepdown
\stepbox{3. PLACE, MULTIPLY}{$p=\pA{50(1-e^{-0.5t})}\cdot\pB{4e^{-0.5t}}=200e^{-0.5t}-200e^{-t}$ mW \why{$e^{-0.5t}e^{-0.5t}=e^{-t}$}}
\stepdown
\stepbox{4. INTEGRATE (SHORTCUT $\int_0^\infty Ae^{-at}dt=\frac Aa$)}{$w=\dfrac{200}{0.5}-\dfrac{200}{1}=400-200=\keyres{200}$ mJ \why{V$\cdot$mA$\cdot$s $=$ mJ}}
\stepdown
\stepbox{5. CHECK (ANTIDERIVATIVE)}{$F=-400e^{-0.5t}+200e^{-t}$: \; $F(\infty)-F(0)=0-(-200)=200$ \checkmark}

% ------------------------------------------------------------ 5
\filbreak \subsection{5. batteries, utility energy, heat, cost}
Course-assignment topics. Ah is \keyres{charge}. Wh and kWh are \keyres{energy}.
\begin{ftab}
$\text{Wh}=V\cdot\text{Ah}$ & (energy rating) $=$ (voltage)(charge rating) \\
$t=\dfrac{\text{Ah}}{I}=\dfrac{\text{Wh}}{P}$ & (run time, hours) \st\\
$\text{J}=\text{Wh}\cdot3600$, \; $\text{C}=\text{Ah}\cdot3600$ & hours to seconds \\
$n=\dfrac{W}{W_{\text{one}}}$ & (number of batteries filled), round \keyres{down} \st\\
$E=c\,m\,\Delta T$ & (heat) $=$ (specific heat)(mass)(temperature change) \\
$\Delta T=\dfrac{E}{c\,m}$, \; $m=\dfrac{E}{c\,\Delta T}$ & rearranged \st\\
cost $=\dfrac{\text{J}}{3.6\times10^6}\cdot$ rate & joules $\to$ kWh $\to$ cost \st\\
\end{ftab}
\begin{qtab}
$2.5$ Ah, $500$ mA load & $2.5/0.5=\keyres{5}$ h \\
$12$ V, $60$ Wh, $250$ mA load & $P=3$ W. \; $60/3=\keyres{20}$ h \\
$1.08$ MJ fills $3000$ mAh, $3.7$ V batteries & one: $11.1$ Wh $=39{,}960$ J. \; $27.03\to\keyres{27}$ \\
$0.5$ kg water, $20\to80^\circ$C & $4186\cdot0.5\cdot60=\keyres{125{,}580}$ J \\
$125{,}580$ J at $15$ cents/kWh & $0.03488\cdot15=\keyres{0.523}$ cents \\
\end{qtab}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. circuit elements, sources, switches \bk{1-6}}
\term{Active} devices need a power source (transistors, ICs). \term{Passive} devices do not (resistors, capacitors, inductors).
{\small
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Element} & \term{Rule} \\\hline
ideal voltage source & $v=V_s$ for any current. $i$--$v$ graph: vertical line \\[1pt]
ideal current source & $i=I_s$ for any voltage. $i$--$v$ graph: horizontal line \\[1pt]
real voltage source & $v_s$ in \keyres{series} with $R_s$. Ignore $R_s$ if $R_s\ll R_L$ \\[1pt]
real current source & $i_s$ in \keyres{parallel} with $R_s$. Ignore $R_s$ if $R_s\gg R_L$ \\[1pt]
SPST switch & closed $=$ short, open $=$ open. The label $t=t_0$ is when it changes \\[1pt]
SPDT switch & the common terminal moves from contact 1 to contact 2 at $t_0$ \\
\end{tabular}}
\begin{ftab}
$V_L=\dfrac{R_L}{R_s+R_L}\,v_s$ & (load voltage) of a real source \st\\
$v=\alpha\,v_x$ & VCVS: $\alpha$ has no units \\
$v=r\,i_x$ & CCVS: $r$ in V/A $=\Omega$ \\
$i=g\,v_x$ & VCCS: $g$ in A/V $=$ S \\
$i=\beta\,i_x$ & CCCS: $\beta$ has no units \\
\end{ftab}
\begin{qtab}
$9$ V, $R_s=1\,\Omega$, $R_L=8\,\Omega$ & $V_L=\frac89\cdot9=\keyres{8}$ V \\
CCVS $10\,i_x$, $i_x=0.5$ A & $\keyres{5}$ V \\
VCCS $0.2\,v_x$, $v_x=10$ V & $\keyres{2}$ A \\
switch closes at $t=2$ s & two circuits: $t<2$ (open branch), $t>2$ (short) \\
\end{qtab}
\warn{Dependent sources are models, not energy sources.} Solve them like any source: their value comes from $v_x$ or $i_x$.

% ------------------------------------------------------------ 7
\filbreak \subsection{7. Ohm's law and resistance \bk{2-1}}
\begin{ftab}
$V=I\,R$ & (voltage) $=$ (current)(resistance) \\
$I=\dfrac{V}{R}$, \; $R=\dfrac{V}{I}$ & rearranged \st\\
$I=\dfrac{V_a-V_b}{R}$ & current from a to b through $R$ \st\\
$G=\dfrac{1}{R}$, \; $I=GV$ & (conductance) $=1\div$(resistance) \st\\
\end{ftab}
\warn{Ohm's law follows the passive sign convention.} If $I$ enters the $-$ side, $I=-V/R$.

\term{Resistance of a shape}:
\begin{ftab}
$R=\dfrac{\rho\,\ell}{A}=\dfrac{\ell}{\sigma A}$ & (resistance) $=$ (resistivity)(length) $\div$ (area) \st\\
$\ell=\dfrac{RA}{\rho}=R\,\sigma A$ & (length) $=$ (resistance)(area) $\div$ (resistivity) \st\\
$A=\dfrac{\rho\,\ell}{R}$ & (area) $=$ (resistivity)(length) $\div$ (resistance) \st\\
$\rho=\dfrac{RA}{\ell}$, \; $\sigma=\dfrac{\ell}{RA}$ & identify the material from the table \st\\
\end{ftab}
\term{Temperature} \bk{P2.5}:
\begin{ftab}
$R=R_0(1+\alpha T)$ & $R_0$ at $0^\circ$C, $T$ in $^\circ$C, $\alpha$ in $^\circ$C$^{-1}$ \\
$T=\dfrac{R/R_0-1}{\alpha}$ & (temperature) for a given $R$ \st\\
$\dfrac{R_2}{R_1}=\dfrac{1+\alpha T_2}{1+\alpha T_1}$ & compare two temperatures \st\\
\end{ftab}
Copper: $\alpha=4\times10^{-3}$ $^\circ$C$^{-1}$. A \term{thermistor} is built to change a lot with $T$: $\Delta R=k\,\Delta T$.

\term{Power and power rating}:
\begin{ftab}
$P=VI=I^2R=\dfrac{V^2}{R}=GV^2$ & power in a resistor (always received, becomes heat) \st\\
$R=\dfrac{V^2}{P}$, \; $R=\dfrac{P}{I^2}$ & (resistance) from power \st\\
$I_{max}=\sqrt{\dfrac{P_{rated}}{R}}$, \; $V_{max}=\sqrt{P_{rated}R}$ & largest safe current, voltage \st\\
fraction $=\dfrac{P_{load}}{P_{source}}=\dfrac{I^2R_L}{VI}$ & share of the power that reaches the load \st\\
\end{ftab}
\term{Variable resistors} \bk{Table 2-3}: a \term{rheostat} (2 terminals) sets $0$ to $R_{max}$. A \term{potentiometer} (3 terminals) splits $R_{max}$: $R_{13}+R_{23}=R_{max}$.

\begin{qtab}
$10$ V across $2$ k$\Omega$ & $I=\keyres{5}$ mA \\
$100$ W lamp at $120$ V & $R=120^2/100=\keyres{144}\,\Omega$ \\
$2$ W in $50\,\Omega$ & $I=\sqrt{2/50}=\keyres{0.2}$ A \\
$\frac14$ W rating, $1$ k$\Omega$ & $I_{max}=\sqrt{0.25/1000}=\keyres{15.8}$ mA \\
carbon film: $\ell=2$ cm, $1$ mm wide, $0.1$ mm thick & $A=10^{-3}\cdot10^{-4}=10^{-7}$ m$^2$. \; $R=\frac{1.40\times10^{-5}\cdot0.02}{10^{-7}}=\keyres{2.8}\,\Omega$ \\
twin cable $10$ m long, AWG-14 copper & both wires: $\ell=\keyres{20}$ m. \; $R=\frac{1.72\times10^{-8}\cdot20}{2.01\times10^{-6}}=\keyres{0.171}\,\Omega$ \\
$12$ V, cable $0.1\,\Omega$, load $2.9\,\Omega$ & $I=4$ A. \; $\frac{16\cdot2.9}{12\cdot4}=\frac{46.4}{48}=\keyres{0.967}$ \\
copper, $R_0=100\,\Omega$: $R$ at $50^\circ$C & $100(1+0.004\cdot50)=\keyres{120}\,\Omega$ \\
when is copper $R$ $10\%$ above $R_0$? & $T=\frac{1.1-1}{0.004}=\keyres{25}^\circ$C \\
$10$ k$\Omega$ pot, wiper $30\%$ from terminal 1 & $R_{13}=\keyres{3}$ k$\Omega$, \; $R_{23}=\keyres{7}$ k$\Omega$ \\
\end{qtab}

\needspace{9\baselineskip}
{\small\renewcommand{\arraystretch}{1.35}
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Wire design chain} & \term{Copper, AWG-18, target $R=0.5\,\Omega$} \\\hline
1. $R$ (from $V$, $I$ if given) & $R=\dfrac{V}{I}$. Here $0.5\,\Omega$ is given \st\\
2. $d$ from the AWG table & $1.0$ mm $=1.0\times10^{-3}$ m \\
3. area & $A=\dfrac{\pi(1.0\times10^{-3})^2}{4}=7.854\times10^{-7}$ m$^2$ \st\\
4. length & $\ell=\dfrac{RA}{\rho}=\dfrac{0.5\cdot7.854\times10^{-7}}{1.72\times10^{-8}}=\keyres{22.8}$ m \st\\
\end{tabular}}
\par\vspace{2pt}
\warn{A two-wire cable is twice as long as the run.} Current goes out on one wire and back on the other.

% ------------------------------------------------------------ 8
\filbreak \subsection{8. Kirchhoff's laws \bk{2-2}}
\begin{ftab}
$\sum i_{\text{in}}=\sum i_{\text{out}}$ & KCL: (current into a node) $=$ (current out) \\
$\sum_n i_n=0$ & KCL, entering $=+$, leaving $=-$ (or the reverse) \\
$\sum_n v_n=0$ & KVL: voltages around a closed loop add to $0$ \\
$\sum v_{\text{rises}}=\sum v_{\text{drops}}$ & KVL, other form \\
$V_{ab}=$ sum along any path a$\to$b & path rule: $+v$ if you meet $+$ first \\
\end{ftab}
\term{KVL sign rule}: go \keyres{clockwise}. Enter an element at $+$: write $+v$. Enter at $-$: write $-v$. KCL also holds for a closed boundary around several nodes.

\term{How many equations?} \bk{2-2.3}
\begin{enumerate}
\item Count the unknowns: $N$.
\item Write $M$ KVL equations. Skip loops through a current source. Each new loop must use an element not used before.
\item Write $N-M$ KCL equations at extraordinary nodes.
\item Put Ohm's law in, then solve the system (Cramer's rule, reference page).
\end{enumerate}

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\fill[white] (0,0) circle (2pt);
\draw[-{Latex[length=1.6mm]}, pcA, thick] (-1.3,0) -- (-0.1,0) node[pos=0.4, above] {$4$ A};
\draw[-{Latex[length=1.6mm]}, pcA, thick] (0,1.0) -- (0,0.1) node[pos=0.4, right] {$2$ A};
\draw[-{Latex[length=1.6mm]}, pcB, thick] (0.1,0) -- (1.3,0) node[pos=0.6, above] {$3$ A};
\draw[-{Latex[length=1.6mm]}, pcB, thick] (0,-0.1) -- (0,-1.0) node[pos=0.6, right] {$i$};
\node[text=pcA] at (-0.9,-0.55) {in};
\node[text=pcB] at (0.9,-0.55) {out};
\end{tikzpicture}
\hfil
\begin{tikzpicture}[font=\scriptsize]
\fill[white] (0,0) circle (1.6pt) node[above] {a};
\node[res, minimum width=0.5cm] (e1) at (0.7,0) {}; \node[res, minimum width=0.5cm] (e2) at (1.7,0) {}; \node[res, minimum width=0.5cm] (e3) at (2.7,0) {};
\draw[wire] (0,0) -- (e1.west); \draw[wire] (e1.east) -- (e2.west); \draw[wire] (e2.east) -- (e3.west); \draw[wire] (e3.east) -- (3.4,0);
\fill[white] (3.4,0) circle (1.6pt) node[above] {b};
\node[text=pcA] at (0.35,0.2) {$+$}; \node at (1.05,0.2) {$-$}; \node[text=pcA] at (0.7,-0.28) {$5$ V};
\node[text=pcC] at (1.35,0.2) {$-$}; \node at (2.05,0.2) {$+$}; \node[text=pcC] at (1.7,-0.28) {$3$ V};
\node[text=pcA] at (2.35,0.2) {$+$}; \node at (3.05,0.2) {$-$}; \node[text=pcA] at (2.7,-0.28) {$2$ V};
\draw[-{Latex[length=1.4mm]}, white!60] (0.2,-0.55) -- (3.2,-0.55) node[midway, below] {walk a $\to$ b};
\end{tikzpicture}

\wk{8}{KCL at the dot (left)}
\stepbox{1. PIECES}{\pA{in}: $4$ A, $2$ A \qquad \pB{out}: $3$ A, $i$}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcA}{in}+\slot{pcA}{in}=\slot{pcB}{out}+\slot{pcB}{out}$}
\stepdown
\stepbox{3. PLACE, SOLVE}{$\pA{4}+\pA{2}=\pB{3}+\pB{i}$ $\Rightarrow$ $i=\keyres{3}$ A}
\stepdown
\stepbox{4. CHECK}{in $6$ A, out $3+3=6$ A \checkmark}

\wk{8}{$V_{ab}$ by walking the path (right)}
\stepbox{1. PIECES (SIGN MET FIRST)}{\pA{$+$ first}: $5$ V, $2$ V \qquad \pC{$-$ first}: $3$ V}
\stepdown
\stepbox{2. TEMPLATE}{$V_{ab}=\slot{pcA}{$+v$}\;\slot{pcC}{$-v$}\;\cdots$ \; one term per element, in walking order}
\stepdown
\stepbox{3. PLACE, SOLVE}{$V_{ab}=\pA{+5}\;\pC{-3}\;\pA{+2}=\keyres{4}$ V}
\stepdown
\stepbox{4. CHECK (WALK BACK b $\to$ a)}{$-2+3-5=-4=V_{ba}=-V_{ab}$ \checkmark}

\begin{qtab}
$1$ A in / $3$ A and $i$ out & $i=-2$: \keyres{$2$ A in}, against the arrow \\
$10$ A in / $i_x$ and $1.5\,i_x$ out & $10=2.5\,i_x$ $\Rightarrow$ $i_x=\keyres{4}$ A \\
$12$ V source, $5$ V on $R_1$, find $v_2$ & $-12+5+v_2=0$ $\Rightarrow$ $\keyres{7}$ V \\
$36$ V, $2\,\Omega$, $4\,\Omega$, CCVS $3i$ in one loop & $36=2i+4i+3i$ $\Rightarrow$ $i=\keyres{4}$ A \\
$3$ unknown currents, $1$ current source & $M=$ loops that avoid the source, the rest KCL \\
\end{qtab}
\warn{A negative answer is fine.} The current flows opposite to your arrow.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcA] (vs) at (0,1) {};
\node[font=\tiny, text=pcA] at (0,1.13) {$+$};
\node[font=\tiny, text=pcA] at (0,0.85) {$-$};
\node[left=0.05cm of vs, text=pcA] {$12$ V};
\node[res, draw=pcB] (r1) at (1.5,2) {};
\node[above=0.05cm of r1, text=pcB] {$2\,\Omega$};
\node[vres, draw=pcC] (r2) at (3,1) {};
\node[right=0.12cm of r2, text=pcC] {$4\,\Omega$};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (3,2) -- (r2.north);
\draw[wire] (r2.south) -- (3,0) -- (0,0) -- (vs.south);
\draw[iarrow] (0.35,2.2) -- (0.9,2.2) node[midway, above] {$i$};
\node[text=pcB] at (1.05,1.75) {$+$}; \node[text=pcB] at (1.95,1.75) {$-$};
\node[text=pcB, below=0.08cm of r1] {$v_1$};
\node[text=pcC] at (2.72,1.35) {$+$}; \node[text=pcC] at (2.72,0.65) {$-$};
\node[text=pcC] at (2.6,1) {$v_2$};
\end{tikzpicture}

\wk{8}{KVL clockwise around the loop above}
\stepbox{1. PIECES (SIGN MET FIRST, FROM BOTTOM LEFT)}{\pA{source} at $-$ \qquad \pB{$v_1$} at $+$ \qquad \pC{$v_2$} at $+$}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcA}{$\pm$ source}+\slot{pcB}{$\pm v_1$}+\slot{pcC}{$\pm v_2$}=0$, \; Ohm: $v=iR$}
\stepdown
\stepbox{3. PLACE, SOLVE}{$\pA{-12}+\pB{2i}+\pC{4i}=0$ $\Rightarrow$ $i=\keyres{2}$ A. \; $v_1=\keyres{4}$ V, $v_2=\keyres{8}$ V}
\stepdown
\stepbox{4. CHECK (POWER)}{$8+16-24=0$ \checkmark \; \why{source supplies $24$ W}}

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcA] (is) at (0,1) {};
\draw[-{Latex[length=1.4mm]}, pcA, thick] (0,0.82) -- (0,1.2);
\node[left=0.05cm of is, text=pcA] {$6$ A};
\node[vres, draw=pcB] (ra) at (1.6,1) {}; \node[right=0.1cm of ra, text=pcB] {$2\,\Omega$};
\node[vres, draw=pcC] (rb) at (3.0,1) {}; \node[right=0.1cm of rb, text=pcC] {$3\,\Omega$};
\draw[wire] (is.north) -- (0,2) -- (3.0,2) -- (rb.north);
\draw[wire] (1.6,2) -- (ra.north);
\draw[wire] (is.south) -- (0,0) -- (3.0,0) -- (rb.south);
\draw[wire] (ra.south) -- (1.6,0);
\fill[white] (1.6,2) circle (1.8pt) node[above] {a: $v$};
\node[below, text=pcD] at (1.6,0) {ground, $0$ V};
\end{tikzpicture}

\wk{8}{KCL with a node voltage (above)}
\stepbox{1. PIECES (STAND AT a, CROSS EACH $R$)}{\pA{$6$ A} in \qquad \pB{$2\,\Omega$} $\to$ \pD{ground} \qquad \pC{$3\,\Omega$} $\to$ \pD{ground}}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcA}{in}=\dfrac{v-\slot{pcD}{far}}{\slot{pcB}{$R$}}+\dfrac{v-\slot{pcD}{far}}{\slot{pcC}{$R$}}$}
\stepdown
\stepbox{3. PLACE, SOLVE}{$\pA{6}=\dfrac{v-\pD{0}}{\pB{2}}+\dfrac{v-\pD{0}}{\pC{3}}=\dfrac{5v}{6}$ $\Rightarrow$ $v=\keyres{7.2}$ V}
\stepdown
\stepbox{4. CHECK}{$\frac{7.2}{2}+\frac{7.2}{3}=3.6+2.4=6$ A \checkmark}

% ------------------------------------------------------------ 8b
\filbreak \subsection{8b. nodal analysis: the walk}
Unknowns are node voltages. Write one KCL per unknown node. KVL is automatic, since every drop is a difference of node voltages.
\begin{ftab}
$i=\dfrac{V_{\text{here}}-V_{\text{far}}}{R}$ & current \emph{leaving} through one $R$: stand here, cross it, note where you land \st\\
$\sum i_{\text{leaving}}=0$ & one fraction per $R$ touching the node \\
source $+$ series $R$ & far node $=$ source top $=+v_s$, \; $-$ on top: $-v_s$ \\
$p_{src}=v_s\lvert i_{\text{series}}\rvert$ & leaves its $+$: \keyres{supplies}, enters $+$: \keyres{absorbs} \\
\end{ftab}
\term{Steps}: (1) ground the node most sources touch. (2) Mark known nodes (source tops). (3) KCL at each unknown, here-node first. (4) Multiply \emph{every term} by the LCD. (5) Solve, then plug back in: each equation $=0$.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src] (v1) at (0,1) {}; \node[font=\tiny] at (0,1.13) {$+$}; \node[font=\tiny] at (0,0.85) {$-$};
\node[left=0.05cm of v1] {$12$ V};
\node[src] (v2) at (5,1) {}; \node[font=\tiny] at (5,1.13) {$+$}; \node[font=\tiny] at (5,0.85) {$-$};
\node[right=0.05cm of v2] {$3$ V};
\node[res, draw=pcB] (ra) at (1.4,2) {}; \node[above=0.05cm of ra, text=pcB] {$2\,\Omega$};
\node[vres, draw=pcC] (rb) at (2.5,1) {}; \node[right=0.08cm of rb, text=pcC] {$2\,\Omega$};
\node[res, draw=pcD] (rc) at (3.6,2) {}; \node[above=0.05cm of rc, text=pcD] {$2\,\Omega$};
\draw[wire] (v1.north) -- (0,2) -- (ra.west); \draw[wire] (ra.east) -- (rc.west); \draw[wire] (rc.east) -- (5,2) -- (v2.north);
\draw[wire] (2.5,2) -- (rb.north); \draw[wire] (rb.south) -- (2.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (v2.south);
\fill[pcB] (0.4,2) circle (1.6pt) node[below right, text=pcB] {$12$};
\fill[pcD] (4.6,2) circle (1.6pt) node[below left, text=pcD] {$3$};
\fill[pcA] (2.5,2) circle (2.2pt) node[above, text=pcA] {$V_a$};
\node[below, text=pcC] at (2.5,0) {ground $0$};
\end{tikzpicture}

\wk{8}{one unknown node (above)}
\stepbox{1. PIECES (STAND AT \pA{$V_a$})}{\pB{left $2\,\Omega$} $\to$ \pB{$12$} \qquad \pC{middle $2\,\Omega$} $\to$ \pC{$0$} \qquad \pD{right $2\,\Omega$} $\to$ \pD{$3$}}
\stepdown
\stepbox{2. TEMPLATE}{$\dfrac{\pA{V_a}-\slot{pcB}{far}}{\slot{pcB}{$R$}}+\dfrac{\pA{V_a}-\slot{pcC}{far}}{\slot{pcC}{$R$}}+\dfrac{\pA{V_a}-\slot{pcD}{far}}{\slot{pcD}{$R$}}=0$}
\stepdown
\stepbox{3. PLACE}{$\dfrac{\pA{V_a}-\pB{12}}{\pB{2}}+\dfrac{\pA{V_a}-\pC{0}}{\pC{2}}+\dfrac{\pA{V_a}-\pD{3}}{\pD{2}}=0$}
\stepdown
\stepbox{4. $\times2$ EVERY TERM, SOLVE}{$3V_a-15=0$ $\Rightarrow$ $V_a=\keyres{5}$ V \why{between $3$ and $12$}\\
leaving: $\pB{-3.5}$ A \why{$3.5$ A in}, \; $\pC{2.5}$ A, \; $\pD{1}$ A \why{sum $0$ \checkmark}}
\stepdown
\stepbox{5. CHECK (POWER): $p_{src}=\slot{white}{$v_s$}\cdot\slot{pcB}{$\lvert i_{\text{series}}\rvert$}$, \; $p_R=i^2R$}{$12$ V: $3.5$ A leaves $+$ $\Rightarrow$ $12(3.5)=\keyres{42}$ W supplied. \; $3$ V: $1$ A enters $+$ $\Rightarrow$ $\keyres{3}$ W absorbed.\\
resistors $24.5+12.5+2=39$. \; $39+3=42$ \checkmark}

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src] (v1) at (0,0.6) {}; \node[font=\tiny] at (0,0.73) {$+$}; \node[font=\tiny] at (0,0.45) {$-$};
\node[left=0.05cm of v1] {$14$ V};
\node[vres, draw=pcB] (r1) at (0,1.65) {}; \node[left=0.08cm of r1, text=pcB] {$2\,\Omega$};
\node[vres] (r2) at (1.5,1.2) {}; \node[right=0.08cm of r2] {$2\,\Omega$};
\node[res, draw=pcC] (r3) at (2.5,2.3) {}; \node[above=0.05cm of r3, text=pcC] {$2\,\Omega$};
\node[vres] (r4) at (3.5,1.2) {}; \node[right=0.08cm of r4] {$2\,\Omega$};
\node[vres, draw=pcD] (r5) at (5,1.65) {}; \node[right=0.08cm of r5, text=pcD] {$2\,\Omega$};
\node[src] (v2) at (5,0.6) {}; \node[font=\tiny] at (5,0.73) {$-$}; \node[font=\tiny] at (5,0.45) {$+$};
\node[right=0.05cm of v2] {$2$ V};
\draw[wire] (v1.north) -- (r1.south); \draw[wire] (r1.north) -- (0,2.3) -- (r3.west);
\draw[wire] (r3.east) -- (5,2.3) -- (r5.north); \draw[wire] (r5.south) -- (v2.north);
\draw[wire] (1.5,2.3) -- (r2.north); \draw[wire] (r2.south) -- (1.5,0);
\draw[wire] (3.5,2.3) -- (r4.north); \draw[wire] (r4.south) -- (3.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (v2.south);
\fill[pcB] (0,1.0) circle (1.6pt) node[right, text=pcB] {$+14$};
\fill[pcD] (5,1.0) circle (1.6pt) node[left, text=pcD] {$-2$};
\fill[pcA] (1.5,2.3) circle (2.2pt) node[above, text=pcA] {$V_a$};
\fill[pcE] (3.5,2.3) circle (2.2pt) node[above, text=pcE] {$V_b$};
\node[below] at (2.5,0) {ground $0$};
\end{tikzpicture}

\wk{8}{two unknown nodes (above)}
\stepbox{1. PIECES}{known: \pB{$+14$}, \pD{$-2$} \why{$-$ on top}. \quad at \pA{$V_a$}: \pB{$\to14$}, $\to0$, \pC{$\to V_b$}. \quad at \pE{$V_b$}: \pD{$\to-2$}, $\to0$, \pC{$\to V_a$}}
\stepdown
\stepbox{2. TEMPLATE (ONE KCL PER UNKNOWN NODE)}{$\displaystyle\sum\frac{V_{\text{here}}-\slot{white}{far}}{R}=0$, \; one fraction per $R$ touching the node}
\stepdown
\stepbox{3. PLACE AT $V_a$, $\times2$}{$\dfrac{\pA{V_a}-\pB{14}}{\pB2}+\dfrac{\pA{V_a}-0}{2}+\dfrac{\pA{V_a}-\pC{V_b}}{\pC2}=0$ $\Rightarrow$ $3V_a-V_b=14$}
\stepdown
\stepbox{4. PLACE AT $V_b$, $\times2$}{$\dfrac{\pE{V_b}-(\pD{-2})}{\pD2}+\dfrac{\pE{V_b}-0}{2}+\dfrac{\pE{V_b}-\pC{V_a}}{\pC2}=0$ $\Rightarrow$ $3V_b-V_a=-2$}
\stepdown
\stepbox{5. SUBSTITUTE THE COEFFICIENT-1 VARIABLE}{$V_a=3V_b+2$ $\Rightarrow$ $3(3V_b+2)-V_b=14$ $\Rightarrow$ $V_b=\keyres{1}$ V, \; $V_a=\keyres{5}$ V}
\stepdown
\stepbox{6. CHECK}{$3(5)-1=14$ \checkmark \qquad $3(1)-5=-2$ \checkmark}

\warn{One node, one voltage}: every $R$ touching it goes in the same equation. The shared $R$ appears in both, flipped. \; \warn{Minus before parentheses flips every term}: $-(x-8)=-x+8$. \; \warn{Labeled $\pm V_x$}: $+$ end minus $-$ end.

% ------------------------------------------------------------ 9
\filbreak \subsection{9. series and parallel resistors \bk{2-3}}
\begin{ftab}
$R_{eq}=R_1+R_2+\cdots$ & \term{series}: resistances add \\
$\dfrac{1}{R_{eq}}=\dfrac{1}{R_1}+\dfrac{1}{R_2}+\cdots$ & \term{parallel}: reciprocals add, then flip \st\\
$R_1\parallel R_2=\dfrac{R_1R_2}{R_1+R_2}$ & two in parallel: (product) $\div$ (sum) \st\\
$\dfrac{R_1R_2R_3}{R_1R_2+R_2R_3+R_1R_3}$ & three in parallel \st\\
$G_{eq}=G_1+G_2+\cdots$ & parallel conductances add \\
\end{ftab}
\keyres{Series total $>$ the biggest. Parallel total $<$ the smallest.} Two circuits are \term{equivalent} if they have the same $i$--$v$ at their terminals.

\filbreak \subsubsection{Combination chart}
{\small\renewcommand{\arraystretch}{1.35}
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.25\linewidth}>{\raggedright\arraybackslash}p{0.27\linewidth}>{\raggedright\arraybackslash}p{0.38\linewidth}@{}}
\term{Pattern} & \term{Formula} & \term{Example ($\Omega$)} \\\hline
two in series & $R_1+R_2$ & $2+3=\keyres{5}$ \\
three in series & $R_1+R_2+R_3$ & $1+2+3=\keyres{6}$ \\
two in parallel & $\dfrac{R_1R_2}{R_1+R_2}$ & $6\parallel3=\dfrac{18}{9}=\keyres{2}$ \st\\
two equal, parallel & $\dfrac{R}{2}$ & $10\parallel10=\keyres{5}$ \st\\
$N$ equal, parallel & $\dfrac{R}{N}$ & four $100$s: $\dfrac{100}{4}=\keyres{25}$ \st\\
three in parallel ($2$, $3$, $6$) & $\dfrac{1}{\frac{1}{R_1}+\frac{1}{R_2}+\frac{1}{R_3}}$ & $\dfrac{1}{0.5+0.333+0.167}=\keyres{1}$ \st\\
series, then parallel & $(R_1+R_2)\parallel R_3$ & $(2+4)\parallel3=6\parallel3=\keyres{2}$ \\
parallel, then series & $(R_1\parallel R_2)+R_3$ & $(6\parallel3)+4=2+4=\keyres{6}$ \\
two series pairs, parallel & $(R_1+R_2)\parallel(R_3+R_4)$ & $(1+5)\parallel(4+2)=6\parallel6=\keyres{3}$ \\
wire across (short) & $R\parallel0=0$ & $6\parallel0=\keyres{0}$ \\
open branch in parallel & $R\parallel\infty=R$ & $6\parallel\infty=\keyres{6}$ \\
open in series & $R+\infty=\infty$ & no current flows \\
missing $R$, series & $R=R_{eq}-R_1$ & $1000-330=\keyres{670}$ \\
missing $R$, parallel & $R=\dfrac{R_{eq}R_1}{R_1-R_{eq}}$ & $R\parallel12=4$: $\dfrac{4\cdot12}{12-4}=\keyres{6}$ \st\\
\end{tabular}}
\par\vspace{2pt}
\term{How to reduce}: label the nodes. Merge nodes joined by wires or shorts. Find a clear series pair or parallel pair. Replace it. Redraw. Repeat, starting \keyres{farthest from the terminals}.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[res, draw=pcC] (r1) at (1,2) {}; \node[above=0.05cm of r1, text=pcC] {$R_1=4\,\Omega$};
\node[vres, draw=pcB] (r2) at (2,1) {}; \node[right=0.1cm of r2, text=pcB] {$R_2=24\,\Omega$};
\node[res, draw=pcA] (r3) at (3.3,2) {}; \node[above=0.05cm of r3, text=pcA] {$R_3=2\,\Omega$};
\node[vres, draw=pcA] (r4) at (4.6,1) {}; \node[right=0.1cm of r4, text=pcA] {$R_4=6\,\Omega$};
\draw[wire] (0,2) -- (r1.west); \draw[wire] (r1.east) -- (2,2) -- (r3.west); \draw[wire] (2,2) -- (r2.north);
\draw[wire] (r2.south) -- (2,0); \draw[wire] (r3.east) -- (4.6,2) -- (r4.north); \draw[wire] (r4.south) -- (4.6,0) -- (0,0);
\draw[white, fill=black] (0,2) circle (2pt) node[left, text=keyHi] {a};
\draw[white, fill=black] (0,0) circle (2pt) node[left, text=keyHi] {b};
\end{tikzpicture}

\wk{8}{reduce the ladder above to $R_{ab}$}
\stepbox{1. PIECES (FARTHEST FROM a, b FIRST)}{\pA{$R_3$, $R_4$} series \qquad \pB{$R_2$} parallel to that pair \qquad \pC{$R_1$} series with the rest}
\stepdown
\stepbox{2. TEMPLATES}{series: $\slot{pcA}{R}+\slot{pcA}{R}$ \qquad parallel: $\dfrac{\slot{pcB}{R}\cdot\slot{pcA}{R}}{\slot{pcB}{R}+\slot{pcA}{R}}$}
\stepdown
\stepbox{3. PLACE (INSIDE OUT)}{$\pA{2+6}=\pA{8}$. \quad $\dfrac{\pB{24}\cdot\pA{8}}{\pB{24}+\pA{8}}=6$. \quad $R_{ab}=\pC{4}+6=\keyres{10}\,\Omega$}
\stepdown
\stepbox{4. CHECK}{parallel $6<8$, the smaller \checkmark \qquad series $10>4$ \checkmark}

\wk{8}{reduce $R_{eq}=2+\big[12\parallel(4+6\parallel3)\big]$ $\Omega$, inside out}
\stepbox{1. PIECES (INNERMOST FIRST)}{\pA{$6\parallel3$}, \; then \pB{$4+(\cdot)$}, \; then \pC{$12\parallel(\cdot)$}, \; then \pD{$2+(\cdot)$}}
\stepdown
\stepbox{2. TEMPLATES}{series: $\slot{white}{$R$}+\slot{white}{$R$}$ \qquad parallel: $\dfrac{\slot{white}{$R$}\cdot\slot{white}{$R$}}{\slot{white}{$R$}+\slot{white}{$R$}}$}
\stepdown
\stepbox{3. PLACE}{\pA{$\frac{6\cdot3}{9}=2$} \; $\to$ \; \pB{$4+2=6$} \; $\to$ \; \pC{$\frac{12\cdot6}{18}=4$} \; $\to$ \; \pD{$2+4$} $=\keyres{6}\,\Omega$}
\stepdown
\stepbox{4. CHECK}{$12\parallel6=4$ is below $6$, the smaller \checkmark}

% ------------------------------------------------------------ 10
\filbreak \subsection{10. voltage and current dividers \bk{2-3}}
\begin{ftab}
$v_1=\dfrac{R_1}{R_1+R_2}\,v_s$ & \term{voltage divider} (series): \keyres{own} $R$ on top \st\\
$v_k=\dfrac{R_k}{R_1+\cdots+R_N}\,v_s$ & $N$ series resistors \st\\
$V_{\text{node}}=\dfrac{R_{\text{below}}}{R_T}\,v_s$ & node voltage (from ground): $R_{\text{below}}=$ sum of every $R$ between the node and ground \st\\
$v_k=V_{\text{top}}-V_{\text{bottom}}$ & across one resistor $=$ difference of its two end nodes \\
$p_k=(V_{\text{top}}-V_{\text{bottom}})\,I$ & series power. All $p_k$ add to $v_s I$ \\
$R_2=\dfrac{R_1\,v_2}{v_s-v_2}$ & resistor for a target $v_2$ \st\\
$i_1=\dfrac{R_2}{R_1+R_2}\,i_s=\dfrac{G_1}{G_{eq}}\,i_s$ & \term{current divider} (parallel): \keyres{other} $R$ on top, or own $G$ \st\\
$i_k=\dfrac{R_{eq}}{R_k}\,i_s$ & any number of parallel branches \st\\
$R_2=\dfrac{R_1\,(i_s-i_2)}{i_2}$ & resistor for a target $i_2$ \st\\
\end{ftab}

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcC] (vs) at (0,1) {};
\node[font=\tiny, text=pcC] at (0,1.13) {$+$}; \node[font=\tiny, text=pcC] at (0,0.85) {$-$};
\node[left=0.05cm of vs, text=pcC] {$12$ V};
\node[res, draw=pcA] (r1) at (1.5,2) {}; \node[above=0.05cm of r1, text=pcA] {$R_1=2$ k};
\node[vres, draw=pcB] (r2) at (3,1) {}; \node[right=0.12cm of r2, text=pcB] {$R_2=4$ k};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (3,2) -- (r2.north);
\draw[wire] (r2.south) -- (3,0) -- (0,0) -- (vs.south);
\node[text=pcA, below=0.08cm of r1] {$+\;v_1\;-$};
\node[text=pcB] at (2.6,1) {$v_2$};
\end{tikzpicture}

\wk{8}{voltage divider: $v_1$ and $v_2$ above}
\stepbox{1. PIECES (FOR $v_1$)}{own: \pA{$R_1$} \qquad all series: \pA{$R_1$}, \pB{$R_2$} \qquad source: \pC{$12$ V}}
\stepdown
\stepbox{2. TEMPLATE}{$v=\dfrac{\slot{pcA}{own $R$}}{\slot{pcB}{every series $R$}}\cdot\slot{pcC}{source}$}
\stepdown
\stepbox{3. PLACE}{$v_1=\dfrac{\pA{2}}{\pA{2}+\pB{4}}\cdot\pC{12}=\keyres{4}$ V. \; Own $\to$ \pB{$R_2$}: $v_2=\dfrac{\pB4}{6}\cdot12=\keyres{8}$ V}
\stepdown
\stepbox{4. CHECK (KVL)}{$4+8=12$, the source \checkmark}

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src] (vs) at (0,1.5) {};
\node[font=\tiny] at (0,1.63) {$+$}; \node[font=\tiny] at (0,1.35) {$-$};
\node[left=0.05cm of vs] {$12$ V};
\node[vres] (r1) at (2,2.55) {}; \node[left=0.1cm of r1] {$R_1=2$};
\node[vres, draw=pcA] (r2) at (2,1.5) {}; \node[left=0.1cm of r2, text=pcA] {$R_2=4$};
\node[vres, draw=pcA] (r3) at (2,0.45) {}; \node[left=0.1cm of r3, text=pcA] {$R_3=6$};
\draw[wire] (vs.north) -- (0,3.1) -- (2,3.1) -- (r1.north);
\draw[wire] (r1.south) -- (r2.north); \draw[wire] (r2.south) -- (r3.north);
\draw[wire] (r3.south) -- (2,-0.1) -- (0,-0.1) -- (vs.south);
\fill[white] (2,3.1) circle (1.6pt) node[right] {A $=12$};
\fill[pcB] (2,2.025) circle (2pt) node[right, text=pcB] {B};
\fill[white] (2,0.975) circle (1.6pt) node[right] {C};
\fill[white] (2,-0.1) circle (1.6pt) node[below] {D $=0$ (ground)};
\draw[pcA] (2.9,1.95) -- (3.0,1.95) -- (3.0,-0.05) -- (2.9,-0.05);
\node[right, text=pcA] at (3.0,0.95) {below B};
\end{tikzpicture}

\wk{8}{node voltages in a series stack (above), $R$ in $\Omega$}
\stepbox{1. PIECES}{$R_T=12$ \qquad between \pB{B} and ground: \pA{$R_2$, $R_3$}}
\stepdown
\stepbox{2. TEMPLATES}{$V_{\text{node}}=\dfrac{\slot{pcA}{sum of $R$ below the node}}{\slot{white}{$R_T$}}\cdot v_s$ \qquad $v_k=\slot{white}{$V_{\text{top}}$}-\slot{white}{$V_{\text{bottom}}$}$}
\stepdown
\stepbox{3. PLACE}{$V_{\pB{B}}=\dfrac{\pA{4+6}}{12}\cdot12=\keyres{10}$ V, \; $V_C=\dfrac{6}{12}\cdot12=\keyres{6}$ V, \; $v_2=V_B-V_C=\keyres{4}$ V \why{$=\frac4{12}\cdot12$ \checkmark}}
\stepdown
\stepbox{4. CHECK (POWER): $p=(V_{\text{top}}-V_{\text{bottom}})\,I$}{$I=1$ A: \; $p_1=2$, $p_2=4$, $p_3=6$ W. \; sum $12=v_sI$ \checkmark}

\warn{Node voltage $=$ voltage across only when the other end is ground.} $V_B\neq v_2$, but $V_C=v_3$.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcC] (is) at (0,1) {};
\draw[-{Latex[length=1.4mm]}, pcC, thick] (0,0.82) -- (0,1.2);
\node[left=0.05cm of is, text=pcC] {$6$ A};
\node[vres, draw=pcA] (ra) at (1.6,1) {}; \node[right=0.1cm of ra, text=pcA] {$3\,\Omega$};
\node[vres, draw=pcB] (rb) at (3.0,1) {}; \node[right=0.1cm of rb, text=pcB] {$6\,\Omega$};
\draw[wire] (is.north) -- (0,2) -- (3.0,2) -- (rb.north);
\draw[wire] (1.6,2) -- (ra.north);
\draw[wire] (is.south) -- (0,0) -- (3.0,0) -- (rb.south);
\draw[wire] (ra.south) -- (1.6,0);
\draw[iarrow] (1.32,1.75) -- (1.32,1.3) node[midway, left] {$i_1$};
\end{tikzpicture}

\wk{8}{current divider: $i_1$ above}
\stepbox{1. PIECES (FOR $i_1$)}{own: \pA{$3\,\Omega$} \qquad other: \pB{$6\,\Omega$} \qquad source: \pC{$6$ A}}
\stepdown
\stepbox{2. TEMPLATE}{$i=\dfrac{\slot{pcB}{other $R$}}{\slot{white}{both $R$ added}}\cdot\slot{pcC}{$i_s$}$}
\stepdown
\stepbox{3. PLACE}{$i_1=\dfrac{\pB6}{\pA3+\pB6}\cdot\pC6=\keyres{4}$ A. \; $i_2=\dfrac{\pA3}{9}\cdot6=\keyres{2}$ A}
\stepdown
\stepbox{4. CHECK}{KCL: $4+2=6$ \checkmark \qquad same voltage: $4\cdot3=2\cdot6=12$ V \checkmark}

\begin{qtab}
$12$ V, $R_1=9$ k, want $v_2=3$ V & $R_2=\frac{9\cdot3}{12-3}=\keyres{3}$ k$\Omega$ \\
$12$ A into $2$, $3$, $6\,\Omega$ ($R_{eq}=1$) & $\frac{1}{2}\cdot12=\keyres{6}$, $\frac13\cdot12=\keyres{4}$, $\frac16\cdot12=\keyres{2}$ A \\
$10$ A, $R_1=4\,\Omega$, want $i_2=2$ A & $R_2=\frac{4(10-2)}{2}=\keyres{16}\,\Omega$ \\
\end{qtab}
\warn{A load across a divider changes it.} Combine the load with the resistor it sits across first, then divide.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcC] (vs) at (0,1) {};
\node[font=\tiny, text=pcC] at (0,1.13) {$+$};
\node[font=\tiny, text=pcC] at (0,0.85) {$-$};
\node[left=0.05cm of vs, text=pcC] {$12$ V};
\node[res, draw=pcB] (r1) at (1.5,2) {};
\node[above=0.05cm of r1, text=pcB] {$R_1=10$ k$\Omega$};
\node[vres, draw=pcA] (r2) at (3,1) {};
\node[left=0.1cm of r2, text=pcA] {$R_2=10$ k$\Omega$};
\node[vres, draw=pcA] (rl) at (4.3,1) {};
\node[right=0.1cm of rl, text=pcA] {$R_L=10$ k$\Omega$};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (4.3,2) -- (rl.north);
\draw[wire] (3,2) -- (r2.north);
\draw[wire] (rl.south) -- (4.3,0) -- (0,0) -- (vs.south);
\draw[wire] (r2.south) -- (3,0);
\fill[keyHi] (3,2) circle (1.6pt) node[above, text=keyHi] {$v_{out}$};
\end{tikzpicture}

\wk{8}{the loaded divider above}
\stepbox{1. PIECES}{\pA{$R_L$} across \pA{$R_2$} merge into \emph{one} piece \pA{$R_2\parallel R_L$} \qquad top: \pB{$R_1$} \qquad source: \pC{$12$ V}}
\stepdown
\stepbox{2. TEMPLATE}{$v_{out}=\dfrac{\slot{pcA}{$R_2\parallel R_L$}}{\slot{pcB}{$R_1$}+\slot{pcA}{$R_2\parallel R_L$}}\cdot\slot{pcC}{$v_s$}$}
\stepdown
\stepbox{3. PLACE}{$\pA{10\parallel10=5}$, \; $v_{out}=\dfrac{\pA5}{\pB{10}+\pA5}\cdot\pC{12}=\keyres{4}$ V \why{unloaded: $6$ V. The load pulls it down}}
\stepdown
\stepbox{4. CHECK (OHM)}{$I=\frac{12}{15\text{ k}}=0.8$ mA, \; $0.8\text{ mA}\cdot5\text{ k}=4$ V \checkmark}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. source transformation and combining sources \bk{2-3}}
A voltage source $v_s$ in series with $R_s$ acts exactly like a current source $i_s$ in parallel with the \keyres{same} $R_s$.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcC] (vs) at (0,1) {};
\node[font=\tiny, text=pcC] at (0,1.13) {$+$}; \node[font=\tiny, text=pcC] at (0,0.85) {$-$};
\node[left=0.05cm of vs, text=pcC] {$v_s$};
\node[res, draw=pcA] (rs) at (1.0,2) {}; \node[above=0.05cm of rs, text=pcA] {$R_s$};
\draw[wire] (vs.north) -- (0,2) -- (rs.west); \draw[wire] (rs.east) -- (1.9,2);
\draw[wire] (vs.south) -- (0,0) -- (1.9,0);
\draw[white, fill=black] (1.9,2) circle (2pt) node[right, text=keyHi] {a};
\draw[white, fill=black] (1.9,0) circle (2pt) node[right, text=keyHi] {b};
\node at (2.75,1) {$\Longleftrightarrow$};
\node[src, draw=pcB] (is) at (3.6,1) {};
\draw[-{Latex[length=1.4mm]}, pcB, thick] (3.6,0.82) -- (3.6,1.2);
\node[left=0.05cm of is, text=pcB] {$i_s$};
\node[vres, draw=pcA] (rp) at (4.6,1) {}; \node[right=0.08cm of rp, text=pcA] {$R_s$};
\draw[wire] (is.north) -- (3.6,2) -- (5.4,2); \draw[wire] (4.6,2) -- (rp.north);
\draw[wire] (is.south) -- (3.6,0) -- (5.4,0); \draw[wire] (rp.south) -- (4.6,0);
\draw[white, fill=black] (5.4,2) circle (2pt) node[right, text=keyHi] {a};
\draw[white, fill=black] (5.4,0) circle (2pt) node[right, text=keyHi] {b};
\end{tikzpicture}

\begin{ftab}
$i_s=\dfrac{v_s}{R_s}$ & voltage source $\to$ current source, same $R_s$ in parallel \st\\
$v_s=i_s\,R_s$ & current source $\to$ voltage source, same $R_s$ in series \\
arrow of $i_s$ & points toward the $+$ end of $v_s$ \\
$v_{eq}=v_1-v_2+v_3$ & voltage sources in series: add with signs \\
$i_{eq}=i_1-i_2+i_3$ & current sources in parallel: add with directions \\
\end{ftab}

\wk{8}{transform $12$ V in series with $4\,\Omega$ (left $\to$ right above)}
\stepbox{1. PIECES}{\pC{$v_s=12$ V} ($+$ on top) \qquad \pA{$R_s=4\,\Omega$} in series}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcB}{$i_s$}=\dfrac{\slot{pcC}{$v_s$}}{\slot{pcA}{$R_s$}}$. \; Same \slot{pcA}{$R_s$}, now parallel. The arrow points toward $+$}
\stepdown
\stepbox{3. PLACE}{$\pB{i_s}=\dfrac{\pC{12}}{\pA4}=\keyres{3}$ A, pointing up, $\parallel$ \pA{$4\,\Omega$}}
\stepdown
\stepbox{4. REVERSE (RIGHT $\to$ LEFT)}{\pB{$2$ A} $\parallel$ \pA{$5\,\Omega$}: $\pC{v_s}=\pB2\cdot\pA5=\keyres{10}$ V in series with \pA{$5\,\Omega$}}
\stepdown
\stepbox{5. CHECK (SAME TERMINALS)}{open a--b: left $12$ V, right $3\cdot4=12$ V \checkmark \qquad short a--b: left $\frac{12}{4}=3$ A, right $3$ A \checkmark}

\begin{qtab}
$9$ V and $3$ V in series, opposing & $\keyres{6}$ V \\
$2$ A up, $5$ A up, $1$ A down, in parallel & $2+5-1=\keyres{6}$ A up \\
open-circuit voltage of a real source & no current, no drop on $R_s$: $V_{oc}=\keyres{v_s}$ \\
\end{qtab}
\warn{Do not transform the element whose $v$ or $i$ you need.} It disappears into the new source.

\warn{Unrealizable}: different voltage sources in parallel, or different current sources in series. Each node pair has one voltage, each branch one current. This includes dependent sources.

% ------------------------------------------------------------ 12
\filbreak \subsection{12. wye--delta (Y--$\Delta$, T--$\Pi$) \bk{2-4}}
For networks that are neither series nor parallel (a bridge). Both shapes connect the same three nodes 1, 2, 3. The \keyres{book's labels}: $Y$ arms $R_1$, $R_2$, $R_3$ go to nodes 1, 2, 3. $\Delta$ side $R_a$ is \keyres{opposite} node 1 (between 2 and 3), $R_b$ opposite node 2, $R_c$ opposite node 3.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\coordinate (a) at (1,1.5); \coordinate (b) at (0,0); \coordinate (c) at (2,0);
\draw[wire] (a) -- node[res, sloped, minimum width=0.5cm, draw=pcA] {} (b);
\draw[wire] (b) -- node[res, sloped, minimum width=0.5cm, draw=pcB] {} (c);
\draw[wire] (c) -- node[res, sloped, minimum width=0.5cm, draw=pcA] {} (a);
\node[text=pcA] at (0.05,0.95) {$R_c$}; \node[text=pcA] at (1.95,0.95) {$R_b$}; \node[text=pcB] at (1,-0.3) {$R_a$};
\fill[pcA] (a) circle (1.6pt); \node[above, text=pcA] at (a) {1}; \node[left] at (b) {2}; \node[right] at (c) {3};
\node at (1,-0.65) {$\Delta$};
\coordinate (a2) at (4.5,1.5); \coordinate (b2) at (3.5,0); \coordinate (c2) at (5.5,0); \coordinate (o) at (4.5,0.6);
\draw[wire] (a2) -- node[res, sloped, minimum width=0.4cm, draw=pcB] {} (o);
\draw[wire] (b2) -- node[res, sloped, minimum width=0.4cm] {} (o);
\draw[wire] (c2) -- node[res, sloped, minimum width=0.4cm] {} (o);
\node[text=pcB] at (4.8,1.1) {$R_1$}; \node at (3.75,0.5) {$R_2$}; \node at (5.25,0.5) {$R_3$};
\node[above] at (a2) {1}; \node[left] at (b2) {2}; \node[right] at (c2) {3};
\node at (4.5,-0.65) {$Y$};
\end{tikzpicture}

\begin{ftab}
$R_1=\dfrac{R_bR_c}{R_a+R_b+R_c}$ & $\Delta\to Y$: ($Y$ arm) $=$ (the two $\Delta$ sides touching its node, multiplied) $\div$ (sum of all three) \st\\
$R_2=\dfrac{R_aR_c}{\Sigma}$, \; $R_3=\dfrac{R_aR_b}{\Sigma}$ & same pattern \st\\
$R_a=\dfrac{R_1R_2+R_2R_3+R_1R_3}{R_1}$ & $Y\to\Delta$: (sum of pair products) $\div$ (the $Y$ arm at the node opposite) \st\\
$R_b=\dfrac{N}{R_2}$, \; $R_c=\dfrac{N}{R_3}$ & same pattern, $N=$ the numerator above \st\\
$R_Y=\dfrac{R_\Delta}{3}$, \; $R_\Delta=3R_Y$ & balanced (all equal) \st\\
\end{ftab}

\wk{8}{$\Delta\to Y$ with $R_a=10$, $R_b=20$, $R_c=30\,\Omega$ (left figure)}
\stepbox{1. PIECES (ARM $R_1$ FIRST)}{sides touching node \pA{1}: \pA{$R_b=20$, $R_c=30$} \qquad all three: $\Sigma=60$}
\stepdown
\stepbox{2. TEMPLATE}{$R_{\text{arm}}=\dfrac{\slot{pcA}{side touching}\cdot\slot{pcA}{side touching}}{\slot{white}{all three added}}$}
\stepdown
\stepbox{3. PLACE}{$R_1=\dfrac{\pA{20}\cdot\pA{30}}{60}=\keyres{10}$\\ node 2 touches $R_a$, $R_c$: $R_2=\dfrac{10\cdot30}{60}=\keyres{5}$\\ node 3 touches $R_a$, $R_b$: $R_3=\dfrac{10\cdot20}{60}=\keyres{3.33}\,\Omega$}
\stepdown
\stepbox{4. CHECK (NODES 1--2, NODE 3 OPEN)}{$Y$: $R_1+R_2=15$ \qquad $\Delta$: $R_c\parallel(R_a+R_b)=30\parallel30=15$ \checkmark}

\wk{8}{$Y\to\Delta$, reversing the example (right figure)}
\stepbox{1. PIECES (SIDE $R_a$ FIRST)}{arm at the opposite node (1): \pB{$R_1=10$} \qquad $N=50+16.7+33.3=100$}
\stepdown
\stepbox{2. TEMPLATE}{$R_{\text{side}}=\dfrac{\slot{white}{$N$}}{\slot{pcB}{arm at the opposite node}}$}
\stepdown
\stepbox{3. PLACE}{$\pB{R_a}=\dfrac{100}{\pB{10}}=\keyres{10}$, \; $R_b=\dfrac{100}{5}=\keyres{20}$, \; $R_c=\dfrac{100}{3.33}=\keyres{30}\,\Omega$}
\stepdown
\stepbox{4. CHECK}{$10$, $20$, $30$: the $\Delta$ we started from \checkmark}

\begin{qtab}
balanced $\Delta$, each $30\,\Omega$ & $R_Y=\keyres{10}\,\Omega$ \\
\end{qtab}
\warn{Other books swap the labels.} Always match by \emph{position}: a $Y$ arm uses the two $\Delta$ sides that touch its node.

% ------------------------------------------------------------ 13
\needspace{22\baselineskip}\subsection{13. Wheatstone bridge and resistive sensors \bk{2-5, 2-6.3}}
\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\coordinate (T) at (2,2.2); \coordinate (B) at (2,0); \coordinate (L) at (1,1.1); \coordinate (Rt) at (3,1.1);
\draw[wire] (T) -- node[res, sloped, minimum width=0.45cm, draw=pcA] {} (L);
\draw[wire] (L) -- node[res, sloped, minimum width=0.45cm, draw=pcB] {} (B);
\draw[wire] (T) -- node[res, sloped, minimum width=0.45cm, draw=pcA] {} (Rt);
\draw[wire] (Rt) -- node[res, sloped, minimum width=0.45cm, draw=pcB] {} (B);
\node[text=pcA] at (1.25,1.85) {$R_1$}; \node[text=pcB] at (1.25,0.35) {$R_3$};
\node[text=pcA] at (2.75,1.85) {$R_2$}; \node[text=pcB] at (2.75,0.35) {$R_x$};
\node[src, draw=pcC] (vs) at (0,1.1) {}; \node[left=0.05cm of vs, text=pcC] {$V_0$};
\node[font=\tiny] at (0,1.23) {$+$}; \node[font=\tiny] at (0,0.95) {$-$};
\draw[wire] (vs.north) -- (0,2.2) -- (T); \draw[wire] (vs.south) -- (0,0) -- (B);
\node[draw=uHi, thick, circle, inner sep=1pt, font=\tiny] (am) at (2,1.1) {A};
\draw[uHi, thick] (L) -- (am.west); \draw[uHi, thick] (am.east) -- (Rt);
\fill[keyHi] (L) circle (1.4pt) node[left, text=keyHi] {1};
\fill[keyHi] (Rt) circle (1.4pt) node[right, text=keyHi] {2};
\node[text=pcA] at (3.9,1.85) {tops};
\node[text=pcB] at (3.9,0.35) {bottoms};
\end{tikzpicture}

\begin{ftab}
$V_1=\dfrac{R_3}{R_1+R_3}V_0$, \; $V_2=\dfrac{R_x}{R_2+R_x}V_0$ & each side is a voltage divider \st\\
$R_x=\dfrac{R_2}{R_1}R_3$ & \term{balanced} ($I_a=0$, $V_1=V_2$): (unknown) from the other three \st\\
$V_{out}=\dfrac{V_0\,\Delta R}{4R+2\Delta R}$ & sensor bridge: three arms $R$, one $R+\Delta R$ (exact) \st\\
$V_{out}\approx\dfrac{V_0}{4}\cdot\dfrac{\Delta R}{R}$ & when $\Delta R\ll R$ \st\\
$\dfrac{\Delta R}{R}=\dfrac{4V_{out}}{V_0}$ & (relative change) from the reading \st\\
\end{ftab}

\wk{8}{balance: $R_1=100$, $R_2=200$, $R_3=150\,\Omega$, find $R_x$}
\stepbox{1. PIECES}{\pA{tops}: $100$ (left), $200$ (right) \qquad \pB{bottoms}: $150$ (left), $R_x$ (right)}
\stepdown
\stepbox{2. TEMPLATE (BALANCED: SAME RATIO EACH SIDE)}{$\dfrac{\slot{pcA}{left top}}{\slot{pcB}{left bottom}}=\dfrac{\slot{pcA}{right top}}{\slot{pcB}{right bottom}}$}
\stepdown
\stepbox{3. PLACE}{$\dfrac{\pA{100}}{\pB{150}}=\dfrac{\pA{200}}{\pB{R_x}}$ $\Rightarrow$ $R_x=\dfrac{200\cdot150}{100}=\keyres{300}\,\Omega$}
\stepdown
\stepbox{4. CHECK ($V_1=V_2$)}{$V_1=\frac{150}{250}V_0=0.6V_0$ \qquad $V_2=\frac{300}{500}V_0=0.6V_0$ \checkmark}

\wk{8}{sensor bridge: $V_0=5$ V, $\Delta R/R=0.01$}
\stepbox{1. PIECES}{source \pC{$5$ V} \qquad the changed arm: \pA{$\Delta R/R=0.01$}}
\stepdown
\stepbox{2. TEMPLATE}{$V_{out}\approx\dfrac{\slot{pcC}{$V_0$}}{4}\cdot\slot{pcA}{$\Delta R/R$}$}
\stepdown
\stepbox{3. PLACE}{$V_{out}\approx\dfrac{\pC5}{4}\cdot\pA{0.01}=\keyres{12.5}$ mV}
\stepdown
\stepbox{4. CHECK (EXACT FORMULA)}{$\dfrac{V_0\,\Delta R}{4R+2\Delta R}=\dfrac{5(0.01)}{4.02}=12.4$ mV, close \checkmark \why{$\Delta R\ll R$}}

\term{Piezoresistor} (pressure sensor):
\begin{ftab}
$R=R_0(1+\alpha P)$, \; $\Delta R=R_0\alpha P$ & $P$ in N/m$^2$. $P>0$ stretch, $P<0$ squeeze \\
$P=\dfrac{F}{A}$ & (pressure) $=$ (force) $\div$ (area) \st\\
$P=\dfrac{F\,L}{W\,H^2}$ & cantilever: force $F$ at the tip, length $L$, width $W$, thickness $H$ \st\\
$V_{out}=\dfrac{V_0}{4}\,\alpha P=\dfrac{V_0}{4}\,\alpha\,\dfrac{FL}{WH^2}$ & bridge output for a piezoresistor \st\\
\end{ftab}
Silicon: $\alpha\approx-1\times10^{-9}$ m$^2$/N (usually negative).
\begin{qtab}
$V_0=4$ V reads $2$ mV & $\frac{\Delta R}{R}=\frac{4\cdot0.002}{4}=\keyres{0.002}$ \\
cantilever $F=10^{-3}$ N, $L=1$ mm, $W=0.1$ mm, $H=10\,\mu$m & $P=\frac{10^{-3}\cdot10^{-3}}{10^{-4}\cdot10^{-10}}=10^{8}$ N/m$^2$ \\
same, $V_0=1$ V, $\alpha=-10^{-9}$ & $V_{out}=\frac14(-10^{-9})(10^8)=\keyres{-25}$ mV \\
\end{qtab}

% ------------------------------------------------------------ 14
\filbreak \subsection{14. nonlinear elements: fuse, diode, LED \bk{2-1.4, 2-6}}
\begin{itemize}
\item \term{Fuse}: a wire that opens when the current passes its rating. A short at the load draws $I=V_s/R_s$, which blows it.
\item \term{Ideal diode}: a one-way valve. Forward ($V_D>0$): a short. Reverse ($V_D<0$): an open, $I=0$.
\item \term{Real diode model}: off until $V_D$ reaches $V_F$, then a drop of $V_F$ (plus a small $R_D$, often ignored). Silicon: $V_F\approx\keyres{0.7}$ V.
\item \term{LED}: a diode that lights. On fully at about $20$ mA. Red $V_F\approx1.6$ V, green or blue $\approx3.3$ V. Curve: $I\approx aV_D^2$ ($V_D>0$).
\end{itemize}
\begin{ftab}
$I=\dfrac{V_s-V_F}{R}$ & forward diode in series with $R$ \st\\
$R=\dfrac{V_s-V_F}{I}$ & resistor to set an LED current \st\\
$R_D\approx\dfrac{\Delta V_D}{\Delta I}$ & slope of the curve above $V_F$ \st\\
\end{ftab}
\term{Diode procedure}: (1) assume forward bias, (2) compute $I$, (3) if $I>0$, done. If not, the diode is off and $I=0$. For a square or triangle source, do each half of the cycle separately.
\begin{qtab}
$5$ V, $1$ k$\Omega$, Si diode forward & $I=\frac{5-0.7}{1000}=\keyres{4.3}$ mA $>0$ \checkmark \\
same source reversed ($-5$ V) & $\frac{-5-0.7}{1000}<0$ $\Rightarrow$ off, $I=\keyres{0}$ \\
red LED at $20$ mA from $5$ V & $R=\frac{5-1.6}{0.02}=\keyres{170}\,\Omega$ \\
\end{qtab}
\term{$I$--$V$ slopes} \bk{Fig. 2-38}: resistor $1/R$, ideal voltage source vertical ($\infty$), ideal current source flat ($0$).

% ------------------------------------------------------------ 15
\filbreak \subsection{15. putting it together: one full circuit}
Reduce, find the source current, then expand back out with Ohm's law, KVL, and KCL.

\needspace{17\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcC] (vs) at (0,1) {};
\node[font=\tiny, text=pcC] at (0,1.13) {$+$};
\node[font=\tiny, text=pcC] at (0,0.85) {$-$};
\node[left=0.05cm of vs, text=pcC] {$12$ V};
\node[res, draw=pcA] (r1) at (1.5,2) {};
\node[above=0.05cm of r1, text=pcA] {$R_1=2\,\Omega$};
\node[vres, draw=pcB] (r2) at (3,1) {};
\node[right=0.1cm of r2, text=pcB] {$6\,\Omega$};
\node[vres, draw=pcB] (r3) at (4.5,1) {};
\node[right=0.1cm of r3, text=pcB] {$3\,\Omega$};
\draw[wire] (vs.north) -- (0,2) -- (r1.west);
\draw[wire] (r1.east) -- (4.5,2) -- (r3.north);
\draw[wire] (3,2) -- (r2.north);
\draw[wire] (r2.south) -- (3,0);
\draw[wire] (r3.south) -- (4.5,0) -- (0,0) -- (vs.south);
\fill[keyHi] (0,2) circle (1.6pt) node[above left, text=keyHi] {a};
\fill[keyHi] (3,2) circle (1.6pt) node[above, text=keyHi] {b};
\fill[keyHi] (3,0) circle (1.6pt) node[below, text=keyHi] {c};
\end{tikzpicture}

\wk{8}{find every current, voltage, and power}
\stepbox{1. PIECES}{\pB{$6$, $3\,\Omega$} parallel (share b, c) \qquad \pA{$R_1=2\,\Omega$} series \qquad \pC{$12$ V}}
\stepdown
\stepbox{2. TEMPLATE (REDUCE, THEN EXPAND)}{$R_{eq}=\slot{pcA}{$R_1$}+\slot{pcB}{$6\parallel3$}$ \qquad $i=\dfrac{\slot{pcC}{$v_s$}}{R_{eq}}$ \qquad then $v=iR$, KVL, $i=\frac vR$}
\stepdown
\stepbox{3. PLACE (COMBINE, \S9)}{$\pB{6\parallel3}=\dfrac{18}{9}=2\,\Omega$, \; $R_{eq}=\pA{2}+\pB{2}=4\,\Omega$, \; $i=\dfrac{\pC{12}}{4}=\keyres{3}$ A}
\stepdown
\stepbox{4. DROPS: $v=iR$, THEN KVL}{$v_1=3\cdot\pA2=\keyres{6}$ V, \; $v_{bc}=12-6=\keyres{6}$ V \why{or $3\cdot\pB2$}}
\stepdown
\stepbox{5. BRANCH CURRENTS: $i=v_{bc}/R$}{$i_2=\frac{6}{\pB6}=\keyres{1}$ A, \; $i_3=\frac{6}{\pB3}=\keyres{2}$ A \why{KCL: $1+2=3$}}
\stepdown
\stepbox{6. CHECK (POWER)}{$p_1=18$, $p_2=6$, $p_3=12$ W. \; Total $36$ W $=12\cdot3$ from the source \checkmark}


% ------------------------------------------------------------ 16
\filbreak \subsection{16. linear circuits \bk{3-1}}
A \term{linear circuit} has only independent sources and linear elements. Its inputs are the independent sources. Its outputs are every $v$ and $i$ in the passive elements.
\begin{ftab}
$v=R(Ki)=K(Ri)$ & \term{homogeneity} (scaling): multiply the input by $K$, the output is multiplied by $K$ \\
$v=R(i_1+i_2)=Ri_1+Ri_2$ & \term{additivity} (superposition): two inputs together give the sum of their separate outputs \\
all sources $\times K$ & every $v$ and every $i$ in the circuit $\times K$ \\
all sources $\times K$ & every power $\times K^2$ \why{$p=i^2R$ is not linear} \\
\end{ftab}
\begin{ltab}{Linear elements}{Not linear}
resistor, capacitor, inductor & diode, LED, fuse (\S14) \\
dependent source with gain $\times$ one $v$ or $i$ ($\alpha v_x$, $\beta i_x$) & a source that depends on $v_x^2$, or a product $v_xi_y$ \\
\end{ltab}
\trap{Power is not linear. Double the source and the power is $4\times$, not $2\times$.}
\trap{A dependent source is not an input. Only independent sources are inputs.}

\term{Unit-output method} (ladder circuits): assume the output is $1$ V (or $1$ A). Work backward to the source with Ohm's law, KCL and KVL. Then scale everything by $K=\dfrac{\text{real source}}{\text{source you found}}$.

\wk{8}{scale a known answer (the \S15 circuit)}
\stepbox{1. PIECES}{known: $\pC{12}$ V gives $i=\pA{3}$ A and $p_{\text{total}}=\pA{36}$ W. \qquad new source \pB{$18$} V}
\stepdown
\stepbox{2. TEMPLATE}{$K=\dfrac{\slot{pcB}{new}}{\slot{pcC}{old}}$ \qquad $i_{\text{new}}=K\,\slot{pcA}{$i$}$ \qquad $p_{\text{new}}=K^2\,\slot{pcA}{$p$}$}
\stepdown
\stepbox{3. PLACE}{$K=\dfrac{\pB{18}}{\pC{12}}=1.5$ \qquad $i=1.5(\pA3)=\keyres{4.5}$ A \qquad $p=2.25(\pA{36})=\keyres{81}$ W}
\stepdown
\stepbox{4. CHECK}{$p=v_si=18(4.5)=81$ W \checkmark}

\needspace{14\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src] (vs) at (0,1) {}; \node[font=\tiny] at (0,1.13) {$+$}; \node[font=\tiny] at (0,0.85) {$-$};
\node[left=0.05cm of vs] {$v_s$};
\node[res, draw=pcD] (ra) at (1.2,2) {}; \node[above=0.05cm of ra, text=pcD] {$3\,\Omega$};
\node[vres, draw=pcC] (rb) at (2.4,1) {}; \node[right=0.08cm of rb, text=pcC] {$6\,\Omega$};
\node[res, draw=pcB] (rc) at (3.6,2) {}; \node[above=0.05cm of rc, text=pcB] {$1\,\Omega$};
\node[vres, draw=pcA] (rd) at (4.8,1) {}; \node[right=0.08cm of rd, text=pcA] {$2\,\Omega$};
\draw[wire] (vs.north) -- (0,2) -- (ra.west); \draw[wire] (ra.east) -- (rc.west); \draw[wire] (rc.east) -- (4.8,2) -- (rd.north);
\draw[wire] (2.4,2) -- (rb.north); \draw[wire] (rb.south) -- (2.4,0);
\draw[wire] (rd.south) -- (4.8,0) -- (0,0) -- (vs.south);
\fill[keyHi] (2.4,2) circle (1.6pt) node[above, text=keyHi] {a};
\node[text=pcA] at (5.55,1.35) {$+$}; \node[text=pcA] at (5.55,0.65) {$-$}; \node[text=pcA] at (5.75,1) {$v_o$};
\end{tikzpicture}

\wk{8}{unit output: $v_o$ for $v_s=15$ V (ladder above)}
\stepbox{1. PIECES}{\term{In words}: pretend $v_o=1$ V, walk back to the source, then scale. \\ \pA{$2\,\Omega$} (output) \qquad \pB{$1\,\Omega$} \qquad \pC{$6\,\Omega$} \qquad \pD{$3\,\Omega$} \qquad real $v_s=15$ V}
\stepdown
\stepbox{2. TEMPLATE}{$v_o=1$ $\to$ $i=\frac{v}{R}$ $\to$ KVL for the next node $\to$ KCL for the next current $\to$ $v_s'$ \qquad $K=\dfrac{15}{v_s'}$}
\stepdown
\stepbox{3. PLACE: WALK BACK}{$i_{\pA2}=\frac{1}{\pA2}=0.5$ A $=i_{\pB1}$ \why{series} \quad $v_a=1+0.5(\pB1)=1.5$ V \\ $i_{\pC6}=\frac{1.5}{\pC6}=0.25$ A \quad $i_{\pD3}=0.5+0.25=0.75$ A \why{KCL at a} \quad $v_s'=1.5+0.75(\pD3)=3.75$ V}
\stepdown
\stepbox{4. SCALE}{$K=\dfrac{15}{3.75}=4$ \qquad $v_o=4(1)=\keyres{4}$ V \why{every $v$ and $i$ above $\times4$}}
\stepdown
\stepbox{5. CHECK}{$v_a=6$ V, $i_{3\Omega}=3$ A: \; $6+3(3)=15$ V \checkmark}

% ------------------------------------------------------------ 17
\filbreak \subsection{17. mesh-current analysis \bk{3-3, 3-4}}
A \term{mesh} is a loop with no other loop inside it. Each mesh gets one \term{mesh current}, drawn clockwise. Unknowns are mesh currents. Write one KVL per mesh. KCL is automatic, because every mesh current enters and leaves each node.
\begin{ftab}
$i_{\text{branch}}=I_{\text{this}}-I_{\text{other}}$ & a resistor shared by two meshes carries the difference \\
$\sum_{R\text{ in mesh}}(I_{\text{this}}-I_{\text{other}})R=\sum v_{\text{rise}}$ & KVL clockwise: each $R$ drops $(I_{\text{this}}-I_{\text{neighbor}})R$. $I_{\text{other}}=0$ on the outer edge \\
source rise & clockwise you enter its $-$ and leave its $+$: \keyres{$+v_s$} on the right side \\
source drop & you enter its $+$: \warn{$-v_s$} on the right side \\
\end{ftab}
\term{By inspection} (independent voltage sources only): mesh $k$ reads
$$\Big(\textstyle\sum R\text{ in mesh }k\Big)I_k-\sum_{j}\big(R\text{ shared with }j\big)I_j=\sum v_{\text{rise}}\text{ in mesh }k$$
\begin{ltab}{Special case}{Do this}
current source on the outer edge of one mesh & that mesh current is known: $I_k=\pm i_s$ (sign by direction). One fewer KVL \\
current source shared by two meshes & \term{supermesh}: KVL around the outer loop of both (skip the source branch), plus $I_b-I_a=i_s$ \\
dependent source & write its control $v_x$ or $i_x$ in mesh currents. Then move unknowns to the left \\
\end{ltab}
\term{Steps}: (1) mark each mesh, clockwise $I_1$, $I_2$, \ldots (2) handle current sources (known or supermesh). (3) KVL per remaining mesh. (4) solve (\S Solving simultaneous equations). (5) branch currents $=$ differences, then $v=iR$.
\trap{The shared $R$ appears in both mesh equations with the other mesh current subtracted.}
\trap{Never write KVL through a current source branch. Its voltage is unknown.}
\trap{Mesh needs a planar circuit (drawn with no crossing wires).}

\needspace{14\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcD] (v1) at (0,1) {}; \node[font=\tiny, text=pcD] at (0,1.13) {$+$}; \node[font=\tiny, text=pcD] at (0,0.85) {$-$};
\node[left=0.05cm of v1, text=pcD] {$10$ V};
\node[res, draw=pcA] (r1) at (1.25,2) {}; \node[above=0.05cm of r1, text=pcA] {$1\,\Omega$};
\node[vres, draw=pcC] (r3) at (2.5,1) {}; \node[right=0.08cm of r3, text=pcC] {$2\,\Omega$};
\node[res, draw=pcB] (r2) at (3.75,2) {}; \node[above=0.05cm of r2, text=pcB] {$1\,\Omega$};
\node[src, draw=pcE] (v2) at (5,1) {}; \node[font=\tiny, text=pcE] at (5,1.13) {$+$}; \node[font=\tiny, text=pcE] at (5,0.85) {$-$};
\node[right=0.05cm of v2, text=pcE] {$5$ V};
\draw[wire] (v1.north) -- (0,2) -- (r1.west); \draw[wire] (r1.east) -- (r2.west); \draw[wire] (r2.east) -- (5,2) -- (v2.north);
\draw[wire] (2.5,2) -- (r3.north); \draw[wire] (r3.south) -- (2.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (v2.south);
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]1.25,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (1.25,1) {$I_1$};
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]3.75,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (3.75,1) {$I_2$};
\end{tikzpicture}

\wk{8}{two meshes (above)}
\stepbox{1. PIECES}{mesh 1: \pA{$1\,\Omega$} own, \pC{$2\,\Omega$} shared, \pD{$10$ V} \why{clockwise enters $-$: rise, $+10$} \\ mesh 2: \pB{$1\,\Omega$} own, \pC{$2\,\Omega$} shared, \pE{$5$ V} \why{clockwise enters $+$: drop, $-5$}}
\stepdown
\stepbox{2. TEMPLATE (BY INSPECTION)}{$\big(\slot{pcA}{own}+\slot{pcC}{shared}\big)I_1-\slot{pcC}{shared}\,I_2=\slot{pcD}{rise}$ \\ $-\slot{pcC}{shared}\,I_1+\big(\slot{pcB}{own}+\slot{pcC}{shared}\big)I_2=\slot{pcE}{rise}$}
\stepdown
\stepbox{3. PLACE}{$3I_1-2I_2=\pD{10}$ \qquad $-2I_1+3I_2=\pE{-5}$ \qquad matrix $\begin{bmatrix}3&-2\\-2&3\end{bmatrix}$, symmetric \checkmark}
\stepdown
\stepbox{4. SOLVE (CRAMER)}{$D=9-4=5$ \quad $I_1=\dfrac{10(3)-(-5)(-2)}{5}=\keyres{4}$ A \quad $I_2=\dfrac{3(-5)-(-2)(10)}{5}=\keyres{1}$ A}
\stepdown
\stepbox{5. BRANCH CURRENT}{through \pC{$2\,\Omega$}: $I_1-I_2=\keyres{3}$ A, downward \why{$I_1$ goes down there}}
\stepdown
\stepbox{6. CHECK (KVL, LEFT LOOP)}{$4(1)+3(2)=10$ V \checkmark}

\needspace{14\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcD] (v1) at (0,1) {}; \node[font=\tiny, text=pcD] at (0,1.13) {$+$}; \node[font=\tiny, text=pcD] at (0,0.85) {$-$};
\node[left=0.05cm of v1, text=pcD] {$20$ V};
\node[res, draw=pcA] (r1) at (1.25,2) {}; \node[above=0.05cm of r1, text=pcA] {$2\,\Omega$};
\node[src, draw=pcE] (is) at (2.5,1) {}; \draw[-{Latex[length=1.3mm]}, pcE, thick] (2.5,0.84) -- (2.5,1.17);
\node[right=0.05cm of is, text=pcE] {$2$ A};
\node[res, draw=pcB] (r2) at (3.75,2) {}; \node[above=0.05cm of r2, text=pcB] {$2\,\Omega$};
\node[vres, draw=pcC] (r3) at (5,1) {}; \node[right=0.08cm of r3, text=pcC] {$4\,\Omega$};
\draw[wire] (v1.north) -- (0,2) -- (r1.west); \draw[wire] (r1.east) -- (r2.west); \draw[wire] (r2.east) -- (5,2) -- (r3.north);
\draw[wire] (2.5,2) -- (is.north); \draw[wire] (is.south) -- (2.5,0);
\draw[wire] (v1.south) -- (0,0) -- (5,0) -- (r3.south);
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]1.25,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (1.25,1) {$I_1$};
\draw[-{Latex[length=1.6mm]}, uHi, thick] ([shift={(150:0.32)}]3.75,1) arc[start angle=150, end angle=-150, radius=0.32];
\node[uHi] at (3.75,1) {$I_2$};
\end{tikzpicture}

\wk{8}{supermesh: a shared current source (above)}
\stepbox{1. PIECES}{\term{In words}: the $2$ A source sits between both meshes, so go around the outside, and let the source fix the difference. \\ \pE{$2$ A up} in the shared branch \qquad outer loop: \pD{$20$ V}, \pA{$2\,\Omega$}, \pB{$2\,\Omega$}, \pC{$4\,\Omega$}}
\stepdown
\stepbox{2. TEMPLATE}{constraint: $I_{\text{up}}-I_{\text{down}}=\slot{pcE}{$i_s$}$ \qquad outer KVL: $\slot{pcA}{$R$}I_1+\slot{pcB}{$R$}I_2+\slot{pcC}{$R$}I_2=\slot{pcD}{rise}$}
\stepdown
\stepbox{3. PLACE}{$I_2-I_1=\pE2$ \why{$I_2$ goes up through it, $I_1$ down} \qquad $\pA2I_1+\pB2I_2+\pC4I_2=\pD{20}$}
\stepdown
\stepbox{4. SUBSTITUTE}{$I_2=I_1+2$: \; $2I_1+6(I_1+2)=20$ $\Rightarrow$ $I_1=\keyres{1}$ A, \; $I_2=\keyres{3}$ A}
\stepdown
\stepbox{5. CHECK (TOP NODE BOTH WAYS)}{left: $20-1(2)=18$ V \qquad right: $3(2)+3(4)=18$ V \checkmark}

\begin{qtab}
current source on the outer edge, $3$ A against clockwise & $I_k=\keyres{-3}$ A. Skip that mesh's KVL \\
CCVS $4i_x$, with $i_x=I_1-I_2$ & put $4(I_1-I_2)$ in the KVL, then move it to the left side \\
\end{qtab}

% ------------------------------------------------------------ 18
\filbreak \subsection{18. source superposition \bk{3-5}}
In a linear circuit with several independent sources, any $v$ or $i$ is the sum of the answers from each source acting alone.
\begin{ftab}
$v=v_1+v_2+\cdots+v_n$ & total $=$ sum of each source alone \\
voltage source off & replace it with a \keyres{short} ($v=0$) \\
current source off & replace it with an \keyres{open} ($i=0$) \\
dependent source & \warn{never turn it off}. It stays in every sub-circuit \\
$p\neq p_1+p_2$ & power does \warn{not} superpose. Add the currents first: $p=(i_1+i_2)^2R$ \\
\end{ftab}
\term{Steps}: (1) keep source 1, turn off the others. (2) find $v_1$ (or $i_1$) with any method: dividers, nodal, mesh. (3) repeat for each source. (4) add, with every part measured in the \keyres{same direction}.
\trap{Use one reference direction for $i$ in every sub-circuit. A part that flows the other way enters the sum negative.}
\trap{Short a voltage source, open a current source. Not the other way around.}
\term{Why use it}: it shows how much each source contributes (sensitivity), and each sub-circuit is often a simple divider.

\needspace{14\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[src, draw=pcD] (v1) at (0,1) {}; \node[font=\tiny, text=pcD] at (0,1.13) {$+$}; \node[font=\tiny, text=pcD] at (0,0.85) {$-$};
\node[left=0.05cm of v1, text=pcD] {$12$ V};
\node[res, draw=pcA] (r1) at (1.3,2) {}; \node[above=0.05cm of r1, text=pcA] {$4\,\Omega$};
\node[vres, draw=pcB] (r2) at (2.6,1) {}; \node[left=0.08cm of r2, text=pcB] {$2\,\Omega$};
\node[src, draw=pcE] (is) at (4,1) {}; \draw[-{Latex[length=1.3mm]}, pcE, thick] (4,0.84) -- (4,1.17);
\node[right=0.05cm of is, text=pcE] {$3$ A};
\draw[wire] (v1.north) -- (0,2) -- (r1.west); \draw[wire] (r1.east) -- (4,2) -- (is.north);
\draw[wire] (2.6,2) -- (r2.north); \draw[wire] (r2.south) -- (2.6,0);
\draw[wire] (v1.south) -- (0,0) -- (4,0) -- (is.south);
\draw[iarrow] (2.9,1.45) -- (2.9,0.75) node[midway, right] {$i$};
\fill[keyHi] (2.6,2) circle (1.6pt) node[above, text=keyHi] {a};
\end{tikzpicture}

\wk{8}{$i$ in the $2\,\Omega$ (above), one source at a time}
\stepbox{1. PIECES}{\pD{$12$ V} \qquad \pE{$3$ A} \qquad \pA{$4\,\Omega$} \qquad \pB{$2\,\Omega$}, with $i$ downward}
\stepdown
\stepbox{2. TEMPLATE}{$i=\slot{pcD}{$i_1$}+\slot{pcE}{$i_2$}$ \qquad $i_1$: \pE{$3$ A} open \qquad $i_2$: \pD{$12$ V} shorted}
\stepdown
\stepbox{3. PLACE: \pD{12 V} ALONE (3 A OPEN)}{one loop: $i_1=\dfrac{\pD{12}}{\pA4+\pB2}=\keyres{2}$ A, down}
\stepdown
\stepbox{4. PLACE: \pE{3 A} ALONE (12 V SHORTED)}{$4\,\Omega$ and $2\,\Omega$ now both go from a to ground. Current divider: \\ $i_2=\pE3\cdot\dfrac{\pA4}{\pA4+\pB2}=\keyres{2}$ A, down}
\stepdown
\stepbox{5. ADD}{$i=2+2=\keyres{4}$ A, down \qquad power: $4^2(2)=\keyres{32}$ W \why{not $2^2(2)+2^2(2)=16$}}
\stepdown
\stepbox{6. CHECK (NODAL)}{$\dfrac{V_a-12}{4}+\dfrac{V_a}{2}-3=0$ $\Rightarrow$ $V_a=8$ V, \; $i=\frac82=4$ A \checkmark}

% ------------------------------------------------------------ 19
\filbreak \subsection{19. validating with simulation \bk{3-10}}
A simulator (Multisim, LTspice) solves the same equations. Use it to check a hand answer, not to replace one.
\begin{ftab}
$\%\,\text{error}=\dfrac{\lvert\text{sim}-\text{hand}\rvert}{\lvert\text{hand}\rvert}\times100$ & how far apart the two answers are \st\\
DC operating point & the analysis that gives every node voltage and branch current \\
sweep one source & a linear circuit gives a straight line \keyres{through the origin} \\
each source alone, then all & the separate answers must add to the all-on answer \\
\end{ftab}
\begin{itemize}
\item Put ground at the same node as your hand solution.
\item Match the reference direction: a current that reads negative flows opposite to your arrow.
\item Round only at the end. A hand answer rounded early can show a fake error.
\end{itemize}
\trap{A sign difference is usually a direction mismatch, not a wrong answer.}

\end{multicols}

\makeatother
```