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
  \newcommand{\idea}[1]{{\setlength{\fboxsep}{3pt}\noindent\fcolorbox{titleHi}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{\scriptsize\textcolor{titleHi}{\textbf{THE IDEA}}}\\[1pt]\small #1\end{minipage}}\par\vspace{2pt}}}
  \newcommand{\trap}[1]{\par\noindent\warn{\textbf{Trap:}} #1\par}
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
\synv A\synv B\synv C\synv D\synv E\synf F\synf G\synf H\synv I\synv J\synv K\synv L\synv M\synv N\synv O\synf P\synf Q\synv R\synv S\synv T\synv U\synv V\synv W\synv X\synv Y\synv Z%
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

\pgfplotsset{sigax/.style={axis lines=middle, axis line style={white!45},
tick style={white!45},
tick label style={text=white!70, font=\tiny, fill=black, inner sep=1.5pt},
label style={text=white!70, font=\scriptsize},
every axis x label/.style={at={(ticklabel* cs:1.0)}, anchor=west},
every axis y label/.style={at={(ticklabel* cs:1.0)}, anchor=south},
clip=false, axis on top}}
\tikzset{blk/.style={draw=termHi, thick, minimum width=0.9cm, minimum height=0.55cm, font=\small},
sumnode/.style={draw=termHi, thick, circle, inner sep=1pt, font=\scriptsize},
sig/.style={-{Latex[length=1.6mm]}, white!80}}
\newcommand{\why}[1]{\emph{\scriptsize(#1)}}
\newcommand{\wk}[2]{\needspace{#1\baselineskip}\subsubsection{Worked: #2}}
\newcommand{\st}{\rule[-7pt]{0pt}{19pt}}
% ---- puzzle-piece format: a colored piece in the diagram goes in the same-colored slot ----
\definecolor{pcA}{HTML}{F0955F}
\definecolor{pcB}{HTML}{5CCB96}
\definecolor{pcC}{HTML}{B3A6F5}
\definecolor{pcD}{HTML}{66B8F0}
\definecolor{pcE}{HTML}{E8C95A}
\newcommand{\pA}[1]{{\syntaxonfalse\color{pcA}#1}}
\newcommand{\pB}[1]{{\syntaxonfalse\color{pcB}#1}}
\newcommand{\pC}[1]{{\syntaxonfalse\color{pcC}#1}}
\newcommand{\pD}[1]{{\syntaxonfalse\color{pcD}#1}}
\newcommand{\pE}[1]{{\syntaxonfalse\color{pcE}#1}}
% empty slot in a template: \slot{color}{what goes here}
\newcommand{\slot}[2]{{\setlength{\fboxsep}{1.2pt}\fcolorbox{#1}{black}{\syntaxonfalse\color{#1}\footnotesize #2}}}
% ground symbol at a coordinate
\newcommand{\gnd}[1]{\draw[wire] #1 -- ++(0,-0.12); \draw[wire] #1 ++(-0.15,-0.12) -- ++(0.3,0); \draw[wire] #1 ++(-0.09,-0.18) -- ++(0.18,0); \draw[wire] #1 ++(-0.03,-0.24) -- ++(0.06,0);}

\section{Signals and Systems --- Reference}

\begin{multicols}{2}
\raggedcolumns

\filbreak \subsection{the big picture}
Everything in this course is one of two things:
\begin{itemize}
\item a \term{signal}: a quantity that changes over time, like a voltage or a sound;
\item a \term{system}: a machine that takes a signal in and puts a signal out.
\end{itemize}
The topics build on each other in this order:
\begin{enumerate}
\item \term{How big is a signal?} Energy and power (4--5).
\item \term{Building blocks.} The button $\delta$, the switch $u$, and the ramp $r$ (10).
\item \term{Machines.} Systems, block diagrams, difference equations (11).
\item \term{Describing machines.} Memory, causality, stability, linearity, time invariance (12).
\end{enumerate}
\keyres{The link from 1 to 4}: BIBO stability asks if a \emph{bounded} input gives a \emph{bounded} output. That is a question about signal size.

\filbreak \subsection{plain-English glossary}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.22\linewidth}p{0.734\linewidth}@{}}
\term{Symbol} & \term{Say it as} \\\hline
$\delta[n]$, $\delta(t)$ & \term{the button}: pressed once at time $0$, then released \\
$u[n]$, $u(t)$ & \term{the switch}: flipped on at time $0$ and left on \\
$r[n]$, $r(t)$ & \term{the ramp}: the running total of the switch, $0,1,2,3,\ldots$ \\
$t$ & the time variable; it sweeps through every time, and is gone after you integrate \\
$T$ & the half-width of a window $[-T,T]$; it is the thing that goes to $\infty$ \\
$t_0$, $n_0$ & ``t-naught'': one fixed time, such as $3$ \\
$N$ & DT window half-width ($2N+1$ samples), or a DT period \\
$\varepsilon$ & ``epsilon'': a tiny number that we shrink toward $0$ \\
$\int\ldots dt$ & add up area as $t$ sweeps (CT) \\
$\sum$ & add up separate terms (DT); the DT twin of $\int$ \\
$dt$ & an infinitely thin slice of time. \warn{Not $\Delta t$.} \\
$B$ & a ceiling: the input never goes above $B$ in size \\
\end{tabular}}

\filbreak \subsection{notation: CT and DT side by side}
{\small
\begin{tabular}{@{}l|l|l@{}}
\term{Item} & \term{Continuous time (CT)} & \term{Discrete time (DT)} \\\hline
signal & $x(t)$, round brackets & $x[n]$, square brackets \\
time variable & $t$, any real number & $n$, integers only \\
period & $T$ (seconds) & $N$ (samples, an integer) \\
frequency & $\omega$ (rad/s), $f$ (Hz) & $\hat\omega$ (rad/sample) \\
energy, power & integral $\int$ & sum $\sum$ \\
rate of change & derivative $\frac{d}{dt}$ & first difference $x[n]-x[n-1]$ \\
running total & integral $\int_{-\infty}^{t}$ & running sum $\sum_{k=-\infty}^{n}$ \\
button & $\delta(t)$, \keyres{area} $1$ & $\delta[n]$, \keyres{height} $1$ \\
\end{tabular}}

\filbreak \subsection{sinusoid quantities}
{\small\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}c|l|l|l@{}}
\term{Symbol} & \term{Name} & \term{Unit} & \term{Link} \\\hline
$A$ & amplitude & same as $x$ & peak value \\
$\omega$ & angular frequency & rad/s & $\omega=2\pi f$ \\
$f$ & frequency & Hz $=$ cycles/s & $f=\dfrac{1}{T}$ \st\\
$T$ & period & s & $T=\dfrac{2\pi}{\omega}$ \st\\
$\phi$ & phase & rad & $\phi=-\omega t_0$ \\
$t_0$ & time shift & s & $t_0=-\dfrac{\phi}{\omega}$ \st\\
$\hat\omega$ & DT frequency & rad/sample & $\hat\omega=\omega T_s$ \\
$T_s$, $f_s$ & sampling period, rate & s, Hz & $f_s=\dfrac{1}{T_s}$ \st\\
\end{tabular}}

\filbreak \subsection{trig and complex number facts}
{\small\renewcommand{\arraystretch}{1.9}
\begin{tabular}{@{}c|c|c|c|c|c|c@{}}
$\theta$ & $0$ & $\dfrac{\pi}{6}$ & $\dfrac{\pi}{4}$ & $\dfrac{\pi}{3}$ & $\dfrac{\pi}{2}$ & $\pi$ \\\hline
$\cos\theta$ & $1$ & $\dfrac{\sqrt3}{2}$ & $\dfrac{\sqrt2}{2}$ & $\dfrac12$ & $0$ & $-1$ \\
$\sin\theta$ & $0$ & $\dfrac12$ & $\dfrac{\sqrt2}{2}$ & $\dfrac{\sqrt3}{2}$ & $1$ & $0$ \\
\end{tabular}}
\par\vspace{1pt}
\warn{$\sin 0=0$ and $\cos 0=1$.} Do not swap them.
\par\vspace{3pt}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
sine as a cosine & $\sin\theta=\cos\big(\theta-\frac{\pi}{2}\big)$ \st\\
negative amplitude & $-A\cos\theta=A\cos(\theta+\pi)$ \\
square of a cosine & $\cos^2\theta=\dfrac{1+\cos(2\theta)}{2}$ \st\\
Euler's formula & $e^{j\theta}=\cos\theta+j\sin\theta$ \\
cosine from exponentials & $\cos\theta=\dfrac{e^{j\theta}+e^{-j\theta}}{2}$ \st\\
sine from exponentials & $\sin\theta=\dfrac{e^{j\theta}-e^{-j\theta}}{2j}$ \st\\
size of $a+jb$ & $\sqrt{a^2+b^2}$ \\
angle of $a+jb$ & $\arctan\frac{b}{a}$ (check the quadrant) \\
polar form & $C=\lvert C\rvert e^{j\phi}$ \\
size of $e^{j\theta}$ & $1$ \\
whole turns & $e^{j2\pi k}=1$ for each integer $k$ \\
\end{tabular}}

\filbreak \subsection{sums, integrals, limits}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
\term{Item} & \term{Result} \\\hline
infinite geometric sum, $\lvert r\rvert<1$ & $\sum_{n=0}^{\infty}r^n=\dfrac{1}{1-r}$ \st\\
finite geometric sum, $r\neq1$ & $\sum_{n=0}^{N-1}r^n=\dfrac{1-r^N}{1-r}$ \st\\
count of terms from $-N$ to $N$ & $2N+1$ \\
$\int t^n\,dt$ & $\dfrac{t^{n+1}}{n+1}$ \st\\
$\int e^{at}\,dt$ & $\dfrac{e^{at}}{a}$ \st\\
$\int_0^\infty e^{-at}\,dt$, \; $a>0$ & $\dfrac{1}{a}$ \st\\
definite integral & $F(\text{top})-F(\text{bottom})$ \\
fixed number over a growing $T$ & $\lim\limits_{T\to\infty}\dfrac{c}{T}=0$ \st\\
a growing $T$ alone & $\lim\limits_{T\to\infty}cT=\infty$ \; ($c>0$) \st\\
$T$ cancels & $\dfrac{cT}{2T}=\dfrac{c}{2}$, a constant \st\\
\end{tabular}}

\filbreak \needspace{10\baselineskip}\subsection{formula sheet}
\needspace{3\baselineskip}\term{1. Signals and sampling}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
sampling & $x[n]=x(nT_s)$ \\
sampling rate & $f_s=\dfrac{1}{T_s}$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{2--3. Sinusoids}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
CT sinusoid & $x(t)=A\cos(\omega t+\phi)$ \\
angular frequency & $\omega=2\pi f$ \\
period & $T=\dfrac{1}{f}=\dfrac{2\pi}{\omega}$ \st\\
phase $\to$ time shift & $t_0=-\dfrac{\phi}{\omega}$ \st\\
time shift $\to$ phase & $\phi=-\omega t_0$ \\
DT sinusoid & $x[n]=A\cos(\hat\omega n+\phi)$ \\
CT $\to$ DT frequency & $\hat\omega=\omega T_s=\dfrac{2\pi f}{f_s}$ \st\\
DT $\to$ CT frequency & $f=\dfrac{\hat\omega f_s}{2\pi}$ \st\\
aliases & $\hat\omega+2\pi k$, \; $f+k f_s$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{4--5. Energy and power}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
CT energy (total) & $E_\infty=\int_{-\infty}^{\infty}\lvert x(t)\rvert^2\,dt$ \\
DT energy (total) & $E_\infty=\sum_{n=-\infty}^{\infty}\lvert x[n]\rvert^2$ \\
CT power (average) & $P_\infty=\lim\limits_{T\to\infty}\dfrac{1}{2T}\int_{-T}^{T}\lvert x(t)\rvert^2\,dt$ \st\\
DT power (average) & $P_\infty=\lim\limits_{N\to\infty}\dfrac{1}{2N+1}\sum_{n=-N}^{N}\lvert x[n]\rvert^2$ \st\\
periodic CT power & $P=\dfrac{1}{T}\int_{\text{one period}}\lvert x(t)\rvert^2\,dt$ \st\\
periodic DT power & $P=\dfrac{1}{N}\sum_{\text{one period}}\lvert x[n]\rvert^2$ \st\\
sinusoid power & $P=\dfrac{A^2}{2}$ \st\\
constant $c$ power & $P=c^2$ \\
flat piece, level $A$, length $D$ & $A^2D$ \\
ramp $0\to A$, length $D$ & $\dfrac{A^2D}{3}$ \st\\
line $A\to B$, length $D$ & $\dfrac{D}{3}\big(A^2+AB+B^2\big)$ \st\\
DT stem of height $h$ & $h^2$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{6. Transformations}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
shift & $x(t-t_0)$: right (delay) if $t_0>0$ \\
reversal & $x(-t)$: mirror about $t=0$ \\
scaling & $x(at)$: compress if $\lvert a\rvert>1$ \\
point map for $x(at+b)$ & $t_{\text{new}}=\dfrac{t_{\text{old}}-b}{a}$ \st\\
undo $y(t)=x(at+b)$ & $x(t)=y\Big(\dfrac{t-b}{a}\Big)$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{7. Periodic signals}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
CT test & $x(t+T)=x(t)$ \\
DT test & $x[n+N]=x[n]$, $N$ an integer \\
DT sinusoid period & $\dfrac{\hat\omega}{2\pi}=\dfrac{m}{N}$ in lowest terms \st\\
sum of two periodic signals & $\mathrm{lcm}$ of the two periods \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{8. Even and odd}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
even test & $x(-t)=x(t)$ \\
odd test & $x(-t)=-x(t)$ \\
even part & $\mathcal{E}v\{x\}=\dfrac{x(t)+x(-t)}{2}$ \st\\
odd part & $\mathcal{O}d\{x\}=\dfrac{x(t)-x(-t)}{2}$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{9. Complex exponentials}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
CT form & $x(t)=Ce^{at}$, \; $a=\sigma+j\omega$ \\
real part & $\lvert C\rvert e^{\sigma t}\cos(\omega t+\phi)$, \; $\phi=\angle C$ \\
DT form & $x[n]=C\alpha^n$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{10. Button, switch, ramp}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
DT switch $\to$ button & $\delta[n]=u[n]-u[n-1]$ \\
DT button $\to$ switch & $u[n]=\sum_{k=-\infty}^{n}\delta[k]$ \\
CT switch $\to$ button & $\delta(t)=\dfrac{du(t)}{dt}$ \st\\
CT button $\to$ switch & $u(t)=\int_{-\infty}^{t}\delta(\tau)\,d\tau$ \\
area of the CT button & $\int_{-\infty}^{\infty}\delta(t)\,dt=1$ \\
sifting (the flash) & $\int_{-\infty}^{\infty}x(t)\,\delta(t-t_0)\,dt=x(t_0)$ \\
DT sifting & $\sum_{n}x[n]\,\delta[n-n_0]=x[n_0]$ \\
CT pulse from switches & $u(t-t_1)-u(t-t_2)$: on for $t_1\leq t<t_2$ \\
DT pulse from switches & $u[n-a]-u[n-b]$: on for $a\leq n\leq b-1$ \\
any DT signal as buttons & $x[n]=\sum_k x[k]\,\delta[n-k]$ \\
ramp & $r(t)=t\,u(t)$, \; $r[n]=n\,u[n]$ \\
ramp and switch, CT & $\dfrac{dr}{dt}=u(t)$ \st\\
ramp and switch, DT & $r[n]-r[n-1]=u[n-1]$ \\
graph from ramps & corner: $+(\Delta\text{slope})\,r(t-t_0)$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{11--12. DT systems}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
unit delay $D$ & $x[n]\to x[n-1]$ \\
first difference & $y[n]=x[n]-x[n-1]$ \\
3-point moving average & $y[n]=\frac13\big(x[n]+x[n-1]+x[n-2]\big)$ \\
accumulator & $y[n]=y[n-1]+x[n]$ \\
bounded input & $\lvert x[n]\rvert\leq B<\infty$ \\
stable if & $\lvert y[n]\rvert\leq$ a finite number \\
\end{tabular}}

\filbreak \subsection{system property tests}
{\small\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}p{0.18\linewidth}p{0.38\linewidth}p{0.34\linewidth}@{}}
\term{Property} & \term{Ask yourself} & \term{Yes / no example} \\\hline
memoryless & Does $y$ now use only $x$ now? & \keyres{yes} {$x^2$} \; \warn{no} {$x[n-1]$} \\[2pt]
causal & Does $y$ avoid peeking at the future? & \keyres{yes} {$x[n-1]$} \; \warn{no} {$x[n+1]$} \\[2pt]
stable & Does a capped input give a capped output? & \keyres{yes} {$x^2$} \; \warn{no} {$\sum_{k\le n}x[k]$} \\[2pt]
invertible & Can I undo it and get $x$ back? & \keyres{yes} {$2x$} \; \warn{no} {$x^2$} \\[2pt]
time invariant & Does it ignore the clock? Delay in $=$ delay out & \keyres{yes} {$x[n-1]$} \; \warn{no} {$n\,x[n]$} \\[2pt]
linear & Scale in $\to$ scale out; add in $\to$ add out? & \keyres{yes} {$n\,x[n]$} \; \warn{no} {$2x+3$} \\
\end{tabular}}

\filbreak \subsection{which tool? --- given $\to$ find}
{\small
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$x(t)$, $T_s\to x[n]$ & put $t=nT_s$ \hfill (1) \\[1pt]
$A\cos(\omega t+\phi)\to f$, $T$, $t_0$ & read, then divide \hfill (2) \\[1pt]
$f$, $f_s\to\hat\omega$ & $\hat\omega=2\pi f/f_s$ \hfill (3) \\[1pt]
dies out or finite length & energy $E_\infty$ \hfill (4) \\[1pt]
periodic or constant & power $P_\infty$ \hfill (4) \\[1pt]
a graph $\to$ energy & square each piece, add \hfill (5) \\[1pt]
$x(t)\to x(at+b)$ & map each breakpoint \hfill (6) \\[1pt]
$y=x(at+b)\to x$ & $x(t)=y((t-b)/a)$ \hfill (6) \\[1pt]
two graphs $\to y=A\,x(at+b)$ & match two points, solve \hfill (6) \\[1pt]
signal $\to$ period & $2\pi/\omega$, or reduce $\hat\omega/2\pi$ \hfill (7) \\[1pt]
signal $\to$ even, odd, neither & compare $x(-t)$ with $x(t)$ \hfill (8) \\[1pt]
$Ce^{at}\to$ real signal & Euler, then the real part \hfill (9) \\[1pt]
integral with $\delta(t-t_0)$ & the flash: three questions \hfill (10) \\[1pt]
a pulse graph $\to$ formula & a switch on, a switch off \hfill (10) \\[1pt]
DT stems $\to$ buttons & one $x[k]\delta[n-k]$ per stem \hfill (10) \\[1pt]
graph with corners $\to$ formula & a ramp per corner \hfill (10) \\[1pt]
blocks $\to$ one equation & substitute block by block \hfill (11) \\[1pt]
equation $\leftrightarrow$ block diagram & one $D$ per shift \hfill (11) \\[1pt]
system $\to$ properties & ask each question \hfill (12) \\[1pt]
system $\to$ stable? & cap the input with $B$ \hfill (12) \\
\end{tabular}}
\par\vspace{2pt}
The number in parentheses is the concept section.

\end{multicols}

\newpage
\section{Signals and Systems --- Concepts}

\begin{multicols}{2}
\raggedcolumns

\term{Puzzle pieces.} In every worked example, a \pA{colored piece} read off the formula or graph goes in the slot \slot{pcA}{of that color} in the template. Order: \textbf{pieces} $\to$ \textbf{template} $\to$ \textbf{place} $\to$ \textbf{check}. Sinusoid colors stay the same everywhere: \pA{amplitude}, \pB{frequency}, \pC{phase or shift}.

% ------------------------------------------------------------ 1
\filbreak \subsection{1. signals and sampling}
\idea{A \term{signal} is anything that changes over time and carries information. \term{Sampling} is taking snapshots: one photo every $T_s$ seconds, like a strobe light.}

\begin{itemize}
\item \term{Continuous time} (CT): $x(t)$, round brackets, any real $t$. The movie.
\item \term{Discrete time} (DT): $x[n]$, square brackets, $n$ an \keyres{integer only}. The stack of photos.
\end{itemize}
\trap{$x[2.5]$ does not exist. Between samples a DT signal is not zero; it is undefined.}

\term{Movie to photos}: photo $n$ is taken at $t=nT_s$, so $x[n]=x(nT_s)$. \; $T_s$ $=$ \term{sampling period} (s between photos), \; $f_s=\frac{1}{T_s}$ $=$ \term{sampling rate} (photos per s).

\needspace{14\baselineskip}
\noindent
\begin{tikzpicture}[>=Latex, scale=1]
\begin{axis}[sigax,
xmin=-0.7, xmax=11.4, ymin=-1.55, ymax=1.55,
xtick={2,4,6,8,10}, ytick={-1,1},
xticklabel style={anchor=north west, xshift=1.5pt},
xlabel={$n$}, ylabel={$x[n]$},
width=9.2cm, height=4.2cm]
\addplot[uHi, thick, smooth, samples=201, domain=-0.5:11.1] {sin(deg(x))};
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.5pt, samples=11, domain=0:10] {sin(deg(x))};
\end{axis}
\end{tikzpicture}

The curve is the movie (CT). The stems are the photos (DT).

\wk{8}{sample $x(t)=t^2$ with $T_s=0.5$ s}
\stepbox{1. PIECES}{the movie \pA{$x(t)=t^2$} \qquad the photo spacing \pB{$T_s=0.5$}}
\stepdown
\stepbox{2. TEMPLATE}{$x[n]=\slot{pcA}{$x(\cdot)$}$ evaluated at $t=n\cdot\slot{pcB}{$T_s$}$}
\stepdown
\stepbox{3. PLACE}{$x[n]=\pA{(}n\cdot\pB{0.5}\pA{)^2}=\keyres{0.25n^2}$ \qquad $x[0..3]=0,\;0.25,\;1,\;2.25$}
\stepdown
\stepbox{4. CHECK}{$n=2$ is $t=1$ s; \; $x(1)=1$ \checkmark}

\wk{8}{(reverse) $x[n]=0.25n^2$ came from $T_s=0.5$ s; find $x(t)$}
\stepbox{1. TEMPLATE}{$x(t)=x[n]$ with $n=\dfrac{t}{\slot{pcB}{$T_s$}}$}
\stepdown
\stepbox{2. PLACE}{$n=\dfrac{t}{\pB{0.5}}=2t$ \; $\Rightarrow$ \; $x(t)=0.25(2t)^2=\keyres{t^2}$}

% ------------------------------------------------------------ 2
\filbreak \subsection{2. sinusoids}
\idea{A wheel spins at a steady speed with a dot on its rim. The dot's height over time is a sinusoid. Wheel size: \pA{amplitude}. Spin rate: \pB{frequency}. Where the dot starts: \pC{phase}.}

$$x(t)=\slot{pcA}{$A$}\cos\big(\slot{pcB}{$\omega$}\,t+\slot{pcC}{$\phi$}\big)$$
\begin{itemize}
\item \pA{$A$}: \term{amplitude}, the peak; swings between $-A$ and $A$.
\item \pB{$\omega$}: \term{angular frequency}, rad/s. \; $f=\frac{\omega}{2\pi}$ Hz (turns per s), \; $T=\frac{1}{f}=\frac{2\pi}{\omega}$ s per turn.
\item \pC{$\phi$}: \term{phase}, rad. A head start or late start. \; As a \term{time shift}: $t_0=-\frac{\phi}{\omega}$, \; $A\cos\big(\omega(t-t_0)\big)$.
\end{itemize}
Negative $\phi$ $\Rightarrow$ $t_0>0$: \term{delayed} (moves right).

\trap{Get the exact form $A\cos(\omega t+\phi)$ before reading pieces. Sine: $\sin\theta=\cos(\theta-\frac{\pi}{2})$. Negative $A$: $-A\cos\theta=A\cos(\theta+\pi)$.}

\filbreak \subsubsection{Which way? --- between the sinusoid numbers}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$\omega\to f$ & divide by $2\pi$: $f=\dfrac{\omega}{2\pi}$ \st\\
$f\to\omega$ & multiply by $2\pi$: $\omega=2\pi f$ \\
$f\to T$ & reciprocal: $T=\dfrac{1}{f}$ \st\\
$T\to\omega$ & $\omega=\dfrac{2\pi}{T}$ \st\\
$\phi\to t_0$ & $t_0=-\dfrac{\phi}{\omega}$ \st\\
$t_0\to\phi$ & $\phi=-\omega t_0$ \\
\end{tabular}}

\wk{8}{read the parts of $x(t)=3\cos\big(4\pi t-\frac{\pi}{3}\big)$}
\stepbox{1. PIECES (MATCH THE FORM)}{\pA{$A=3$} \qquad \pB{$\omega=4\pi$} \qquad \pC{$\phi=-\frac{\pi}{3}$}}
\stepdown
\stepbox{2. TEMPLATES}{$f=\dfrac{\slot{pcB}{$\omega$}}{2\pi}$ \qquad $T=\dfrac{2\pi}{\slot{pcB}{$\omega$}}$ \qquad $t_0=-\dfrac{\slot{pcC}{$\phi$}}{\slot{pcB}{$\omega$}}$}
\stepdown
\stepbox{3. PLACE}{$f=\dfrac{\pB{4\pi}}{2\pi}=\keyres{2}$ Hz \quad $T=\keyres{0.5}$ s \quad $t_0=-\dfrac{\pC{-\pi/3}}{\pB{4\pi}}=\keyres{\frac{1}{12}}$ s \why{delayed}}
\stepdown
\stepbox{4. CHECK}{$3\cos\big(4\pi(t-\frac1{12})\big)$: \; $4\pi\cdot\frac{1}{12}=\frac{\pi}{3}$ \checkmark}

\wk{8}{(sine first) read the parts of $x(t)=4\sin(10t)$}
\stepbox{1. PREP}{$\sin\theta=\cos(\theta-\frac{\pi}{2})$ \; $\Rightarrow$ \; $4\cos\big(10t-\frac{\pi}{2}\big)$}
\stepdown
\stepbox{2. PIECES, PLACE}{\pA{$A=4$}, \pB{$\omega=10$}, \pC{$\phi=-\frac{\pi}{2}$} \quad $f=\frac{\pB{10}}{2\pi}=1.59$ Hz, \; $T=\frac{2\pi}{\pB{10}}=0.628$ s}

\wk{8}{(reverse) build $x(t)$: $A=2$, $T=0.4$ s, first peak at $t=0.1$ s}
\stepbox{1. PIECES}{\pA{$A=2$} \qquad period $0.4$ $\to$ \pB{$\omega=\frac{2\pi}{0.4}=5\pi$} \qquad first peak $=$ shift: \pC{$t_0=0.1$} $\to$ \pC{$\phi=-5\pi(0.1)=-\frac{\pi}{2}$}}
\stepdown
\stepbox{2. PLACE IN $\slot{pcA}{$A$}\cos(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$})$}{$x(t)=\keyres{\pA{2}\cos\big(\pB{5\pi}t\pC{-\frac{\pi}{2}}\big)}$}
\stepdown
\stepbox{3. CHECK}{angle at $t=0.1$: $\frac{\pi}{2}-\frac{\pi}{2}=0$ $\Rightarrow$ $2\cos0=2$, the peak \checkmark}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. DT sinusoids and DT frequency}
\idea{Photograph the spinning wheel with a strobe. In the photos you only see \emph{how far the wheel turned between photos}. That angle per photo is the \term{DT frequency} $\hat\omega$, in rad/sample.}

$$x[n]=A\cos(\hat\omega n+\phi), \qquad \hat\omega=\slot{pcB}{$\omega$}\,T_s=\frac{2\pi\,\slot{pcB}{$f$}}{\slot{pcD}{$f_s$}}$$

\term{Aliasing} is the wagon-wheel effect: a turn of $\frac{\pi}{4}$ per photo looks identical to $\frac{\pi}{4}+2\pi$. So $\hat\omega$ and $\hat\omega+2\pi$ give the \keyres{same photos}; $f$ and $f+f_s$ give the same samples.

\filbreak \subsubsection{Which way? --- CT frequency or DT frequency}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$f$, $f_s\to\hat\omega$ & $\hat\omega=\dfrac{2\pi f}{f_s}$ \st\\
$\omega$, $T_s\to\hat\omega$ & $\hat\omega=\omega T_s$ \\
$\hat\omega$, $f_s\to f$ & $f=\dfrac{\hat\omega f_s}{2\pi}$ \; (the lowest answer) \st\\
\end{tabular}}
\par\vspace{2pt}
\trap{DT to CT has more than one answer. Any alias $f+kf_s$ fits the same photos.}

\wk{8}{sample $x(t)=\cos(200\pi t)$ at $f_s=800$ Hz}
\stepbox{1. PIECES}{\pB{$\omega=200\pi$} ($f=100$ Hz) \qquad \pD{$f_s=800$}}
\stepdown
\stepbox{2. TEMPLATE}{$\hat\omega=\dfrac{\slot{pcB}{$\omega$}}{\slot{pcD}{$f_s$}}$ \why{same as $\omega T_s$}}
\stepdown
\stepbox{3. PLACE}{$\hat\omega=\dfrac{\pB{200\pi}}{\pD{800}}=\keyres{\frac{\pi}{4}}$ rad/sample \; $\Rightarrow$ \; $x[n]=\keyres{\cos\big(\frac{\pi}{4}n\big)}$}

\wk{8}{(reverse and alias) $\hat\omega=\frac{\pi}{4}$, $f_s=800$; and does $900$ Hz match?}
\stepbox{1. TEMPLATE}{$f=\dfrac{\slot{white}{$\hat\omega$}\cdot\slot{pcD}{$f_s$}}{2\pi}$}
\stepdown
\stepbox{2. PLACE}{$f=\dfrac{(\pi/4)\cdot\pD{800}}{2\pi}=\keyres{100}$ Hz}
\stepdown
\stepbox{3. ALIAS}{$900$ Hz: $\hat\omega=\frac{2\pi\cdot900}{800}=\frac{9\pi}{4}$; \; $-2\pi$ $\to$ $\frac{\pi}{4}$ \; $\Rightarrow$ \warn{same samples} \why{$900=100+f_s$}}

% ------------------------------------------------------------ 4
\filbreak \subsection{4. energy and power}
\idea{Think of $\lvert x\rvert^2$ as \term{money spent per day}, forever. \term{Energy} is your \keyres{total} spending; \term{power} is your \keyres{average} per day. Spend \$100 once: total finite, average $0$. Spend \$5 every day: total $\infty$, average \$5.}

\term{Why square?} Picture $x$ as a voltage on a $1\,\Omega$ resistor: $P=V^2/R=x^2$. Squaring also makes negatives count: $(-0.5)^2=0.25$. Without it, $\cos t$ would average to $0$.

\term{Total energy}: add $\lvert x\rvert^2$ over all time, \keyres{no dividing}.
$$E_\infty=\int_{-\infty}^{\infty}\lvert x(t)\rvert^2\,dt \qquad E_\infty=\sum_{n=-\infty}^{\infty}\lvert x[n]\rvert^2$$
\term{Average power}: total inside the window $[-T,T]$, divide by its length $2T$, grow the window.
$$P_\infty=\lim_{T\to\infty}\frac{1}{2T}\int_{-T}^{T}\lvert x(t)\rvert^2\,dt \qquad P_\infty=\lim_{N\to\infty}\frac{1}{2N+1}\sum_{n=-N}^{N}\lvert x[n]\rvert^2$$
\term{Periodic shortcut}: one period tells the story, $P=\frac{1}{T}\int_{\text{period}}\lvert x\rvert^2\,dt$.

\term{Puzzle template for energy}: \; $E=\displaystyle\int_{\slot{pcA}{on at}}^{\slot{pcB}{off at}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$ \; (DT: $\sum$). Where $x=0$ it adds nothing, so the limits shrink to where the signal is on; a switch $u$ tells you the \pA{on} time.

\filbreak \subsubsection{Classify by shape first}
{\small
\begin{tabular}{@{}p{0.36\linewidth}p{0.594\linewidth}@{}}
\term{The signal} & \term{Result} \\\hline
dies out, or finite length & \term{energy signal}: $E_\infty$ finite, $P_\infty=0$ \\[2pt]
periodic, or constant & \term{power signal}: $P_\infty$ finite, $E_\infty=\infty$ \\[2pt]
grows without limit ($x=t$) & \term{neither}: both $\infty$ \\
\end{tabular}}
\par\vspace{2pt}
Energy signal: a fixed total $E$ over a growing window, $\frac{E}{2T}\to0$. \; Constant: energy grows as fast as the window, so $T$ cancels: $\frac{c^2\cdot2T}{2T}=c^2$. \; \keyres{A final $E_\infty$ or $P_\infty$ never contains $T$ or $N$.}

\filbreak \subsubsection{Traps from practice}
\trap{\textbf{Square first}, then add. $E_\infty=0$ only if $x=0$ everywhere.}
\trap{``$16$ forever'' is the \textbf{power}; the energy is $\infty$.}
\trap{$t$ disappears when you integrate; $T$ is what goes to $\infty$. \; $\frac{c}{T}\to0$, not $c$. \; Write $dt$, not $\Delta t$.}
\trap{\textbf{Write the label}: energy signal, power signal, or neither.}

\wk{8}{pulse: $x(t)=2$ for $0\leq t\leq3$, else $0$}
\stepbox{1. PIECES}{on at \pA{$0$}, off at \pB{$3$}, \; \pC{$\lvert x\rvert^2=4$}}
\stepdown
\stepbox{2. PLACE, SOLVE}{$E=\displaystyle\int_{\pA{0}}^{\pB{3}}\pC{4}\,dt=\keyres{12}$ \why{check $A^2D=4\cdot3$} \qquad $P=\lim\limits_{T\to\infty}\frac{12}{2T}=0$ $\Rightarrow$ energy signal}

\wk{8}{decaying exponential: $x(t)=3e^{-2t}u(t)$}
\stepbox{1. PIECES}{switch $u(t)$ $\Rightarrow$ on at \pA{$0$}; never off: \pB{$\infty$}; \; \pC{$\lvert x\rvert^2=9e^{-4t}$} \why{square: double the exponent}}
\stepdown
\stepbox{2. PLACE}{$E=\displaystyle\int_{\pA{0}}^{\pB{\infty}}\pC{9e^{-4t}}\,dt$}
\stepdown
\stepbox{3. SOLVE (SHORTCUT $\int_0^\infty e^{-at}dt=\frac1a$)}{$E=9\cdot\frac14=\keyres{2.25}$ $\Rightarrow$ energy signal}

\wk{8}{DT geometric: $x[n]=\big(\frac12\big)^nu[n]$}
\stepbox{1. PIECES}{on at \pA{$0$}, off \pB{never}; \; \pC{$\lvert x\rvert^2=\big(\frac12\big)^{2n}=\big(\frac14\big)^n$}}
\stepdown
\stepbox{2. PLACE}{$E=\displaystyle\sum_{\pA{0}}^{\pB{\infty}}\pC{\big(\tfrac14\big)^n}$ \why{geometric, $r=\frac14$}}
\stepdown
\stepbox{3. SOLVE, CHECK}{$\dfrac{1}{1-r}=\keyres{\frac43}$ \qquad $1+0.25+0.0625+\ldots\approx1.33$ \checkmark}

\wk{8}{sinusoid: $x(t)=4\cos(3t)$}
\stepbox{1. PIECES}{\pA{$A=4$} \qquad \pC{$\lvert x\rvert^2=16\cos^2(3t)=8+8\cos(6t)$} \why{$\cos^2\theta=\frac{1+\cos2\theta}{2}$}}
\stepdown
\stepbox{2. AVERAGE EACH TERM}{$8$ averages to $8$; \; $8\cos(6t)$ averages to $0$ \; $\Rightarrow$ $P=\keyres{8}$}
\stepdown
\stepbox{3. CHECK (SHORTCUT $\frac{\slot{pcA}{$A$}^2}{2}$)}{$\frac{\pA{4}^2}{2}=8$ \checkmark \; $E=\infty$ $\Rightarrow$ power signal}

\wk{8}{constant $x(t)=3$; and DT $x[n]=(-1)^n$}
\stepbox{1. WINDOW TOTAL}{$\int_{-T}^{T}9\,dt=18T$ \why{minus a negative: $9T-(-9T)$}}
\stepdown
\stepbox{2. ENERGY vs POWER}{$E=\lim\limits_{T\to\infty}18T=\infty$; \quad $P=\lim\limits_{T\to\infty}\dfrac{18T}{2T}=\keyres{9}$ \why{$T$ cancels; $=c^2$} $\Rightarrow$ power signal}
\stepdown
\stepbox{3. DT}{$\lvert(-1)^n\rvert^2=1$; \; $2N+1$ terms $\Rightarrow$ $P=\dfrac{2N+1}{2N+1}=\keyres{1}$}

% ------------------------------------------------------------ 5
\filbreak \subsection{5. energy from a graph}
\idea{Do not set up one big integral. Chop the graph into pieces, find each piece's energy from the shortcut table, and add. In DT there are no widths: each stem's energy is its height squared.}

\term{Shortcuts} (piece of length $D$) --- these are the templates:
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.5\linewidth}p{0.454\linewidth}@{}}
\term{Piece of the graph} & \term{Energy of that piece} \\\hline
flat at level $A$ & $A^2D$ \\
ramp from $0$ to $A$ (or $A$ to $0$) & $\dfrac{A^2D}{3}$ \st\\
line from $A$ to $B$ & $\dfrac{D}{3}\big(A^2+AB+B^2\big)$ \st\\
DT stem of height $h$ & $h^2$ \\
\end{tabular}}
\par\vspace{2pt}
Line through $(t_1,x_1)$, slope $m$: $x=x_1+m(t-t_1)$. Use a shortcut to check an integral, and vice versa.

\trap{Negative parts count positive: $(-2)^2=4$.}
\trap{A squared ramp is a curve, not a triangle: $\frac{A^2D}{3}$, not $\frac{A^2D}{2}$.}
\trap{If the graph repeats forever, $E_\infty=\infty$. Find the power over one period.}

\needspace{16\baselineskip}
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=e1,
xmin=-0.6, xmax=3.8, ymin=-1.5, ymax=2.6,
xtick={1,2,3}, ytick={-1,2},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.4cm]
\addplot[white!55] coordinates {(-0.4,0)(0,0)(0,2)(1,2)(1,-1)(3,-1)(3,0)(3.6,0)};
\addplot[pcA, very thick] coordinates {(0,2)(1,2)};
\addplot[pcB, very thick] coordinates {(1,-1)(3,-1)};
\end{axis}
\begin{axis}[sigax, at={(e1.east)}, anchor=west, xshift=0.5cm,
xmin=-0.6, xmax=2.8, ymin=-0.4, ymax=2.6,
xtick={1,2}, ytick={2},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.4cm]
\addplot[white!55] coordinates {(-0.4,0)(0,0)(2,0)(2.6,0)};
\addplot[pcA, very thick] coordinates {(0,0)(1,2)};
\addplot[pcB, very thick] coordinates {(1,2)(2,0)};
\end{axis}
\end{tikzpicture}

\wk{8}{two flat pieces (left graph)}
\stepbox{1. PIECES}{\pA{flat at $2$, $D=1$} \qquad \pB{flat at $-1$, $D=2$}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\slot{pcA}{$A^2D$}+\slot{pcB}{$A^2D$}$}
\stepdown
\stepbox{3. PLACE}{$E=\pA{2^2(1)}+\pB{(-1)^2(2)}=4+2=\keyres{6}$}

\wk{8}{a triangle (right graph)}
\stepbox{1. PIECES}{\pA{ramp $0\to2$, $D=1$} \qquad \pB{ramp $2\to0$, $D=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\dfrac{\slot{pcA}{$A$}^2\slot{pcA}{$D$}}{3}+\dfrac{\slot{pcB}{$A$}^2\slot{pcB}{$D$}}{3}$}
\stepdown
\stepbox{3. PLACE}{$E=\dfrac{\pA{2}^2(\pA1)}{3}+\dfrac{\pB{2}^2(\pB1)}{3}=\keyres{\frac83}$}
\stepdown
\stepbox{4. CHECK BY INTEGRAL}{rise $x=2t$: $\int_0^1 4t^2\,dt=\frac43$; the fall is its mirror, $\frac43$ \checkmark}

\wk{8}{a line from $1$ to $3$ over $[0,2]$}
\stepbox{1. PIECES}{\pA{$A=1$} \qquad \pB{$B=3$} \qquad \pC{$D=2$}}
\stepdown
\stepbox{2. PLACE IN $\frac{\slot{pcC}{$D$}}{3}\big(\slot{pcA}{$A$}^2+\slot{pcA}{$A$}\slot{pcB}{$B$}+\slot{pcB}{$B$}^2\big)$}{$\dfrac{\pC2}{3}\big(\pA1+\pA1\cdot\pB3+\pB9\big)=\keyres{\frac{26}{3}}$}
\stepdown
\stepbox{3. CHECK BY INTEGRAL}{$x=1+t$: $\int_0^2(1+2t+t^2)\,dt=2+4+\frac83=\frac{26}{3}$ \checkmark}

\needspace{16\baselineskip}
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=s1,
xmin=-2.6, xmax=3.4, ymin=-2.6, ymax=2.6,
xtick={-2,-1,1,2}, ytick={-2,-1,1,2},
xlabel={$n$}, ylabel={$x[n]$},
width=4.9cm, height=3.6cm]
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.2pt] coordinates {(-2,0)(-1,1)(0,2)(1,-2)(2,1)(3,0)};
\end{axis}
\begin{axis}[sigax, at={(s1.east)}, anchor=west, xshift=0.5cm,
xmin=-0.6, xmax=5.8, ymin=-0.4, ymax=2.6,
xtick={1,2,3,4,5}, ytick={2},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.6cm]
\addplot[uHi, thick] coordinates {(-0.4,0)(0,0)(0,2)(1,2)(1,0)(2,0)(2,2)(3,2)(3,0)(4,0)(4,2)(5,2)(5,0)(5.6,0)};
\addplot[pcA, very thick] coordinates {(0,2)(1,2)};
\addplot[pcB, very thick] coordinates {(1,0)(2,0)};
\end{axis}
\end{tikzpicture}

\wk{8}{a DT stem plot (left graph)}
\stepbox{1. PIECES (EVERY STEM)}{heights $1$, $2$, $-2$, $1$ at $n=-1,0,1,2$}
\stepdown
\stepbox{2. PLACE IN $\sum\slot{white}{$h$}^2$}{$E=1+4+4+1=\keyres{10}$ \why{no integral in DT} \qquad $P=\lim\limits_{N\to\infty}\frac{10}{2N+1}=0$ $\Rightarrow$ energy signal}

\wk{8}{a periodic graph (right graph): power, not energy}
\stepbox{1. PIECES (ONE PERIOD, $T=2$)}{\pA{flat at $2$, $D=1$} \qquad \pB{flat at $0$, $D=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$P=\dfrac{\slot{pcA}{$A^2D$}+\slot{pcB}{$A^2D$}}{T}$}
\stepdown
\stepbox{3. PLACE}{$P=\dfrac{\pA{4}+\pB{0}}{2}=\keyres{2}$ \qquad repeats forever: $E=\infty$ $\Rightarrow$ power signal}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. transformations of the time variable}
\idea{You are not changing the shape, only \emph{when} things happen. Ask one question of every corner of the graph: \term{where did this point move to?} It keeps its height and just lands at a new time.}
\begin{itemize}
\item \term{Shift} $x(t-t_0)$: $t_0>0$ moves \keyres{right} (a \term{delay}); $t_0<0$ moves left (an \term{advance}).
\item \term{Reversal} $x(-t)$: play the tape backwards, mirror about $t=0$.
\item \term{Scaling} $x(at)$: fast-forward (compress) if $\lvert a\rvert>1$; slow motion (stretch) if $\lvert a\rvert<1$.
\end{itemize}
\term{Point map} for $x(at+b)$ --- the template, one step, no order of operations:
$$t_{\text{new}}=\frac{\slot{white}{$t_{\text{old}}$}-b}{a}$$

\trap{Scale-then-shift is wrong: $x(2t)$ shifted left $1$ is $x(2(t+1))=x(2t+2)$, not $x(2t+1)$.}
\trap{The sign inside is opposite to the direction: $x(t-3)$ moves \emph{right}.}
\trap{DT scaling loses photos: $x[2n]$ keeps only the even-index samples.}

\needspace{16\baselineskip}
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=a1,
xmin=-1.6, xmax=2.8, ymin=-0.3, ymax=1.5,
xtick={-1,1,2}, ytick={1},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.2cm]
\addplot[uHi, thick] coordinates {(-1.4,0)(0,0)(1,1)(2,1)(2,0)(2.6,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcA] coordinates {(0,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcD] coordinates {(1,1)};
\addplot[only marks, mark=*, mark size=1.8pt, pcE] coordinates {(2,1)};
\end{axis}
\begin{axis}[sigax, at={(a1.east)}, anchor=west, xshift=0.5cm,
xmin=-1.6, xmax=2.8, ymin=-0.3, ymax=1.5,
xtick={-1,1,2}, ytick={1},
xlabel={$t$}, ylabel={$x(2t+1)$},
width=4.9cm, height=3.2cm]
\addplot[keyHi, thick] coordinates {(-1.4,0)(-0.5,0)(0,1)(0.5,1)(0.5,0)(2.6,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcA] coordinates {(-0.5,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcD] coordinates {(0,1)};
\addplot[only marks, mark=*, mark size=1.8pt, pcE] coordinates {(0.5,1)};
\end{axis}
\end{tikzpicture}

\wk{8}{sketch $x(2t+1)$ from $x(t)$ (the dots move)}
\stepbox{1. PIECES}{breakpoints of $x$: \pA{$t=0$} (height $0$), \pD{$t=1$} (height $1$), \pE{$t=2$} (height $1$, then drops) \qquad $a=2$, $b=1$}
\stepdown
\stepbox{2. TEMPLATE}{$t_{\text{new}}=\dfrac{\slot{white}{$t_{\text{old}}$}-1}{2}$}
\stepdown
\stepbox{3. PLACE EACH DOT}{\pA{$\frac{0-1}{2}=-\frac12$} \qquad \pD{$\frac{1-1}{2}=0$} \qquad \pE{$\frac{2-1}{2}=\frac12$} \; \why{heights unchanged}}
\stepdown
\stepbox{4. CHECK}{$t=0$: $x(2\cdot0+1)=x(1)=1$ \checkmark \; (the \pD{blue dot})}

\wk{8}{(reversal) sketch $x(-t+2)$ from the same $x(t)$}
\stepbox{1. TEMPLATE}{$a=-1$, $b=2$: \; $t_{\text{new}}=\dfrac{t_{\text{old}}-2}{-1}=2-t_{\text{old}}$}
\stepdown
\stepbox{2. PLACE EACH DOT}{\pA{$0\to2$} \qquad \pD{$1\to1$} \qquad \pE{$2\to0$} \; $\Rightarrow$ flat $1$ on $[0,1]$, ramp $1\to0$ on $[1,2]$ (mirrored)}
\stepdown
\stepbox{3. CHECK}{$t=1.5$: $x(0.5)=0.5$, on the ramp \checkmark}

\wk{8}{DT: $x[0]=1$, $x[1]=2$, $x[2]=3$, else $0$}
\stepbox{1. PLACE EACH SAMPLE WITH $n_{\text{new}}=\frac{n_{\text{old}}-b}{a}$}{delay $x[n-2]$: \; $0,1,2\to2,3,4$ \qquad reverse $x[-n]$: \; $0,1,2\to0,-1,-2$\\
compress $x[2n]$: \; $0\to0$, \; $2\to1$, \; \warn{$1\to\frac12$: not an integer, lost}}

\filbreak \subsubsection{Which way? --- undo a transformation}
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.614\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$x(t)\to x(at+b)$ & map each breakpoint: $t_{\text{new}}=\frac{t_{\text{old}}-b}{a}$ \\[2pt]
$y(t)=x(at+b)\to x(t)$ & $x(t)=y\big(\frac{t-b}{a}\big)$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{$x[2n]$ cannot be undone. The odd-index photos were thrown away.}

\wk{8}{(reverse) $y(t)=x(2t+1)$; find $x(t)$}
\stepbox{1. PIECES, TEMPLATE}{\pB{$a=2$}, \pC{$b=1$} \quad $x(t)=y\Big(\dfrac{t-\slot{pcC}{$b$}}{\slot{pcB}{$a$}}\Big)$}
\stepdown
\stepbox{2. PLACE, CHECK}{$x(t)=\keyres{y\big(\frac{t-\pC1}{\pB2}\big)}$ \qquad $x\big(2\cdot\frac{t-1}{2}+1\big)=x(t)$ \checkmark}

\filbreak \subsubsection{Which way? --- find $y=A\,x(at+b)$ from two graphs}
$$y(t)=\slot{pcA}{$A$}\,x\big(\slot{pcB}{$a$}\,t+\slot{pcC}{$b$}\big)$$
\begin{enumerate}
\item \pA{$A$} $=\frac{\text{height of }y}{\text{height of }x}$; upside down means $A<0$.
\item Mirrored? Then \pB{$a$}$\,<0$.
\item Two matching points: $x$ at $t_1$, $t_2$ moved to $\tau_1$, $\tau_2$. Solve $a\tau_1+b=t_1$, \; $a\tau_2+b=t_2$ \why{$y$ at $\tau$ is $x$ at $a\tau+b$}.
\item Check a third point.
\end{enumerate}

\wk{8}{$x$: ramp $0\to1$ on $[0,4]$. \; $y$: same ramp, height $3$, on $[-1,1]$}
\stepbox{1. PIECES}{\pA{$A=\frac31=3$} \qquad not mirrored \qquad start $0\to-1$, \; end $4\to1$}
\stepdown
\stepbox{2. SOLVE FOR \pB{$a$}, \pC{$b$}}{$-a+b=0$, \; $a+b=4$ \; $\Rightarrow$ add: \pC{$b=2$}, \pB{$a=2$}}
\stepdown
\stepbox{3. PLACE, CHECK}{$y(t)=\keyres{\pA{3}\,x(\pB{2}t+\pC{2})}$ \qquad $t=0$: $3x(2)=1.5$, half of $3$ \checkmark}

\wk{8}{(mirrored) same $x$; $y$ falls $3\to0$ on $[-1,1]$}
\stepbox{1. PIECES}{\pA{$A=3$} \qquad mirrored \qquad start $0\to1$, \; end $4\to-1$}
\stepdown
\stepbox{2. SOLVE, PLACE}{$a+b=0$, \; $-a+b=4$ \; $\Rightarrow$ \pB{$a=-2$}, \pC{$b=2$} \qquad $y=\keyres{3\,x(-2t+2)}$}

\wk{8}{(DT) $x[0..2]=1,2,3$; \; $y[-1]=3$, $y[0]=2$, $y[1]=1$}
\stepbox{1. PIECES}{mirrored $\Rightarrow$ $y[n]=x[-n+\slot{pcC}{$b$}]$ \qquad one match: $y[-1]=3=x[2]$}
\stepdown
\stepbox{2. SOLVE, CHECK}{$1+b=2$ $\Rightarrow$ \pC{$b=1$}: \; $y[n]=\keyres{x[-n+1]}$ \qquad $n=0$: $x[1]=2$ \checkmark}

% ------------------------------------------------------------ 7
\filbreak \subsection{7. periodic signals}
\idea{A periodic signal is a song on repeat. Slide it by one period and nothing changes. The \term{fundamental period} is the shortest loop.}
$$x(t)=x(t+T) \qquad x[n]=x[n+N], \; N\text{ an \keyres{integer}}$$
\begin{itemize}
\item \term{CT sinusoid}: always periodic, \; $T=\dfrac{2\pi}{\slot{pcB}{$\omega$}}$.
\item \term{DT sinusoid}: periodic only if a whole number of photos holds a whole number of turns: \; $\dfrac{\slot{pcB}{$\hat\omega$}}{2\pi}=\dfrac{m}{\slot{pcA}{$N$}}$ in lowest terms.
\item \term{Sum of two}: the loops realign after $\mathrm{lcm}(T_1,T_2)$.
\end{itemize}
\trap{$\cos(n)$ is not periodic ($\frac{1}{2\pi}$ is irrational), though $\cos(t)$ is. Sampling can destroy periodicity.}

\wk{8}{period of $\cos\big(\frac{2\pi}{3}t\big)+\sin\big(\frac{\pi}{2}t\big)$}
\stepbox{1. PIECES}{\pB{$\omega_1=\frac{2\pi}{3}$} \qquad \pD{$\omega_2=\frac{\pi}{2}$}}
\stepdown
\stepbox{2. PLACE IN $\frac{2\pi}{\slot{white}{$\omega$}}$}{$T_1=\dfrac{2\pi}{\pB{2\pi/3}}=3$ \qquad $T_2=\dfrac{2\pi}{\pD{\pi/2}}=4$}
\stepdown
\stepbox{3. LCM, CHECK}{$\mathrm{lcm}(3,4)=\keyres{12}$ s \qquad holds $4$ and $3$ whole cycles \checkmark}

\wk{8}{DT period: three cases}
\stepbox{1. TEMPLATE}{$\dfrac{\slot{pcB}{$\hat\omega$}}{2\pi}=\dfrac{m}{\slot{pcA}{$N$}}$, reduced}
\stepdown
\stepbox{2. PLACE}{$\cos\big(\pB{\frac{3\pi}{8}}n\big)$: $\frac{3}{16}$ $\Rightarrow$ \pA{$N=\keyres{16}$} \why{$\frac{3\pi}{8}\cdot16=3$ turns \checkmark}\\
$\cos\big(\pB{\frac{4\pi}{6}}n\big)$: $\frac{4}{12}=\frac13$ $\Rightarrow$ \pA{$N=\keyres{3}$} \warn{not $12$: reduce first}\\
$\cos(\pB{1}\,n)$: $\frac{1}{2\pi}$, not a fraction of integers $\Rightarrow$ \keyres{not periodic}}

% ------------------------------------------------------------ 8
\filbreak \subsection{8. even and odd signals}
\idea{\term{Even}: a mirror on the vertical axis; the left half reflects the right. \term{Odd}: spin the graph half a turn about the origin and it lands on itself.}
\begin{itemize}
\item \pA{Even}: $x(-t)=x(t)$. \; $\cos$, $t^2$, constants.
\item \pC{Odd}: $x(-t)=-x(t)$. \; $\sin$, $t$, $t^3$.
\end{itemize}
\term{Test}: replace $t$ with $-t$, simplify, compare. \; \term{Split}:
$$\mathcal{E}v\{x\}=\frac{x(t)+x(-t)}{2} \qquad \mathcal{O}d\{x\}=\frac{x(t)-x(-t)}{2}$$
\term{Shortcut for sums of terms}: sort each term into a \pA{even} or \pC{odd} pile; the piles \emph{are} the two parts. \; Products work like signs: even$\cdot$even $=$ odd$\cdot$odd $=$ even; even$\cdot$odd $=$ odd.
\trap{An odd signal is $0$ at the origin: $x(0)=-x(0)$.}

\wk{8}{is $x(t)=t^3-2t$ even, odd, or neither?}
\stepbox{1. PIECES (SORT TERMS)}{\pC{$t^3$} odd \qquad \pC{$-2t$} odd \qquad no even terms}
\stepdown
\stepbox{2. CHECK BY TEST}{$x(-t)=-t^3+2t=-(t^3-2t)=-x(t)$ $\Rightarrow$ \keyres{odd}}

\wk{8}{$x(t)=t^2+t$: test, then split}
\stepbox{1. PIECES (SORT TERMS)}{\pA{$t^2$} even \qquad \pC{$t$} odd \qquad both piles non-empty $\Rightarrow$ neither}
\stepdown
\stepbox{2. PLACE}{$\mathcal{E}v=\keyres{\pA{t^2}}$ \qquad $\mathcal{O}d=\keyres{\pC{t}}$}
\stepdown
\stepbox{3. CHECK BY FORMULA}{$\dfrac{(t^2+t)+(t^2-t)}{2}=t^2$ \checkmark \quad $\dfrac{(t^2+t)-(t^2-t)}{2}=t$ \checkmark}

\wk{8}{DT split: $x[0]=1$, $x[1]=2$, $x[2]=3$, else $0$}
\stepbox{1. TABLE: FILL $x[-n]$ BY READING $x$ AT THE OPPOSITE INDEX}{{\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}c|ccccc@{}}
$n$ & $-2$ & $-1$ & $0$ & $1$ & $2$ \\\hline
$x[n]$ & $0$ & $0$ & $1$ & $2$ & $3$ \\
$x[-n]$ & $3$ & $2$ & $1$ & $0$ & $0$ \\\hline
\pA{$\frac{x[n]+x[-n]}{2}$} & $1.5$ & $1$ & $1$ & $1$ & $1.5$ \\
\pC{$\frac{x[n]-x[-n]}{2}$} & $-1.5$ & $-1$ & $0$ & $1$ & $1.5$ \\
\end{tabular}}}
\stepdown
\stepbox{2. CHECK EACH COLUMN}{\pA{even} $+$ \pC{odd} $=x[n]$: \; $n=2$: $1.5+1.5=3$ \checkmark \; $n=-2$: $0$ \checkmark}

% ------------------------------------------------------------ 9
\filbreak \subsection{9. complex exponentials}
\idea{$e^{j\theta}$ is an arrow of length $1$ pointing at angle $\theta$. Let $\theta=\omega t$ and it spins; its shadow on the horizontal axis is a cosine. Multiply by $e^{\sigma t}$ and it also grows or shrinks: a spiral.}

\term{Euler}: $e^{j\theta}=\cos\theta+j\sin\theta$. \quad $\cos\theta=\dfrac{e^{j\theta}+e^{-j\theta}}{2}$, \; $\sin\theta=\dfrac{e^{j\theta}-e^{-j\theta}}{2j}$ \why{two arrows spinning opposite ways}.

\term{CT form}: $x(t)=Ce^{at}$, \; $C=\slot{pcA}{$\lvert C\rvert$}e^{j\slot{pcC}{$\phi$}}$ (start length, angle), \; $a=\slot{pcD}{$\sigma$}+j\slot{pcB}{$\omega$}$ (growth, spin). The template:
$$\mathrm{Re}\{Ce^{at}\}=\slot{pcA}{$\lvert C\rvert$}\,e^{\slot{pcD}{$\sigma$}t}\cos\big(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$}\big)$$
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.614\linewidth}@{}}
\term{Case} & \term{Real part looks like} \\\hline
$\omega=0$ & no spin: \term{real exponential}; grows if $\sigma>0$, decays if $\sigma<0$ \\[2pt]
$\sigma=0$ & pure spin: \term{sinusoid}, $T=\frac{2\pi}{\lvert\omega\rvert}$ \\[2pt]
both & spiral: \term{damped sinusoid}; envelope $\lvert C\rvert e^{\sigma t}$ \\
\end{tabular}}
\par\vspace{2pt}
\term{DT form}: $x[n]=C\alpha^n$; each step multiplies by $\alpha$. $\lvert\alpha\rvert<1$ decays, $\lvert\alpha\rvert>1$ grows, $\alpha<0$ flips sign each step.

\keyres{DT frequencies repeat every $2\pi$}: $e^{j(\hat\omega+2\pi)n}=e^{j\hat\omega n}$, since $e^{j2\pi n}=1$ for integer $n$.

{\small
\begin{tabular}{@{}p{0.485\linewidth}|p{0.465\linewidth}@{}}
\term{CT} $e^{j\omega t}$ & \term{DT} $e^{j\hat\omega n}$ \\\hline
each $\omega$ a different signal & $\hat\omega$ and $\hat\omega+2\pi$ the same \\[2pt]
always periodic & periodic only if $\frac{\hat\omega}{2\pi}$ is rational \\[2pt]
larger $\omega$ $\Rightarrow$ faster & fastest at $\hat\omega=\pi$ ($+1,-1,\ldots$) \\
\end{tabular}}

\wk{8}{real part of $x(t)=2e^{j\pi/3}e^{(-1+j4)t}$}
\stepbox{1. PIECES}{$C$: \pA{$\lvert C\rvert=2$}, \pC{$\phi=\frac{\pi}{3}$} \qquad $a$: \pD{$\sigma=-1$}, \pB{$\omega=4$}}
\stepdown
\stepbox{2. PLACE}{$\mathrm{Re}\{x\}=\keyres{\pA{2}\,e^{\pD{-1}t}\cos\big(\pB{4}t+\pC{\tfrac{\pi}{3}}\big)}$ \why{damped sinusoid, envelope $2e^{-t}$}}

\wk{8}{(reverse) write $5e^{-2t}\cos\big(3t-\frac{\pi}{4}\big)$ as $\mathrm{Re}\{Ce^{at}\}$}
\stepbox{1. PIECES (MATCH THE TEMPLATE)}{\pA{$\lvert C\rvert=5$} \qquad \pD{$\sigma=-2$} \qquad \pB{$\omega=3$} \qquad \pC{$\phi=-\frac{\pi}{4}$}}
\stepdown
\stepbox{2. PLACE}{$C=\pA{5}e^{j\pC{(-\pi/4)}}=\keyres{5e^{-j\pi/4}}$ \qquad $a=\pD{-2}+j\pB{3}=\keyres{-2+j3}$}

\wk{8}{cosine to exponentials, and a DT alias}
\stepbox{1. $6\cos(5t)$}{$6\cdot\dfrac{e^{j5t}+e^{-j5t}}{2}=\keyres{3e^{j5t}+3e^{-j5t}}$}
\stepdown
\stepbox{2. $\cos\big(\frac{9\pi}{4}n\big)$}{remove a whole turn: $\frac{9\pi}{4}-2\pi=\frac{\pi}{4}$ $\Rightarrow$ $\keyres{\cos\big(\frac{\pi}{4}n\big)}$, \; $\frac{\pi/4}{2\pi}=\frac18$ $\Rightarrow$ $N=\keyres{8}$}

% ------------------------------------------------------------ 10
\filbreak \subsection{10. the button, the switch, and the ramp}
\idea{
\begin{itemize}
\item $\delta$ is a \term{button}: press once at time $0$, then release.
\item $u$ is a \term{switch}: flip it on at time $0$ and leave it on.
\item $r$ is a \term{ramp}: the running total of the switch, climbing $0,1,2,3,\ldots$
\end{itemize}
Each is the \keyres{running total} of the one before. Everything else is built from these three.}

$$\delta[n]=\begin{cases}1 & n=0\\0 & n\neq0\end{cases} \qquad u[n]=\begin{cases}1 & n\geq0\\0 & n<0\end{cases}$$

\needspace{12\baselineskip}
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=d1,
xmin=-3.6, xmax=4.4, ymin=-0.3, ymax=1.5,
xtick={-3,-2,-1,1,2,3}, ytick={1},
xlabel={$n$}, ylabel={$\delta[n]$},
width=4.9cm, height=3cm]
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.2pt] coordinates {(-3,0)(-2,0)(-1,0)(0,1)(1,0)(2,0)(3,0)};
\end{axis}
\begin{axis}[sigax, at={(d1.east)}, anchor=west, xshift=0.5cm,
xmin=-3.6, xmax=4.4, ymin=-0.3, ymax=1.5,
xtick={-3,-2,-1,1,2,3}, ytick={1},
xlabel={$n$}, ylabel={$u[n]$},
width=4.9cm, height=3cm]
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.2pt] coordinates {(-3,0)(-2,0)(-1,0)(0,1)(1,1)(2,1)(3,1)};
\end{axis}
\end{tikzpicture}

