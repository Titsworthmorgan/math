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
\begin{tabular}{@{}p{0.22\linewidth}p{0.74\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
sampling & $x[n]=x(nT_s)$ \\
sampling rate & $f_s=\dfrac{1}{T_s}$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{2--3. Sinusoids}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
shift & $x(t-t_0)$: right (delay) if $t_0>0$ \\
reversal & $x(-t)$: mirror about $t=0$ \\
scaling & $x(at)$: compress if $\lvert a\rvert>1$ \\
point map for $x(at+b)$ & $t_{\text{new}}=\dfrac{t_{\text{old}}-b}{a}$ \st\\
undo $y(t)=x(at+b)$ & $x(t)=y\Big(\dfrac{t-b}{a}\Big)$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{7. Periodic signals}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
CT test & $x(t+T)=x(t)$ \\
DT test & $x[n+N]=x[n]$, $N$ an integer \\
DT sinusoid period & $\dfrac{\hat\omega}{2\pi}=\dfrac{m}{N}$ in lowest terms \st\\
sum of two periodic signals & $\mathrm{lcm}$ of the two periods \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{8. Even and odd}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
even test & $x(-t)=x(t)$ \\
odd test & $x(-t)=-x(t)$ \\
even part & $\mathcal{E}v\{x\}=\dfrac{x(t)+x(-t)}{2}$ \st\\
odd part & $\mathcal{O}d\{x\}=\dfrac{x(t)-x(-t)}{2}$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{9. Complex exponentials}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
CT form & $x(t)=Ce^{at}$, \; $a=\sigma+j\omega$ \\
real part & $\lvert C\rvert e^{\sigma t}\cos(\omega t+\phi)$, \; $\phi=\angle C$ \\
DT form & $x[n]=C\alpha^n$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{10. Button, switch, ramp}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
unit delay $D$ & $x[n]\to x[n-1]$ \\
first difference & $y[n]=x[n]-x[n-1]$ \\
3-point moving average & $y[n]=\frac13\big(x[n]+x[n-1]+x[n-2]\big)$ \\
accumulator & $y[n]=y[n-1]+x[n]$ \\
bounded input & $\lvert x[n]\rvert\leq B<\infty$ \\
stable if & $\lvert y[n]\rvert\leq$ a finite number \\
\end{tabular}}

\filbreak \subsection{system property tests}
{\small\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}p{0.19\linewidth}p{0.40\linewidth}p{0.35\linewidth}@{}}
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
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
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

% ------------------------------------------------------------ 1
\filbreak \subsection{1. signals and sampling}
\idea{A \term{signal} is anything that changes over time and carries information: a voltage, a sound, a temperature. \term{Sampling} is taking snapshots: one photo every $T_s$ seconds, like a strobe light.}

\begin{itemize}
\item \term{Continuous time} (CT): $x(t)$, round brackets. $t$ can be any real number. The movie.
\item \term{Discrete time} (DT): $x[n]$, square brackets. $n$ is an \keyres{integer only}. The stack of photos.
\end{itemize}
\trap{$x[2.5]$ does not exist. Between two samples, a DT signal is not zero. It is simply not defined.}

\term{From movie to photos}: photo number $n$ is taken at time $t=nT_s$, so
$$x[n]=x(nT_s)$$
$T_s$ is the \term{sampling period} (seconds between photos). $f_s=\frac{1}{T_s}$ is the \term{sampling rate} (photos per second).

\nopagebreak
\noindent
\begin{tikzpicture}[>=Latex, scale=1]
\begin{axis}[sigax,
xmin=-0.7, xmax=11.4, ymin=-1.55, ymax=1.55,
xtick={2,4,6,8,10}, ytick={-1,1},
xticklabel style={anchor=north west, xshift=1.5pt},
xlabel={$n$}, ylabel={$x[n]$},
width=9.2cm, height=4.6cm]
\addplot[uHi, thick, smooth, samples=201, domain=-0.5:11.1] {sin(deg(x))};
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.5pt, samples=11, domain=0:10] {sin(deg(x))};
\end{axis}
\end{tikzpicture}

The curve is the movie (CT). The stems are the photos (DT).

\wk{14}{sample $x(t)=t^2$ with $T_s=0.5$ s}
\stepbox{1. PUT $t=nT_s$}{$x[n]=x(0.5n)=(0.5n)^2$}
\stepdown
\stepbox{2. SIMPLIFY}{$(0.5n)^2=0.5^2\cdot n^2=0.25n^2$}
\stepdown
\stepbox{3. EVALUATE EACH SAMPLE}{$x[0]=0$, \; $x[1]=0.25$, \; $x[2]=0.25\cdot4=1$, \; $x[3]=0.25\cdot9=2.25$}
\stepdown
\stepbox{4. CHECK ONE SAMPLE}{$n=2$ is $t=2\cdot0.5=1$ s. \; $x(1)=1^2=1$ \checkmark}

\wk{10}{(reverse) $x[n]=0.25n^2$ came from $T_s=0.5$ s. Find $x(t)$}
\stepbox{1. SOLVE $t=nT_s$ FOR $n$}{$n=\dfrac{t}{T_s}=\dfrac{t}{0.5}=2t$}
\stepdown
\stepbox{2. SUBSTITUTE}{$x(t)=0.25(2t)^2$}
\stepdown
\stepbox{3. SIMPLIFY}{$0.25\cdot4t^2=\keyres{t^2}$}

% ------------------------------------------------------------ 2
\filbreak \subsection{2. sinusoids}
\idea{Picture a wheel spinning at a steady speed, with a dot on its rim. The dot's height over time is a sinusoid. How big the wheel is: \term{amplitude}. How fast it spins: \term{frequency}. Where the dot starts: \term{phase}.}

$$x(t)=A\cos(\omega t+\phi)$$
\begin{itemize}
\item $A$: \term{amplitude}. The peak. The signal swings between $-A$ and $A$.
\item $\omega$: \term{angular frequency}, in rad/s. How many radians the wheel turns each second. $\omega=2\pi f$.
\item $f$: \term{frequency}, in Hz. Full turns per second.
\item $T=\frac{1}{f}=\frac{2\pi}{\omega}$: the \term{period}. Seconds for one full turn.
\item $\phi$: \term{phase}, in radians. A head start (or late start) for the dot.
\end{itemize}
\term{Phase as a time shift}: a late start is the same as sliding the whole wave right.
$$A\cos(\omega t+\phi)=A\cos\big(\omega(t-t_0)\big), \qquad t_0=-\frac{\phi}{\omega}$$
A negative $\phi$ gives $t_0>0$: the wave is \term{delayed} (it moves right).

\trap{Put the signal in the form $A\cos(\omega t+\phi)$ before you read off the parts. Change a sine with $\sin\theta=\cos(\theta-\frac{\pi}{2})$. Change a negative $A$ with $-A\cos\theta=A\cos(\theta+\pi)$.}

\filbreak \subsubsection{Which way? --- between the sinusoid numbers}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$\omega\to f$ & divide by $2\pi$: $f=\dfrac{\omega}{2\pi}$ \st\\
$f\to\omega$ & multiply by $2\pi$: $\omega=2\pi f$ \\
$f\to T$ & reciprocal: $T=\dfrac{1}{f}$ \st\\
$T\to\omega$ & $\omega=\dfrac{2\pi}{T}$ \st\\
$\phi\to t_0$ & $t_0=-\dfrac{\phi}{\omega}$ \st\\
$t_0\to\phi$ & $\phi=-\omega t_0$ \\
\end{tabular}}

\wk{16}{read the parts of $x(t)=3\cos\big(4\pi t-\frac{\pi}{3}\big)$}
\stepbox{1. MATCH THE FORM $A\cos(\omega t+\phi)$}{$A=\keyres{3}$, \quad $\omega=\keyres{4\pi}$ rad/s, \quad $\phi=\keyres{-\frac{\pi}{3}}$ rad}
\stepdown
\stepbox{2. FREQUENCY}{$f=\dfrac{\omega}{2\pi}=\dfrac{4\pi}{2\pi}=\keyres{2}$ Hz}
\stepdown
\stepbox{3. PERIOD}{$T=\dfrac{1}{f}=\dfrac{1}{2}=\keyres{0.5}$ s}
\stepdown
\stepbox{4. TIME SHIFT}{$t_0=-\dfrac{\phi}{\omega}=-\dfrac{-\pi/3}{4\pi}=\dfrac{\pi/3}{4\pi}=\dfrac{1}{3\cdot4}=\keyres{\frac{1}{12}}$ s}
\stepdown
\stepbox{5. REWRITE AS A SHIFT}{$x(t)=3\cos\big(4\pi(t-\tfrac{1}{12})\big)$: delayed by $\frac{1}{12}$ s}
\stepdown
\stepbox{6. CHECK}{$4\pi\cdot\frac{1}{12}=\frac{\pi}{3}$. \; So $4\pi(t-\frac{1}{12})=4\pi t-\frac{\pi}{3}$ \checkmark}

\wk{14}{(sine first) read the parts of $x(t)=4\sin(10t)$}
\stepbox{1. CHANGE SINE TO COSINE}{$\sin\theta=\cos(\theta-\frac{\pi}{2})$, \; so $x(t)=4\cos\big(10t-\frac{\pi}{2}\big)$}
\stepdown
\stepbox{2. MATCH THE FORM}{$A=4$, \quad $\omega=10$ rad/s, \quad $\phi=-\frac{\pi}{2}$}
\stepdown
\stepbox{3. FREQUENCY AND PERIOD}{$f=\dfrac{10}{2\pi}=1.59$ Hz. \quad $T=\dfrac{2\pi}{10}=0.628$ s}

\wk{16}{(reverse) build $x(t)$ from $A=2$, $T=0.4$ s, first peak at $t=0.1$ s}
\stepbox{1. PERIOD TO $\omega$}{$\omega=\dfrac{2\pi}{T}=\dfrac{2\pi}{0.4}=5\pi$ rad/s}
\stepdown
\stepbox{2. PEAK TIME IS THE SHIFT}{A cosine peaks where its angle is $0$. The first peak is at $t=0.1$, so $t_0=0.1$ s.}
\stepdown
\stepbox{3. SHIFT TO PHASE}{$\phi=-\omega t_0=-5\pi\cdot0.1=-0.5\pi=-\frac{\pi}{2}$}
\stepdown
\stepbox{4. ASSEMBLE}{$x(t)=\keyres{2\cos\big(5\pi t-\frac{\pi}{2}\big)}$}
\stepdown
\stepbox{5. CHECK AT $t=0.1$}{Angle: $5\pi(0.1)-\frac{\pi}{2}=\frac{\pi}{2}-\frac{\pi}{2}=0$. \; $2\cos0=2$, the peak \checkmark}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. DT sinusoids and DT frequency}
\idea{Photograph the spinning wheel with a strobe. In the photos, all you can see is \emph{how far the wheel turned between photos}. That angle per photo is the \term{DT frequency} $\hat\omega$, in radians per sample.}

Sample $A\cos(\omega t+\phi)$ at $t=nT_s$:
$$x[n]=A\cos(\omega nT_s+\phi)=A\cos(\hat\omega n+\phi), \qquad \hat\omega=\omega T_s=\dfrac{2\pi f}{f_s}$$

\term{Aliasing} is the wagon-wheel effect in old films. A wheel that turns $\frac{\pi}{4}$ between photos looks identical to one that turns $\frac{\pi}{4}+2\pi$: the extra full turn is invisible. So $\hat\omega$ and $\hat\omega+2\pi$ give the \keyres{same photos}, and $f$ and $f+f_s$ give the same samples.

\filbreak \subsubsection{Which way? --- CT frequency or DT frequency}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$f$, $f_s\to\hat\omega$ & $\hat\omega=\dfrac{2\pi f}{f_s}$ \st\\
$\omega$, $T_s\to\hat\omega$ & $\hat\omega=\omega T_s$ \\
$\hat\omega$, $f_s\to f$ & $f=\dfrac{\hat\omega f_s}{2\pi}$ \; (the lowest answer) \st\\
\end{tabular}}
\par\vspace{2pt}
\trap{DT to CT has more than one answer. Any alias $f+kf_s$ fits the same photos.}

