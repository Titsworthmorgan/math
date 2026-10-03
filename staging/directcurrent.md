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

\section{DC Circuits --- Reference}

\begin{multicols}{2}
\raggedcolumns

\filbreak \subsection{prefixes}
{\small
\begin{tabular}{@{}c|l|c|r|l@{}}
\term{Symbol} & \term{Prefix} & \term{Power} & \term{Multiply by} & \term{In words} \\\hline
G & giga & $10^{9}$ & 1,000,000,000 & billion \\
M & mega & $10^{6}$ & 1,000,000 & million \\
k & kilo & $10^{3}$ & 1,000 & thousand \\\hline
--- & (none) & $10^{0}$ & 1 & one \\\hline
m & milli & $10^{-3}$ & 0.001 & thousandth \\
$\mu$ & micro & $10^{-6}$ & 0.000\,001 & millionth \\
n & nano & $10^{-9}$ & 0.000\,000\,001 & billionth \\
p & pico & $10^{-12}$ & 0.000\,000\,000\,001 & trillionth \\
\end{tabular}}

\filbreak \subsection{quantities and units}
{\small
\begin{tabular}{@{}l|c|l|l@{}}
\term{Quantity} & \term{Symbol} & \term{Unit} & \term{In base units} \\\hline
charge & $q$, $Q$ & coulomb (C) & A$\cdot$s \\
current & $i$, $I$ & ampere (A) & C/s \\
voltage & $v$, $V$ & volt (V) & J/C \\
power & $p$, $P$ & watt (W) & J/s $=$ V$\cdot$A \\
energy & $w$, $W$, $E$ & joule (J) & W$\cdot$s \\
resistance & $R$ & ohm ($\Omega$) & V/A \\
conductance & $G$ & siemens (S) & A/V $=1/\Omega$ \\
time & $t$ & second (s) & --- \\
\end{tabular}}
\par\vspace{2pt}
Lowercase ($q$, $i$, $v$, $p$, $w$) means the value can change with time. Uppercase ($Q$, $I$, $V$, $P$, $W$) means a constant.

\filbreak \subsection{constants and conversions}
{\small
\begin{tabular}{@{}p{0.42\linewidth}p{0.54\linewidth}@{}}
\term{Item} & \term{Value} \\\hline
charge of one electron & $e=1.602\times10^{-19}$ C \\[1pt]
electrons in $1$ C & $6.242\times10^{18}$ \\[1pt]
minute, hour & $1$ min $=60$ s, \; $1$ h $=3600$ s \\[1pt]
ampere-hour & $1$ Ah $=3600$ C, \; $1$ mAh $=3.6$ C \\[1pt]
watt-hour & $1$ Wh $=3600$ J \\[1pt]
kilowatt-hour & $1$ kWh $=3.6\times10^{6}$ J \\[1pt]
specific heat of water & $c=4186$ J/(kg$\cdot^\circ$C) \\[1pt]
mass of water & $1$ L $\approx1$ kg, \; $1$ fl oz $\approx0.02957$ kg \\[1pt]
cents to dollars & divide by $100$ \\
\end{tabular}}

\filbreak \subsection{formula sheet}
\needspace{3\baselineskip}\term{1--3. Charge and current}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
charge $\to$ electrons & $n=\dfrac{\lvert Q\rvert}{e}$ \rule[-7pt]{0pt}{19pt}\\
electrons $\to$ charge & $Q=n\,e$ \\
constant current & $I=\dfrac{Q}{t}$, \quad $Q=I\,t$ \rule[-7pt]{0pt}{19pt}\\
constant current, $t_1$ to $t_2$ & $Q=I\,(t_2-t_1)$ \\
changing charge $\to$ current & $i=\dfrac{dq}{dt}$ \rule[-7pt]{0pt}{19pt}\\
changing current $\to$ charge & $q=\int_{t_1}^{t_2} i\,dt$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{4. Voltage}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
voltage & $v=\dfrac{w}{q}$ \rule[-7pt]{0pt}{19pt}\\
energy to move a charge & $w=q\,v$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{5--6. Power and energy}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
power & $p=v\,i$ \; (sign: section 5) \\
power at one instant $t_1$ & $p(t_1)=v(t_1)\cdot i(t_1)$ \\
constant power $\to$ energy & $W=P\,t$ \\
changing power $\to$ energy & $w=\int_{t_1}^{t_2} p\,dt$ \\
energy $\to$ power & $p=\dfrac{dw}{dt}$ \rule[-7pt]{0pt}{19pt}\\
conservation & $\sum p=0$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{7. Batteries and utility energy}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
power, voltage $\to$ current & $I=\dfrac{P}{V}$ \rule[-7pt]{0pt}{19pt}\\
Ah rating $\to$ Wh rating & $\text{Wh}=V\cdot\text{Ah}$ \\
run time from Ah & $t=\dfrac{\text{Ah}}{I}$ \; (hours) \rule[-7pt]{0pt}{19pt}\\
run time from Wh & $t=\dfrac{\text{Wh}}{P}$ \; (hours) \rule[-7pt]{0pt}{19pt}\\
batteries an energy fills & $n=\dfrac{W}{W_{\text{one}}}$, \; round down \rule[-7pt]{0pt}{19pt}\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{8. Heat and cost}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
heat & $E=c\,m\,\Delta T$ \\
temperature change & $\Delta T=\dfrac{E}{c\,m}$ \rule[-7pt]{0pt}{19pt}\\
cost & cost $=$ kWh $\cdot$ rate \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{10. Resistors}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
Ohm's law & $v=i\,R$ \\
conductance & $G=\dfrac{1}{R}$, \quad $i=G\,v$ \rule[-7pt]{0pt}{19pt}\\
power in a resistor & $p=i^2R=\dfrac{v^2}{R}=v\,i$ \rule[-7pt]{0pt}{19pt}\\
energy in a resistor, constant $I$ & $W=I^2R\,t$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{11--17. Circuit laws}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
branches, nodes, loops & $b=l+n-1$ \\
KCL & $\sum i_{\text{in}}=\sum i_{\text{out}}$ \\
KVL & $\sum v=0$ around a loop \\
series & $R_{eq}=R_1+R_2+\cdots$ \\
parallel & $\dfrac{1}{R_{eq}}=\dfrac{1}{R_1}+\dfrac{1}{R_2}+\cdots$ \rule[-7pt]{0pt}{19pt}\\
two in parallel & $R_{eq}=\dfrac{R_1R_2}{R_1+R_2}$ \rule[-7pt]{0pt}{19pt}\\
voltage divider (series) & $v_1=\dfrac{R_1}{R_1+R_2}\,v$ \rule[-7pt]{0pt}{19pt}\\
current divider (parallel) & $i_1=\dfrac{R_2}{R_1+R_2}\,i$ \rule[-7pt]{0pt}{19pt}\\
$\Delta\to Y$ & $R_a=\dfrac{R_{ab}R_{ca}}{\Sigma}$, \; $\Sigma=R_{ab}+R_{bc}+R_{ca}$ \rule[-7pt]{0pt}{19pt}\\
$Y\to\Delta$ & $R_{ab}=\dfrac{N}{R_c}$, \; $N=R_aR_b+R_bR_c+R_cR_a$ \rule[-7pt]{0pt}{19pt}\\
\end{tabular}}
\par\vspace{3pt}

\filbreak \subsection{calculus tables}
\term{Derivatives} ($a$, $\omega$, $n$, $c$ are constants):
{\small
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Function} & \term{Derivative} \\\hline
$c$ & $0$ \\[1pt]
$t^n$ & $n\,t^{n-1}$ \\[1pt]
$e^{at}$ & $a\,e^{at}$ \\[1pt]
$\sin(\omega t)$ & $\omega\cos(\omega t)$ \\[1pt]
$\cos(\omega t)$ & $-\omega\sin(\omega t)$ \\[1pt]
$f\cdot g$ (product rule) & $f'g+fg'$ \\
\end{tabular}}
\par\vspace{2pt}
\term{Integrals}:
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Function} & \term{Antiderivative} \\\hline
$c$ & $c\,t$ \\[1pt]
$t^n$ & $\dfrac{t^{n+1}}{n+1}$ \rule[-7pt]{0pt}{19pt}\\
$e^{at}$ & $\dfrac{e^{at}}{a}$ \rule[-7pt]{0pt}{19pt}\\
$\sin(\omega t)$ & $-\dfrac{\cos(\omega t)}{\omega}$ \rule[-7pt]{0pt}{19pt}\\
$\cos(\omega t)$ & $\dfrac{\sin(\omega t)}{\omega}$ \rule[-7pt]{0pt}{19pt}\\
\end{tabular}}
\par\vspace{2pt}
\term{Definite integral}: $\int_{t_1}^{t_2} f\,dt=F(t_2)-F(t_1)$. \; $F$ is the antiderivative. Top minus bottom.