\trap{The switch does not keep climbing: $u[n]$ is $0,0,1,1,1,\ldots$ One stair up, then flat. The ramp is what climbs.}

\term{Size}: the button is one stem of height $1$, $E_\infty=1$ (\keyres{energy signal}). The switch stays on forever: $E_\infty=\infty$, finite power (\keyres{power signal}).

\filbreak \subsubsection{Running totals and where the button sits}
\term{Switch $=$ running total of presses}: \; $u[n]=\sum_{k=-\infty}^{n}\delta[k]$ \why{no presses before $0$; one press at $0$; the total stays $1$}. \; \term{Back}: a switch on at $0$ minus a switch on at $1$ is on only at $0$: \; $\delta[n]=u[n]-u[n-1]$.

\term{Where is it?} Set the inside to $0$ and solve. $\delta[n-k]$ sits at $n=k$; $u[n-k]$ turns on at $n=k$.

{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.15\linewidth}p{0.17\linewidth}p{0.15\linewidth}p{0.38\linewidth}@{}}
\term{Inside} & \term{Stem at} & \term{Moves} & \term{Name} \\\hline
$n-3$ & $n=3$ & right & \term{delay}: later \\
$n+2$ & $n=-2$ & left & \term{advance}: earlier \\
\end{tabular}}
\par\vspace{2pt}
\trap{The sign inside is opposite to the position, and $+2$ is an \emph{advance}.}