\wk{14}{sample $x(t)=\cos(200\pi t)$ at $f_s=800$ Hz}
\stepbox{1. READ $\omega$ AND $f$}{$\omega=200\pi$ rad/s. \quad $f=\dfrac{200\pi}{2\pi}=100$ Hz}
\stepdown
\stepbox{2. SAMPLING PERIOD}{$T_s=\dfrac{1}{800}$ s}
\stepdown
\stepbox{3. DT FREQUENCY}{$\hat\omega=\omega T_s=\dfrac{200\pi}{800}=\keyres{\frac{\pi}{4}}$ rad/sample}
\stepdown
\stepbox{4. THE DT SIGNAL}{$x[n]=\keyres{\cos\big(\frac{\pi}{4}n\big)}$}

\wk{12}{(reverse) $\hat\omega=\frac{\pi}{4}$ at $f_s=800$ Hz. Find $f$}
\stepbox{1. FORMULA}{$f=\dfrac{\hat\omega f_s}{2\pi}$}
\stepdown
\stepbox{2. SUBSTITUTE}{$f=\dfrac{(\pi/4)\cdot800}{2\pi}=\dfrac{200\pi}{2\pi}=\keyres{100}$ Hz}

\wk{12}{the alias: does $f=900$ Hz give the same samples?}
\stepbox{1. DT FREQUENCY}{$\hat\omega=\dfrac{2\pi\cdot900}{800}=\dfrac{1800\pi}{800}=\dfrac{9\pi}{4}$}
\stepdown
\stepbox{2. REMOVE A WHOLE TURN}{$\dfrac{9\pi}{4}-2\pi=\dfrac{9\pi}{4}-\dfrac{8\pi}{4}=\dfrac{\pi}{4}$}
\stepdown
\stepbox{3. COMPARE}{Same $\hat\omega$ as $100$ Hz $\Rightarrow$ \warn{same samples}. \; $900=100+800=f+f_s$.}

% ------------------------------------------------------------ 4
\filbreak \subsection{4. energy and power}
\idea{Think of $\lvert x\rvert^2$ as \term{money spent per day}, forever.
\begin{itemize}
\item \term{Energy} is your \keyres{total} spending, over all time.
\item \term{Power} is your \keyres{average} spending per day, over all time.
\end{itemize}
Spend \$100 once, then stop: the total is finite, and the average over infinitely many days is $0$. Spend \$5 every day forever: the total is infinite, and the average is \$5.}

\subsubsection{Why square?}
Picture $x$ as a voltage across a $1\,\Omega$ resistor. Electrical power is $P=V\cdot I$, and Ohm's law gives $I=V/R$, so $P=V^2/R=x^2$. The signal shows up \emph{twice}: once as the voltage, once as the current it drives.

Squaring also makes sense of the sign. A toaster heats up whichever way the current flows. A negative voltage delivers energy just like a positive one. Squaring turns every value non-negative, so negatives stop cancelling positives:
\begin{itemize}
\item positive stays positive: $(0.5)^2=0.25$
\item negative turns positive: $(-0.5)^2=0.25$
\item zero stays zero
\end{itemize}
Without squaring, $\cos(t)$ would average to $0$, as if a wall outlet held nothing.

\subsubsection{The two formulas, in English}
\term{Total energy}: add up $\lvert x\rvert^2$ over all time. \keyres{No dividing.}
$$E_\infty=\int_{-\infty}^{\infty}\lvert x(t)\rvert^2\,dt \qquad E_\infty=\sum_{n=-\infty}^{\infty}\lvert x[n]\rvert^2$$
\term{Average power}: look through a \term{window} from $-T$ to $T$. Add up $\lvert x\rvert^2$ inside it, divide by the window's length $2T$, then let the window grow forever.
$$P_\infty=\lim_{T\to\infty}\frac{1}{2T}\int_{-T}^{T}\lvert x(t)\rvert^2\,dt$$
In DT, the window $n=-N\ldots N$ holds $2N+1$ samples (count $-2,-1,0,1,2$: that is $5=2(2)+1$):
$$P_\infty=\lim_{N\to\infty}\frac{1}{2N+1}\sum_{n=-N}^{N}\lvert x[n]\rvert^2$$
\term{Periodic shortcut}: one period tells the whole story. $P=\frac{1}{T}\int_{\text{one period}}\lvert x(t)\rvert^2\,dt$.

\filbreak \subsubsection{Energy vs power, side by side}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.18\linewidth}p{0.36\linewidth}p{0.40\linewidth}@{}}
 & \term{Energy} & \term{Power} \\\hline
means & the total & the average \\
divide by $2T$? & \warn{no} & \keyres{yes} \\
money & lifetime spending & spending per day \\
constant $x=4$ & $\lim 32T=\infty$ & $\lim\frac{32T}{2T}=16$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Rule: a final $E_\infty$ or $P_\infty$ never contains $T$ or $N$.} If a $T$ is still there, you have not taken the limit yet.

\filbreak \subsubsection{Which one to compute? Classify by shape first}
{\small
\begin{tabular}{@{}p{0.36\linewidth}p{0.60\linewidth}@{}}
\term{The signal} & \term{Result} \\\hline
dies out, or has finite length & \term{energy signal}: $E_\infty$ finite, $P_\infty=0$ \\[2pt]
periodic, or constant & \term{power signal}: $P_\infty$ finite, $E_\infty=\infty$ \\[2pt]
grows without limit ($x=t$) & \term{neither}: $E_\infty=\infty$, $P_\infty=\infty$ \\
\end{tabular}}
\par\vspace{2pt}
\term{Why an energy signal has $P_\infty=0$}: its total is a fixed number $E$. Divide it by a window growing to $\infty$: $\lim\frac{E}{2T}=0$. \$50 spread over a million days is almost nothing per day.

\term{Why a constant has $E_\infty=\infty$ but finite power}: the energy in the window grows \emph{at the same rate} as the window, so $T$ cancels in the ratio. ``$c^2$ per second, forever'' is a \emph{rate}, which is the power. The total is $\infty$.

\term{Why you can shrink the limits}: where $x=0$, it adds nothing. Once the window covers every non-zero part, widening it only adds zeros. In DT, that happens once $N$ reaches the stem \keyres{farthest from $n=0$}, on either side.

\filbreak \subsubsection{Traps from practice}
\trap{\textbf{Square first.} Adding raw stem values lets negatives cancel. Check: $E_\infty=0$ is only possible if the signal is $0$ everywhere.}
\trap{\textbf{Energy is not power.} ``$16$ forever'' is the power. The energy is the total, $\infty$.}
\trap{\textbf{$T$ is not $t$.} $t$ disappears when you integrate. $T$ is what goes to $\infty$: write $\lim_{T\to\infty}$.}
\trap{\textbf{$\frac{c}{T}$ is not $cT$.} Dividing by $T$ puts $T$ in the denominator, and then $\frac{c}{T}\to0$, not $c$.}
\trap{\textbf{$dt$, not $\Delta t$.} $dt$ also tells you which letter is the variable.}
\trap{\textbf{Write the label.} Energy signal, power signal, or neither, not ``constant'' or ``growth.''}

\wk{14}{pulse: $x(t)=2$ for $0\leq t\leq3$, $0$ elsewhere}
\stepbox{1. SQUARE}{$\lvert x(t)\rvert^2=2^2=4$ on $[0,3]$. $0$ elsewhere.}
\stepdown
\stepbox{2. LIMITS SHRINK TO WHERE $x\neq0$}{$E_\infty=\int_0^3 4\,dt$ \; \why{outside $[0,3]$, $x=0$ adds nothing}}
\stepdown
\stepbox{3. ANTIDERIVATIVE}{$F(t)=4t$}
\stepdown
\stepbox{4. TOP MINUS BOTTOM}{$4(3)-4(0)=\keyres{12}$ \; \why{check: $A^2D=4\cdot3$}}
\stepdown
\stepbox{5. POWER}{$P_\infty=\lim\limits_{T\to\infty}\dfrac{12}{2T}=0$ $\Rightarrow$ energy signal}

\wk{18}{decaying exponential: $x(t)=3e^{-2t}u(t)$}
\stepbox{1. WHERE IS IT NOT ZERO?}{The switch $u(t)$ is off for $t<0$. So integrate from $0$ to $\infty$.}
\stepdown
\stepbox{2. SQUARE}{$\big(3e^{-2t}\big)^2=3^2\cdot\big(e^{-2t}\big)^2=9e^{-4t}$ \; \why{double the exponent}}
\stepdown
\stepbox{3. SET UP}{$E_\infty=\lim\limits_{b\to\infty}\int_0^b9e^{-4t}\,dt$}
\stepdown
\stepbox{4. ANTIDERIVATIVE}{$F(t)=\dfrac{9}{-4}e^{-4t}=-2.25e^{-4t}$}
\stepdown
\stepbox{5. TOP ($t=b$), THEN $b\to\infty$}{$F(b)=-2.25e^{-4b}\to-2.25(0)=0$}
\stepdown
\stepbox{6. BOTTOM ($t=0$)}{$F(0)=-2.25e^{0}=-2.25(1)=-2.25$}
\stepdown
\stepbox{7. TOP MINUS BOTTOM}{$E_\infty=0-(-2.25)=\keyres{2.25}$ \; $\Rightarrow$ energy signal}

\wk{16}{DT geometric: $x[n]=\big(\frac12\big)^nu[n]$}
\stepbox{1. WHERE IS IT NOT ZERO?}{The switch $u[n]$ is off for $n<0$. So sum from $n=0$.}
\stepdown
\stepbox{2. SQUARE}{$\Big(\big(\tfrac12\big)^n\Big)^2=\big(\tfrac12\big)^{2n}=\big(\tfrac14\big)^n$}
\stepdown
\stepbox{3. SET UP}{$E_\infty=\sum_{n=0}^{\infty}\big(\tfrac14\big)^n$ \; \why{a geometric sum with $r=\frac14$}}
\stepdown
\stepbox{4. GEOMETRIC SUM FORMULA}{$\dfrac{1}{1-r}=\dfrac{1}{1-\frac14}=\dfrac{1}{\frac34}=\keyres{\frac43}$}
\stepdown
\stepbox{5. CHECK WITH THE FIRST TERMS}{$1+0.25+0.0625+0.0156=1.328$, close to $1.333$ \checkmark}

\wk{18}{sinusoid: $x(t)=4\cos(3t)$}
\stepbox{1. SQUARE}{$\lvert x\rvert^2=16\cos^2(3t)$ \; \why{never negative now}}
\stepdown
\stepbox{2. USE $\cos^2\theta=\frac{1+\cos2\theta}{2}$}{$16\cdot\dfrac{1+\cos(6t)}{2}=8+8\cos(6t)$}
\stepdown
\stepbox{3. AVERAGE EACH TERM}{The constant $8$ averages to $8$. \; $8\cos(6t)$ averages to $0$ \why{equal area above and below $0$}.}
\stepdown
\stepbox{4. POWER}{$P_\infty=8+0=\keyres{8}$}
\stepdown
\stepbox{5. CHECK WITH THE SHORTCUT}{$\dfrac{A^2}{2}=\dfrac{4^2}{2}=\dfrac{16}{2}=8$ \checkmark \; $E_\infty=\infty$ $\Rightarrow$ power signal}

\wk{14}{constant: $x(t)=3$ for all $t$}
\stepbox{1. SQUARE}{$\lvert x\rvert^2=9$}
\stepdown
\stepbox{2. ENERGY IN THE WINDOW $[-T,T]$}{$\int_{-T}^{T}9\,dt=9T-9(-T)=18T$ \; \why{watch the minus-a-negative}}
\stepdown
\stepbox{3. ENERGY: LET $T\to\infty$, NO DIVIDING}{$E_\infty=\lim\limits_{T\to\infty}18T=\infty$}
\stepdown
\stepbox{4. POWER: DIVIDE BY $2T$, THEN THE LIMIT}{$\dfrac{18T}{2T}=9$, so $P_\infty=\lim\limits_{T\to\infty}9=\keyres{9}$ \; \why{$T$ cancelled}}
\stepdown
\stepbox{5. LABEL}{power signal \; \why{matches $P=c^2$}}

\wk{12}{DT power: $x[n]=(-1)^n$}
\stepbox{1. SQUARE}{$\big((-1)^n\big)^2=1$ for each $n$}
\stepdown
\stepbox{2. SUM FROM $-N$ TO $N$}{$2N+1$ terms, each $1$: \; sum $=2N+1$}
\stepdown
\stepbox{3. DIVIDE AND LET $N\to\infty$}{$P_\infty=\dfrac{2N+1}{2N+1}=\keyres{1}$}