\term{Exponent rules}:
{\small
\begin{tabular}{@{}p{0.46\linewidth}p{0.50\linewidth}@{}}
$e^{at}\cdot e^{bt}=e^{(a+b)t}$ & $\big(e^{at}\big)^2=e^{2at}$ \\[1pt]
$e^{0}=1$ & $e^{-ab}\to0$ when $b\to\infty$ ($a>0$) \\
\end{tabular}}
\par\vspace{2pt}
\term{Shortcuts for a decaying exponential} ($a>0$):
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Integral} & \term{Result} \\\hline
$\int_0^T Ae^{-at}\,dt$ & $\dfrac{A}{a}\big(1-e^{-aT}\big)$ \rule[-7pt]{0pt}{19pt}\\
$\int_0^\infty Ae^{-at}\,dt$ & $\dfrac{A}{a}$ \rule[-7pt]{0pt}{19pt}\\
$\int_0^\infty At\,e^{-at}\,dt$ & $\dfrac{A}{a^2}$ \rule[-7pt]{0pt}{19pt}\\
\end{tabular}}
\par\vspace{2pt}
Use the shortcuts only to check. Section 3 shows the full steps.

\filbreak \subsection{which tool? --- given $\to$ find}
{\small
\begin{tabular}{@{}p{0.42\linewidth}p{0.54\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
charge $Q\to$ electrons & $n=\lvert Q\rvert/e$ \hfill (1) \\[1pt]
constant numbers $I$, $t\to Q$ & multiply: $Q=I\,t$ \hfill (2) \\[1pt]
$q(t)\to i$ & differentiate \hfill (3) \\[1pt]
$i(t)\to q$ & integrate \hfill (3) \\[1pt]
$w$, $q\to v$ & divide: $v=w/q$ \hfill (4) \\[1pt]
$v$, $i\to p$ & multiply, sign from the convention \hfill (5) \\[1pt]
$p(t)\to w$ & integrate (constant: $W=P\,t$) \hfill (6) \\[1pt]
$w(t)\to p$ & differentiate \hfill (6) \\[1pt]
$v(t)$, $i(t)\to p$ at $t_1$ & put $t_1$ in each, then multiply \hfill (6) \\[1pt]
$v(t)$, $i(t)\to$ total energy & multiply, expand, integrate \hfill (6) \\[1pt]
battery rating $\to$ run time & $t=\text{Ah}/I$ or $\text{Wh}/P$ \hfill (7) \\[1pt]
mass, $\Delta T\to$ heat & $E=c\,m\,\Delta T$ \hfill (8) \\[1pt]
joules $\to$ cost & $\div\,3.6\times10^6$, then $\times$ rate \hfill (8) \\[1pt]
two of $v$, $i$, $R\to$ the third & Ohm's law, one resistor \hfill (10) \\[1pt]
resistor $\to$ power absorbed & $i^2R$ or $v^2/R$ \hfill (10) \\[1pt]
currents at a node $\to$ last one & KCL \hfill (12) \\[1pt]
voltages in a loop $\to$ last one & KVL \hfill (13) \\[1pt]
network $\to R_{eq}$ & series and parallel \hfill (14) \\[1pt]
series, total $v\to$ one part & voltage divider \hfill (15) \\[1pt]
parallel, total $i\to$ one branch & current divider \hfill (16) \\[1pt]
not series, not parallel & $\Delta\leftrightarrow Y$ \hfill (17) \\
\end{tabular}}
\par\vspace{2pt}
The number in parentheses is the concept section.

\end{multicols}

\newpage
\section{DC Circuits --- Concepts}

\begin{multicols}{2}
\raggedcolumns

% ------------------------------------------------------------ 1
\filbreak \subsection{1. charge and electrons}
\term{Charge} is a property of matter, measured in coulombs (C). An electron carries a negative charge of size $e=1.602\times10^{-19}$ C.

\term{Charge to electrons}:
$$n=\frac{\lvert Q\rvert}{e}=\frac{\lvert Q\rvert}{1.602\times10^{-19}\text{ C}}$$
\term{Electrons to charge}:
$$Q=n\,e \quad\text{(write a minus sign for electrons)}$$
\warn{Put $Q$ in coulombs before you divide.} A prefix left on $Q$ makes the count wrong by a power of ten.

\wk{12}{the number of electrons in $2$ mC}
\stepbox{1. CONVERT THE PREFIX}{$2$ mC $=2\times10^{-3}$ C \; \why{milli $=10^{-3}$}}
\stepdown
\stepbox{2. WRITE THE FORMULA}{$n=\dfrac{\lvert Q\rvert}{e}$}
\stepdown
\stepbox{3. SUBSTITUTE}{$n=\dfrac{2\times10^{-3}}{1.602\times10^{-19}}$}
\stepdown
\stepbox{4. DIVIDE THE NUMBERS}{$\dfrac{2}{1.602}=1.248$}
\stepdown
\stepbox{5. DIVIDE THE POWERS OF TEN}{$\dfrac{10^{-3}}{10^{-19}}=10^{-3-(-19)}=10^{16}$ \; \why{subtract the exponents}}
\stepdown
\stepbox{6. COMBINE}{$n=\keyres{1.248\times10^{16}}$ electrons}

\wk{12}{(reverse) the charge of $5\times10^{15}$ electrons}
\stepbox{1. WRITE THE FORMULA}{$Q=n\,e$}
\stepdown
\stepbox{2. SUBSTITUTE}{$Q=\big(5\times10^{15}\big)\big(1.602\times10^{-19}\big)$ C}
\stepdown
\stepbox{3. MULTIPLY THE NUMBERS}{$5\cdot1.602=8.01$}
\stepdown
\stepbox{4. MULTIPLY THE POWERS OF TEN}{$10^{15}\cdot10^{-19}=10^{15+(-19)}=10^{-4}$ \; \why{add the exponents}}
\stepdown
\stepbox{5. COMBINE AND ADD THE SIGN}{$Q=-8.01\times10^{-4}$ C $=\keyres{-0.801}$ mC \; \why{electrons are negative}}
\stepdown
\stepbox{6. CHECK}{$\dfrac{8.01\times10^{-4}}{1.602\times10^{-19}}=5\times10^{15}$ \checkmark}

% ------------------------------------------------------------ 2
\filbreak \subsection{2. current: the constant case}
\term{Current} is the rate of flow of charge, measured in amperes (A). $1$ A $=1$ C/s. \term{Direct current} (DC) is a constant current $I$.

\term{Current from charge and time}: $I=\dfrac{Q}{t}$

\term{Charge from current and time}: $Q=I\,t$

\term{Charge over a time range} $t_1$ to $t_2$: $Q=I\,(t_2-t_1)$

\warn{Time must be in seconds.} A coulomb is an ampere times a second. Convert minutes and hours first.

\warn{Conventional current flows the other way from electrons.} The current arrow shows the flow of positive charge. A negative current means the real flow goes against the arrow.

\wk{10}{$0.5$ A flows for $2$ min. Find the charge}
\stepbox{1. CONVERT THE TIME}{$2$ min $=2\cdot60=120$ s}
\stepdown
\stepbox{2. WRITE THE FORMULA}{$Q=I\,t$}
\stepdown
\stepbox{3. SUBSTITUTE AND MULTIPLY}{$Q=0.5\text{ A}\cdot120\text{ s}=\keyres{60}$ C}

\wk{10}{(reverse) $90$ C passes in $30$ s. Find the current}
\stepbox{1. WRITE THE FORMULA}{$I=\dfrac{Q}{t}$}
\stepdown
\stepbox{2. SUBSTITUTE AND DIVIDE}{$I=\dfrac{90\text{ C}}{30\text{ s}}=\keyres{3}$ A}
\stepdown
\stepbox{3. CHECK}{$Q=I\,t=3\cdot30=90$ C \checkmark}

\wk{10}{$4$ mA flows from $t=2$ s to $t=7$ s. Find the charge}
\stepbox{1. LENGTH OF THE RANGE}{$t_2-t_1=7-2=5$ s}
\stepdown
\stepbox{2. SUBSTITUTE AND MULTIPLY}{$Q=4\text{ mA}\cdot5\text{ s}=\keyres{20}$ mC \; \why{mA$\cdot$s $=$ mC, so the prefix passes through}}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. current: the changing case}
If the charge changes with time, $q(t)$, the current is its rate of change. The current is a function too, $i(t)$.

\term{Charge to current} (differentiate):
$$i(t)=\frac{dq}{dt}$$
\term{Current to charge} (integrate):
$$q=\int_{t_1}^{t_2} i(t)\,dt$$

\filbreak \subsubsection{Which way? --- charge or current}
{\small
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$q(t)\to i(t)$ & \keyres{Differentiate} $q(t)$. \\[2pt]
$i(t)\to q$ & \keyres{Integrate} $i(t)$ between the two times. \\[2pt]
constant $Q$, $I$, $t$ & Section 2 (multiply or divide). \\
\end{tabular}}
\par\vspace{2pt}
\warn{If the problem gives charge and your answer has a higher power of $t$, you integrated.} Go the other way.

\warn{Put a time into the function only after you differentiate.} A number put into $q(t)$ first becomes a constant, and its derivative is $0$.

\keyres{Units}: the prefix passes through. mC $\to$ mA. \; nC $\to$ nA. \; $\mu$A $\to$ $\mu$C.

\wk{12}{(differentiate) $q(t)=3t^2$ mC. Find $i(t)$}
\stepbox{1. PICK THE DIRECTION}{Given charge, find current $\Rightarrow$ differentiate.}
\stepdown
\stepbox{2. POWER RULE}{$\dfrac{d}{dt}\big(t^n\big)=n\,t^{n-1}$, \; here $n=2$}
\stepdown
\stepbox{3. APPLY IT}{$\dfrac{d}{dt}\big(3t^2\big)=3\cdot2\cdot t^{2-1}=6t$}
\stepdown
\stepbox{4. UNITS}{$i(t)=\keyres{6t}$ mA \; \why{mC per second $=$ mA}}
\stepdown
\stepbox{5. CHECK: INTEGRATE BACK}{$\int_0^t 6\tau\,d\tau=3t^2$ mC \checkmark}

\wk{14}{(differentiate) $q(t)=0.8\big(1-e^{-0.5t}\big)$ nC. Find $i(t)$}
\stepbox{1. DISTRIBUTE}{$q(t)=0.8-0.8e^{-0.5t}$ nC}
\stepdown
\stepbox{2. DERIVATIVE OF THE CONSTANT}{$\dfrac{d}{dt}(0.8)=0$}
\stepdown
\stepbox{3. DERIVATIVE OF THE EXPONENTIAL}{Rule: $\dfrac{d}{dt}e^{at}=a\,e^{at}$, \; here $a=-0.5$. \\ $\dfrac{d}{dt}\big(-0.8e^{-0.5t}\big)=-0.8\cdot(-0.5)\,e^{-0.5t}=0.4e^{-0.5t}$}
\stepdown
\stepbox{4. ADD THE TERMS}{$i(t)=0+0.4e^{-0.5t}=\keyres{0.4e^{-0.5t}}$ nA}
\stepdown
\stepbox{5. CHECK THE ENDS}{$t=0$: $e^0=1$, so $i=0.4$ nA. \; $t\to\infty$: $i\to0$ while $q$ levels off at $0.8$ nC. \checkmark}

\wk{14}{(product rule) $q(t)=0.5t\cos(100\pi t)$ $\mu$C. Find $i(t)$}
\stepbox{1. NAME THE TWO FACTORS}{$f=0.5t$, \quad $g=\cos(100\pi t)$}
\stepdown
\stepbox{2. DIFFERENTIATE $f$}{$f'=0.5$}
\stepdown
\stepbox{3. DIFFERENTIATE $g$}{Rule: $\dfrac{d}{dt}\cos(\omega t)=-\omega\sin(\omega t)$, \; $\omega=100\pi$. \\ $g'=-100\pi\sin(100\pi t)$}
\stepdown
\stepbox{4. FIRST TERM $f'g$}{$0.5\cos(100\pi t)$}
\stepdown
\stepbox{5. SECOND TERM $fg'$}{$0.5t\cdot\big(-100\pi\sin(100\pi t)\big)=-50\pi t\sin(100\pi t)$}
\stepdown
\stepbox{6. ADD}{$i(t)=\keyres{0.5\cos(100\pi t)-50\pi t\sin(100\pi t)}$ $\mu$A}

\wk{16}{(integrate) $i(t)=20e^{-0.5t}$ mA, from $t=0$ to $t=4$ s. Find $q$}
\stepbox{1. SET UP THE INTEGRAL}{$q=\int_0^4 20e^{-0.5t}\,dt$}
\stepdown
\stepbox{2. ANTIDERIVATIVE}{Rule: $\int e^{at}\,dt=\dfrac{e^{at}}{a}$, \; $a=-0.5$. \\ $F(t)=\dfrac{20}{-0.5}e^{-0.5t}=-40e^{-0.5t}$}
\stepdown
\stepbox{3. EVALUATE AT THE TOP ($t=4$)}{$F(4)=-40e^{-0.5\cdot4}=-40e^{-2}=-40(0.1353)=-5.413$}
\stepdown
\stepbox{4. EVALUATE AT THE BOTTOM ($t=0$)}{$F(0)=-40e^{0}=-40(1)=-40$ \; \why{$e^0=1$, not $0$}}
\stepdown
\stepbox{5. TOP MINUS BOTTOM}{$q=F(4)-F(0)=-5.413-(-40)=-5.413+40=\keyres{34.59}$ mC \; \why{mA$\cdot$s $=$ mC}}
\stepdown
\stepbox{6. CHECK WITH THE SHORTCUT}{$\dfrac{A}{a}\big(1-e^{-aT}\big)=\dfrac{20}{0.5}\big(1-0.1353\big)=40(0.8647)=34.59$ \checkmark}

\wk{16}{(integrate to $\infty$) $i(t)=0.4e^{-0.5t}$ nA. Find the total charge}
\stepbox{1. SET UP WITH A FINITE TOP $b$}{$q=\lim\limits_{b\to\infty}\int_0^b 0.4e^{-0.5t}\,dt$ \; \why{you cannot put $\infty$ into a function, so use $b$}}
\stepdown
\stepbox{2. ANTIDERIVATIVE}{$F(t)=\dfrac{0.4}{-0.5}e^{-0.5t}=-0.8e^{-0.5t}$}
\stepdown
\stepbox{3. EVALUATE AT THE TOP ($t=b$)}{$F(b)=-0.8e^{-0.5b}$}
\stepdown
\stepbox{4. LET $b\to\infty$}{$e^{-0.5b}\to0$, \; so $F(b)\to-0.8(0)=0$}
\stepdown
\stepbox{5. EVALUATE AT THE BOTTOM ($t=0$)}{$F(0)=-0.8e^{0}=-0.8(1)=-0.8$}
\stepdown
\stepbox{6. TOP MINUS BOTTOM}{$q=0-(-0.8)=\keyres{0.8}$ nC}
\stepdown
\stepbox{7. CHECK WITH THE SHORTCUT}{$\dfrac{A}{a}=\dfrac{0.4}{0.5}=0.8$ \checkmark \; \why{same as where $q(t)$ levels off two examples up}}
\par\vspace{2pt}
\warn{A total to $\infty$ exists only if $i(t)\to0$.} A constant or a sinusoid has no finite total.

% ------------------------------------------------------------ 4
\filbreak \subsection{4. voltage}
\term{Voltage} is the energy needed to move one coulomb of charge between two points. It is measured in volts (V). $1$ V $=1$ J/C.

\term{Voltage from energy and charge}: $v=\dfrac{w}{q}$

\term{Energy from charge and voltage}: $w=q\,v$

Current flows \emph{through} an element. Voltage is \emph{across} an element, from its $+$ mark to its $-$ mark. \keyres{$v_{ab}=-v_{ba}$}.

\wk{8}{move $2$ C through $12$ V. Find the energy}
\stepbox{1. WRITE THE FORMULA}{$w=q\,v$}
\stepdown
\stepbox{2. SUBSTITUTE AND MULTIPLY}{$w=2\text{ C}\cdot12\text{ V}=\keyres{24}$ J \; \why{C$\cdot$V $=$ C$\cdot$J/C $=$ J}}

\wk{8}{(reverse) $30$ J moves $5$ C. Find the voltage}
\stepbox{1. WRITE THE FORMULA}{$v=\dfrac{w}{q}$}
\stepdown
\stepbox{2. SUBSTITUTE AND DIVIDE}{$v=\dfrac{30\text{ J}}{5\text{ C}}=\keyres{6}$ V}

% ------------------------------------------------------------ 5
\filbreak \subsection{5. power and the passive sign convention}
\term{Power} is the rate of energy transfer, measured in watts (W). $1$ W $=1$ J/s.
$$p=v\,i$$
\term{Passive sign convention}: look at where the current arrow enters the element.
\begin{itemize}
\item The arrow enters the $+$ mark: \; $p=+v\,i$.
\item The arrow enters the $-$ mark: \; $p=-v\,i$.
\end{itemize}
Then read the sign of the result:
\begin{itemize}
\item $p>0$: the element \term{absorbs} power (a resistor, a battery that charges).
\item $p<0$: the element \term{delivers} power (a source).
\end{itemize}

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node[res, minimum width=1.0cm, minimum height=0.35cm] (e1) at (1,0) {};
\draw[wire] (0,0) -- (e1.west); \draw[wire] (e1.east) -- (2,0);
\node at (0.3,-0.22) {$+$}; \node at (1.7,-0.22) {$-$};
\node at (1,-0.38) {$v$};
\draw[iarrow] (-0.1,0.25) -- (0.4,0.25) node[midway, above] {$i$};
\node[text=keyHi] at (1,0.6) {$p=+v\,i$};
\node[res, minimum width=1.0cm, minimum height=0.35cm] (e2) at (4,0) {};
\draw[wire] (3,0) -- (e2.west); \draw[wire] (e2.east) -- (5,0);
\node at (3.3,-0.22) {$+$}; \node at (4.7,-0.22) {$-$};
\node at (4,-0.38) {$v$};
\draw[iarrow] (5.1,0.25) -- (4.6,0.25) node[midway, above] {$i$};
\node[text=warnHi] at (4,0.6) {$p=-v\,i$};
\end{tikzpicture}

\keyres{Conservation of energy}: in each circuit, $\sum p=0$. The power delivered equals the power absorbed.

\warn{The sign comes from the arrow and the marks, not from the element type.} Check the arrow against the $+$ mark before you multiply.

\wk{14}{absorbs or delivers? Three cases}
\stepbox{1. $v=5$ V, \; $i=2$ A INTO THE $+$ MARK}{Formula: $p=+v\,i$. \; $p=+(5)(2)=+10$ W. \\ $p>0$ $\Rightarrow$ \keyres{absorbs} $10$ W.}
\stepdown
\stepbox{2. $v=5$ V, \; $i=2$ A INTO THE $-$ MARK}{Formula: $p=-v\,i$. \; $p=-(5)(2)=-10$ W. \\ $p<0$ $\Rightarrow$ \keyres{delivers} $10$ W.}
\stepdown
\stepbox{3. $v=-3$ V, \; $i=4$ A INTO THE $+$ MARK}{Formula: $p=+v\,i$. \; $p=+(-3)(4)=-12$ W. \\ $p<0$ $\Rightarrow$ \keyres{delivers} $12$ W. \; \why{the negative voltage flips the sign}}

\wk{10}{conservation check}
A $12$ V source drives $2$ A through one resistor. The current leaves the $+$ mark of the source and enters the $+$ mark of the resistor.
\par\vspace{2pt}
\stepbox{1. SOURCE}{The arrow enters the $-$ mark. \; $p=-(12)(2)=-24$ W (delivers)}
\stepdown
\stepbox{2. RESISTOR}{The arrow enters the $+$ mark. \; $p=+(12)(2)=+24$ W (absorbs)}
\stepdown
\stepbox{3. ADD}{$\sum p=-24+24=\keyres{0}$ \checkmark}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. energy}
Energy is the amount. Power is the rate. The pattern is the same as charge (amount) and current (rate).

\term{Energy from constant power}: $W=P\,t$ \; ($t$ in seconds gives joules)

\term{Energy from changing power}:
$$w=\int_{t_1}^{t_2} p(t)\,dt=\int_{t_1}^{t_2} v(t)\,i(t)\,dt$$
\term{Power from energy}: $p=\dfrac{dw}{dt}$

\term{Power at one instant} $t_1$: $p(t_1)=v(t_1)\cdot i(t_1)$

\filbreak \subsubsection{Which way? --- energy or power}
{\small
\begin{tabular}{@{}p{0.32\linewidth}p{0.64\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
constant $P$, $t\to W$ & \keyres{Multiply}: $W=P\,t$. \\[2pt]
$p(t)\to w$ & \keyres{Integrate} $p(t)$ between the two times. \\[2pt]
$w(t)\to p$ & \keyres{Differentiate} $w(t)$. \\[2pt]
$v(t)$, $i(t)\to p(t_1)$ & Put $t_1$ into each. Then multiply. \\[2pt]
$v(t)$, $i(t)\to w$ & Multiply the functions. Then integrate. \\
\end{tabular}}
\par\vspace{2pt}
\warn{$\int v\,i\,dt$ is not $\big(\int v\,dt\big)\cdot\big(\int i\,dt\big)$.} Multiply the functions first.

\keyres{Units}: V$\cdot$mA $=$ mW. \; mW$\cdot$s $=$ mJ.

\wk{12}{(constant) a $12$ V battery delivers $2$ A for $1$ h}
\stepbox{1. POWER}{$P=V\,I=12\text{ V}\cdot2\text{ A}=24$ W}
\stepdown
\stepbox{2. CONVERT THE TIME}{$1$ h $=3600$ s}
\stepdown
\stepbox{3. ENERGY}{$W=P\,t=24\text{ W}\cdot3600\text{ s}=86{,}400$ J $=\keyres{86.4}$ kJ}
\stepdown
\stepbox{4. SAME ENERGY IN Wh}{$24\text{ W}\cdot1\text{ h}=24$ Wh. \; Check: $24\cdot3600=86{,}400$ J \checkmark}

\wk{10}{(reverse) $w(t)=5t^2$ J. Find the power at $t=3$ s}
\stepbox{1. PICK THE DIRECTION}{Given energy, find power $\Rightarrow$ differentiate.}
\stepdown
\stepbox{2. DIFFERENTIATE}{$p(t)=\dfrac{d}{dt}\big(5t^2\big)=5\cdot2\cdot t=10t$ W}
\stepdown
\stepbox{3. PUT IN THE TIME}{$p(3)=10\cdot3=\keyres{30}$ W}

\wk{14}{$v=50\big(1-e^{-0.5t}\big)$ V, \; $i=4e^{-0.5t}$ mA. Power at $t=1$ s}
\stepbox{1. THE EXPONENTIAL AT $t=1$}{$e^{-0.5\cdot1}=e^{-0.5}=0.6065$}
\stepdown
\stepbox{2. VOLTAGE AT $t=1$}{$v(1)=50(1-0.6065)=50(0.3935)=19.67$ V}
\stepdown
\stepbox{3. CURRENT AT $t=1$}{$i(1)=4(0.6065)=2.426$ mA}
\stepdown
\stepbox{4. MULTIPLY}{$p(1)=19.67\text{ V}\cdot2.426\text{ mA}=\keyres{47.7}$ mW \; \why{V$\cdot$mA $=$ mW}}

\wk{20}{same device, total energy from $0$ to $\infty$}
\stepbox{1. SET UP}{$w=\int_0^\infty v(t)\,i(t)\,dt=\int_0^\infty 50\big(1-e^{-0.5t}\big)\cdot4e^{-0.5t}\,dt$}
\stepdown
\stepbox{2. MULTIPLY THE CONSTANTS}{$50\cdot4=200$, \; so $p(t)=200\big(1-e^{-0.5t}\big)e^{-0.5t}$ mW}
\stepdown
\stepbox{3. DISTRIBUTE $e^{-0.5t}$}{$p(t)=200\big(e^{-0.5t}-e^{-0.5t}\cdot e^{-0.5t}\big)$}
\stepdown
\stepbox{4. COMBINE THE EXPONENTS}{$e^{-0.5t}\cdot e^{-0.5t}=e^{(-0.5-0.5)t}=e^{-t}$ \; \why{add the exponents}}
\stepdown
\stepbox{5. DISTRIBUTE THE $200$}{$p(t)=200e^{-0.5t}-200e^{-t}$ mW}
\stepdown
\stepbox{6. ANTIDERIVATIVE OF THE FIRST TERM}{$\int200e^{-0.5t}\,dt=\dfrac{200}{-0.5}e^{-0.5t}=-400e^{-0.5t}$}
\stepdown
\stepbox{7. ANTIDERIVATIVE OF THE SECOND TERM}{$\int200e^{-t}\,dt=\dfrac{200}{-1}e^{-t}=-200e^{-t}$}
\stepdown
\stepbox{8. FULL ANTIDERIVATIVE}{$F(t)=-400e^{-0.5t}-\big(-200e^{-t}\big)=-400e^{-0.5t}+200e^{-t}$ \; \why{first minus second, as in step 5}}
\stepdown
\stepbox{9. EVALUATE AT THE TOP ($t=b$)}{$F(b)=-400e^{-0.5b}+200e^{-b}$}
\stepdown
\stepbox{10. LET $b\to\infty$}{$e^{-0.5b}\to0$ and $e^{-b}\to0$, \; so $F(b)\to-400(0)+200(0)=0$}
\stepdown
\stepbox{11. EVALUATE AT THE BOTTOM ($t=0$)}{$F(0)=-400e^{0}+200e^{0}=-400(1)+200(1)=-200$}
\stepdown
\stepbox{12. TOP MINUS BOTTOM}{$w=0-(-200)=\keyres{200}$ mJ \; \why{mW$\cdot$s $=$ mJ}}
\stepdown
\stepbox{13. CHECK WITH THE SHORTCUT $\frac{A}{a}$ ON EACH TERM}{$\dfrac{200}{0.5}-\dfrac{200}{1}=400-200=200$ \checkmark}

% ------------------------------------------------------------ 7
\filbreak \subsection{7. battery and utility units: Ah, Wh, kWh}
Batteries and utility bills use hours, not seconds.
\begin{itemize}
\item \term{Ampere-hour} (Ah) is \keyres{charge}: $1$ Ah $=1$ A $\cdot$ $3600$ s $=3600$ C.
\item \term{Watt-hour} (Wh) is \keyres{energy}: $1$ Wh $=1$ W $\cdot$ $3600$ s $=3600$ J.
\item \term{Kilowatt-hour} (kWh) is energy: $1$ kWh $=1000\cdot3600=3.6\times10^6$ J.
\end{itemize}
\warn{Read the unit of a battery rating.} Ah or mAh is charge. Wh or kWh is energy.
{\small
\begin{tabular}{@{}p{0.36\linewidth}p{0.60\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$P$, $V\to I$ & $I=\dfrac{P}{V}$ \rule[-7pt]{0pt}{19pt}\\
Ah, $V\to$ Wh & $\text{Wh}=V\cdot\text{Ah}$ \\[2pt]
Wh, $V\to$ Ah & $\text{Ah}=\dfrac{\text{Wh}}{V}$ \rule[-7pt]{0pt}{19pt}\\
Ah rating, $I\to$ run time & $t=\dfrac{\text{Ah}}{I}$ (hours) \rule[-7pt]{0pt}{19pt}\\
Wh rating, $P\to$ run time & $t=\dfrac{\text{Wh}}{P}$ (hours) \rule[-7pt]{0pt}{19pt}\\
Wh rating, $V$, $I\to$ run time & $P=V\,I$ first, then $t=\dfrac{\text{Wh}}{P}$ \rule[-7pt]{0pt}{19pt}\\
Wh $\to$ J, \; Ah $\to$ C & multiply by $3600$ \\[2pt]
mAh $\to$ Ah & divide by $1000$ \\[2pt]
energy $W\to$ batteries filled & $n=\dfrac{W}{W_{\text{one}}}$, same units, round down \rule[-7pt]{0pt}{19pt}\\
\end{tabular}}

\wk{10}{a $2.5$ Ah battery, load draws $500$ mA. Run time}
\stepbox{1. CONVERT THE CURRENT}{$500$ mA $=0.5$ A}
\stepdown
\stepbox{2. WRITE THE FORMULA}{$t=\dfrac{\text{Ah}}{I}$}
\stepdown
\stepbox{3. SUBSTITUTE AND DIVIDE}{$t=\dfrac{2.5\text{ Ah}}{0.5\text{ A}}=\keyres{5}$ h}

\wk{10}{(Ah to Wh) the same battery at $3.7$ V}
\stepbox{1. WRITE THE FORMULA}{$\text{Wh}=V\cdot\text{Ah}$}
\stepdown
\stepbox{2. SUBSTITUTE AND MULTIPLY}{$\text{Wh}=3.7\text{ V}\cdot2.5\text{ Ah}=\keyres{9.25}$ Wh}
\stepdown
\stepbox{3. TO JOULES}{$9.25\cdot3600=\keyres{33{,}300}$ J}

\wk{14}{a $12$ V, $60$ Wh battery, load draws $250$ mA}
\stepbox{1. CONVERT THE CURRENT}{$250$ mA $=0.25$ A}
\stepdown
\stepbox{2. LOAD POWER}{$P=V\,I=12\text{ V}\cdot0.25\text{ A}=3$ W}
\stepdown
\stepbox{3. RUN TIME}{$t=\dfrac{\text{Wh}}{P}=\dfrac{60\text{ Wh}}{3\text{ W}}=\keyres{20}$ h}
\stepdown
\stepbox{4. CHECK WITH CHARGE}{$\text{Ah}=\dfrac{60}{12}=5$ Ah. \; $0.25\text{ A}\cdot20\text{ h}=5$ Ah \checkmark}

\wk{14}{a $240$ V heater rated $1.2$ kW, on for $15$ min}
\stepbox{1. CONVERT THE POWER}{$1.2$ kW $=1200$ W}
\stepdown
\stepbox{2. CURRENT}{$I=\dfrac{P}{V}=\dfrac{1200}{240}=\keyres{5}$ A}
\stepdown
\stepbox{3. CONVERT THE TIME}{$15$ min $=15\cdot60=900$ s}
\stepdown
\stepbox{4. ENERGY IN JOULES}{$W=P\,t=1200\cdot900=1{,}080{,}000$ J $=\keyres{1.08}$ MJ}
\stepdown
\stepbox{5. SAME ENERGY IN kWh}{$15$ min $=0.25$ h. \; $1.2\text{ kW}\cdot0.25\text{ h}=\keyres{0.3}$ kWh}
\stepdown
\stepbox{6. CHECK}{$0.3\cdot3.6\times10^6=1.08\times10^6$ J \checkmark}

\wk{14}{how many $3000$ mAh, $3.7$ V batteries does $1.08$ MJ fill?}
\stepbox{1. mAh TO Ah}{$3000$ mAh $=3$ Ah}
\stepdown
\stepbox{2. ENERGY OF ONE BATTERY IN Wh}{$3.7\text{ V}\cdot3\text{ Ah}=11.1$ Wh}
\stepdown
\stepbox{3. ENERGY OF ONE BATTERY IN J}{$11.1\cdot3600=39{,}960$ J}
\stepdown
\stepbox{4. DIVIDE}{$n=\dfrac{1{,}080{,}000}{39{,}960}=27.03$}
\stepdown
\stepbox{5. ROUND DOWN}{$\keyres{27}$ full charges \; \why{the $0.03$ is not a full battery}}

\wk{18}{a pulse of $8$ kA for $20$ $\mu$s across $100$ MV}
\stepbox{1. CONVERT EACH PREFIX}{$I=8$ kA $=8\times10^{3}$ A. \\ $t=20$ $\mu$s $=20\times10^{-6}=2\times10^{-5}$ s. \\ $V=100$ MV $=100\times10^{6}=10^{8}$ V.}
\stepdown
\stepbox{2. CHARGE}{$Q=I\,t=\big(8\times10^{3}\big)\big(2\times10^{-5}\big)=16\times10^{-2}=\keyres{0.16}$ C}
\stepdown
\stepbox{3. ELECTRONS}{$n=\dfrac{0.16}{1.602\times10^{-19}}=0.0999\times10^{19}\approx\keyres{1.0\times10^{18}}$}
\stepdown
\stepbox{4. POWER}{$P=V\,I=\big(10^{8}\big)\big(8\times10^{3}\big)=8\times10^{11}$ W $=\keyres{800}$ GW}
\stepdown
\stepbox{5. ENERGY}{$W=P\,t=\big(8\times10^{11}\big)\big(2\times10^{-5}\big)=16\times10^{6}$ J $=\keyres{16}$ MJ}
\stepdown
\stepbox{6. CHECK WITH $W=Q\,V$}{$0.16\cdot10^{8}=1.6\times10^{7}$ J $=16$ MJ \checkmark}

% ------------------------------------------------------------ 8
\filbreak \subsection{8. heat and energy cost}
\term{Heat} to change the temperature of a mass:
$$E=c\,m\,\Delta T$$
\begin{itemize}
\item $c$: \term{specific heat}. Water: $c=4186$ J/(kg$\cdot^\circ$C).
\item $m$: mass in kg. Water: $1$ L $\approx1$ kg. \; $1$ fl oz $\approx0.02957$ kg.
\item $\Delta T=T_{\text{final}}-T_{\text{initial}}$, in $^\circ$C.
\end{itemize}
\term{Temperature change from energy}: $\Delta T=\dfrac{E}{c\,m}$

If all the electric energy becomes heat: $E_{\text{heat}}=W_{\text{electric}}=V\,I\,t$.

\term{Cost}: convert joules to kWh, then multiply by the rate.
$$\text{kWh}=\frac{\text{J}}{3.6\times10^{6}} \qquad \text{cost}=\text{kWh}\cdot\text{rate}$$
\warn{Round down a count of items.} $191.1$ cups means $191$ full cups.

\wk{16}{heat $0.5$ kg of water from $20^\circ$C to $80^\circ$C at $15$ cents/kWh}
\stepbox{1. TEMPERATURE CHANGE}{$\Delta T=80-20=60^\circ$C}
\stepdown
\stepbox{2. HEAT}{$E=c\,m\,\Delta T=4186\cdot0.5\cdot60=\keyres{125{,}580}$ J}
\stepdown
\stepbox{3. JOULES TO kWh}{$\dfrac{125{,}580}{3.6\times10^{6}}=0.03488$ kWh}
\stepdown
\stepbox{4. COST OF ONE}{$0.03488\text{ kWh}\cdot15\text{ cents/kWh}=\keyres{0.523}$ cents}
\stepdown
\stepbox{5. HOW MANY FOR \$1}{\$1 $=100$ cents. \; $\dfrac{100}{0.523}=191.1$ $\Rightarrow$ \keyres{191}}

\wk{10}{(reverse) $50$ kJ goes into $0.4$ kg of water. Find $\Delta T$}
\stepbox{1. CONVERT THE ENERGY}{$50$ kJ $=50{,}000$ J}
\stepdown
\stepbox{2. THE BOTTOM: $c\,m$}{$4186\cdot0.4=1674.4$ J/$^\circ$C}
\stepdown
\stepbox{3. DIVIDE}{$\Delta T=\dfrac{50{,}000}{1674.4}=\keyres{29.9}^\circ$C}

\wk{14}{a heater at $10$ A, $120$ V for $3$ min, same water and rate}
\stepbox{1. CONVERT THE TIME}{$3$ min $=3\cdot60=180$ s}
\stepdown
\stepbox{2. POWER}{$P=V\,I=120\cdot10=1200$ W}
\stepdown
\stepbox{3. ENERGY}{$W=P\,t=1200\cdot180=\keyres{216{,}000}$ J}
\stepdown
\stepbox{4. HOW MANY BATCHES}{$\dfrac{216{,}000}{125{,}580}=1.72$ $\Rightarrow$ \keyres{1} full batch}
\stepdown
\stepbox{5. COST}{$\dfrac{216{,}000}{3.6\times10^{6}}=0.06$ kWh. \; $0.06\cdot15=\keyres{0.9}$ cents}

% ------------------------------------------------------------ 9
\filbreak \subsection{9. circuit elements}
\term{Active} elements can deliver energy (sources). \term{Passive} elements cannot (resistors, capacitors, inductors).
\begin{itemize}
\item \term{Independent voltage source} (circle): fixed $v$. The current is whatever the circuit needs.
\item \term{Independent current source} (circle with an arrow): fixed $i$. The voltage is whatever the circuit needs.
\item \term{Dependent source} (diamond): its value is a gain times a voltage $v_x$ or a current $i_x$ somewhere else in the circuit.
\end{itemize}
{\small
\begin{tabular}{@{}p{0.14\linewidth}p{0.44\linewidth}p{0.18\linewidth}p{0.16\linewidth}@{}}
\term{Type} & \term{Name} & \term{Output} & \term{Gain unit} \\\hline
VCVS & voltage-controlled voltage source & $v=\mu\,v_x$ & none \\[2pt]
CCVS & current-controlled voltage source & $v=r\,i_x$ & $\Omega$ \\[2pt]
VCCS & voltage-controlled current source & $i=g\,v_x$ & S \\[2pt]
CCCS & current-controlled current source & $i=\beta\,i_x$ & none \\
\end{tabular}}
\par\vspace{2pt}
\warn{Two different ideal voltage sources in parallel, or two different ideal current sources in series, break KVL or KCL.}

\wk{10}{the value of a dependent source}
\stepbox{1. READ THE TYPE}{A diamond labeled $10\,i_x$ with $+$ and $-$ marks: a CCVS. \; Gain $r=10$ $\Omega$.}
\stepdown
\stepbox{2. FIND THE CONTROL}{The circuit has $i_x=0.5$ A.}
\stepdown
\stepbox{3. MULTIPLY}{$v=10\,\Omega\cdot0.5\text{ A}=\keyres{5}$ V \; \why{$\Omega\cdot$A $=$ V}}

% ------------------------------------------------------------ 10
\filbreak \subsection{10. Ohm's law and resistor power}
\term{Ohm's law}:
$$v=i\,R \qquad i=\frac{v}{R} \qquad R=\frac{v}{i}$$
$R$ is the \term{resistance} in ohms ($\Omega$). \term{Conductance} $G=\frac1R$, in siemens (S). Then $i=G\,v$.

\term{Power absorbed by a resistor}:
$$p=v\,i=i^2R=\frac{v^2}{R}$$
\term{Energy absorbed by a resistor}: constant current: $W=I^2R\,t$. \; Changing current: $w=\int i^2R\,dt$.

\keyres{A resistor always absorbs power} ($p\geq0$). All of it becomes heat.
\begin{itemize}
\item \term{Short circuit}: $R=0$, so $v=0$ for each current.
\item \term{Open circuit}: $R=\infty$, so $i=0$ for each voltage.
\end{itemize}
\warn{Ohm's law uses the passive sign convention.} If the current arrow enters the $-$ mark, write $v=-i\,R$.

\filbreak \subsubsection{Which way? --- Ohm's law or a definition?}
Ohm's law connects $v$, $i$, and $R$ of \keyres{one resistor at the same instant}. Use it only when you know two of the three. The definitions ($i=\frac{dq}{dt}$, $p=v\,i$) work for \keyres{every element} and need no $R$.
{\small
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Known} $\to$ \term{find} & \term{Do this} \\\hline
$v$, $R\to i$ & Ohm: $i=\dfrac{v}{R}$ \rule[-7pt]{0pt}{19pt}\\
$i$, $R\to v$ & Ohm: $v=i\,R$ \\[2pt]
$v$, $i\to R$ & Ohm: $R=\dfrac{v}{i}$ \rule[-7pt]{0pt}{19pt}\\
$i$, $R\to p$ & $p=i^2R$ \\[2pt]
$v$, $R\to p$ & $p=\dfrac{v^2}{R}$ \rule[-7pt]{0pt}{19pt}\\
$q(t)\to i$ & Definition: $i=\dfrac{dq}{dt}$. No $R$. \rule[-7pt]{0pt}{19pt}\\
\end{tabular}}

\wk{10}{$10$ V across a $2$ k$\Omega$ resistor. Find the current}
\stepbox{1. CONVERT THE PREFIX}{$2$ k$\Omega=2000\,\Omega$}
\stepdown
\stepbox{2. OHM'S LAW}{$i=\dfrac{v}{R}=\dfrac{10}{2000}=0.005$ A $=\keyres{5}$ mA}

\wk{10}{(reverse) $3$ mA through $4.7$ k$\Omega$. Find the voltage}
\stepbox{1. CONVERT THE PREFIXES}{$3$ mA $=0.003$ A. \; $4.7$ k$\Omega=4700\,\Omega$}
\stepdown
\stepbox{2. OHM'S LAW}{$v=i\,R=0.003\cdot4700=\keyres{14.1}$ V}

\wk{14}{power absorbed by a $50\,\Omega$ resistor that carries $0.2$ A}
\stepbox{1. WAY 1: $p=i^2R$}{$i^2=(0.2)^2=0.04$. \; $p=0.04\cdot50=\keyres{2}$ W}
\stepdown
\stepbox{2. FIND $v$ FOR THE OTHER WAYS}{$v=i\,R=0.2\cdot50=10$ V}
\stepdown
\stepbox{3. WAY 2: $p=\frac{v^2}{R}$}{$v^2=10^2=100$. \; $p=\dfrac{100}{50}=2$ W \checkmark}
\stepdown
\stepbox{4. WAY 3: $p=v\,i$}{$p=10\cdot0.2=2$ W \checkmark \; \why{all three ways agree}}

\wk{12}{energy absorbed by $100\,\Omega$ carrying $0.5$ A for $10$ min}
\stepbox{1. POWER}{$P=I^2R=(0.5)^2\cdot100=0.25\cdot100=25$ W}
\stepdown
\stepbox{2. CONVERT THE TIME}{$10$ min $=10\cdot60=600$ s}
\stepdown
\stepbox{3. ENERGY}{$W=P\,t=25\cdot600=15{,}000$ J $=\keyres{15}$ kJ}

\wk{18}{energy absorbed by $10\,\Omega$ with $i(t)=2e^{-t}$ A, $0\to\infty$}
\stepbox{1. POWER FORMULA}{$p(t)=i(t)^2\,R$}
\stepdown
\stepbox{2. SQUARE THE CURRENT}{$\big(2e^{-t}\big)^2=2^2\cdot\big(e^{-t}\big)^2=4e^{-2t}$ \; \why{square each factor, double the exponent}}
\stepdown
\stepbox{3. MULTIPLY BY $R$}{$p(t)=4e^{-2t}\cdot10=40e^{-2t}$ W}
\stepdown
\stepbox{4. SET UP THE INTEGRAL}{$w=\lim\limits_{b\to\infty}\int_0^b 40e^{-2t}\,dt$}
\stepdown
\stepbox{5. ANTIDERIVATIVE}{$F(t)=\dfrac{40}{-2}e^{-2t}=-20e^{-2t}$}
\stepdown
\stepbox{6. EVALUATE AT THE TOP ($t=b$)}{$F(b)=-20e^{-2b}$}
\stepdown
\stepbox{7. LET $b\to\infty$}{$e^{-2b}\to0$, \; so $F(b)\to0$}
\stepdown
\stepbox{8. EVALUATE AT THE BOTTOM ($t=0$)}{$F(0)=-20e^{0}=-20$}
\stepdown
\stepbox{9. TOP MINUS BOTTOM}{$w=0-(-20)=\keyres{20}$ J}
\stepdown
\stepbox{10. CHECK WITH THE SHORTCUT}{$\dfrac{A}{a}=\dfrac{40}{2}=20$ \checkmark}

\wk{12}{(definition, then Ohm) $q(t)=3t^2$ mC through $2$ k$\Omega$. $v$ and $p$ at $t=1$ s}
\stepbox{1. DEFINITION: CHARGE TO CURRENT}{$i(t)=\dfrac{dq}{dt}=6t$ mA. \; $i(1)=6$ mA $=0.006$ A}
\stepdown
\stepbox{2. OHM: CURRENT TO VOLTAGE}{$v=i\,R=0.006\cdot2000=\keyres{12}$ V}
\stepdown
\stepbox{3. POWER ABSORBED}{$p=i^2R=(0.006)^2\cdot2000=0.000036\cdot2000=0.072$ W $=\keyres{72}$ mW}
\stepdown
\stepbox{4. CHECK}{$p=v\,i=12\cdot0.006=0.072$ W \checkmark}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. nodes, branches, loops}
\begin{itemize}
\item \term{Branch}: one element (a source or a resistor).
\item \term{Node}: a point where two or more branches connect.
\item \term{Loop}: a closed path that passes each node one time only.
\end{itemize}
For $b$ branches, $n$ nodes, and $l$ independent loops: $\keyres{b=l+n-1}$.

\term{Series}: elements that carry the \keyres{same current}. \term{Parallel}: elements across the \keyres{same two nodes}, so they have the \keyres{same voltage}.

\warn{All points joined by plain wire are one node.} Merge them before you count.

\nopagebreak
\noindent\hfil\threeckt{$v_s$}{$R_1$}{$R_2$}{$R_3$}

\wk{12}{count the circuit above}
\stepbox{1. BRANCHES}{$v_s$, $R_1$, $R_2$, $R_3$ $\Rightarrow$ $b=4$}
\stepdown
\stepbox{2. NODES}{a, b, c \; \why{the top wire from $R_2$ to $R_3$ is one node b} $\Rightarrow$ $n=3$}
\stepdown
\stepbox{3. LOOPS FROM THE FORMULA}{$l=b-n+1=4-3+1=\keyres{2}$}
\stepdown
\stepbox{4. CHECK BY LOOKING}{Loop 1: $v_s$, $R_1$, $R_2$. \; Loop 2: $R_2$, $R_3$. \checkmark \\ $R_2$ and $R_3$ share nodes b and c: they are in parallel.}

% ------------------------------------------------------------ 12
\filbreak \subsection{12. Kirchhoff's current law (KCL)}
Charge cannot collect at a node. So the current in equals the current out.
$$\sum i_{\text{in}}=\sum i_{\text{out}} \qquad \text{or} \qquad \sum_{k=1}^{N} i_k=0$$
Sign rule for the second form: into the node is $+$, out of the node is $-$.

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\fill[white] (0,0) circle (2pt);
\draw[iarrow] (-1.3,0) -- (-0.1,0) node[pos=0.4, above] {$4$ A};
\draw[iarrow] (0,1.0) -- (0,0.1) node[pos=0.4, right] {$2$ A};
\draw[iarrow] (0.1,0) -- (1.3,0) node[pos=0.6, above] {$3$ A};
\draw[iarrow] (0,-0.1) -- (0,-1.0) node[pos=0.6, right] {$i$};
\end{tikzpicture}

\wk{12}{find $i$ in the figure}
\stepbox{1. LIST THE CURRENTS IN}{$4$ A and $2$ A}
\stepdown
\stepbox{2. LIST THE CURRENTS OUT}{$3$ A and $i$}
\stepdown
\stepbox{3. IN EQUALS OUT}{$4+2=3+i$}
\stepdown
\stepbox{4. SOLVE}{$6=3+i$ $\Rightarrow$ $i=6-3=\keyres{3}$ A}

\wk{10}{(negative answer) $1$ A in; $3$ A and $i$ out}
\stepbox{1. IN EQUALS OUT}{$1=3+i$}
\stepdown
\stepbox{2. SOLVE}{$i=1-3=-2$ A}
\stepdown
\stepbox{3. READ THE SIGN}{$i$ is negative, so the real current is \keyres{$2$ A into the node}, against the arrow.}

% ------------------------------------------------------------ 13
\filbreak \subsection{13. Kirchhoff's voltage law (KVL)}
Energy is conserved, so the voltages around a closed loop add to zero.
$$\sum v=0 \qquad \text{or} \qquad \sum v_{\text{rises}}=\sum v_{\text{drops}}$$
Sign rule: walk around the loop in one direction. If you enter an element at its $+$ mark, write $+v$. If you enter at its $-$ mark, write $-v$.

\warn{Pick one direction and keep it for the full loop.}

\nopagebreak
\noindent\hfil\loopckt{$12$ V}{$2\,\Omega$}{$4\,\Omega$}

\wk{22}{the loop above. Find $i$, each voltage, and each power}
\stepbox{1. WALK CLOCKWISE FROM THE BOTTOM LEFT}{Source: enter at $-$ $\Rightarrow$ $-12$. \; $R_1$: enter at $+$ $\Rightarrow$ $+v_1$. \; $R_2$: enter at $+$ $\Rightarrow$ $+v_2$.}
\stepdown
\stepbox{2. KVL}{$-12+v_1+v_2=0$}
\stepdown
\stepbox{3. OHM'S LAW FOR EACH RESISTOR}{$v_1=2i$, \quad $v_2=4i$}
\stepdown
\stepbox{4. SUBSTITUTE}{$-12+2i+4i=0$}
\stepdown
\stepbox{5. COMBINE LIKE TERMS}{$-12+6i=0$}
\stepdown
\stepbox{6. SOLVE FOR $i$}{$6i=12$ $\Rightarrow$ $i=\dfrac{12}{6}=\keyres{2}$ A}
\stepdown
\stepbox{7. EACH VOLTAGE}{$v_1=2\cdot2=\keyres{4}$ V, \quad $v_2=4\cdot2=\keyres{8}$ V}
\stepdown
\stepbox{8. POWER ABSORBED BY EACH RESISTOR}{$p_1=i^2R_1=2^2\cdot2=\keyres{8}$ W, \quad $p_2=i^2R_2=2^2\cdot4=\keyres{16}$ W}
\stepdown
\stepbox{9. POWER OF THE SOURCE}{The arrow enters the $-$ mark. \; $p=-v\,i=-(12)(2)=-24$ W \; (delivers $24$ W)}
\stepdown
\stepbox{10. CHECK}{KVL: $4+8=12$ \checkmark \quad Power: $-24+8+16=0$ \checkmark}

% ------------------------------------------------------------ 14
\filbreak \subsection{14. series and parallel resistors}
\term{Series}: one current flows through each resistor. The resistances add.
$$R_{eq}=R_1+R_2+\cdots+R_N$$
\term{Parallel}: one voltage is across each resistor. The conductances add.
$$\frac{1}{R_{eq}}=\frac{1}{R_1}+\frac{1}{R_2}+\cdots+\frac{1}{R_N}$$
\term{Two in parallel} (product over sum): $R_1\parallel R_2=\dfrac{R_1R_2}{R_1+R_2}$

\term{$N$ equal resistors $R$ in parallel}: $R_{eq}=\dfrac{R}{N}$

\keyres{A parallel $R_{eq}$ is smaller than the smallest resistor.}

\warn{The reciprocal formula gives $\frac{1}{R_{eq}}$.} Flip the result at the end.

\wk{14}{three in parallel: $10$, $20$, $20\,\Omega$}
\stepbox{1. EACH RECIPROCAL}{$\dfrac{1}{10}=0.1$, \quad $\dfrac{1}{20}=0.05$, \quad $\dfrac{1}{20}=0.05$}
\stepdown
\stepbox{2. ADD}{$\dfrac{1}{R_{eq}}=0.1+0.05+0.05=0.2$ S}
\stepdown
\stepbox{3. FLIP}{$R_{eq}=\dfrac{1}{0.2}=\keyres{5}\,\Omega$ \; \why{smaller than $10$ \checkmark}}

\wk{10}{four $100\,\Omega$ resistors in parallel}
\stepbox{1. EQUAL-RESISTOR RULE}{$R_{eq}=\dfrac{R}{N}=\dfrac{100}{4}=\keyres{25}\,\Omega$}
\stepdown
\stepbox{2. CHECK WITH RECIPROCALS}{$4\cdot\dfrac{1}{100}=0.04$. \; $\dfrac{1}{0.04}=25\,\Omega$ \checkmark}

\wk{18}{$R_{eq}=2+\big[12\parallel(4+6\parallel3)\big]$ $\Omega$}
Start at the part farthest from the terminals. Work toward the terminals.
\par\vspace{2pt}
\stepbox{1. INNERMOST PARALLEL PAIR $6\parallel3$}{$\dfrac{6\cdot3}{6+3}=\dfrac{18}{9}=2\,\Omega$}
\stepdown
\stepbox{2. SERIES $4+2$}{$4+2=6\,\Omega$}
\stepdown
\stepbox{3. PARALLEL $12\parallel6$}{$\dfrac{12\cdot6}{12+6}=\dfrac{72}{18}=4\,\Omega$}
\stepdown
\stepbox{4. SERIES $2+4$}{$R_{eq}=2+4=\keyres{6}\,\Omega$}

% ------------------------------------------------------------ 15
\filbreak \subsection{15. voltage division}
Series resistors share the source voltage in proportion to their resistance:
$$v_1=\frac{R_1}{R_1+R_2}\,v \qquad v_2=\frac{R_2}{R_1+R_2}\,v$$
\keyres{Own resistor on top. The larger resistor gets the larger voltage.}

\nopagebreak
\noindent\hfil\loopckt{$v$}{$R_1$}{$R_2$}

\wk{16}{$12$ V across $R_1=2$ k$\Omega$ and $R_2=4$ k$\Omega$}
\stepbox{1. TOTAL RESISTANCE}{$R_1+R_2=2+4=6$ k$\Omega$}
\stepdown
\stepbox{2. VOLTAGE ON $R_1$}{$v_1=\dfrac{2}{6}\cdot12=\keyres{4}$ V}
\stepdown
\stepbox{3. VOLTAGE ON $R_2$}{$v_2=\dfrac{4}{6}\cdot12=\keyres{8}$ V}
\stepdown
\stepbox{4. CURRENT}{$i=\dfrac{12\text{ V}}{6000\,\Omega}=0.002$ A $=2$ mA}
\stepdown
\stepbox{5. POWER ABSORBED BY EACH}{$p_1=(0.002)^2\cdot2000=0.008$ W $=\keyres{8}$ mW \\ $p_2=(0.002)^2\cdot4000=0.016$ W $=\keyres{16}$ mW}
\stepdown
\stepbox{6. CHECK}{$4+8=12$ V \checkmark \quad Source: $12\cdot0.002=24$ mW $=8+16$ \checkmark}

\wk{14}{(reverse) $12$ V source, $R_1=9$ k$\Omega$. Find $R_2$ so that $v_2=3$ V}
\stepbox{1. DIVIDER WITH $R_2$ UNKNOWN}{$3=\dfrac{R_2}{9+R_2}\cdot12$ \; \why{k$\Omega$ throughout}}
\stepdown
\stepbox{2. CLEAR THE FRACTION}{$3(9+R_2)=12R_2$}
\stepdown
\stepbox{3. DISTRIBUTE}{$27+3R_2=12R_2$}
\stepdown
\stepbox{4. SOLVE}{$27=9R_2$ $\Rightarrow$ $R_2=\keyres{3}$ k$\Omega$}
\stepdown
\stepbox{5. CHECK}{$\dfrac{3}{9+3}\cdot12=\dfrac{3}{12}\cdot12=3$ V \checkmark}

% ------------------------------------------------------------ 16
\filbreak \subsection{16. current division}
Parallel resistors share the total current $i$:
$$i_1=\frac{R_2}{R_1+R_2}\,i \qquad i_2=\frac{R_1}{R_1+R_2}\,i$$
\warn{The \emph{other} resistor goes on top.} The smaller resistor gets the larger current.

\term{Which divider?} Series resistors share one current, so the \keyres{voltage} splits (own $R$ on top). Parallel resistors share one voltage, so the \keyres{current} splits (other $R$ on top).

\wk{14}{$6$ A into $3\,\Omega\parallel6\,\Omega$}
\stepbox{1. SUM OF THE TWO}{$3+6=9\,\Omega$}
\stepdown
\stepbox{2. CURRENT IN THE $3\,\Omega$}{$i_1=\dfrac{6}{9}\cdot6=\keyres{4}$ A \; \why{the other resistor, $6$, on top}}
\stepdown
\stepbox{3. CURRENT IN THE $6\,\Omega$}{$i_2=\dfrac{3}{9}\cdot6=\keyres{2}$ A}
\stepdown
\stepbox{4. CHECK}{KCL: $4+2=6$ \checkmark \quad Same voltage: $4\cdot3=2\cdot6=12$ V \checkmark}

% ------------------------------------------------------------ 17
\filbreak \subsection{17. wye--delta conversion}
Some networks are neither series nor parallel (a bridge, for example). Convert a $\Delta$ (triangle) to a $Y$ (star), or the reverse. Both connect the same three nodes a, b, c.

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\coordinate (a) at (1,1.5); \coordinate (b) at (0,0); \coordinate (c) at (2,0);
\draw[wire] (a) -- node[res, sloped, minimum width=0.5cm] {} (b);
\draw[wire] (b) -- node[res, sloped, minimum width=0.5cm] {} (c);
\draw[wire] (c) -- node[res, sloped, minimum width=0.5cm] {} (a);
\node at (0.05,0.95) {$R_{ab}$}; \node at (1.95,0.95) {$R_{ca}$}; \node at (1,-0.3) {$R_{bc}$};
\node[above, text=keyHi] at (a) {a}; \node[left, text=keyHi] at (b) {b}; \node[right, text=keyHi] at (c) {c};
\node at (1,-0.65) {$\Delta$};
\coordinate (a2) at (4.5,1.5); \coordinate (b2) at (3.5,0); \coordinate (c2) at (5.5,0); \coordinate (o) at (4.5,0.6);
\draw[wire] (a2) -- node[res, sloped, minimum width=0.4cm] {} (o);
\draw[wire] (b2) -- node[res, sloped, minimum width=0.4cm] {} (o);
\draw[wire] (c2) -- node[res, sloped, minimum width=0.4cm] {} (o);
\node at (4.8,1.1) {$R_a$}; \node at (3.75,0.5) {$R_b$}; \node at (5.25,0.5) {$R_c$};
\node[above, text=keyHi] at (a2) {a}; \node[left, text=keyHi] at (b2) {b}; \node[right, text=keyHi] at (c2) {c};
\node at (4.5,-0.65) {$Y$};
\end{tikzpicture}

\term{$\Delta\to Y$}: each $Y$ resistor $=\dfrac{\text{product of the two }\Delta\text{ sides that touch its node}}{\text{sum of all three }\Delta\text{ sides}}$
$$R_a=\frac{R_{ab}R_{ca}}{\Sigma} \quad R_b=\frac{R_{ab}R_{bc}}{\Sigma} \quad R_c=\frac{R_{bc}R_{ca}}{\Sigma}$$
\term{$Y\to\Delta$}: each $\Delta$ side $=\dfrac{N}{\text{the }Y\text{ resistor opposite it}}$, where $N=R_aR_b+R_bR_c+R_cR_a$.
$$R_{ab}=\frac{N}{R_c} \quad R_{bc}=\frac{N}{R_a} \quad R_{ca}=\frac{N}{R_b}$$
\keyres{Balanced}: all three equal. Then $R_Y=\frac{R_\Delta}{3}$ and $R_\Delta=3R_Y$.

\wk{14}{$\Delta\to Y$ with $R_{ab}=10$, $R_{bc}=20$, $R_{ca}=30\,\Omega$}
\stepbox{1. SUM}{$\Sigma=10+20+30=60\,\Omega$}
\stepdown
\stepbox{2. $R_a$ (TOUCHES $R_{ab}$ AND $R_{ca}$)}{$R_a=\dfrac{10\cdot30}{60}=\dfrac{300}{60}=\keyres{5}\,\Omega$}
\stepdown
\stepbox{3. $R_b$ (TOUCHES $R_{ab}$ AND $R_{bc}$)}{$R_b=\dfrac{10\cdot20}{60}=\dfrac{200}{60}=\keyres{3.33}\,\Omega$}
\stepdown
\stepbox{4. $R_c$ (TOUCHES $R_{bc}$ AND $R_{ca}$)}{$R_c=\dfrac{20\cdot30}{60}=\dfrac{600}{60}=\keyres{10}\,\Omega$}

\wk{14}{(reverse) $Y\to\Delta$ with $R_a=5$, $R_b=3.33$, $R_c=10\,\Omega$}
\stepbox{1. THE THREE PRODUCTS}{$R_aR_b=5\cdot3.33=16.67$ \\ $R_bR_c=3.33\cdot10=33.33$ \\ $R_cR_a=10\cdot5=50$}
\stepdown
\stepbox{2. ADD THEM}{$N=16.67+33.33+50=100$}
\stepdown
\stepbox{3. EACH SIDE OVER THE OPPOSITE $Y$}{$R_{ab}=\dfrac{100}{R_c}=\dfrac{100}{10}=\keyres{10}\,\Omega$ \\ $R_{bc}=\dfrac{100}{R_a}=\dfrac{100}{5}=\keyres{20}\,\Omega$ \\ $R_{ca}=\dfrac{100}{R_b}=\dfrac{100}{3.33}=\keyres{30}\,\Omega$}
\stepdown
\stepbox{4. CHECK}{The same $10$, $20$, $30$ as the example above \checkmark}

% ------------------------------------------------------------ 18
\filbreak \subsection{18. putting it together: one full circuit}
This uses sections 10 to 16 in order: reduce, find the source current, then expand back out.

\nopagebreak
\noindent\hfil\threeckt{$12$ V}{$2\,\Omega$}{$6\,\Omega$}{$3\,\Omega$}

\wk{24}{find every current, voltage, and power}
\stepbox{1. PARALLEL PAIR $R_2\parallel R_3$}{$\dfrac{6\cdot3}{6+3}=\dfrac{18}{9}=2\,\Omega$}
\stepdown
\stepbox{2. SERIES WITH $R_1$}{$R_{eq}=2+2=4\,\Omega$}
\stepdown
\stepbox{3. SOURCE CURRENT (OHM ON $R_{eq}$)}{$i=\dfrac{12}{4}=\keyres{3}$ A \; \why{this current flows through $R_1$}}
\stepdown
\stepbox{4. VOLTAGE ON $R_1$}{$v_1=i\,R_1=3\cdot2=\keyres{6}$ V}
\stepdown
\stepbox{5. VOLTAGE ON THE PARALLEL PAIR (KVL)}{$v_{bc}=12-6=\keyres{6}$ V \; \why{same on $R_2$ and $R_3$}}
\stepdown
\stepbox{6. CURRENT IN EACH BRANCH (OHM)}{$i_2=\dfrac{6}{6}=\keyres{1}$ A, \quad $i_3=\dfrac{6}{3}=\keyres{2}$ A}
\stepdown
\stepbox{7. KCL CHECK AT NODE b}{in $3$ A $=$ out $1+2$ A \checkmark}
\stepdown
\stepbox{8. POWER ABSORBED BY EACH RESISTOR}{$p_1=3^2\cdot2=18$ W, \; $p_2=1^2\cdot6=6$ W, \; $p_3=2^2\cdot3=12$ W}
\stepdown
\stepbox{9. POWER CHECK}{Source delivers $12\cdot3=36$ W. \; Absorbed: $18+6+12=36$ W \checkmark}

\end{multicols}

\makeatother
```