\filbreak \subsubsection{Building signals: switches on and off, one button per stem}
\term{Pulse}: \; $u[n-\slot{pcA}{$a$}]-u[n-\slot{pcB}{$b$}]$ is on for $\slot{pcA}{$a$}\leq n\leq\slot{pcB}{$b$}-1$ ($b-a$ samples). \; CT: $u(t-t_1)-u(t-t_2)$ is on for $t_1\leq t<t_2$.
\trap{The off-switch's own position is already off: $u[n]-u[n-4]$ at $n=4$ is $1-1=0$.}

\term{One button per stem}: a stem of height \pA{$h$} at position \pB{$k$} is $\slot{pcA}{$h$}\,\delta[n-\slot{pcB}{$k$}]$. Add one term per stem:
$$x[n]=\sum_{k}x[k]\,\delta[n-k]$$

\needspace{12\baselineskip}
\noindent\hfil
\begin{tikzpicture}
\begin{axis}[sigax,
xmin=-2.6, xmax=4.4, ymin=-1.6, ymax=3.6,
xtick={-2,-1,1,2,3,4}, ytick={-1,1,2,3},
xlabel={$n$}, ylabel={$x[n]$},
width=5.6cm, height=3.6cm]
\addplot[pcA, ycomb, thick, mark=*, mark size=1.4pt] coordinates {(-1,2)};
\addplot[pcB, ycomb, thick, mark=*, mark size=1.4pt] coordinates {(0,-1)};
\addplot[pcC, ycomb, thick, mark=*, mark size=1.4pt] coordinates {(1,3)};
\addplot[pcD, ycomb, thick, mark=*, mark size=1.4pt] coordinates {(3,1)};
\end{axis}
\end{tikzpicture}

\wk{8}{write the stems above with buttons}
\stepbox{1. PIECES (HEIGHT AT POSITION)}{\pA{$2$ at $-1$} \qquad \pB{$-1$ at $0$} \qquad \pC{$3$ at $1$} \qquad \pD{$1$ at $3$} \why{no stem at $2$: no term}}
\stepdown
\stepbox{2. TEMPLATE (ONE PER STEM)}{$\slot{white}{$h$}\,\delta[n-\slot{white}{$k$}]+\cdots$}
\stepdown
\stepbox{3. PLACE}{$x[n]=\keyres{\pA{2\delta[n+1]}\;\pB{-\delta[n]}\;\pC{+3\delta[n-1]}\;\pD{+\delta[n-3]}}$}

\wk{8}{(reverse) read the stems of $x[n]=4\delta[n-2]-2\delta[n+3]$}
\stepbox{1. PIECES}{coefficient $=$ height; \; inside $=0$ $\Rightarrow$ position}
\stepdown
\stepbox{2. PLACE, CHECK}{$n-2=0$: $x[2]=\keyres{4}$ \qquad $n+3=0$: $x[-3]=\keyres{-2}$ \qquad $n=2$: $4(1)-2(0)=4$ \checkmark}

\wk{8}{DT pulse $x[n]=u[n]-u[n-3]$}
\stepbox{1. PIECES}{on at \pA{$a=0$}, off at \pB{$b=3$}}
\stepdown
\stepbox{2. PLACE IN $\slot{pcA}{$a$}\leq n\leq\slot{pcB}{$b$}-1$}{on for $0\leq n\leq2$ $\Rightarrow$ $\keyres{\delta[n]+\delta[n-1]+\delta[n-2]}$}
\stepdown
\stepbox{3. FIRST DIFFERENCE}{a button at each switch: $x[n]-x[n-1]=\keyres{\delta[n]-\delta[n-3]}$}

\filbreak \subsubsection{The CT button}
A one-instant press does not exist in CT. Picture a rectangle of width $\varepsilon$, height $\frac{1}{\varepsilon}$: area $1$ always. Shrink $\varepsilon\to0$: infinitely tall, \keyres{area still $1$}. A hammer tap: instant, but a definite amount of hit.
$$\int_{-\infty}^{\infty}\delta(t)\,dt=1 \qquad\text{(CT: \keyres{area} $1$; DT: \keyres{height} $1$)}$$
\term{CT switch}: $u(t)=\int_{-\infty}^{t}\delta(\tau)\,d\tau$; back: $\delta(t)=\frac{du}{dt}$. A jump in a signal becomes a button in its derivative.
\trap{$\delta$ is a function of $t$, not a variable. $\int\delta\,dt$ is not $\delta^2$; use its one fact, area $1$.}

\filbreak \subsubsection{Sifting: the camera flash}
Fire a flash at $t_0$ and see what value of $g$ it captures. The template:
$$\int_{\slot{pcD}{lo}}^{\slot{pcD}{hi}}\slot{pcA}{$g(t)$}\,\delta\big(t-\slot{pcB}{$t_0$}\big)\,dt=\begin{cases}\slot{pcA}{$g$}(\slot{pcB}{$t_0$}) & \slot{pcB}{$t_0$}\text{ inside }[\slot{pcD}{lo},\slot{pcD}{hi}]\\0 & \text{outside}\end{cases}$$
\term{Three questions}: (1) \pB{Where is the flash?} Set the inside of $\delta$ to $0$. (2) \pD{In the window?} If not, the answer is $0$. (3) \pA{What does it capture?} Plug $t_0$ into everything except the $\delta$. The answer has no $\delta$ left.

\term{Sampling form}: $x(t)\,\delta(t-t_0)=x(t_0)\,\delta(t-t_0)$; DT the same with $n_0$.

\wk{8}{five flashes}
\stepbox{1. PLACE: \pB{FLASH} / \pD{WINDOW} / \pA{CAPTURE}}{$\int_{-2}^{6}(3t+1)\delta(t-4)\,dt$: \; \pB{$4$} / \pD{in $[-2,6]$} / \pA{$3(4)+1$} $=\keyres{13}$\\
$\int_{1}^{3}5\,\delta(t)\,dt$: \; \pB{$0$} / \pD{outside $[1,3]$} $\Rightarrow$ $\keyres{0}$ \why{over all $t$ it would be $5$}\\
$\int_{-\infty}^{\infty}(t^2+1)\delta(t-2)\,dt$: \; \pB{$2$} / \pD{in} / \pA{$2^2+1$} $=\keyres{5}$\\
$\int_0^5 e^{t}\delta(t+1)\,dt$: \; \pB{$-1$} / \pD{outside $[0,5]$} $\Rightarrow$ $\keyres{0}$\\
DT $\sum_n n^2\delta[n-3]$: \; \pB{$3$} / \pD{in} / \pA{$3^2$} $=\keyres{9}$}

\filbreak \subsubsection{Which way? --- switch or button}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$u\to\delta$ (CT) & differentiate: $\delta(t)=\dfrac{du}{dt}$ \st\\
$\delta\to u$ (CT) & integrate: $u(t)=\int_{-\infty}^{t}\delta(\tau)\,d\tau$ \\
$u\to\delta$ (DT) & first difference: $\delta[n]=u[n]-u[n-1]$ \\
$\delta\to u$ (DT) & running sum: $u[n]=\sum_{k=-\infty}^{n}\delta[k]$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{CT uses derivatives and integrals. DT uses differences and sums.}

\wk{8}{pulse of height $2$ on $[1,4)$ with switches, then down and back}
\stepbox{1. PIECES}{jump \pA{up $2$ at $t=1$} \qquad jump \pB{down $2$ at $t=4$}}
\stepdown
\stepbox{2. TEMPLATE (ONE SWITCH PER JUMP)}{$\slot{white}{jump}\cdot u(t-\slot{white}{where})+\cdots$}
\stepdown
\stepbox{3. PLACE, CHECK}{$x(t)=\keyres{\pA{2u(t-1)}\pB{-2u(t-4)}}$ \qquad $t=2$: $2$ \checkmark \; $t=5$: $0$ \checkmark}
\stepdown
\stepbox{4. DOWN AND BACK}{$\dfrac{dx}{dt}=\keyres{2\delta(t-1)-2\delta(t-4)}$ \why{each switch becomes a button}; integrate to return \checkmark}

\filbreak \subsubsection{The ramp: the running total of the switch}
$$r(t)=t\,u(t)=\begin{cases}t & t\geq0\\0 & t<0\end{cases} \qquad r[n]=n\,u[n]$$
It grows without limit: \keyres{neither} energy nor power.

\needspace{12\baselineskip}
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=r1,
xmin=-2.6, xmax=4.4, ymin=-0.4, ymax=4.4,
xtick={-2,-1,1,2,3,4}, ytick={1,2,3,4},
xlabel={$t$}, ylabel={$r(t)$},
width=4.9cm, height=3.2cm]
\addplot[uHi, thick] coordinates {(-2.4,0)(0,0)(4,4)};
\end{axis}
\begin{axis}[sigax, at={(r1.east)}, anchor=west, xshift=0.5cm,
xmin=-2.6, xmax=4.4, ymin=-0.4, ymax=4.4,
xtick={-2,-1,1,2,3,4}, ytick={1,2,3,4},
xlabel={$n$}, ylabel={$r[n]$},
width=4.9cm, height=3.2cm]
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.2pt] coordinates {(-2,0)(-1,0)(0,0)(1,1)(2,2)(3,3)(4,4)};
\end{axis}
\end{tikzpicture}