% ------------------------------------------------------------ 5
\filbreak \subsection{5. energy from a graph}
\idea{Do not set up one big integral. Chop the graph into pieces, square each piece, find each piece's energy, and add. In DT there are no widths: each stem is one sample and counts once, so its energy is just its height squared.}
\begin{enumerate}
\item \term{Read the graph into pieces.} Write $x(t)$ on each time range: a constant, or a straight line.
\item \term{Square each piece.}
\item \term{CT}: integrate each squared piece over its range. \term{DT}: square each stem height.
\item \term{Add the pieces.}
\end{enumerate}
\term{Straight line} through $(t_1,x_1)$ with slope $m=\frac{\Delta x}{\Delta t}$: \; $x(t)=x_1+m(t-t_1)$.

\term{Shortcuts for one piece} of length $D$:
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.50\linewidth}p{0.46\linewidth}@{}}
\term{Piece of the graph} & \term{Energy of that piece} \\\hline
flat at level $A$ & $A^2D$ \; (a rectangle of height $A^2$) \\
ramp from $0$ to $A$ (or $A$ to $0$) & $\dfrac{A^2D}{3}$ \st\\
line from $A$ to $B$ & $\dfrac{D}{3}\big(A^2+AB+B^2\big)$ \st\\
DT stem of height $h$ & $h^2$ \\
\end{tabular}}
\par\vspace{2pt}
Use a shortcut to \keyres{check} an integral, and an integral to check a shortcut.

\trap{Negative parts count positive. $(-2)^2=4$. They do not cancel positive parts.}
\trap{A squared ramp is a curve, not a triangle. Use $\frac{A^2D}{3}$, not $\frac{A^2D}{2}$.}
\trap{If the graph repeats forever, $E_\infty=\infty$. Find the power over one period.}

\nopagebreak
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=e1,
xmin=-0.6, xmax=3.8, ymin=-1.5, ymax=2.6,
xtick={1,2,3}, ytick={-1,2},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.4cm]
\addplot[uHi, thick] coordinates {(-0.4,0)(0,0)(0,2)(1,2)(1,-1)(3,-1)(3,0)(3.6,0)};
\end{axis}
\begin{axis}[sigax, at={(e1.east)}, anchor=west, xshift=0.5cm,
xmin=-0.6, xmax=2.8, ymin=-0.4, ymax=2.6,
xtick={1,2}, ytick={2},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.4cm]
\addplot[keyHi, thick] coordinates {(-0.4,0)(0,0)(1,2)(2,0)(2.6,0)};
\end{axis}
\end{tikzpicture}

\wk{14}{two flat pieces (left graph)}
\stepbox{1. READ THE PIECES}{$x(t)=2$ on $[0,1]$. \quad $x(t)=-1$ on $[1,3]$. \quad $0$ elsewhere.}
\stepdown
\stepbox{2. SQUARE EACH PIECE}{$2^2=4$ on $[0,1]$. \quad $(-1)^2=1$ on $[1,3]$.}
\stepdown
\stepbox{3. ENERGY OF PIECE 1}{$\int_0^1 4\,dt=4\cdot(1-0)=4$}
\stepdown
\stepbox{4. ENERGY OF PIECE 2}{$\int_1^3 1\,dt=1\cdot(3-1)=2$}
\stepdown
\stepbox{5. ADD}{$E_\infty=4+2=\keyres{6}$}

\wk{20}{a triangle (right graph)}
\stepbox{1. RISE: FIND THE LINE}{From $(0,0)$ to $(1,2)$: slope $m=\frac{2-0}{1-0}=2$. \; $x(t)=0+2(t-0)=2t$ on $[0,1]$.}
\stepdown
\stepbox{2. RISE: SQUARE}{$(2t)^2=4t^2$}
\stepdown
\stepbox{3. RISE: INTEGRATE}{$F(t)=\dfrac{4t^3}{3}$. \; $F(1)-F(0)=\dfrac{4}{3}-0=\dfrac{4}{3}$}
\stepdown
\stepbox{4. FALL: FIND THE LINE}{From $(1,2)$ to $(2,0)$: slope $m=\frac{0-2}{2-1}=-2$. \; $x(t)=2-2(t-1)=4-2t$ on $[1,2]$.}
\stepdown
\stepbox{5. FALL: SQUARE}{$(4-2t)^2=16-16t+4t^2$ \; \why{$(a-b)^2=a^2-2ab+b^2$}}
\stepdown
\stepbox{6. FALL: ANTIDERIVATIVE}{$G(t)=16t-8t^2+\dfrac{4t^3}{3}$}
\stepdown
\stepbox{7. FALL: TOP ($t=2$)}{$G(2)=32-32+\dfrac{32}{3}=\dfrac{32}{3}$}
\stepdown
\stepbox{8. FALL: BOTTOM ($t=1$)}{$G(1)=16-8+\dfrac{4}{3}=8+\dfrac{4}{3}=\dfrac{28}{3}$}
\stepdown
\stepbox{9. FALL: TOP MINUS BOTTOM}{$\dfrac{32}{3}-\dfrac{28}{3}=\dfrac{4}{3}$}
\stepdown
\stepbox{10. ADD}{$E_\infty=\dfrac43+\dfrac43=\keyres{\frac83}$}
\stepdown
\stepbox{11. CHECK WITH THE SHORTCUT}{Each ramp: $\dfrac{A^2D}{3}=\dfrac{2^2\cdot1}{3}=\dfrac43$ \checkmark}

\wk{16}{a line that does not start at $0$: from $1$ to $3$ over $[0,2]$}
\stepbox{1. FIND THE LINE}{Slope $m=\frac{3-1}{2-0}=1$. \; $x(t)=1+1\cdot(t-0)=1+t$}
\stepdown
\stepbox{2. SQUARE}{$(1+t)^2=1+2t+t^2$}
\stepdown
\stepbox{3. ANTIDERIVATIVE}{$F(t)=t+t^2+\dfrac{t^3}{3}$}
\stepdown
\stepbox{4. TOP MINUS BOTTOM}{$F(2)=2+4+\dfrac83=\dfrac{26}{3}$. \; $F(0)=0$. \; $E=\keyres{\frac{26}{3}}$}
\stepdown
\stepbox{5. CHECK WITH THE SHORTCUT}{$\dfrac{D}{3}\big(A^2+AB+B^2\big)=\dfrac23(1+3+9)=\dfrac{26}{3}$ \checkmark}

\nopagebreak
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
\end{axis}
\end{tikzpicture}

\wk{10}{a DT stem plot (left graph)}
\stepbox{1. READ THE STEMS}{$x[-1]=1$, \; $x[0]=2$, \; $x[1]=-2$, \; $x[2]=1$. \; All others $0$.}
\stepdown
\stepbox{2. SQUARE EACH STEM}{$1^2=1$, \quad $2^2=4$, \quad $(-2)^2=4$, \quad $1^2=1$ \; \why{write every square separately}}
\stepdown
\stepbox{3. ADD}{$E_\infty=1+4+4+1=\keyres{10}$ \; \why{no integral: DT energy is a sum}}
\stepdown
\stepbox{4. POWER}{$P_\infty=\lim\limits_{N\to\infty}\dfrac{10}{2N+1}=0$ $\Rightarrow$ energy signal}

\wk{14}{a periodic graph (right graph): power, not energy}
\stepbox{1. ONE PERIOD}{The pattern repeats every $T=2$ s: $x=2$ on $[0,1]$, $x=0$ on $[1,2]$.}
\stepdown
\stepbox{2. ENERGY OF ONE PERIOD}{$2^2\cdot1+0^2\cdot1=4$}
\stepdown
\stepbox{3. DIVIDE BY THE PERIOD}{$P=\dfrac{4}{2}=\keyres{2}$}
\stepdown
\stepbox{4. TOTAL ENERGY}{It repeats forever: $E_\infty=\infty$ $\Rightarrow$ power signal}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. transformations of the time variable}
\idea{You are not changing the shape, only \emph{when} things happen. Ask one question of every corner of the graph: \term{where did this point move to?} It keeps its height and just lands at a new time.}
\begin{itemize}
\item \term{Shift}: $x(t-t_0)$. If $t_0>0$, the signal moves \keyres{right}: a \term{delay}, it happens later. If $t_0<0$, it moves left: an \term{advance}, it happens earlier.
\item \term{Reversal}: $x(-t)$. Play the tape backwards: mirror about $t=0$.
\item \term{Scaling}: $x(at)$. Fast-forward if $\lvert a\rvert>1$ (compressed). Slow motion if $\lvert a\rvert<1$ (stretched).
\end{itemize}
\term{Point-map method} for $x(at+b)$: the old time $t_{\text{old}}$ shows up where $at_{\text{new}}+b=t_{\text{old}}$. Solve for the new time:
$$t_{\text{new}}=\frac{t_{\text{old}}-b}{a}$$
One step, no order of operations to remember.

\term{Two-step method}: first shift by $b$ to make $x(t+b)$. Then replace $t$ with $at$.

\trap{Scale first, then shift by $b$, is wrong. $x(2t)$ shifted left by $1$ is $x(2(t+1))=x(2t+2)$, not $x(2t+1)$.}
\trap{The sign inside is opposite to the direction. $x(t-3)$ moves \emph{right}.}
\trap{DT scaling loses photos: $x[2n]$ keeps only the even-index samples.}

\nopagebreak
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=a1,
xmin=-1.6, xmax=2.8, ymin=-0.3, ymax=1.5,
xtick={-1,1,2}, ytick={1},
xlabel={$t$}, ylabel={$x(t)$},
width=4.9cm, height=3.2cm]
\addplot[uHi, thick] coordinates {(-1.4,0)(0,0)(1,1)(2,1)(2,0)(2.6,0)};
\end{axis}
\begin{axis}[sigax, at={(a1.east)}, anchor=west, xshift=0.5cm,
xmin=-1.6, xmax=2.8, ymin=-0.3, ymax=1.5,
xtick={-1,1,2}, ytick={1},
xlabel={$t$}, ylabel={$x(2t+1)$},
width=4.9cm, height=3.2cm]
\addplot[keyHi, thick] coordinates {(-1.4,0)(-0.5,0)(0,1)(0.5,1)(0.5,0)(2.6,0)};
\end{axis}
\end{tikzpicture}

\wk{16}{sketch $x(2t+1)$ from $x(t)$ (left graph)}
\stepbox{1. LIST THE BREAKPOINTS OF $x$}{$t=0$ (value $0$), \; $t=1$ (value $1$), \; $t=2$ (value $1$, then drops to $0$)}
\stepdown
\stepbox{2. READ $a$ AND $b$}{$x(2t+1)$: \; $a=2$, \; $b=1$}
\stepdown
\stepbox{3. MAP $t=0$}{$\dfrac{0-1}{2}=-\dfrac12$}
\stepdown
\stepbox{4. MAP $t=1$}{$\dfrac{1-1}{2}=0$}
\stepdown
\stepbox{5. MAP $t=2$}{$\dfrac{2-1}{2}=\dfrac12$}
\stepdown
\stepbox{6. DRAW WITH THE SAME VALUES}{Ramp $0\to1$ on $[-\frac12,0]$. \; Flat at $1$ on $[0,\frac12]$. \; $0$ elsewhere (right graph).}
\stepdown
\stepbox{7. CHECK ONE POINT}{At $t=0$: $x(2\cdot0+1)=x(1)=1$ \checkmark}

\wk{14}{(reversal) sketch $x(-t+2)$ from the same $x(t)$}
\stepbox{1. READ $a$ AND $b$}{$a=-1$, \; $b=2$. \; $t_{\text{new}}=\dfrac{t_{\text{old}}-2}{-1}=2-t_{\text{old}}$}
\stepdown
\stepbox{2. MAP EACH BREAKPOINT}{$0\to2$, \quad $1\to1$, \quad $2\to0$}
\stepdown
\stepbox{3. DRAW WITH THE SAME VALUES}{Flat at $1$ on $[0,1]$. \; Ramp $1\to0$ on $[1,2]$. \; The picture is mirrored.}
\stepdown
\stepbox{4. CHECK ONE POINT}{At $t=1.5$: $x(-1.5+2)=x(0.5)=0.5$. \; The ramp from $1$ to $0$ is at $0.5$ there \checkmark}