\keyres{The chain}: \; button $\delta$ $\xrightarrow{\text{running total}}$ switch $u$ $\xrightarrow{\text{running total}}$ ramp $r$. \; Back: differentiate (CT) or first difference (DT).

{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.4\linewidth}p{0.554\linewidth}@{}}
\term{Form} & \term{Formula} \\\hline
CT: integral of the switch & $r(t)=\int_{-\infty}^{t}u(\tau)\,d\tau$ \\
CT: derivative of the ramp & $\dfrac{dr}{dt}=u(t)$ \st\\
DT: running sum of the switch & $r[n]=\sum_{k=-\infty}^{n-1}u[k]$ \\
DT: first difference & $r[n]-r[n-1]=u[n-1]$ \\
DT: sum of shifted switches & $r[n]=\sum_{k=1}^{\infty}u[n-k]$ \\
DT: sum of buttons & $r[n]=\sum_{k=0}^{\infty}k\,\delta[n-k]$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{The DT sum stops at $n-1$: $r[1]=1$ adds only $u[0]$. Stopping at $n$ gives $r[n+1]$.}

\wk{8}{check the DT forms at a few $n$}
\stepbox{1. RUNNING SUM $\sum_{k\leq n-1}u[k]$}{$n=0$: nothing $=0$ \checkmark \quad $n=1$: $u[0]=1$ \checkmark \quad $n=3$: $u[0]+u[1]+u[2]=3$ \checkmark}
\stepdown
\stepbox{2. FIRST DIFFERENCE}{$r[0]-r[-1]=0$, \; $r[1]-r[0]=1$, \; $r[2]-r[1]=1$ $\Rightarrow$ $\keyres{u[n-1]}$}

\filbreak \subsubsection{Graphs from ramps and switches}
Walk left to right. At each \pA{corner}, add a ramp weighted by the \emph{change in slope}; at each \pD{jump}, a switch weighted by the jump:
$$x(t)=\sum\slot{pcA}{$\Delta$slope}\;r\big(t-\slot{pcA}{corner}\big)+\sum\slot{pcD}{jump}\;u\big(t-\slot{pcD}{where}\big)$$
$A\,r(t-t_0)$ is $0$ before $t_0$, then climbs with slope $A$.

\needspace{12\baselineskip}
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=g1,
xmin=-0.6, xmax=3.4, ymin=-0.3, ymax=2.6,
xtick={1,2,3}, ytick={1,2},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.2cm]
\addplot[uHi, thick] coordinates {(-0.4,0)(0,0)(2,2)(3.2,2)};
\addplot[only marks, mark=*, mark size=1.8pt, pcA] coordinates {(0,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcB] coordinates {(2,2)};
\end{axis}
\begin{axis}[sigax, at={(g1.east)}, anchor=west, xshift=0.5cm,
xmin=-0.6, xmax=2.8, ymin=-0.3, ymax=1.5,
xtick={1,2}, ytick={1},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.2cm]
\addplot[uHi, thick] coordinates {(-0.4,0)(0,0)(1,1)(2,0)(2.6,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcA] coordinates {(0,0)};
\addplot[only marks, mark=*, mark size=1.8pt, pcB] coordinates {(1,1)};
\addplot[only marks, mark=*, mark size=1.8pt, pcC] coordinates {(2,0)};
\end{axis}
\end{tikzpicture}

\wk{8}{rise $0\to2$ on $[0,2]$, then flat (left graph)}
\stepbox{1. PIECES (SLOPE BEFORE $\to$ AFTER)}{\pA{$t=0$: $0\to1$, change $+1$} \qquad \pB{$t=2$: $1\to0$, change $-1$}}
\stepdown
\stepbox{2. PLACE, CHECK}{$x(t)=\keyres{\pA{r(t)}\pB{-r(t-2)}}$ \qquad $t=1$: $1$ \checkmark \; $t=5$: $5-3=2$ \checkmark}

\wk{8}{a triangle (right graph)}
\stepbox{1. PIECES}{\pA{$t=0$: $0\to1$, $+1$} \qquad \pB{$t=1$: $1\to-1$, $-2$} \qquad \pC{$t=2$: $-1\to0$, $+1$}}
\stepdown
\stepbox{2. PLACE, CHECK}{$x(t)=\keyres{\pA{r(t)}\pB{-2r(t-1)}\pC{+r(t-2)}}$ \qquad $t=3$: $3-4+1=0$ \checkmark \why{slope changes sum to $0$}}

\wk{8}{(reverse) sketch $2r(t-1)-2r(t-3)$; then a jump plus ramps}
\stepbox{1. READ THE PIECES}{\pA{corner at $1$: slope $+2$} \qquad \pB{corner at $3$: slope back to $0$} $\Rightarrow$ $0$, then rises to $2(2)=4$, then flat at $\keyres{4}$}
\stepdown
\stepbox{2. JUMP OF $3$ AT $0$, THEN SLOPE $-1$ UNTIL $0$}{\pD{jump $+3$ at $0$}, \; \pA{corner at $0$: $-1$}, \; \pB{corner at $3$: $+1$} \why{$3-t=0$} \\ $x(t)=\keyres{\pD{3u(t)}\pA{-r(t)}\pB{+r(t-3)}}$}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. systems and interconnections}
\idea{A \term{system} is a machine: a signal goes in, a different one comes out, $x\to y$. A \term{difference equation} is the machine's recipe: how to cook $y[n]$ from inputs, and sometimes from its own past outputs.}

Three hookups:
\begin{itemize}
\item \term{Series}: an assembly line. $S_1$'s output is $S_2$'s input: \; substitute $S_1$ into $S_2$'s input slot.
\item \term{Parallel}: $x$ feeds both; outputs add: \; $y=\slot{pcA}{$y_1$}+\slot{pcB}{$y_2$}$.
\item \term{Feedback}: the output loops back through $S_2$ into the input. The machine hears its own past.
\end{itemize}

\needspace{12\baselineskip}
\noindent
\begin{tikzpicture}[node distance=0.55cm, font=\small]
\node (x1) {$x$};
\node[blk] (s1) [right=of x1] {$S_1$};
\node[blk] (s2) [right=of s1] {$S_2$};
\node (y1) [right=of s2] {$y$};
\draw[sig] (x1) -- (s1); \draw[sig] (s1) -- (s2); \draw[sig] (s2) -- (y1);
\node[font=\scriptsize, text=termHi, above=0.05cm of s1.north east, anchor=south] {series};
\node[below=0.9cm of x1] (x2) {$x$};
\node[blk, right=0.9cm of x2, yshift=0.45cm, draw=pcA] (p1) {$S_1$};
\node[blk, right=0.9cm of x2, yshift=-0.45cm, draw=pcB] (p2) {$S_2$};
\node[sumnode, right=0.7cm of x2, xshift=1.9cm] (sp) {$+$};
\node[right=0.5cm of sp] (y2) {$y$};
\draw[white!80] (x2) -- ++(0.45,0) coordinate (br);
\draw[sig] (br) |- (p1); \draw[sig] (br) |- (p2);
\draw[sig] (p1) -| (sp); \draw[sig] (p2) -| (sp); \draw[sig] (sp) -- (y2);
\node[font=\scriptsize, text=termHi, below=0.05cm of p2] {parallel};
\node[right=4.9cm of x1] (x3) {$x$};
\node[sumnode, right=0.4cm of x3] (sf) {$+$};
\node[blk, right=0.45cm of sf] (f1) {$S_1$};
\node[right=0.45cm of f1] (y3) {$y$};
\node[blk, below=0.45cm of f1] (f2) {$S_2$};
\draw[sig] (x3) -- (sf); \draw[sig] (sf) -- (f1); \draw[sig] (f1) -- (y3);
\draw[sig] ($(f1.east)!0.5!(y3.west)$) |- (f2);
\draw[sig] (f2) -| (sf);
\node[font=\scriptsize, text=termHi, above=0.05cm of f1] {feedback};
\end{tikzpicture}

\wk{8}{series: $S_1$: $w[n]=2x[n]$, then $S_2$: $y[n]=w[n]-w[n-1]$}
\stepbox{1. PIECES}{\pA{$w[n]=2x[n]$}, so \pA{$w[n-1]=2x[n-1]$} \why{replace every $n$ with $n-1$}}
\stepdown
\stepbox{2. PLACE IN $y[n]=\slot{pcA}{$w[n]$}-\slot{pcA}{$w[n-1]$}$}{$y[n]=\keyres{\pA{2x[n]}-\pA{2x[n-1]}}$}

\wk{8}{parallel: $S_1$: $2x[n]$, \; $S_2$: $x[n-1]$}
\stepbox{1. PLACE IN $\slot{pcA}{$y_1$}+\slot{pcB}{$y_2$}$}{$y[n]=\keyres{\pA{2x[n]}+\pB{x[n-1]}}$}

\wk{8}{feedback: $y[n]=x[n]+0.5\,y[n-1]$; press the button $x=\delta$, $y[-1]=0$}
\stepbox{1. RUN IT, ONE STEP AT A TIME}{$y[0]=1+0.5(0)=1$ \why{the press} \quad $y[1]=0+0.5(1)=0.5$ \why{only the echo} \quad $y[2]=0.25$ \quad $y[3]=0.125$}
\stepdown
\stepbox{2. PATTERN}{$y[n]=\keyres{(0.5)^n\,u[n]}$ \why{each echo is half the last}}

\filbreak \subsubsection{DT systems as difference equations}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.30\linewidth}p{0.36\linewidth}p{0.25\linewidth}@{}}
\term{System} & \term{Difference equation} & \term{What it does} \\\hline
unit delay & $y[n]=x[n-1]$ & one step late \\
gain & $y[n]=a\,x[n]$ & volume knob \\
first difference & $y[n]=x[n]-x[n-1]$ & change since last \\
3-point moving average & $y[n]=\tfrac13\sum_{k=0}^{2}x[n-k]$ & smooths \\
accumulator & $y[n]=\sum_{k=-\infty}^{n}x[k]$ & running total \\
accumulator, recursive & $y[n]=y[n-1]+x[n]$ & same total \\
bank balance & $y[n]=1.01\,y[n-1]+x[n]$ & $1\%$ interest $+$ deposit \\
\end{tabular}}
\par\vspace{2pt}
The accumulator is the running-total machine: button in, switch out; switch in, ramp out.