\wk{14}{DT: $x[0]=1$, $x[1]=2$, $x[2]=3$, else $0$}
\stepbox{1. DELAY $x[n-2]$}{Each sample moves right $2$: \; $n=2$: $1$, \; $n=3$: $2$, \; $n=4$: $3$}
\stepdown
\stepbox{2. REVERSE $x[-n]$}{Each sample mirrors: \; $n=0$: $1$, \; $n=-1$: $2$, \; $n=-2$: $3$}
\stepdown
\stepbox{3. COMPRESS $x[2n]$}{$n=0$: $x[0]=1$. \; $n=1$: $x[2]=3$. \; \warn{$x[1]=2$ is lost.}}

\filbreak \subsubsection{Which way? --- undo a transformation}
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.62\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$x(t)\to x(at+b)$ & map each breakpoint: $t_{\text{new}}=\frac{t_{\text{old}}-b}{a}$ \\[2pt]
$y(t)=x(at+b)\to x(t)$ & $x(t)=y\big(\frac{t-b}{a}\big)$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{$x[2n]$ cannot be undone. The odd-index photos were thrown away.}

\wk{14}{(reverse) $y(t)=x(2t+1)$ is given. Find $x(t)$}
\stepbox{1. NAME THE INSIDE}{Let $\tau=2t+1$. Then $y(t)=x(\tau)$.}
\stepdown
\stepbox{2. SOLVE FOR $t$}{$2t=\tau-1$ $\Rightarrow$ $t=\dfrac{\tau-1}{2}$}
\stepdown
\stepbox{3. SUBSTITUTE}{$x(\tau)=y\Big(\dfrac{\tau-1}{2}\Big)$. \; Rename $\tau$ as $t$: \; $x(t)=\keyres{y\big(\frac{t-1}{2}\big)}$}
\stepdown
\stepbox{4. CHECK}{$y\big(\frac{t-1}{2}\big)=x\big(2\cdot\frac{t-1}{2}+1\big)=x(t-1+1)=x(t)$ \checkmark}

\filbreak \subsubsection{Which way? --- find the transformation from $x$ to $y$}
Some problems give two graphs and ask for $y$ in terms of $x$: \; $y(t)=A\,x(at+b)$.
\begin{enumerate}
\item \term{Amplitude}: compare the heights. $A=\frac{\text{height of }y}{\text{height of }x}$. Upside down means a negative $A$.
\item \term{Orientation}: same way round, or mirrored? Mirrored means $a<0$.
\item \term{Two matching points}: pick two breakpoints of $x$ ($t_1$, $t_2$) and the points of $y$ they moved to ($\tau_1$, $\tau_2$).
\item \term{Solve} $a\tau_1+b=t_1$ and $a\tau_2+b=t_2$ for $a$ and $b$. \why{$y$ at $\tau$ is $x$ at $a\tau+b$}
\item \term{Check} a third point.
\end{enumerate}

\wk{18}{$x(t)$ is a ramp from $0$ to $1$ on $[0,4]$. $y(t)$ is the same ramp, height $3$, on $[-1,1]$}
\stepbox{1. AMPLITUDE}{$A=\dfrac{3}{1}=3$}
\stepdown
\stepbox{2. ORIENTATION}{Both rise from left to right $\Rightarrow$ not mirrored, $a>0$}
\stepdown
\stepbox{3. MATCHING POINTS}{The start $t_1=0$ moves to $\tau_1=-1$. \; The end $t_2=4$ moves to $\tau_2=1$.}
\stepdown
\stepbox{4. TWO EQUATIONS}{$a(-1)+b=0$ \quad and \quad $a(1)+b=4$}
\stepdown
\stepbox{5. SUBTRACT THE FIRST FROM THE SECOND}{$a-(-a)=4-0$ $\Rightarrow$ $2a=4$ $\Rightarrow$ $a=2$}
\stepdown
\stepbox{6. BACK-SUBSTITUTE}{$-2+b=0$ $\Rightarrow$ $b=2$}
\stepdown
\stepbox{7. RESULT AND CHECK}{$y(t)=\keyres{3\,x(2t+2)}$. \; Middle: $t=0$ gives $x(2)=\frac12$, so $y=1.5$, half of $3$ \checkmark}

\wk{14}{(mirrored) the same $x$, but $y$ falls from $3$ to $0$ on $[-1,1]$}
\stepbox{1. MATCHING POINTS}{The start of the ramp ($t_1=0$, value $0$) is now on the right: $\tau_1=1$. \; The end ($t_2=4$) is on the left: $\tau_2=-1$.}
\stepdown
\stepbox{2. TWO EQUATIONS}{$a(1)+b=0$ \quad and \quad $a(-1)+b=4$}
\stepdown
\stepbox{3. SOLVE}{Subtract: $2a=-4$ $\Rightarrow$ $a=-2$. \; Then $b=2$.}
\stepdown
\stepbox{4. RESULT}{$y(t)=\keyres{3\,x(-2t+2)}$ \; \why{$a<0$ because the shape is mirrored}}

\wk{14}{(DT) $x[0]=1$, $x[1]=2$, $x[2]=3$. \; $y[-1]=3$, $y[0]=2$, $y[1]=1$. Find $y$ in terms of $x$}
\stepbox{1. ORIENTATION}{$x$ rises to the right. $y$ falls to the right $\Rightarrow$ mirrored: $y[n]=x[-n+b]$}
\stepdown
\stepbox{2. ONE MATCHING POINT}{$y[-1]=3=x[2]$. \; So $-(-1)+b=2$ $\Rightarrow$ $1+b=2$ $\Rightarrow$ $b=1$}
\stepdown
\stepbox{3. RESULT}{$y[n]=\keyres{x[-n+1]}$}
\stepdown
\stepbox{4. CHECK THE OTHERS}{$n=0$: $x[1]=2$ \checkmark \quad $n=1$: $x[0]=1$ \checkmark}

% ------------------------------------------------------------ 7
\filbreak \subsection{7. periodic signals}
\idea{A periodic signal is a song on repeat. Slide it forward by one period and you cannot tell anything happened. The \term{fundamental period} is the length of the shortest loop.}
$$x(t)=x(t+T) \qquad x[n]=x[n+N]$$
$N$ must be an \keyres{integer}: you cannot slide by half a photo.
\begin{itemize}
\item \term{CT sinusoid} $\cos(\omega t)$: always periodic. $T=\frac{2\pi}{\omega}$.
\item \term{DT sinusoid} $\cos(\hat\omega n)$: periodic only if, after some whole number of photos, the wheel has made a whole number of turns. That means $\frac{\hat\omega}{2\pi}$ is a fraction $\frac{m}{N}$. Reduce it to lowest terms. The denominator is $N$.
\item \term{Two periodic signals added}: both loops line up again after the least common multiple ($\mathrm{lcm}$) of the two periods.
\end{itemize}
\trap{$\cos(n)$ is not periodic. $\frac{1}{2\pi}$ is not a fraction of integers, so the photos never exactly repeat. The CT signal $\cos(t)$ is periodic. Sampling can destroy periodicity.}

\wk{12}{period of $\cos\big(\frac{2\pi}{3}t\big)+\sin\big(\frac{\pi}{2}t\big)$}
\stepbox{1. FIRST PERIOD}{$T_1=\dfrac{2\pi}{2\pi/3}=2\pi\cdot\dfrac{3}{2\pi}=3$ s}
\stepdown
\stepbox{2. SECOND PERIOD}{$T_2=\dfrac{2\pi}{\pi/2}=2\pi\cdot\dfrac{2}{\pi}=4$ s}
\stepdown
\stepbox{3. LEAST COMMON MULTIPLE}{Multiples of $3$: $3,6,9,\mathbf{12}$. \; Multiples of $4$: $4,8,\mathbf{12}$. \; $T=\keyres{12}$ s}
\stepdown
\stepbox{4. CHECK}{$12$ s holds $\frac{12}{3}=4$ cycles of the first and $\frac{12}{4}=3$ of the second \checkmark}

\wk{12}{DT period of $x[n]=\cos\big(\frac{3\pi}{8}n\big)$}
\stepbox{1. DIVIDE BY $2\pi$}{$\dfrac{\hat\omega}{2\pi}=\dfrac{3\pi/8}{2\pi}=\dfrac{3\pi}{8}\cdot\dfrac{1}{2\pi}=\dfrac{3}{16}$}
\stepdown
\stepbox{2. LOWEST TERMS?}{$3$ and $16$ share no factor. \; $N=\keyres{16}$}
\stepdown
\stepbox{3. CHECK}{$\dfrac{3\pi}{8}\cdot16=6\pi=3\cdot2\pi$, whole turns \checkmark}

\wk{10}{reduce first: $x[n]=\cos\big(\frac{4\pi}{6}n\big)$}
\stepbox{1. DIVIDE BY $2\pi$}{$\dfrac{4\pi/6}{2\pi}=\dfrac{4}{12}$}
\stepdown
\stepbox{2. REDUCE}{$\dfrac{4}{12}=\dfrac{1}{3}$ $\Rightarrow$ $N=\keyres{3}$ \; \warn{not $12$}}

\wk{8}{is $x[n]=\cos(n)$ periodic?}
\stepbox{1. DIVIDE BY $2\pi$}{$\dfrac{1}{2\pi}$}
\stepdown
\stepbox{2. IS IT A FRACTION OF INTEGERS?}{No: $\pi$ is irrational. \; $\Rightarrow$ \keyres{not periodic}}

% ------------------------------------------------------------ 8
\filbreak \subsection{8. even and odd signals}
\idea{\term{Even}: put a mirror on the vertical axis. The left half is the reflection of the right half. \term{Odd}: spin the graph half a turn about the origin, and it lands on itself. Left half is the right half, flipped \emph{and} upside down.}
\begin{itemize}
\item \term{Even}: $x(-t)=x(t)$. Examples: $\cos$, $t^2$.
\item \term{Odd}: $x(-t)=-x(t)$. Examples: $\sin$, $t^3$.
\end{itemize}
\term{Test}: replace $t$ with $-t$, simplify, and compare with $x(t)$.

\trap{An odd signal is always $0$ at the origin: $x(0)=-x(0)$ forces $x(0)=0$.}

Every signal splits into an even part plus an odd part:
$$\mathcal{E}v\{x\}=\frac{x(t)+x(-t)}{2} \qquad \mathcal{O}d\{x\}=\frac{x(t)-x(-t)}{2}$$
Products work like signs: even $\cdot$ even $=$ even, \; odd $\cdot$ odd $=$ even, \; even $\cdot$ odd $=$ odd.

\wk{10}{is $x(t)=t^3-2t$ even, odd, or neither?}
\stepbox{1. REPLACE $t$ WITH $-t$}{$x(-t)=(-t)^3-2(-t)$}
\stepdown
\stepbox{2. SIMPLIFY}{$(-t)^3=-t^3$, \; $-2(-t)=2t$. \; $x(-t)=-t^3+2t$}
\stepdown
\stepbox{3. COMPARE}{$-t^3+2t=-(t^3-2t)=-x(t)$ $\Rightarrow$ \keyres{odd}}

\wk{14}{$x(t)=t^2+t$: test, then split}
\stepbox{1. REPLACE $t$ WITH $-t$}{$x(-t)=(-t)^2+(-t)=t^2-t$}
\stepdown
\stepbox{2. COMPARE}{$t^2-t\neq x(t)$ and $\neq-x(t)$ $\Rightarrow$ neither}
\stepdown
\stepbox{3. EVEN PART}{$\dfrac{(t^2+t)+(t^2-t)}{2}=\dfrac{2t^2}{2}=\keyres{t^2}$}
\stepdown
\stepbox{4. ODD PART}{$\dfrac{(t^2+t)-(t^2-t)}{2}=\dfrac{2t}{2}=\keyres{t}$}
\stepdown
\stepbox{5. CHECK}{$t^2+t=x(t)$ \checkmark}