\term{Nonrecursive} (FIR): inputs only. \term{Recursive} (IIR): also its own past outputs; needs a start value like $y[-1]=0$.

\term{Block diagram parts}: adder (circle) $=$ sum of inputs; \; gain (box $a$) $=a\cdot$input; \; unit delay (box $D$) $=$ one-step memory, $x[n]\to x[n-1]$; \; branch dot copies a signal.

\term{Diagram $\leftrightarrow$ equation}: each wire is a piece. One $D$ per shift, one gain per coefficient, one adder per sum.
\trap{A $D$ that feeds $y[n]$ back into the adder means feedback: the equation has $y[n-1]$ (recursive).}

\needspace{14\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node (xin) at (0,0) {$x[n]$};
\node[blk] (d1) at (2.1,0) {$D$};
\node[blk] (d2) at (4.0,0) {$D$};
\fill[pcA] (1.1,0) circle (1.6pt); \fill[pcB] (3.05,0) circle (1.6pt);
\draw[sig] (xin) -- (d1); \draw[sig] (d1) -- (d2);
\draw[white!80] (d2.east) -- (5.0,0);
\fill[pcC] (5.0,0) circle (1.6pt);
\node[sumnode] (s) at (3.05,-1.1) {$+$};
\draw[-{Latex[length=1.6mm]}, pcA] (1.1,0) |- (s.west);
\draw[-{Latex[length=1.6mm]}, pcB] (3.05,0) -- (s.north);
\draw[-{Latex[length=1.6mm]}, pcC] (5.0,0) |- (s.east);
\node[above, text=pcA] at (1.1,0.15) {$x[n]$};
\node[above, text=pcB] at (3.05,0.25) {$x[n-1]$};
\node[above, text=pcC] at (5.0,0.05) {$x[n-2]$};
\node[blk, draw=pcD] (g) at (3.05,-2.1) {$\frac13$};
\draw[sig] (s) -- (g);
\draw[sig] (g) -- (4.6,-2.1) node[right] {$y[n]$};
\node[text=termHi] at (0.6,-2.1) {moving average};
\end{tikzpicture}

\wk{8}{(diagram to equation) read the moving-average diagram}
\stepbox{1. PIECES (NAME EACH WIRE INTO THE ADDER)}{\pA{$x[n]$} \qquad after one $D$: \pB{$x[n-1]$} \qquad after two: \pC{$x[n-2]$} \qquad gain \pD{$\frac13$}}
\stepdown
\stepbox{2. TEMPLATE}{$y[n]=\slot{pcD}{gain}\big(\slot{pcA}{wire}+\slot{pcB}{wire}+\slot{pcC}{wire}\big)$}
\stepdown
\stepbox{3. PLACE}{$y[n]=\keyres{\pD{\tfrac13}\big(\pA{x[n]}+\pB{x[n-1]}+\pC{x[n-2]}\big)}$}

\needspace{12\baselineskip}
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node (x) at (0,0) {$x[n]$};
\node[blk, draw=pcA] (g1) at (1.2,0) {$2$};
\node[sumnode] (s) at (2.4,0) {$+$};
\fill[white!80] (3.9,0) circle (1.3pt);
\node (y) at (5.0,0) {$y[n]$};
\node[blk, draw=pcC] (d) at (3.9,-1.0) {$D$};
\node[blk, draw=pcB] (g2) at (2.4,-1.0) {$-0.5$};
\draw[sig] (x) -- (g1); \draw[sig] (g1) -- (s); \draw[sig] (s) -- (y);
\draw[sig] (3.9,0) -- (d.north);
\draw[sig] (d.west) -- (g2.east);
\draw[sig] (g2.north) -- (s.south);
\node[below, text=pcC] at (3.9,-1.3) {$y[n-1]$};
\end{tikzpicture}

\wk{8}{(equation to diagram) $y[n]=2x[n]-0.5\,y[n-1]$}
\stepbox{1. PIECES (ONE BLOCK PER PIECE)}{input gain \pA{$2$} \qquad \pC{$y[n-1]$}: one $D$ on the output side (feedback) \qquad its gain \pB{$-0.5$}}
\stepdown
\stepbox{2. PLACE (ABOVE)}{$x\to$\pA{[2]}$\to(+)\to y$; \; from $y$: dot $\to$\pC{[$D$]}$\to$\pB{[$-0.5$]}$\to$ back into $(+)$}

\wk{8}{run the moving average: $x[0..2]=3,6,9$, others $0$}
\stepbox{1. SLIDE A 3-SAMPLE WINDOW, DIVIDE BY 3}{$y[0]=\frac{3}{3}=\keyres{1}$ \quad $y[1]=\frac{6+3}{3}=\keyres{3}$ \quad $y[2]=\frac{9+6+3}{3}=\keyres{6}$ \quad $y[3]=\frac{9+6}{3}=\keyres{5}$ \quad $y[4]=\keyres{3}$ \quad then $0$}

\wk{8}{run the accumulator $y[n]=y[n-1]+x[n]$ with the switch, $y[-1]=0$}
\stepbox{1. RUN IT}{$y[0]=0+1=1$ \quad $y[1]=1+1=2$ \quad $y[2]=3$ $\Rightarrow$ $(n+1)u[n]=\keyres{r[n+1]}$ \why{running total of a switch: a ramp}}
\stepdown
\stepbox{2. CHECK WITH THE SUM FORM}{$y[2]=u[0]+u[1]+u[2]=3$ \checkmark}

% ------------------------------------------------------------ 12
\filbreak \subsection{12. system properties}
\idea{Properties are yes/no questions about a machine. Each is separate: a machine can pass one and fail another.}

{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.24\linewidth}p{0.714\linewidth}@{}}
\term{Property} & \term{In plain English} \\\hline
memoryless & It only looks at \emph{now}. \\
causal & It cannot see the future; it may remember the past. \\
stable (BIBO) & It does not blow up: input under a ceiling $\Rightarrow$ output under a ceiling. \\
invertible & You can undo it: different inputs give different outputs. \\
time invariant & It ignores the clock: delay in $\Rightarrow$ same output, delayed. \\
linear & Scale in $\to$ scale out, add in $\to$ add out: $ax_1+bx_2\to ay_1+by_2$. \\
\end{tabular}}