\wk{16}{DT split: $x[0]=1$, $x[1]=2$, $x[2]=3$, else $0$}
\stepbox{1. TABLE OF $x[n]$ AND $x[-n]$, THEN THE TWO PARTS}{{\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}c|ccccc@{}}
$n$ & $-2$ & $-1$ & $0$ & $1$ & $2$ \\\hline
$x[n]$ & $0$ & $0$ & $1$ & $2$ & $3$ \\
$x[-n]$ & $3$ & $2$ & $1$ & $0$ & $0$ \\\hline
$\frac{x[n]+x[-n]}{2}$ & $1.5$ & $1$ & $1$ & $1$ & $1.5$ \\
$\frac{x[n]-x[-n]}{2}$ & $-1.5$ & $-1$ & $0$ & $1$ & $1.5$ \\
\end{tabular}}}
\stepdown
\stepbox{2. HOW TO FILL $x[-n]$}{Read $x$ at the opposite index. \; $n=-2$: $x[2]=3$. \; $n=1$: $x[-1]=0$.}
\stepdown
\stepbox{3. CHECK EACH COLUMN}{even $+$ odd $=x[n]$. \; $n=2$: $1.5+1.5=3$ \checkmark \; $n=-2$: $1.5-1.5=0$ \checkmark}

% ------------------------------------------------------------ 9
\filbreak \subsection{9. complex exponentials}
\idea{$e^{j\theta}$ is an arrow of length $1$, pointing at angle $\theta$. Let $\theta=\omega t$ and the arrow spins. Its shadow on the horizontal axis is a cosine. Multiply by $e^{\sigma t}$ and the arrow also grows ($\sigma>0$) or shrinks ($\sigma<0$) as it spins: a spiral.}

\term{Euler's formula}: $e^{j\theta}=\cos\theta+j\sin\theta$. \; Engineers write $j=\sqrt{-1}$.

\term{Back to cosine and sine}: $\cos\theta=\dfrac{e^{j\theta}+e^{-j\theta}}{2}$, \quad $\sin\theta=\dfrac{e^{j\theta}-e^{-j\theta}}{2j}$. Two arrows spinning opposite ways: their imaginary parts cancel.

\term{CT form}: $x(t)=Ce^{at}$, with $C=\lvert C\rvert e^{j\phi}$ (starting length and angle) and $a=\sigma+j\omega$ (growth rate and spin rate).
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.62\linewidth}@{}}
\term{Case} & \term{Real part looks like} \\\hline
$a$ real ($\omega=0$) & no spin: a \term{real exponential}. Grows if $\sigma>0$, decays if $\sigma<0$ \\[2pt]
$a=j\omega$ ($\sigma=0$) & pure spin: a \term{sinusoid} $\lvert C\rvert\cos(\omega t+\phi)$, \; $T=\frac{2\pi}{\lvert\omega\rvert}$ \\[2pt]
general $a$ & spiral: a \term{damped sinusoid} $\lvert C\rvert e^{\sigma t}\cos(\omega t+\phi)$ \\
\end{tabular}}
\par\vspace{2pt}
The $\lvert C\rvert e^{\sigma t}$ part is the \term{envelope}: the curve the peaks follow.

\term{DT form}: $x[n]=C\alpha^n$. Each step multiplies by $\alpha$. \; $\lvert\alpha\rvert<1$: decays. \; $\lvert\alpha\rvert>1$: grows. \; $\alpha<0$: the sign flips every step.

\keyres{DT frequencies repeat every $2\pi$}: $e^{j(\hat\omega+2\pi)n}=e^{j\hat\omega n}e^{j2\pi n}=e^{j\hat\omega n}$, because $n$ is an integer and $e^{j2\pi n}$ is a whole number of turns.

{\small
\begin{tabular}{@{}p{0.49\linewidth}|p{0.47\linewidth}@{}}
\term{CT} $e^{j\omega t}$ & \term{DT} $e^{j\hat\omega n}$ \\\hline
each $\omega$ gives a different signal & $\hat\omega$ and $\hat\omega+2\pi$ give the same signal \\[2pt]
always periodic & periodic only if $\frac{\hat\omega}{2\pi}$ is rational \\[2pt]
larger $\omega$ $\Rightarrow$ faster & fastest at $\hat\omega=\pi$ ($+1,-1,+1,\ldots$) \\
\end{tabular}}

\wk{14}{real part of $x(t)=2e^{j\pi/3}e^{(-1+j4)t}$}
\stepbox{1. SPLIT THE EXPONENT}{$e^{(-1+j4)t}=e^{-t}\cdot e^{j4t}$ \; \why{shrinking part times spinning part}}
\stepdown
\stepbox{2. COMBINE THE $j$ PARTS}{$e^{j\pi/3}\cdot e^{j4t}=e^{j(4t+\pi/3)}$ \; \why{add the exponents}}
\stepdown
\stepbox{3. REWRITE}{$x(t)=2e^{-t}e^{j(4t+\pi/3)}$}
\stepdown
\stepbox{4. EULER}{$x(t)=2e^{-t}\big[\cos(4t+\tfrac{\pi}{3})+j\sin(4t+\tfrac{\pi}{3})\big]$}
\stepdown
\stepbox{5. KEEP THE REAL PART}{$\mathrm{Re}\{x\}=\keyres{2e^{-t}\cos\big(4t+\frac{\pi}{3}\big)}$: a damped sinusoid, envelope $2e^{-t}$}

\wk{12}{(reverse) write $5e^{-2t}\cos\big(3t-\frac{\pi}{4}\big)$ as $\mathrm{Re}\{Ce^{at}\}$}
\stepbox{1. MATCH $\lvert C\rvert e^{\sigma t}\cos(\omega t+\phi)$}{$\lvert C\rvert=5$, \; $\sigma=-2$, \; $\omega=3$, \; $\phi=-\frac{\pi}{4}$}
\stepdown
\stepbox{2. BUILD $C$}{$C=\lvert C\rvert e^{j\phi}=\keyres{5e^{-j\pi/4}}$}
\stepdown
\stepbox{3. BUILD $a$}{$a=\sigma+j\omega=\keyres{-2+j3}$}

\wk{12}{cosine to exponentials: $6\cos(5t)$}
\stepbox{1. FORMULA}{$\cos\theta=\dfrac{e^{j\theta}+e^{-j\theta}}{2}$, \; $\theta=5t$}
\stepdown
\stepbox{2. MULTIPLY BY $6$}{$6\cdot\dfrac{e^{j5t}+e^{-j5t}}{2}=\keyres{3e^{j5t}+3e^{-j5t}}$}

\wk{10}{simplify $x[n]=\cos\big(\frac{9\pi}{4}n\big)$}
\stepbox{1. REMOVE A WHOLE TURN}{$\dfrac{9\pi}{4}-2\pi=\dfrac{9\pi}{4}-\dfrac{8\pi}{4}=\dfrac{\pi}{4}$}
\stepdown
\stepbox{2. SAME SAMPLES}{$x[n]=\keyres{\cos\big(\frac{\pi}{4}n\big)}$ \; \why{$2\pi n$ is a whole number of turns}}
\stepdown
\stepbox{3. PERIOD}{$\dfrac{\pi/4}{2\pi}=\dfrac18$ $\Rightarrow$ $N=\keyres{8}$}

% ------------------------------------------------------------ 10
\filbreak \subsection{10. the button, the switch, and the ramp}
\idea{
\begin{itemize}
\item $\delta$ is a \term{button}: press it once at time $0$, then release. On for one instant, then off.
\item $u$ is a \term{switch}: flip it on at time $0$ and leave it on forever.
\item $r$ is a \term{ramp}: the running total of the switch. It climbs $0,1,2,3,\ldots$
\end{itemize}
Each one is the \keyres{running total} of the one before. Everything else in the course is built from these three.}

\term{DT button and DT switch}:
$$\delta[n]=\begin{cases}1 & n=0\\0 & n\neq0\end{cases} \qquad u[n]=\begin{cases}1 & n\geq0\\0 & n<0\end{cases}$$

\nopagebreak
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

\trap{The switch does not keep climbing. $u[n]$ is $0,0,1,1,1,\ldots$, not $1,2,3$. ``Step'' means \emph{one} stair up, then flat. The thing that climbs is the ramp.}

\term{Energy and power of the building blocks}: the button is one stem of height $1$, so $E_\infty=1^2=1$: an \keyres{energy signal}. The switch stays on forever: $E_\infty=\infty$, finite power, a \keyres{power signal}.

\filbreak \subsubsection{The switch is the running total of button presses}
Count every press from $-\infty$ up to now:
$$u[n]=\sum_{k=-\infty}^{n}\delta[k]$$
\begin{itemize}
\item before $n=0$: no presses yet, so total $=0$
\item at $n=0$: one press, so total $=1$
\item after: no new presses, so the total stays $1$
\end{itemize}
Going back the other way: a switch on at $0$ \emph{minus} a switch on at $1$ is on only at $0$. That is the button: $\delta[n]=u[n]-u[n-1]$.

\filbreak \subsubsection{Shifting: where is the button?}
$\delta[n-k]$ puts the stem at $n=k$. To find it, ask: \keyres{what $n$ makes the inside equal $0$?} For $\delta[n-2]$: $n-2=0$, so $n=2$. The switch shifts the same way: $u[n-k]$ turns on at $n=k$.

{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.16\linewidth}p{0.18\linewidth}p{0.16\linewidth}p{0.42\linewidth}@{}}
\term{Inside} & \term{Stem at} & \term{Moves} & \term{Name} \\\hline
$n-3$ & $n=3$ & right & \term{delay}: it happens later \\
$n+2$ & $n=-2$ & left & \term{advance}: it happens earlier \\
\end{tabular}}
\par\vspace{2pt}
\trap{The sign inside is opposite to the position. And $+2$ is an \emph{advance}, not a delay.}