\filbreak \subsubsection{Quick red flags}
\trap{\textbf{Linearity}: put in $x=0$; a linear machine gives $y=0$. The $+3$ in $2x+3$ fails.}
\trap{\textbf{Time invariance}: an $n$ or $t$ \emph{outside} $x(\cdot)$ ($n\,x[n]$) reads the clock. Scaling or flipping inside ($x(2t)$, $x(-t)$) also fails.}
\trap{\textbf{Causality}: an advance like $x[n+1]$. And $y(t)=x(-t)$: at $t=-1$ it needs $x(1)$.}
\trap{\textbf{Stability}: an $n$ multiplying $x$, or a sum with no end, can blow up.}

\filbreak \subsubsection{Memory and causality: read the time stamps}
Every $x[\cdot]$ on the right carries a time stamp. Color each one: \pA{now} ($n$), \pB{past} ($n-1$, \ldots), \pC{future} ($n+1$, \ldots).
$$\text{memoryless}\iff\text{every stamp is }\slot{pcA}{now} \qquad \text{causal}\iff\text{no stamp is }\slot{pcC}{future}$$

\wk{8}{memory, causality, invertibility}
\stepbox{1. PLACE THE STAMPS}{$y[n]=\pA{x[n]}+\pB{x[n-1]}$: a \pB{past} stamp $\Rightarrow$ \warn{memory}, \keyres{causal}\\
$y[n]=\pC{x[n+1]}$: a \pC{future} stamp $\Rightarrow$ \warn{not causal}}
\stepdown
\stepbox{2. INVERTIBLE? TRY TO SOLVE FOR $x$}{$y=2x$: $x=\frac{y}{2}$ \keyres{invertible} \qquad $y=x^2$: $\pm1\to1$ \warn{not invertible} \why{the sign is lost}}