\filbreak \subsubsection{Building signals: switches on and off, one button per stem}
\term{Switch on, then switch off} gives a \term{pulse}. In $u[n-a]-u[n-b]$, the first switch turns on at $a$; the second, subtracted, turns on at $b$ and cancels the first.
\begin{itemize}
\item DT: on for $a\leq n\leq \keyres{b-1}$. That is $b-a$ samples.
\item CT: $u(t-t_1)-u(t-t_2)$ is on for $t_1\leq t<t_2$.
\end{itemize}
\trap{The off-switch's own position is already off. $u[n]-u[n-4]$ is $0$ at $n=4$: check $u[4]-u[0]=1-1=0$.}
When the two switches are one step apart ($b-a=1$), the pulse shrinks to a single stem: a button.

\term{One button per stem}: a stem of height $h$ at position $k$ is $h\,\delta[n-k]$. Add one term per stem, joined with $+$ signs:
$$x[n]=\sum_{k=-\infty}^{\infty}x[k]\,\delta[n-k]$$
At any $n$, every button is off except the one at $k=n$, and its weight is $x[n]$.

\wk{14}{write $x[-1]=2$, $x[0]=-1$, $x[1]=3$, $x[3]=1$ (others $0$) with buttons}
\stepbox{1. STEM AT $n=-1$, HEIGHT $2$}{$2\,\delta[n-(-1)]=2\,\delta[n+1]$}
\stepdown
\stepbox{2. STEM AT $n=0$, HEIGHT $-1$}{$-1\cdot\delta[n]=-\delta[n]$}
\stepdown
\stepbox{3. STEM AT $n=1$, HEIGHT $3$}{$3\,\delta[n-1]$}
\stepdown
\stepbox{4. STEM AT $n=3$, HEIGHT $1$}{$\delta[n-3]$ \; \why{$x[2]=0$, so no term for $n=2$}}
\stepdown
\stepbox{5. ADD INTO ONE SIGNAL}{$x[n]=\keyres{2\delta[n+1]-\delta[n]+3\delta[n-1]+\delta[n-3]}$}

\wk{12}{(reverse) read the stems of $x[n]=4\delta[n-2]-2\delta[n+3]$}
\stepbox{1. FIRST TERM}{$\delta[n-2]$ is $1$ at $n=2$. \; Stem: $x[2]=\keyres{4}$}
\stepdown
\stepbox{2. SECOND TERM}{$\delta[n+3]$ is $1$ at $n=-3$. \; Stem: $x[-3]=\keyres{-2}$}
\stepdown
\stepbox{3. CHECK AT $n=2$}{$4\delta[0]-2\delta[5]=4(1)-2(0)=4$ \checkmark}

\wk{12}{DT: $x[n]=u[n]-u[n-3]$}
\stepbox{1. TABLE}{$n=-1$: $0-0=0$. \; $n=0,1,2$: $1-0=1$. \; $n=3$: $1-1=0$. \; \why{on from $0$ through $3-1=2$}}
\stepdown
\stepbox{2. AS BUTTONS}{One per stem: $\keyres{\delta[n]+\delta[n-1]+\delta[n-2]}$}
\stepdown
\stepbox{3. FIRST DIFFERENCE}{$u[n]-u[n-1]=\delta[n]$ and $u[n-3]-u[n-4]=\delta[n-3]$ \\ $x[n]-x[n-1]=\keyres{\delta[n]-\delta[n-3]}$ \; \why{a button at each switch}}

\filbreak \subsubsection{The CT button}
In continuous time, a button pressed for ``one sample'' does not exist. Instead, picture a rectangle of width $\varepsilon$ and height $\frac{1}{\varepsilon}$:
\begin{itemize}
\item its area is $\varepsilon\cdot\frac{1}{\varepsilon}=1$, always
\item shrink $\varepsilon\to0$: infinitely narrow, infinitely tall, \keyres{area still $1$}
\end{itemize}
Think of a hammer tap: instant, but it delivers a definite amount of hit. That is why the CT button has \keyres{area} $1$, while the DT button has \keyres{height} $1$:
$$\int_{-\infty}^{\infty}\delta(t)\,dt=1$$
\term{CT switch} $u(t)$: $0$ for $t<0$, $1$ for $t>0$. The CT running total is an integral: $u(t)=\int_{-\infty}^{t}\delta(\tau)\,d\tau$. Going back is a derivative: $\delta(t)=\frac{du}{dt}$. A jump in a signal becomes a button in its derivative.

\trap{$\delta$ is a \emph{function} of $t$, like $\sin(t)$, not a variable. $\int\delta(t)\,dt$ is \emph{not} $\delta^2$. You never antidifferentiate $\delta$ with a formula. You use its one fact: the area is $1$.}

\filbreak \subsubsection{Sifting: the camera flash}
$$\int_{-\infty}^{\infty}x(t)\,\delta(t-t_0)\,dt=x(t_0)$$
\term{Read it in English}: fire a flash at $t_0$, and see what value of $x$ it captures.
\begin{enumerate}
\item $\delta(t-t_0)$ is zero everywhere except $t=t_0$, so only $x(t_0)$ matters.
\item At that one instant, $x(t_0)$ is a constant, so it comes out of the integral.
\item What is left is $\int\delta\,dt=1$, the area.
\end{enumerate}
\term{Three questions, every time}:
\begin{enumerate}
\item \term{Where does the flash sit?} Set the inside of $\delta$ to $0$ and solve for $t_0$.
\item \term{Is it in the window?} Check that $t_0$ is inside the limits. If not, the answer is $0$: the flash went off where you were not looking.
\item \term{What does it capture?} Plug $t_0$ into everything except the $\delta$.
\end{enumerate}
The final answer is a plain number, with no $\delta$ left in it.

\term{Sampling form}: $x(t)\,\delta(t-t_0)=x(t_0)\,\delta(t-t_0)$. DT: $x[n]\,\delta[n-n_0]=x[n_0]\,\delta[n-n_0]$.

\filbreak \subsubsection{Which way? --- switch or button}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$u\to\delta$ (CT) & differentiate: $\delta(t)=\dfrac{du}{dt}$ \st\\
$\delta\to u$ (CT) & integrate: $u(t)=\int_{-\infty}^{t}\delta(\tau)\,d\tau$ \\
$u\to\delta$ (DT) & first difference: $\delta[n]=u[n]-u[n-1]$ \\
$\delta\to u$ (DT) & running sum: $u[n]=\sum_{k=-\infty}^{n}\delta[k]$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{CT uses derivatives and integrals. DT uses differences and sums.}

\wk{16}{$\int_{-2}^{6}(3t+1)\,\delta(t-4)\,dt$}
\stepbox{1. WHERE DOES THE FLASH SIT?}{$t-4=0$ $\Rightarrow$ $t_0=4$}
\stepdown
\stepbox{2. IS IT IN THE WINDOW?}{Is $4$ between $-2$ and $6$? Yes \checkmark}
\stepdown
\stepbox{3. WHAT DOES IT CAPTURE?}{$3(4)+1=\keyres{13}$}
\stepdown
\stepbox{4. WHY THAT IS LEGAL}{At $t=4$, $3t+1$ is the constant $13$: \; $13\int_{-2}^{6}\delta(t-4)\,dt=13\cdot1=13$}

\wk{10}{$\int_{1}^{3}5\,\delta(t)\,dt$}
\stepbox{1. WHERE DOES THE FLASH SIT?}{The inside is $t$: \; $t_0=0$}
\stepdown
\stepbox{2. IS IT IN THE WINDOW?}{$0$ is not in $[1,3]$ $\Rightarrow$ the integral is $\keyres{0}$ \; \why{with limits $-\infty$ to $\infty$, it would be $5\cdot1$}}

\wk{12}{$\int_{-\infty}^{\infty}(t^2+1)\,\delta(t-2)\,dt$}
\stepbox{1. WHERE DOES THE FLASH SIT?}{$t-2=0$ $\Rightarrow$ $t_0=2$}
\stepdown
\stepbox{2. IS IT IN THE WINDOW?}{$2$ is inside $(-\infty,\infty)$ \checkmark}
\stepdown
\stepbox{3. WHAT DOES IT CAPTURE?}{$2^2+1=4+1=\keyres{5}$}

\wk{10}{$\int_0^5 e^{t}\,\delta(t+1)\,dt$}
\stepbox{1. WHERE DOES THE FLASH SIT?}{$t+1=0$ $\Rightarrow$ $t_0=-1$}
\stepdown
\stepbox{2. IS IT IN THE WINDOW?}{$-1$ is not in $[0,5]$ $\Rightarrow$ the integral is $\keyres{0}$}

\wk{10}{DT: $\sum_{n=-\infty}^{\infty}n^2\,\delta[n-3]$}
\stepbox{1. WHERE IS THE BUTTON?}{$n-3=0$ $\Rightarrow$ $n_0=3$}
\stepdown
\stepbox{2. WHAT DOES IT CAPTURE?}{$3^2=\keyres{9}$}

\wk{18}{write a pulse of height $2$ on $[1,4)$ with switches, then go down and back}
\stepbox{1. SWITCH ON AT $t=1$}{A jump up of $2$: \; $+2u(t-1)$}
\stepdown
\stepbox{2. SWITCH OFF AT $t=4$}{A jump down of $2$: \; $-2u(t-4)$}
\stepdown
\stepbox{3. ADD}{$x(t)=\keyres{2u(t-1)-2u(t-4)}$}
\stepdown
\stepbox{4. CHECK TWO TIMES}{$t=2$: $2(1)-2(0)=2$ \checkmark \quad $t=5$: $2(1)-2(1)=0$ \checkmark}
\stepdown
\stepbox{5. DIFFERENTIATE (DOWN)}{Each switch becomes a button: \; $\dfrac{dx}{dt}=\keyres{2\delta(t-1)-2\delta(t-4)}$}
\stepdown
\stepbox{6. INTEGRATE (BACK)}{Each button becomes a switch: \; $2u(t-1)-2u(t-4)$ \checkmark}

\filbreak \subsubsection{The ramp: the running total of the switch}
The \term{unit ramp} is $0$ before time $0$, then climbs with slope $1$:
$$r(t)=t\,u(t)=\begin{cases}t & t\geq0\\0 & t<0\end{cases} \qquad r[n]=n\,u[n]=\begin{cases}n & n\geq0\\0 & n<0\end{cases}$$
It grows without limit, so it is \keyres{neither} an energy nor a power signal.

\nopagebreak
\noindent
\begin{tikzpicture}
\begin{axis}[sigax, name=r1,
xmin=-2.6, xmax=4.4, ymin=-0.4, ymax=4.4,
xtick={-2,-1,1,2,3,4}, ytick={1,2,3,4},
xlabel={$t$}, ylabel={$r(t)$},
width=4.9cm, height=3.4cm]
\addplot[uHi, thick] coordinates {(-2.4,0)(0,0)(4,4)};
\end{axis}
\begin{axis}[sigax, at={(r1.east)}, anchor=west, xshift=0.5cm,
xmin=-2.6, xmax=4.4, ymin=-0.4, ymax=4.4,
xtick={-2,-1,1,2,3,4}, ytick={1,2,3,4},
xlabel={$n$}, ylabel={$r[n]$},
width=4.9cm, height=3.4cm]
\addplot[keyHi, ycomb, thick, mark=*, mark size=1.2pt] coordinates {(-2,0)(-1,0)(0,0)(1,1)(2,2)(3,3)(4,4)};
\end{axis}
\end{tikzpicture}

\keyres{The chain}:
$$\text{button }\delta \xrightarrow{\text{running total}} \text{switch }u \xrightarrow{\text{running total}} \text{ramp }r$$
Going back: differentiate (CT) or take the first difference (DT).

\term{Other ways to write the ramp}:
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
\term{Form} & \term{Formula} \\\hline
CT: integral of the switch & $r(t)=\int_{-\infty}^{t}u(\tau)\,d\tau$ \\
CT: derivative of the ramp & $\dfrac{dr}{dt}=u(t)$ \st\\
DT: running sum of the switch & $r[n]=\sum_{k=-\infty}^{n-1}u[k]$ \\
DT: first difference & $r[n]-r[n-1]=u[n-1]$ \\
DT: sum of shifted switches & $r[n]=\sum_{k=1}^{\infty}u[n-k]$ \\
DT: sum of buttons & $r[n]=\sum_{k=0}^{\infty}k\,\delta[n-k]$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{The DT sum stops at $n-1$, not $n$. $r[1]=1$: only $u[0]$ is added. With $n$ as the top, you get $r[n+1]$.}

\term{Shifted and scaled}: $A\,r(t-t_0)$ is $0$ before $t_0$, then climbs with slope $A$.

\term{Graphs from ramps and switches}: walk left to right. At each \keyres{corner}, add a ramp weighted by the \emph{change in slope}. At each \keyres{jump}, add a switch weighted by the \emph{size of the jump}.

\wk{14}{check $r[n]=\sum_{k=-\infty}^{n-1}u[k]$ at $n=0$, $1$, $3$}
\stepbox{1. $n=0$}{Sum of $u[k]$ for $k\leq-1$: \; all $0$ $\Rightarrow$ $0=r[0]$ \checkmark}
\stepdown
\stepbox{2. $n=1$}{$k\leq0$: only $u[0]=1$ $\Rightarrow$ $1=r[1]$ \checkmark}
\stepdown
\stepbox{3. $n=3$}{$k\leq2$: $u[0]+u[1]+u[2]=3=r[3]$ \checkmark}

\wk{14}{first difference of the ramp}
\stepbox{1. $n=0$}{$r[0]-r[-1]=0-0=0$}
\stepdown
\stepbox{2. $n=1$}{$r[1]-r[0]=1-0=1$}
\stepdown
\stepbox{3. $n=2$}{$r[2]-r[1]=2-1=1$}
\stepdown
\stepbox{4. PATTERN}{$0$ up to $n=0$, then $1$ from $n=1$ on $\Rightarrow$ $\keyres{u[n-1]}$}

\wk{16}{write a rise from $0$ to $2$ on $[0,2]$, then flat at $2$, with ramps}
\stepbox{1. CORNER AT $t=0$}{Slope changes $0\to1$: change $+1$ $\Rightarrow$ $+r(t)$}
\stepdown
\stepbox{2. CORNER AT $t=2$}{Slope changes $1\to0$: change $-1$ $\Rightarrow$ $-r(t-2)$}
\stepdown
\stepbox{3. ADD}{$x(t)=\keyres{r(t)-r(t-2)}$}
\stepdown
\stepbox{4. CHECK $t=1$}{$r(1)-r(-1)=1-0=1$ \checkmark}
\stepdown
\stepbox{5. CHECK $t=5$}{$r(5)-r(3)=5-3=2$ \checkmark \; \why{flat at $2$}}

\wk{16}{a triangle: $0$ at $t=0$, peak $1$ at $t=1$, back to $0$ at $t=2$}
\stepbox{1. CORNER AT $t=0$}{Slope $0\to1$: change $+1$ $\Rightarrow$ $+r(t)$}
\stepdown
\stepbox{2. CORNER AT $t=1$}{Slope $1\to-1$: change $-2$ $\Rightarrow$ $-2r(t-1)$}
\stepdown
\stepbox{3. CORNER AT $t=2$}{Slope $-1\to0$: change $+1$ $\Rightarrow$ $+r(t-2)$}
\stepdown
\stepbox{4. ADD}{$x(t)=\keyres{r(t)-2r(t-1)+r(t-2)}$}
\stepdown
\stepbox{5. CHECK $t=3$}{$3-2(2)+1=0$ \checkmark \; \why{the slopes add to $1-2+1=0$}}

\wk{14}{(reverse) sketch $x(t)=2r(t-1)-2r(t-3)$}
\stepbox{1. BEFORE $t=1$}{Both ramps are $0$ $\Rightarrow$ $x=0$}
\stepdown
\stepbox{2. FROM $t=1$ TO $t=3$}{Only the first ramp: slope $2$. \; At $t=3$: $2(3-1)=4$}
\stepdown
\stepbox{3. AFTER $t=3$}{Slope $2-2=0$: flat at $\keyres{4}$}
\stepdown
\stepbox{4. CHECK $t=5$}{$2(4)-2(2)=8-4=4$ \checkmark}

\wk{12}{a switch plus a ramp: a jump of $3$ at $t=0$, then slope $-1$ until it reaches $0$}
\stepbox{1. JUMP AT $t=0$}{$+3u(t)$}
\stepdown
\stepbox{2. CORNER AT $t=0$}{Slope $0\to-1$ $\Rightarrow$ $-r(t)$}
\stepdown
\stepbox{3. CORNER WHERE IT REACHES $0$}{$3-t=0$ at $t=3$. \; Slope $-1\to0$ $\Rightarrow$ $+r(t-3)$}
\stepdown
\stepbox{4. ADD}{$x(t)=\keyres{3u(t)-r(t)+r(t-3)}$}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. systems and interconnections}
\idea{A \term{system} is a machine: a signal goes in, a different signal comes out, $x\to y$. A speaker, a filter, a bank account. A \term{difference equation} is the machine's recipe: how to cook up $y[n]$ from inputs, and sometimes from its own past outputs.}

Machines can be hooked together three ways:
\begin{itemize}
\item \term{Series} (cascade): an assembly line. The output of $S_1$ is the input of $S_2$.
\item \term{Parallel}: $x$ goes into both machines at once. Their outputs add.
\item \term{Feedback}: the output loops back through $S_2$ and adds into the input. The machine hears its own past.
\end{itemize}

\nopagebreak
\noindent
\begin{tikzpicture}[node distance=0.55cm, font=\small]
\node (x1) {$x$};
\node[blk, right=of x1] (s1) {$S_1$};
\node[blk, right=of s1] (s2) {$S_2$};
\node[right=of s2] (y1) {$y$};
\draw[sig] (x1) -- (s1); \draw[sig] (s1) -- (s2); \draw[sig] (s2) -- (y1);
\node[font=\scriptsize, text=termHi, above=0.05cm of s1.north east, anchor=south] {series};
\node[below=0.9cm of x1] (x2) {$x$};
\node[blk, right=0.9cm of x2, yshift=0.45cm] (p1) {$S_1$};
\node[blk, right=0.9cm of x2, yshift=-0.45cm] (p2) {$S_2$};
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

\wk{12}{series: $S_1$: $w[n]=2x[n]$, then $S_2$: $y[n]=w[n]-w[n-1]$}
\stepbox{1. OUTPUT OF $S_1$}{$w[n]=2x[n]$}
\stepdown
\stepbox{2. SHIFT IT FOR $S_2$}{$w[n-1]=2x[n-1]$ \; \why{replace every $n$ with $n-1$}}
\stepdown
\stepbox{3. SUBSTITUTE INTO $S_2$}{$y[n]=\keyres{2x[n]-2x[n-1]}$}

\wk{10}{parallel: $S_1$: $2x[n]$ and $S_2$: $x[n-1]$}
\stepbox{1. EACH OUTPUT}{$y_1[n]=2x[n]$, \quad $y_2[n]=x[n-1]$}
\stepdown
\stepbox{2. ADD}{$y[n]=\keyres{2x[n]+x[n-1]}$}

\wk{16}{feedback: $y[n]=x[n]+0.5\,y[n-1]$, input: press the button, $x[n]=\delta[n]$, $y[-1]=0$}
\stepbox{1. $n=0$}{$y[0]=\delta[0]+0.5\,y[-1]=1+0.5(0)=1$ \; \why{the press}}
\stepdown
\stepbox{2. $n=1$}{$y[1]=\delta[1]+0.5\,y[0]=0+0.5(1)=0.5$ \; \why{button released; only the echo}}
\stepdown
\stepbox{3. $n=2$}{$y[2]=0+0.5(0.5)=0.25$}
\stepdown
\stepbox{4. $n=3$}{$y[3]=0+0.5(0.25)=0.125$}
\stepdown
\stepbox{5. PATTERN}{$y[n]=\keyres{(0.5)^n\,u[n]}$ \; \why{each echo is half the last}}

\filbreak \subsubsection{DT systems as difference equations}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.30\linewidth}p{0.36\linewidth}p{0.28\linewidth}@{}}
\term{System} & \term{Difference equation} & \term{What it does} \\\hline
unit delay & $y[n]=x[n-1]$ & repeats the input one step late \\
gain & $y[n]=a\,x[n]$ & volume knob \\
first difference & $y[n]=x[n]-x[n-1]$ & change since the last sample \\
3-point moving average & $y[n]=\dfrac{x[n]+x[n-1]+x[n-2]}{3}$ & smooths \st\\
accumulator & $y[n]=\sum_{k=-\infty}^{n}x[k]$ & running total \\
accumulator, recursive & $y[n]=y[n-1]+x[n]$ & same running total \\
bank balance & $y[n]=1.01\,y[n-1]+x[n]$ & $1\%$ interest plus deposit \\
\end{tabular}}
\par\vspace{2pt}
The accumulator is the ``running total'' machine. Feed it the button and out comes the switch. Feed it the switch and out comes a ramp.