\filbreak \subsubsection{Time invariance: two paths, then compare}
\term{Path 1}: delay the input, then run the machine --- change only the \pA{inside of $x$}. \; \term{Path 2}: run the machine, then delay the output --- change \emph{every} $n$, including any \pC{lone $n$}. Same result $\Rightarrow$ time invariant.

\wk{8}{three machines}
\stepbox{1. PLACE: PATH 1 \quad vs \quad PATH 2}{$\pC{n}\,x[\pA{n}]$: \; $n\,x[n-n_0]$ \; vs \; $(n-n_0)\,x[n-n_0]$ $\Rightarrow$ \warn{time varying} \why{the lone $n$}\\
$x(2t)$: \; $x(2t-t_0)$ \; vs \; $x(2t-2t_0)$ $\Rightarrow$ \warn{time varying}\\
$x[n-1]$: \; $x[n-1-n_0]$ \; vs \; $x[n-n_0-1]$ $\Rightarrow$ \keyres{time invariant}}

\filbreak \subsubsection{Linearity: combine first, or combine after?}
\term{Path 1}: mix the inputs ($ax_1+bx_2$), then run. \; \term{Path 2}: run each, then mix the outputs. Linear means they agree.

\wk{8}{$y=2x+3$ and $y=n\,x[n]$}
\stepbox{1. $2x+3$}{quick test: $x=0\to3\neq0$. \; Path 1: $2ax_1+2bx_2+3$ \; vs \; Path 2: $2ax_1+2bx_2+3a+3b$ $\Rightarrow$ \warn{not linear} \why{incrementally linear}}
\stepdown
\stepbox{2. $n\,x[n]$}{Path 1: $a\,n\,x_1+b\,n\,x_2$ \; $=$ \; Path 2 $\Rightarrow$ \keyres{linear} \why{yet time varying: separate properties}}

\filbreak \subsubsection{Stability with a ceiling $B$}
\idea{\term{BIBO}: bounded in, bounded out. ``Bounded'' means a ceiling: $\lvert x[n]\rvert\leq B<\infty$. Stable means the output has a ceiling too. This is Lesson 1 again: is the signal's size finite?}
\term{To show stable}: take $\lvert\,\cdot\,\rvert$ of the equation, split with $\lvert a+b\rvert\leq\lvert a\rvert+\lvert b\rvert$ and $\lvert cx\rvert=\lvert c\rvert\lvert x\rvert$, then replace each $\lvert x[\cdot]\rvert$ (shifted ones too) with $B$:
$$\lvert y\rvert\leq\slot{pcA}{$\lvert c_1\rvert$}B+\slot{pcB}{$\lvert c_2\rvert$}B+\cdots$$
A \keyres{finite number} (no $n$, no endless sum) means stable. \; \term{To show unstable}: one capped input (like $x=1$ or $u[n]$) with an unbounded output.
\trap{$\lvert n\,x[n]\rvert\leq\lvert n\rvert B$ grows with $n$. The accumulator adds another $B$ every step.}

\wk{8}{five machines}
\stepbox{1. PLACE THE COEFFICIENTS}{$\pA{2}x[n]+\pB{1}x[n-1]$: \; $\leq\pA{2}B+\pB{1}B=3B$ $\Rightarrow$ \keyres{stable}\\
moving average: \; $\leq\frac13(B+B+B)=B$ $\Rightarrow$ \keyres{stable}\\
$e^{x[n]}$: \; $-B\leq x\leq B$ $\Rightarrow$ $\lvert y\rvert\leq e^{B}$ $\Rightarrow$ \keyres{stable}}
\stepdown
\stepbox{2. COUNTEREXAMPLES}{$n\,x[n]$ with $x=1$: $y=n$, unbounded $\Rightarrow$ \warn{not stable}\\
accumulator with $u[n]$: $y=n+1$ $\Rightarrow$ \warn{not stable}}
\stepdown
\stepbox{3. RECURSIVE $y=0.5\,y[n-1]+x$}{unroll: $y[n]=\sum_{k\geq0}(0.5)^k x[n-k]$ $\Rightarrow$ $\lvert y\rvert\leq B\cdot\frac{1}{1-0.5}=2B$ \keyres{stable} \why{with $1.01$ the echoes grow: unstable}}

\filbreak \subsubsection{Properties of common DT systems}
{\small\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}l|c|c|c|c|c@{}}
\term{System} & \term{Mless} & \term{Causal} & \term{Linear} & \term{TI} & \term{Stable} \\\hline
$x[n-1]$ & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
$x[n]-x[n-1]$ & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
moving average & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
accumulator & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \warn{no} \\
$n\,x[n]$ & \keyres{yes} & \keyres{yes} & \keyres{yes} & \warn{no} & \warn{no} \\
$x[n]^2$ & \keyres{yes} & \keyres{yes} & \warn{no} & \keyres{yes} & \keyres{yes} \\
$2x[n]+3$ & \keyres{yes} & \keyres{yes} & \warn{no} & \keyres{yes} & \keyres{yes} \\
$x[n+1]$ & \warn{no} & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
$x[2n]$ & \warn{no} & \warn{no} & \keyres{yes} & \warn{no} & \keyres{yes} \\
$x[-n]$ & \warn{no} & \warn{no} & \keyres{yes} & \warn{no} & \keyres{yes} \\
$0.5\,y[n-1]+x[n]$ & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
\end{tabular}}
\par\vspace{2pt}
Mless $=$ memoryless; TI $=$ time invariant; the recursive system starts at rest.

\trap{The properties are separate: linear but time varying ($n\,x[n]$); stable but not causal ($x[n+1]$).}

\end{multicols}

\makeatother
```