\term{Nonrecursive} (FIR): $y[n]$ uses inputs only. \term{Recursive} (IIR): $y[n]$ also uses its own past outputs $y[n-1]$, \ldots, and needs a starting value such as $y[-1]=0$.

\term{Block diagram parts}:
{\small
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Part} & \term{What it does} \\\hline
adder (circle, $+$) & output $=$ sum of its inputs \\[1pt]
gain (box with $a$) & output $=a\cdot$input \\[1pt]
unit delay (box $D$) & a one-step memory: in $x[n]$, out $x[n-1]$ \\[1pt]
branch point (dot) & copies a signal to two places \\
\end{tabular}}

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node (xin) at (0,0) {$x[n]$};
\node[blk] (d1) at (2.1,0) {$D$};
\node[blk] (d2) at (4.0,0) {$D$};
\fill[white!80] (1.1,0) circle (1.3pt); \fill[white!80] (3.05,0) circle (1.3pt);
\draw[sig] (xin) -- (d1); \draw[sig] (d1) -- (d2);
\draw[white!80] (d2.east) -- (5.0,0);
\node[sumnode] (s) at (3.05,-1.1) {$+$};
\draw[sig] (1.1,0) |- (s.west);
\draw[sig] (3.05,0) -- (s.north);
\draw[sig] (5.0,0) |- (s.east);
\node[above, text=white!70] at (3.05,0.25) {$x[n-1]$};
\node[above, text=white!70] at (5.0,0.05) {$x[n-2]$};
\node[blk] (g) at (3.05,-2.1) {$\frac13$};
\draw[sig] (s) -- (g);
\draw[sig] (g) -- (4.6,-2.1) node[right] {$y[n]$};
\node[text=termHi] at (0.6,-2.1) {moving average};
\end{tikzpicture}

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node (x) at (0,0) {$x[n]$};
\node[sumnode] (s) at (1.3,0) {$+$};
\fill[white!80] (2.8,0) circle (1.3pt);
\node (y) at (4,0) {$y[n]$};
\node[blk] (d) at (2.05,-0.95) {$D$};
\draw[sig] (x) -- (s); \draw[sig] (s) -- (y);
\draw[sig] (2.8,0) |- (d.east);
\draw[sig] (d.west) -| (s.south);
\node[below, text=white!70] at (1.3,-1.25) {$y[n-1]$};
\node[text=termHi] at (5.6,0) {accumulator};
\end{tikzpicture}

\filbreak \subsubsection{Which way? --- equation or block diagram}
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.62\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
diagram $\to$ equation & name the signal on each wire; write the adder's output as the sum of its inputs \\[2pt]
equation $\to$ diagram & one $D$ per shift ($n-1$, $n-2$, \ldots); one gain per coefficient; one adder for the sum \\[2pt]
equation $\to$ output values & put in $n=0,1,2,\ldots$ in order, one step at a time \\
\end{tabular}}
\par\vspace{2pt}
\trap{A delay on the output side means feedback. If a $D$ takes $y[n]$ back into the adder, the equation has $y[n-1]$: it is recursive.}

\wk{16}{(diagram to equation) read the moving-average diagram}
\stepbox{1. NAME THE WIRES}{After the first $D$: $x[n-1]$. \; After the second $D$: $x[n-2]$.}
\stepdown
\stepbox{2. ADDER OUTPUT}{$x[n]+x[n-1]+x[n-2]$}
\stepdown
\stepbox{3. GAIN}{$y[n]=\keyres{\frac13\big(x[n]+x[n-1]+x[n-2]\big)}$}

\wk{16}{(equation to diagram) $y[n]=2x[n]-0.5\,y[n-1]$}
\stepbox{1. COUNT THE SHIFTS}{One $y[n-1]$ $\Rightarrow$ one $D$, on the output side (feedback)}
\stepdown
\stepbox{2. COUNT THE COEFFICIENTS}{Gain $2$ on the input. \; Gain $-0.5$ after the $D$.}
\stepdown
\stepbox{3. ONE ADDER}{Its inputs: $2x[n]$ and $-0.5\,y[n-1]$. Its output: $y[n]$.}
\stepdown
\stepbox{4. DRAW}{$x\to[2]\to(+)\to y$. \; From $y$: a dot $\to[D]\to[-0.5]\to$ back into $(+)$.}

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[font=\scriptsize]
\node (x) at (0,0) {$x[n]$};
\node[blk] (g1) at (1.2,0) {$2$};
\node[sumnode] (s) at (2.4,0) {$+$};
\fill[white!80] (3.9,0) circle (1.3pt);
\node (y) at (5.0,0) {$y[n]$};
\node[blk] (d) at (3.9,-1.0) {$D$};
\node[blk] (g2) at (2.4,-1.0) {$-0.5$};
\draw[sig] (x) -- (g1); \draw[sig] (g1) -- (s); \draw[sig] (s) -- (y);
\draw[sig] (3.9,0) -- (d.north);
\draw[sig] (d.west) -- (g2.east);
\draw[sig] (g2.north) -- (s.south);
\node[below, text=white!70] at (3.9,-1.3) {$y[n-1]$};
\end{tikzpicture}

\wk{20}{run the moving average with $x[0]=3$, $x[1]=6$, $x[2]=9$, others $0$}
\stepbox{1. $n=0$}{$y[0]=\frac13(x[0]+x[-1]+x[-2])=\frac13(3+0+0)=\keyres{1}$}
\stepdown
\stepbox{2. $n=1$}{$y[1]=\frac13(6+3+0)=\frac93=\keyres{3}$}
\stepdown
\stepbox{3. $n=2$}{$y[2]=\frac13(9+6+3)=\frac{18}{3}=\keyres{6}$}
\stepdown
\stepbox{4. $n=3$}{$y[3]=\frac13(0+9+6)=\frac{15}{3}=\keyres{5}$}
\stepdown
\stepbox{5. $n=4$}{$y[4]=\frac13(0+0+9)=\keyres{3}$}
\stepdown
\stepbox{6. $n=5$ AND LATER}{All three inputs are $0$ $\Rightarrow$ $y=0$}

\wk{16}{run the accumulator $y[n]=y[n-1]+x[n]$ with the switch $x[n]=u[n]$, $y[-1]=0$}
\stepbox{1. $n=0$}{$y[0]=y[-1]+u[0]=0+1=1$}
\stepdown
\stepbox{2. $n=1$}{$y[1]=y[0]+u[1]=1+1=2$}
\stepdown
\stepbox{3. $n=2$}{$y[2]=2+1=3$}
\stepdown
\stepbox{4. PATTERN}{$y[n]=(n+1)\,u[n]=\keyres{r[n+1]}$ \; \why{the running total of the switch is a ramp}}

\wk{12}{(both forms agree) accumulator as a sum, $x[n]=u[n]$, at $n=2$}
\stepbox{1. SUM FORM}{$y[2]=\sum_{k=-\infty}^{2}u[k]=u[0]+u[1]+u[2]$}
\stepdown
\stepbox{2. ADD}{$1+1+1=3$, the same as the recursive form \checkmark}

% ------------------------------------------------------------ 12
\filbreak \subsection{12. system properties}
\idea{Properties are yes/no questions you ask about a machine. Each one is separate: a machine can pass one and fail another.}

{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.24\linewidth}p{0.72\linewidth}@{}}
\term{Property} & \term{In plain English} \\\hline
memoryless & It only looks at \emph{now}. No looking back, no looking ahead. \\
causal & It cannot see the future. It may remember the past. \\
stable (BIBO) & It does not blow up. If the input stays under a ceiling, so does the output. \\
invertible & You can undo it. Different inputs give different outputs, so you can solve for $x$. \\
time invariant & It ignores the clock. Delay the input, and the output is the same, just delayed. \\
linear & Scale in $\to$ scale out, and add in $\to$ add out. If $x_1\to y_1$ and $x_2\to y_2$, then $ax_1+bx_2\to ay_1+by_2$. \\
\end{tabular}}

\filbreak \subsubsection{Quick red flags}
\trap{\textbf{Linearity}: put in $x=0$. A linear machine must give $y=0$. If it gives anything else (like the $+3$ in $2x+3$), it is not linear.}
\trap{\textbf{Time invariance}: an $n$ or $t$ \emph{outside} of $x(\cdot)$, like $n\,x[n]$, means the machine reads the clock. Scaling or flipping inside, like $x(2t)$ or $x(-t)$, also fails.}
\trap{\textbf{Causality}: look for an \emph{advance}, like $x[n+1]$. And $y(t)=x(-t)$ is not causal: at $t=-1$ it needs $x(1)$, a later time.}
\trap{\textbf{Stability}: an $n$ multiplying $x$, or a sum with no end, can blow up.}

\wk{10}{memory and causality of $y[n]=x[n]+x[n-1]$ and $y[n]=x[n+1]$}
\stepbox{1. $y[n]=x[n]+x[n-1]$}{It uses $x[n-1]$, a past value. \; \warn{has memory}, \keyres{causal}}
\stepdown
\stepbox{2. $y[n]=x[n+1]$}{At $n=0$ it needs $x[1]$, a future value. \; \warn{not causal}}

\wk{12}{stability of $y[n]=\sum_{k=-\infty}^{n}x[k]$}
\stepbox{1. PICK A CAPPED INPUT}{The switch, $x[n]=u[n]$. It never goes above $1$.}
\stepdown
\stepbox{2. COMPUTE THE OUTPUT}{$y[n]=\sum_{k=0}^{n}1=n+1$ for $n\geq0$ \; \why{the running total of the switch: a ramp}}
\stepdown
\stepbox{3. IS IT CAPPED?}{$n+1$ grows without limit $\Rightarrow$ \warn{not stable}}

\wk{10}{invertibility of $y=2x$ and $y=x^2$}
\stepbox{1. $y=2x$}{Solve: $x=\dfrac{y}{2}$ $\Rightarrow$ \keyres{invertible}}
\stepdown
\stepbox{2. $y=x^2$}{$x=1$ and $x=-1$ both give $y=1$ $\Rightarrow$ \warn{not invertible} \; \why{squaring throws away the sign}}

\filbreak \subsubsection{Time invariance: two paths, then compare}
\term{Path 1}: delay the input first, then run the machine. \term{Path 2}: run the machine, then delay the output. If both give the same thing, the machine ignores the clock.

\wk{14}{time invariance of $y[n]=n\,x[n]$}
\stepbox{1. PATH 1: DELAY IN, THEN MACHINE}{New input $x_2[n]=x[n-n_0]$. \; Output: $y_2[n]=n\,x[n-n_0]$}
\stepdown
\stepbox{2. PATH 2: MACHINE, THEN DELAY OUT}{Replace each $n$ in $y[n]=n\,x[n]$ with $n-n_0$: \; $y[n-n_0]=(n-n_0)\,x[n-n_0]$}
\stepdown
\stepbox{3. COMPARE}{$n\,x[n-n_0]\neq(n-n_0)\,x[n-n_0]$ $\Rightarrow$ \warn{time varying} \; \why{the lone $n$ reads the clock}}

\wk{14}{time invariance of $y(t)=x(2t)$}
\stepbox{1. PATH 1: DELAY IN, THEN MACHINE}{$x_2(t)=x(t-t_0)$. \; $y_2(t)=x_2(2t)=x(2t-t_0)$ \; \why{put $2t$ where $t$ was in $x_2$}}
\stepdown
\stepbox{2. PATH 2: MACHINE, THEN DELAY OUT}{$y(t-t_0)=x\big(2(t-t_0)\big)=x(2t-2t_0)$}
\stepdown
\stepbox{3. COMPARE}{$x(2t-t_0)\neq x(2t-2t_0)$ $\Rightarrow$ \warn{time varying}}

\wk{12}{time invariance of $y[n]=x[n-1]$}
\stepbox{1. PATH 1: DELAY IN, THEN MACHINE}{$y_2[n]=x_2[n-1]=x[n-1-n_0]$}
\stepdown
\stepbox{2. PATH 2: MACHINE, THEN DELAY OUT}{$y[n-n_0]=x[n-n_0-1]$}
\stepdown
\stepbox{3. COMPARE}{The same $\Rightarrow$ \keyres{time invariant}}

\filbreak \subsubsection{Linearity: combine first, or combine after?}
\term{Path 1}: mix the inputs ($ax_1+bx_2$), then run the machine. \term{Path 2}: run each input separately, then mix the outputs ($ay_1+by_2$). Linear means both paths agree.

\wk{14}{linearity of $y[n]=2x[n]+3$}
\stepbox{1. QUICK TEST}{$x=0$ gives $y=3\neq0$ $\Rightarrow$ not linear. The full test confirms it:}
\stepdown
\stepbox{2. PATH 1: MIX, THEN MACHINE}{$x_3=ax_1+bx_2$. \; $y_3=2(ax_1+bx_2)+3=2ax_1+2bx_2+3$}
\stepdown
\stepbox{3. PATH 2: MACHINE, THEN MIX}{$ay_1+by_2=a(2x_1+3)+b(2x_2+3)=2ax_1+2bx_2+3a+3b$}
\stepdown
\stepbox{4. COMPARE}{$3\neq3a+3b$ for most $a$, $b$ $\Rightarrow$ \warn{not linear} \; \why{linear plus a constant: \term{incrementally linear}}}

\wk{12}{linearity of $y[n]=n\,x[n]$}
\stepbox{1. PATH 1: MIX, THEN MACHINE}{$y_3=n\big(ax_1[n]+bx_2[n]\big)=a\,n\,x_1[n]+b\,n\,x_2[n]$}
\stepdown
\stepbox{2. PATH 2: MACHINE, THEN MIX}{$ay_1+by_2=a\,n\,x_1[n]+b\,n\,x_2[n]$}
\stepdown
\stepbox{3. COMPARE}{The same $\Rightarrow$ \keyres{linear} \; \why{linear, but time varying: the properties are separate}}

\filbreak \subsubsection{Stability with a ceiling $B$ --- the procedure}
\idea{\term{BIBO} means \term{bounded in, bounded out}. ``Bounded'' just means there is a ceiling: some finite number $B$ the input never goes above in size, $\lvert x[n]\rvert\leq B<\infty$. Stable means the output has a ceiling too. This is Lesson 1 again: it asks whether a signal's size stays finite.}
\term{To show stable}:
\begin{enumerate}
\item Assume the input is capped: $\lvert x[n]\rvert\leq B$ for every $n$. Shifted inputs are capped too: $\lvert x[n-1]\rvert\leq B$.
\item Take the absolute value of the equation.
\item Split it with $\lvert a+b\rvert\leq\lvert a\rvert+\lvert b\rvert$ and $\lvert c\,x\rvert=\lvert c\rvert\,\lvert x\rvert$.
\item Replace each $\lvert x[\cdot]\rvert$ with $B$.
\item If you are left with a \keyres{finite number} (no $n$ left, no endless sum), the output is capped: stable.
\end{enumerate}
\term{To show unstable}: find \keyres{one} capped input (for example $x[n]=1$, or the switch $u[n]$) whose output grows without limit. One counterexample is enough.

\trap{An $n$ multiplying $x$ breaks the ceiling: $\lvert n\,x[n]\rvert\leq\lvert n\rvert B$ grows with $n$.}
\trap{An endless sum can break it: the accumulator adds another $B$ at every step.}

\wk{14}{is $y[n]=2x[n]+x[n-1]$ stable?}
\stepbox{1. ASSUME A CEILING}{$\lvert x[n]\rvert\leq B$ for every $n$, so $\lvert x[n-1]\rvert\leq B$ too}
\stepdown
\stepbox{2. ABSOLUTE VALUE}{$\lvert y[n]\rvert=\lvert 2x[n]+x[n-1]\rvert$}
\stepdown
\stepbox{3. SPLIT THE SUM}{$\leq2\lvert x[n]\rvert+\lvert x[n-1]\rvert$}
\stepdown
\stepbox{4. PUT IN $B$}{$\leq2B+B=3B$}
\stepdown
\stepbox{5. CONCLUDE}{$3B$ is finite $\Rightarrow$ \keyres{stable}}

\wk{12}{is the 3-point moving average stable?}
\stepbox{1. ABSOLUTE VALUE AND SPLIT}{$\lvert y[n]\rvert\leq\frac13\big(\lvert x[n]\rvert+\lvert x[n-1]\rvert+\lvert x[n-2]\rvert\big)$}
\stepdown
\stepbox{2. PUT IN $B$}{$\leq\frac13(B+B+B)=B$ $\Rightarrow$ \keyres{stable}}

\wk{12}{is $y[n]=n\,x[n]$ stable?}
\stepbox{1. TRY A CAPPED INPUT}{$x[n]=1$ for all $n$. \; $B=1$}
\stepdown
\stepbox{2. OUTPUT}{$y[n]=n\cdot1=n$}
\stepdown
\stepbox{3. CONCLUDE}{$n$ grows without limit $\Rightarrow$ \warn{not stable} \; \why{one counterexample is enough}}

\wk{12}{is $y[n]=e^{x[n]}$ stable?}
\stepbox{1. ASSUME A CEILING}{$-B\leq x[n]\leq B$}
\stepdown
\stepbox{2. $e^{(\cdot)}$ INCREASES}{$e^{-B}\leq e^{x[n]}\leq e^{B}$}
\stepdown
\stepbox{3. CONCLUDE}{$\lvert y\rvert\leq e^{B}$, finite $\Rightarrow$ \keyres{stable}}

\wk{18}{(recursive) is $y[n]=0.5\,y[n-1]+x[n]$ stable, with $y[-1]=0$?}
\stepbox{1. UNROLL THE RECURSION}{$y[0]=x[0]$. \; $y[1]=x[1]+0.5x[0]$. \; $y[2]=x[2]+0.5x[1]+0.25x[0]$. \; \why{each past input echoes, halved each step}}
\stepdown
\stepbox{2. PATTERN}{$y[n]=\sum_{k=0}^{n}(0.5)^k\,x[n-k]$}
\stepdown
\stepbox{3. ABSOLUTE VALUE AND $B$}{$\lvert y[n]\rvert\leq\sum_{k=0}^{n}(0.5)^kB\leq B\sum_{k=0}^{\infty}(0.5)^k$}
\stepdown
\stepbox{4. GEOMETRIC SUM}{$\sum_{k=0}^{\infty}(0.5)^k=\dfrac{1}{1-0.5}=2$}
\stepdown
\stepbox{5. CONCLUDE}{$\lvert y\rvert\leq2B$ $\Rightarrow$ \keyres{stable} \why{with $1.01$ in place of $0.5$, the echoes grow and the sum has no limit: unstable}}

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
Mless $=$ memoryless. \; TI $=$ time invariant. \; The recursive system starts at rest ($y[-1]=0$).

\trap{The properties are separate. A machine can be linear but not time invariant ($n\,x[n]$), or stable but not causal ($x[n+1]$).}

\end{multicols}

\makeatother
```