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
% formula table: symbols | words
\newenvironment{ftab}{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.3}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.44\linewidth}>{\raggedright\arraybackslash}p{0.515\linewidth}@{}}\term{Formula} & \term{In words} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
% quick-example table: given | work and answer
\newenvironment{qtab}{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.3}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.36\linewidth}>{\raggedright\arraybackslash}p{0.595\linewidth}@{}}\term{Quick example} & \term{Work $\to$ answer} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
% plain two-column lookup table
\newenvironment{ltab}[2]{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.2}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.40\linewidth}>{\raggedright\arraybackslash}p{0.555\linewidth}@{}}\term{#1} & \term{#2} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
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
\newcommand{\slot}[2]{{\setlength{\fboxsep}{1.2pt}\fcolorbox{#1}{black}{\syntaxonfalse\color{#1}\footnotesize #2}}}
% ground symbol at a coordinate
\newcommand{\gnd}[1]{\draw[wire] #1 -- ++(0,-0.12); \draw[wire] #1 ++(-0.15,-0.12) -- ++(0.3,0); \draw[wire] #1 ++(-0.09,-0.18) -- ++(0.18,0); \draw[wire] #1 ++(-0.03,-0.24) -- ++(0.06,0);}

\section{Signals and Systems --- Reference}

\begin{multicols}{2}
\raggedcolumns

\filbreak \subsection{the big picture}
Everything in this course is one of two things:
\begin{itemize}
\item a \term{signal}: a quantity that changes over time, like a voltage or a sound.
\item a \term{system}: a machine that takes a signal in and puts a signal out.
\end{itemize}
The topics build on each other in this order:
\begin{enumerate}
\item \term{How big is a signal?} Energy and power (4--5).
\item \term{Building blocks.} The button $\delta$, the switch $u$, and the ramp $r$ (10).
\item \term{Machines.} Systems, block diagrams, difference equations (11).
\item \term{Describing machines.} Memory, causality, stability, linearity, time invariance (12).
\item \term{One echo describes the machine.} The impulse response $h$ and the convolution sum $y=x*h$ (13).
\end{enumerate}
\keyres{The link from 1 to 4}: BIBO stability asks if a \emph{bounded} input gives a \emph{bounded} output. That is a question about signal size.

\filbreak \subsection{plain-English glossary}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.22\linewidth}p{0.734\linewidth}@{}}
\term{Symbol} & \term{Say it as} \\\hline
$\delta[n]$, $\delta(t)$ & \term{the button}: pressed once at time $0$, then released \\
$u[n]$, $u(t)$ & \term{the switch}: flipped on at time $0$ and left on \\
$r[n]$, $r(t)$ & \term{the ramp}: the running total of the switch, $0,1,2,3,\ldots$ \\
$t$ & the time variable. It sweeps through every time, and is gone after you integrate \\
$T$ & the half-width of a window $[-T,T]$. It is the thing that goes to $\infty$ \\
$t_0$, $n_0$ & ``t-naught'': one fixed time, such as $3$ \\
$N$ & DT window half-width ($2N+1$ samples), or a DT period \\
$\varepsilon$ & ``epsilon'': a tiny number that we shrink toward $0$ \\
$\int\ldots dt$ & add up area as $t$ sweeps (CT) \\
$\sum$ & add up separate terms (DT), the DT twin of $\int$ \\
$dt$ & an infinitely thin slice of time. \warn{Not $\Delta t$.} \\
$B$ & a ceiling: the input never goes above $B$ in size \\
$h[n]$ & \term{the echo} (impulse response): what an LTI machine puts out for one button press \\
$x*h$ & ``$x$ convolved with $h$: add up one echo per input stem \\
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
aliases & $\pm\hat\omega+2\pi k$, \; $\pm f+k f_s$ \\
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
\par\vspace{3pt}
\needspace{3\baselineskip}\term{13. Convolution}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.44\linewidth}p{0.514\linewidth}@{}}
impulse response & $h[n]=$ output for $x=\delta$ \\
convolution sum & $y[n]=\sum_kx[k]\,h[n-k]$ \\
swap roles & $x*h=h*x$ \\
button, delayed button & $x*\delta=x$, \; $x*\delta[n-n_0]=x[n-n_0]$ \\
output range, length & $[a+c,\,b+d]$, \; $L_x+L_h-1$ \\
sum check & $\sum y=\sum x\cdot\sum h$ \\
causal, stable from $h$ & $h[n<0]=0$, \; $\sum\lvert h\rvert<\infty$ \\
series, parallel & $h_1*h_2$, \; $h_1+h_2$ \\
two exponentials & $\dfrac{a^{n+1}-b^{n+1}}{a-b}\,u[n]$ \st\\
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
linear & Scale in $\to$ scale out, add in $\to$ add out? & \keyres{yes} {$n\,x[n]$} \; \warn{no} {$2x+3$} \\
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
system $\to$ stable? & cap the input with $B$ \hfill (12) \\[1pt]
equation $\to h$ & read coefficients, or run $x=\delta$ \hfill (13) \\[1pt]
$h\to$ causal, stable & $h[n<0]=0$, \; $\sum\lvert h\rvert$ \hfill (13) \\[1pt]
stems $x$, $h\to y$ & table: one row per stem \hfill (13) \\[1pt]
pulse and formula $\to y$ & flip and slide, by regions \hfill (13) \\[1pt]
two formulas $\to y$ & sum $k=0..n$, geometric \hfill (13) \\
\end{tabular}}
\par\vspace{2pt}
The number in parentheses is the concept section.

\end{multicols}

\newpage
\section{Signals and Systems --- Concepts}

\begin{multicols}{2}
\raggedcolumns

\term{How to read a worked example.} Every example is a puzzle: colored pieces go into the slots of the same color. One example works one signal or one system.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.27\linewidth}p{0.684\linewidth}@{}}
\term{Step} & \term{What it does} \\\hline
1. PIECES & Say the problem \term{in words}. Read each value off the formula or graph and give it a color. Prep (sine to cosine, sorting terms) is named in this title. \\[1pt]
2. TEMPLATE & The formula, with an empty slot \slot{pcA}{like this} for each piece, in the piece's color. \\[1pt]
3. PLACE & Put each piece in its slot. Then do the arithmetic. A gray \why{note} says why each move is allowed. \\[1pt]
middle steps & One move each, named by the move: SOLVE, LABEL, COMPARE. \\[1pt]
last: CHECK & Test the answer, and say what the test proves. \\
\end{tabular}}
\par\vspace{2pt}
\term{Colors.} Sinusoid colors stay the same everywhere: \pA{amplitude}, \pB{frequency}, \pC{phase or shift}, \pD{sampling rate}. In other examples, step 1 sets the colors.

% ------------------------------------------------------------ 1
\filbreak \subsection{1. signals and sampling}
\idea{A \term{signal} is anything that changes over time and carries information. \term{Sampling} is taking snapshots: one photo every $T_s$ seconds, like a strobe light.}

\begin{itemize}
\item \term{Continuous time} (CT): $x(t)$, round brackets, any real $t$. The movie.
\item \term{Discrete time} (DT): $x[n]$, square brackets, $n$ an \keyres{integer only}. The stack of photos.
\end{itemize}
\trap{$x[2.5]$ does not exist. Between samples a DT signal is not zero. It is undefined.}

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

\wk{12}{sample $x(t)=t^2$ with $T_s=0.5$ s}
\stepbox{1. PIECES}{\term{In words}: take one photo of the movie every half second. \\ the movie \pA{$x(t)=t^2$} \qquad the photo spacing \pB{$T_s=0.5$}}
\stepdown
\stepbox{2. TEMPLATE}{$x[n]=\slot{pcA}{$x(\cdot)$}$ evaluated at $t=n\cdot\slot{pcB}{$T_s$}$}
\stepdown
\stepbox{3. PLACE}{$x[n]=\pA{(}n\cdot\pB{0.5}\pA{)^2}=\keyres{0.25n^2}$ \why{write $n\cdot0.5$ wherever the movie says $t$}}
\stepdown
\stepbox{4. LIST THE PHOTOS}{$x[0]=0$, \; $x[1]=0.25$, \; $x[2]=1$, \; $x[3]=2.25$}
\stepdown
\stepbox{5. CHECK}{photo $n=2$ is taken at $t=1$ s, and $x(1)=1^2=1$ \checkmark}

\wk{12}{(reverse) $x[n]=0.25n^2$ came from $T_s=0.5$ s. Find $x(t)$}
\stepbox{1. PIECES}{\term{In words}: undo the spacing. Photo $n$ was taken at $t=nT_s$, so $n=t/T_s$. \\ the photos \pA{$x[n]=0.25n^2$} \qquad the spacing \pB{$T_s=0.5$}}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=\slot{pcA}{$x[n]$}$ with $n=\dfrac{t}{\slot{pcB}{$T_s$}}$}
\stepdown
\stepbox{3. PLACE}{$n=\dfrac{t}{\pB{0.5}}=2t$ \; $\Rightarrow$ \; $x(t)=\pA{0.25(2t)^2}=\keyres{t^2}$ \why{$(2t)^2=4t^2$}}
\stepdown
\stepbox{4. CHECK}{$t=1$ is $n=2$: \; $0.25(2)^2=1=1^2$ \checkmark}

% ------------------------------------------------------------ 2
\filbreak \subsection{2. sinusoids}
\idea{A wheel spins at a steady speed with a dot on its rim. The dot's height over time is a sinusoid. Wheel size: \pA{amplitude}. Spin rate: \pB{frequency}. Where the dot starts: \pC{phase}.}

$$x(t)=\slot{pcA}{$A$}\cos\big(\slot{pcB}{$\omega$}\,t+\slot{pcC}{$\phi$}\big)$$
\begin{itemize}
\item \pA{$A$}: \term{amplitude}, the peak. It swings between $-A$ and $A$.
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

\wk{12}{read the parts of $x(t)=3\cos\big(4\pi t-\frac{\pi}{3}\big)$}
\stepbox{1. PIECES (MATCH THE FORM)}{\term{In words}: a wheel of size $3$, turning at $4\pi$ rad/s, starting $\frac{\pi}{3}$ late. \\ \pA{$A=3$} \qquad \pB{$\omega=4\pi$} \qquad \pC{$\phi=-\frac{\pi}{3}$}}
\stepdown
\stepbox{2. TEMPLATES}{$f=\dfrac{\slot{pcB}{$\omega$}}{2\pi}$ \qquad $T=\dfrac{1}{f}$ \qquad $t_0=-\dfrac{\slot{pcC}{$\phi$}}{\slot{pcB}{$\omega$}}$}
\stepdown
\stepbox{3. PLACE: FREQUENCY AND PERIOD}{$f=\dfrac{\pB{4\pi}}{2\pi}=\keyres{2}$ Hz \why{one turn is $2\pi$ rad} \qquad $T=\dfrac12=\keyres{0.5}$ s}
\stepdown
\stepbox{4. PLACE: TIME SHIFT}{$t_0=-\dfrac{\pC{-\pi/3}}{\pB{4\pi}}=\keyres{\frac{1}{12}}$ s \why{negative phase: delayed, moves right}}
\stepdown
\stepbox{5. CHECK}{rebuild it: $3\cos\big(4\pi(t-\frac1{12})\big)$, and $4\pi\cdot\frac{1}{12}=\frac{\pi}{3}$ \checkmark}

\wk{12}{(sine first) read the parts of $x(t)=4\sin(10t)$}
\stepbox{1. PIECES (SINE TO COSINE FIRST)}{\term{In words}: a sine is a cosine a quarter turn late. \\ $4\sin(10t)=4\cos\big(10t-\frac{\pi}{2}\big)$ \qquad \pA{$A=4$}, \; \pB{$\omega=10$}, \; \pC{$\phi=-\frac{\pi}{2}$}}
\stepdown
\stepbox{2. TEMPLATES}{$f=\dfrac{\slot{pcB}{$\omega$}}{2\pi}$ \qquad $T=\dfrac{2\pi}{\slot{pcB}{$\omega$}}$}
\stepdown
\stepbox{3. PLACE}{$f=\dfrac{\pB{10}}{2\pi}=\keyres{1.59}$ Hz \qquad $T=\dfrac{2\pi}{\pB{10}}=\keyres{0.628}$ s}
\stepdown
\stepbox{4. CHECK}{$fT=1.59\times0.628=1$ \checkmark \qquad $t=0$: $4\sin0=0=4\cos(-\frac{\pi}{2})$ \checkmark}

\wk{12}{(reverse) build $x(t)$: $A=2$, $T=0.4$ s, first peak at $t=0.1$ s}
\stepbox{1. PIECES}{\term{In words}: a wheel of size $2$, one turn every $0.4$ s, at the top at $t=0.1$. \\ \pA{$A=2$} \qquad \pB{$\omega=\frac{2\pi}{0.4}=5\pi$} \qquad \pC{$t_0=0.1$} $\to$ \pC{$\phi=-\omega t_0=-\frac{\pi}{2}$} \why{the first peak is the shift}}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=\slot{pcA}{$A$}\cos\big(\slot{pcB}{$\omega$}\,t+\slot{pcC}{$\phi$}\big)$}
\stepdown
\stepbox{3. PLACE}{$x(t)=\keyres{\pA{2}\cos\big(\pB{5\pi}t\pC{-\frac{\pi}{2}}\big)}$}
\stepdown
\stepbox{4. CHECK}{$t=0.1$: angle $\frac{\pi}{2}-\frac{\pi}{2}=0$, so $x=2\cos0=2$, the peak \checkmark}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. DT sinusoids and DT frequency}
\idea{Photograph the spinning wheel with a strobe. In the photos you only see \emph{how far the wheel turned between photos}. That angle per photo is the \term{DT frequency} $\hat\omega$, in rad/sample.}

$$x[n]=A\cos(\hat\omega n+\phi), \qquad \hat\omega=\slot{pcB}{$\omega$}\,T_s=\frac{2\pi\,\slot{pcB}{$f$}}{\slot{pcD}{$f_s$}}$$

\term{Aliasing} is the wagon-wheel effect. A turn of $\frac{\pi}{4}$ per photo looks the same as $\frac{\pi}{4}+2\pi$. So $\hat\omega$ and $\hat\omega+2\pi$ give the \keyres{same photos}, and $f$ and $f+f_s$ give the same samples. A cosine is even, so $-\hat\omega$ also gives the same photos: $f_s-f$ aliases to $f$ too.

\filbreak \subsubsection{Which way? --- CT frequency or DT frequency}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.3\linewidth}p{0.654\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$f$, $f_s\to\hat\omega$ & $\hat\omega=\dfrac{2\pi f}{f_s}$ \st\\
$\omega$, $T_s\to\hat\omega$ & $\hat\omega=\omega T_s$ \\
$\hat\omega$, $f_s\to f$ & $f=\dfrac{\hat\omega f_s}{2\pi}$ \; (the lowest answer) \st\\
\end{tabular}}
\par\vspace{2pt}
\trap{DT to CT has more than one answer. Any alias $\pm f+kf_s$ fits the same photos.}

\wk{12}{sample $x(t)=\cos(200\pi t)$ at $f_s=800$ Hz}
\stepbox{1. PIECES}{\term{In words}: the wheel turns $100$ times a second, and the strobe flashes $800$ times a second. \\ \pB{$\omega=200\pi$} ($f=100$ Hz) \qquad \pD{$f_s=800$}}
\stepdown
\stepbox{2. TEMPLATE}{$\hat\omega=\dfrac{\slot{pcB}{$\omega$}}{\slot{pcD}{$f_s$}}$ \why{same as $\omega T_s$}}
\stepdown
\stepbox{3. PLACE}{$\hat\omega=\dfrac{\pB{200\pi}}{\pD{800}}=\keyres{\frac{\pi}{4}}$ rad/sample \; $\Rightarrow$ \; $x[n]=\keyres{\cos\big(\frac{\pi}{4}n\big)}$}
\stepdown
\stepbox{4. CHECK}{$\frac{\pi/4}{2\pi}=\frac18$ turn per photo, so $8$ photos per turn, and $\frac{800}{100}=8$ \checkmark}

\wk{12}{(reverse) $\hat\omega=\frac{\pi}{4}$ at $f_s=800$ Hz. Find $f$}
\stepbox{1. PIECES}{\term{In words}: the wheel turns $\frac{\pi}{4}$ per photo at $800$ photos a second. How fast does it spin? \\ \pB{$\hat\omega=\frac{\pi}{4}$} \qquad \pD{$f_s=800$}}
\stepdown
\stepbox{2. TEMPLATE}{$f=\dfrac{\slot{pcB}{$\hat\omega$}\cdot\slot{pcD}{$f_s$}}{2\pi}$}
\stepdown
\stepbox{3. PLACE}{$f=\dfrac{(\pB{\pi/4})\cdot\pD{800}}{2\pi}=\keyres{100}$ Hz \why{the lowest answer}}
\stepdown
\stepbox{4. CHECK}{$\frac{2\pi\cdot100}{800}=\frac{\pi}{4}$ \checkmark}

\wk{12}{(alias) at $f_s=800$ Hz, do $900$ Hz and $700$ Hz look like $100$ Hz?}
\stepbox{1. PIECES}{\term{In words}: find each wheel's turn per photo, then remove whole turns. \\ \pD{$f_s=800$} \qquad \pB{$f=900$}, \; \pB{$f=700$}}
\stepdown
\stepbox{2. TEMPLATE}{$\hat\omega=\dfrac{2\pi\,\slot{pcB}{$f$}}{\slot{pcD}{$f_s$}}$, then subtract $2\pi$ until it lands in $(-\pi,\pi]$}
\stepdown
\stepbox{3. PLACE: $900$ HZ}{$\hat\omega=\frac{2\pi\cdot\pB{900}}{\pD{800}}=\frac{9\pi}{4}$, \; $-2\pi$ $\to$ $\frac{\pi}{4}$ \; $\Rightarrow$ \warn{same photos} \why{$900=100+f_s$}}
\stepdown
\stepbox{4. PLACE: $700$ HZ}{$\hat\omega=\frac{7\pi}{4}$, \; $-2\pi$ $\to$ $-\frac{\pi}{4}$ \; $\Rightarrow$ \warn{same photos} \why{$\cos$ is even, and $700=f_s-100$}}
\stepdown
\stepbox{5. CHECK}{$n=1$: $\cos\frac{\pi}{4}=\cos\frac{9\pi}{4}=\cos\frac{7\pi}{4}=0.707$ \checkmark}

% ------------------------------------------------------------ 4
\filbreak \subsection{4. energy and power}
\idea{Think of $\lvert x\rvert^2$ as \term{money spent per day}, forever. \term{Energy} is your \keyres{total} spending. \term{Power} is your \keyres{average} per day. Spend \$100 once: total finite, average $0$. Spend \$5 every day: total $\infty$, average \$5.}

\term{Why square?} Picture $x$ as a voltage on a $1\,\Omega$ resistor: $P=V^2/R=x^2$. Squaring also makes negatives count: $(-0.5)^2=0.25$. Without it, $\cos t$ would average to $0$.

\term{Total energy}: add $\lvert x\rvert^2$ over all time, \keyres{no dividing}.
$$E_\infty=\int_{-\infty}^{\infty}\lvert x(t)\rvert^2\,dt \qquad E_\infty=\sum_{n=-\infty}^{\infty}\lvert x[n]\rvert^2$$
\term{Average power}: total inside the window $[-T,T]$, divide by its length $2T$, grow the window.
$$P_\infty=\lim_{T\to\infty}\frac{1}{2T}\int_{-T}^{T}\lvert x(t)\rvert^2\,dt \qquad P_\infty=\lim_{N\to\infty}\frac{1}{2N+1}\sum_{n=-N}^{N}\lvert x[n]\rvert^2$$
\term{Periodic shortcut}: one period tells the story, $P=\frac{1}{T}\int_{\text{period}}\lvert x\rvert^2\,dt$.

\term{Puzzle template for energy}: \; $E=\displaystyle\int_{\slot{pcA}{on at}}^{\slot{pcB}{off at}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$ \; (DT: $\sum$). Where $x=0$ it adds nothing, so the limits shrink to where the signal is on. A switch $u$ tells you the \pA{on} time.

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
\trap{``$16$ forever'' is the \textbf{power}. The energy is $\infty$.}
\trap{$t$ disappears when you integrate. $T$ is what goes to $\infty$. \; $\frac{c}{T}\to0$, not $c$. \; Write $dt$, not $\Delta t$.}
\trap{\textbf{Write the label}: energy signal, power signal, or neither.}

\wk{12}{pulse: $x(t)=2$ for $0\leq t\leq3$, else $0$}
\stepbox{1. PIECES}{\term{In words}: height $2$, on for $3$ s, then off for good. \\ on at \pA{$0$}, \; off at \pB{$3$}, \; \pC{$\lvert x\rvert^2=4$} while on}
\stepdown
\stepbox{2. TEMPLATE}{$E=\displaystyle\int_{\slot{pcA}{on}}^{\slot{pcB}{off}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$}
\stepdown
\stepbox{3. PLACE}{$E=\displaystyle\int_{\pA{0}}^{\pB{3}}\pC{4}\,dt=4(3)=\keyres{12}$ \why{where $x=0$ it adds nothing}}
\stepdown
\stepbox{4. LABEL}{$P=\lim\limits_{T\to\infty}\dfrac{12}{2T}=0$ \why{a fixed total over a growing window} \; $\Rightarrow$ \keyres{energy signal}}
\stepdown
\stepbox{5. CHECK (SHORTCUT $A^2D$)}{$2^2\cdot3=12$ \checkmark}

\wk{12}{decaying exponential: $x(t)=3e^{-2t}u(t)$}
\stepbox{1. PIECES}{\term{In words}: switched on at $0$, never off, shrinking toward $0$. \\ on at \pA{$0$}, \; off \pB{never}, \; \pC{$\lvert x\rvert^2=9e^{-4t}$} \why{squaring doubles the exponent}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\displaystyle\int_{\slot{pcA}{on}}^{\slot{pcB}{off}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$}
\stepdown
\stepbox{3. PLACE}{$E=\displaystyle\int_{\pA{0}}^{\pB{\infty}}\pC{9e^{-4t}}\,dt=9\cdot\frac14=\keyres{2.25}$ \why{$\int_0^\infty e^{-at}dt=\frac1a$}}
\stepdown
\stepbox{4. LABEL}{finite energy \; $\Rightarrow$ \keyres{energy signal}}
\stepdown
\stepbox{5. CHECK}{antiderivative $-\frac94e^{-4t}$: \; $0-\big(-\frac94\big)=2.25$ \checkmark}

\wk{12}{DT geometric: $x[n]=\big(\frac12\big)^nu[n]$}
\stepbox{1. PIECES}{\term{In words}: starts at $1$ at $n=0$, and each stem is half the last. \\ on at \pA{$0$}, \; off \pB{never}, \; \pC{$\lvert x\rvert^2=\big(\frac12\big)^{2n}=\big(\frac14\big)^n$}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\displaystyle\sum_{\slot{pcA}{on}}^{\slot{pcB}{off}}\slot{pcC}{$\lvert x\rvert^2$}$}
\stepdown
\stepbox{3. PLACE}{$E=\displaystyle\sum_{\pA{0}}^{\pB{\infty}}\pC{\big(\tfrac14\big)^n}=\dfrac{1}{1-\frac14}=\keyres{\frac43}$ \why{geometric sum, $r=\frac14$}}
\stepdown
\stepbox{4. LABEL}{finite energy \; $\Rightarrow$ \keyres{energy signal}}
\stepdown
\stepbox{5. CHECK}{$1+0.25+0.0625+0.0156+\ldots\approx1.33$ \checkmark}

\wk{12}{sinusoid: $x(t)=4\cos(3t)$}
\stepbox{1. PIECES}{\term{In words}: it repeats forever, so find the power. \\ \pA{$A=4$} \qquad \pC{$\lvert x\rvert^2=16\cos^2(3t)=8+8\cos(6t)$} \why{$\cos^2\theta=\frac{1+\cos2\theta}{2}$}}
\stepdown
\stepbox{2. TEMPLATE}{$P=$ average of \slot{pcC}{$\lvert x\rvert^2$} over one period}
\stepdown
\stepbox{3. PLACE}{average of $\pC{8}$ is $8$, \; average of $\pC{8\cos(6t)}$ is $0$ \why{a cosine is up as much as down} \; $\Rightarrow$ $P=\keyres{8}$}
\stepdown
\stepbox{4. LABEL}{it never dies out: $E=\infty$ \; $\Rightarrow$ \keyres{power signal}}
\stepdown
\stepbox{5. CHECK (SHORTCUT $\frac{A^2}{2}$)}{$\frac{\pA{4}^2}{2}=8$ \checkmark}

\wk{12}{constant: $x(t)=3$}
\stepbox{1. PIECES}{\term{In words}: always $3$, never dies out, so find the power. \\ \pC{$\lvert x\rvert^2=9$} for all $t$}
\stepdown
\stepbox{2. TEMPLATE}{$P=\lim\limits_{T\to\infty}\dfrac{1}{2T}\displaystyle\int_{-T}^{T}\slot{pcC}{$\lvert x\rvert^2$}\,dt$}
\stepdown
\stepbox{3. PLACE: WINDOW TOTAL}{$\displaystyle\int_{-T}^{T}\pC9\,dt=9T-(-9T)=18T$}
\stepdown
\stepbox{4. DIVIDE BY THE WINDOW}{$P=\dfrac{18T}{2T}=\keyres{9}$ \why{$T$ cancels, so the limit is $9$}}
\stepdown
\stepbox{5. LABEL}{$E=\lim18T=\infty$ \; $\Rightarrow$ \keyres{power signal}}
\stepdown
\stepbox{6. CHECK}{a constant $c$ has $P=c^2$: \; $3^2=9$ \checkmark}

\begin{qtab}
DT $x[n]=(-1)^n$ & $\lvert x\rvert^2=1$, $2N+1$ terms: $P=\frac{2N+1}{2N+1}=\keyres{1}$, \keyres{power signal} \\
$x(t)=t$ & grows without limit: \keyres{neither} \\
\end{qtab}

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
Line through $(t_1,x_1)$, slope $m$: $x=x_1+m(t-t_1)$. Use a shortcut to check an integral, and the reverse.

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

\wk{12}{two flat pieces (left graph)}
\stepbox{1. PIECES}{\term{In words}: height $2$ for $1$ s, then height $-1$ for $2$ s. \\ \pA{flat at $2$, $D=1$} \qquad \pB{flat at $-1$, $D=2$}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\slot{pcA}{$A^2D$}+\slot{pcB}{$A^2D$}$}
\stepdown
\stepbox{3. PLACE}{$E=\pA{2^2(1)}+\pB{(-1)^2(2)}=4+2=\keyres{6}$ \why{$(-1)^2=1$: negatives count}}
\stepdown
\stepbox{4. CHECK BY INTEGRAL}{$\int_0^14\,dt+\int_1^31\,dt=4+2=6$ \checkmark}

\wk{12}{a triangle (right graph)}
\stepbox{1. PIECES}{\term{In words}: a straight rise from $0$ to $2$, then a straight fall back to $0$. \\ \pA{ramp $0\to2$, $D=1$} \qquad \pB{ramp $2\to0$, $D=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\dfrac{\slot{pcA}{$A$}^2\slot{pcA}{$D$}}{3}+\dfrac{\slot{pcB}{$A$}^2\slot{pcB}{$D$}}{3}$}
\stepdown
\stepbox{3. PLACE}{$E=\dfrac{\pA{2}^2(\pA1)}{3}+\dfrac{\pB{2}^2(\pB1)}{3}=\keyres{\frac83}$ \why{a squared ramp is a curve: $\div3$, not $\div2$}}
\stepdown
\stepbox{4. CHECK BY INTEGRAL}{rise $x=2t$: $\int_0^1 4t^2\,dt=\frac43$. The fall is its mirror, $\frac43$ \checkmark}

\wk{12}{a line from $1$ to $3$ over $[0,2]$}
\stepbox{1. PIECES}{\term{In words}: one straight piece that starts at $1$ and ends at $3$. \\ \pA{$A=1$} \qquad \pB{$B=3$} \qquad \pC{$D=2$}}
\stepdown
\stepbox{2. TEMPLATE}{$E=\dfrac{\slot{pcC}{$D$}}{3}\big(\slot{pcA}{$A$}^2+\slot{pcA}{$A$}\slot{pcB}{$B$}+\slot{pcB}{$B$}^2\big)$}
\stepdown
\stepbox{3. PLACE}{$E=\dfrac{\pC2}{3}\big(\pA1+\pA1\cdot\pB3+\pB9\big)=\dfrac23(13)=\keyres{\frac{26}{3}}$}
\stepdown
\stepbox{4. CHECK BY INTEGRAL}{$x=1+t$: $\int_0^2(1+2t+t^2)\,dt=2+4+\frac83=\frac{26}{3}$ \checkmark}

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

\wk{12}{a DT stem plot (left graph)}
\stepbox{1. PIECES (EVERY STEM)}{\term{In words}: no widths in DT, so square each stem height and add. \\ heights \pC{$1$, $2$, $-2$, $1$} at $n=-1,0,1,2$}
\stepdown
\stepbox{2. TEMPLATE}{$E=\sum\slot{pcC}{$h$}^2$}
\stepdown
\stepbox{3. PLACE}{$E=\pC1^2+\pC2^2+(\pC{-2})^2+\pC1^2=1+4+4+1=\keyres{10}$}
\stepdown
\stepbox{4. LABEL}{$P=\lim\limits_{N\to\infty}\frac{10}{2N+1}=0$ \; $\Rightarrow$ \keyres{energy signal}}
\stepdown
\stepbox{5. CHECK}{$4$ stems, each counted once, the negative squared to $+4$ \checkmark}

\wk{12}{a periodic graph (right graph): power, not energy}
\stepbox{1. PIECES (ONE PERIOD, $T=2$)}{\term{In words}: it repeats every $2$ s, so find the power over one period. \\ \pA{flat at $2$, $D=1$} \qquad \pB{flat at $0$, $D=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$P=\dfrac{\slot{pcA}{$A^2D$}+\slot{pcB}{$A^2D$}}{T}$}
\stepdown
\stepbox{3. PLACE}{$P=\dfrac{\pA{4}+\pB{0}}{2}=\keyres{2}$}
\stepdown
\stepbox{4. LABEL}{it repeats forever: $E=\infty$ \; $\Rightarrow$ \keyres{power signal}}
\stepdown
\stepbox{5. CHECK}{on half the time at $x^2=4$: average $\frac{4}{2}=2$ \checkmark}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. transformations of the time variable}
\idea{You are not changing the shape, only \emph{when} things happen. Ask one question of every corner of the graph: \term{where did this point move to?} It keeps its height and lands at a new time.}
\begin{itemize}
\item \term{Shift} $x(t-t_0)$: $t_0>0$ moves \keyres{right} (a \term{delay}). $t_0<0$ moves left (an \term{advance}).
\item \term{Reversal} $x(-t)$: play the tape backwards, mirror about $t=0$.
\item \term{Scaling} $x(at)$: fast-forward (compress) if $\lvert a\rvert>1$. Slow motion (stretch) if $\lvert a\rvert<1$.
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

\wk{12}{sketch $x(2t+1)$ from $x(t)$ (the dots move)}
\stepbox{1. PIECES}{\term{In words}: every corner keeps its height and moves to a new time. \\ corners \pA{$t=0$} (height $0$), \pD{$t=1$} (height $1$), \pE{$t=2$} (height $1$, then drops) \qquad $a=2$, $b=1$}
\stepdown
\stepbox{2. TEMPLATE}{$t_{\text{new}}=\dfrac{\slot{white}{$t_{\text{old}}$}-1}{2}$}
\stepdown
\stepbox{3. PLACE EACH DOT}{\pA{$\frac{0-1}{2}=-\frac12$} \qquad \pD{$\frac{1-1}{2}=0$} \qquad \pE{$\frac{2-1}{2}=\frac12$} \why{heights unchanged}}
\stepdown
\stepbox{4. DRAW}{connect the dots in the same order: a ramp on $[-\frac12,0]$, flat at $1$ until $\frac12$, then a drop to $0$}
\stepdown
\stepbox{5. CHECK}{$t=0$: $x(2\cdot0+1)=x(1)=1$, the \pD{blue dot} \checkmark}

\wk{12}{(reversal) sketch $x(-t+2)$ from the same $x(t)$}
\stepbox{1. PIECES}{\term{In words}: play the tape backwards, then slide it. Each corner still keeps its height. \\ corners \pA{$0$}, \pD{$1$}, \pE{$2$} \qquad $a=-1$, $b=2$}
\stepdown
\stepbox{2. TEMPLATE}{$t_{\text{new}}=\dfrac{\slot{white}{$t_{\text{old}}$}-2}{-1}=2-\slot{white}{$t_{\text{old}}$}$}
\stepdown
\stepbox{3. PLACE EACH DOT}{\pA{$0\to2$} \qquad \pD{$1\to1$} \qquad \pE{$2\to0$}}
\stepdown
\stepbox{4. DRAW}{flat at $1$ on $[0,1]$, then a ramp $1\to0$ on $[1,2]$: the mirror image}
\stepdown
\stepbox{5. CHECK}{$t=1.5$: $x(-1.5+2)=x(0.5)=0.5$, on the ramp \checkmark}

\wk{12}{(DT compress) $x[0]=1$, $x[1]=2$, $x[2]=3$, else $0$. Find $x[2n]$}
\stepbox{1. PIECES}{\term{In words}: keep every other photo. \\ samples at \pA{$0$}, \pD{$1$}, \pE{$2$} \qquad $a=2$, $b=0$}
\stepdown
\stepbox{2. TEMPLATE}{$n_{\text{new}}=\dfrac{\slot{white}{$n_{\text{old}}$}}{2}$, and it must be an \keyres{integer}}
\stepdown
\stepbox{3. PLACE EACH SAMPLE}{\pA{$0\to0$} \qquad \pE{$2\to1$} \qquad \warn{\pD{$1\to\frac12$}: not an integer, lost}}
\stepdown
\stepbox{4. RESULT}{$x[2n]$: \; $\keyres{1}$ at $n=0$, \; $\keyres{3}$ at $n=1$, else $0$}
\stepdown
\stepbox{5. CHECK}{$n=1$: $x[2\cdot1]=x[2]=3$ \checkmark \why{the $2$ is gone for good: $x[2n]$ cannot be undone}}

\begin{qtab}
delay $x[n-2]$, same $x$ & each sample $+2$: $0,1,2\to\keyres{2,3,4}$ \\
reverse $x[-n]$, same $x$ & each sample flips: $0,1,2\to\keyres{0,-1,-2}$ \\
\end{qtab}

\filbreak \subsubsection{Which way? --- undo a transformation}
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.614\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
$x(t)\to x(at+b)$ & map each breakpoint: $t_{\text{new}}=\frac{t_{\text{old}}-b}{a}$ \\[2pt]
$y(t)=x(at+b)\to x(t)$ & $x(t)=y\big(\frac{t-b}{a}\big)$ \\
\end{tabular}}
\par\vspace{2pt}
\trap{$x[2n]$ cannot be undone. The odd-index photos were thrown away.}

\wk{12}{(reverse) $y(t)=x(2t+1)$. Find $x(t)$}
\stepbox{1. PIECES}{\term{In words}: undo the map. Solve $2t+1=s$ for $t$, then rename $s$ to $t$. \\ \pB{$a=2$} \qquad \pC{$b=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=y\Big(\dfrac{t-\slot{pcC}{$b$}}{\slot{pcB}{$a$}}\Big)$}
\stepdown
\stepbox{3. PLACE}{$x(t)=\keyres{y\Big(\dfrac{t-\pC1}{\pB2}\Big)}$}
\stepdown
\stepbox{4. CHECK}{$y\big(\frac{t-1}{2}\big)=x\big(2\cdot\frac{t-1}{2}+1\big)=x(t)$ \checkmark}

\filbreak \subsubsection{Which way? --- find $y=A\,x(at+b)$ from two graphs}
$$y(t)=\slot{pcA}{$A$}\,x\big(\slot{pcB}{$a$}\,t+\slot{pcC}{$b$}\big)$$
\begin{enumerate}
\item \pA{$A$} $=\frac{\text{height of }y}{\text{height of }x}$. Upside down means $A<0$.
\item Mirrored? Then \pB{$a$}$\,<0$.
\item Two matching points: $x$ at $t_1$, $t_2$ moved to $\tau_1$, $\tau_2$. Solve $a\tau_1+b=t_1$, \; $a\tau_2+b=t_2$ \why{$y$ at $\tau$ is $x$ at $a\tau+b$}.
\item Check a third point.
\end{enumerate}

\wk{12}{$x$: ramp $0\to1$ on $[0,4]$. \; $y$: same ramp, height $3$, on $[-1,1]$}
\stepbox{1. PIECES}{\term{In words}: $y$ is $x$ made $3$ times taller and squeezed onto $[-1,1]$, not flipped. \\ \pA{$A=\frac31=3$} \qquad start $t=0$ moved to $\tau=-1$, \; end $t=4$ moved to $\tau=1$}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcB}{$a$}\,\tau+\slot{pcC}{$b$}=t$ for each matching pair}
\stepdown
\stepbox{3. PLACE, SOLVE}{start: $\pB a(-1)+\pC b=0$ \qquad end: $\pB a(1)+\pC b=4$ \qquad add: \pC{$b=2$}, then \pB{$a=2$}}
\stepdown
\stepbox{4. RESULT}{$y(t)=\keyres{\pA{3}\,x(\pB{2}t+\pC{2})}$}
\stepdown
\stepbox{5. CHECK (A THIRD POINT)}{$t=0$: $3x(2)=3(0.5)=1.5$, half of $3$ \checkmark}

\wk{12}{(mirrored) same $x$, and $y$ falls $3\to0$ on $[-1,1]$}
\stepbox{1. PIECES}{\term{In words}: same as before, but flipped left to right. \\ \pA{$A=3$} \qquad start $t=0$ moved to $\tau=1$, \; end $t=4$ moved to $\tau=-1$}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcB}{$a$}\,\tau+\slot{pcC}{$b$}=t$ for each matching pair}
\stepdown
\stepbox{3. PLACE, SOLVE}{start: $\pB a(1)+\pC b=0$ \qquad end: $\pB a(-1)+\pC b=4$ \qquad \pB{$a=-2$}, \pC{$b=2$}}
\stepdown
\stepbox{4. RESULT}{$y=\keyres{\pA3\,x(\pB{-2}t+\pC2)}$}
\stepdown
\stepbox{5. CHECK}{$t=-1$: $3x(4)=3$, the top \checkmark \qquad $a<0$, as a mirror needs \checkmark}

\wk{12}{(DT) $x[0..2]=1,2,3$, and $y[-1]=3$, $y[0]=2$, $y[1]=1$}
\stepbox{1. PIECES}{\term{In words}: same heights, read backwards. \\ \pA{$A=1$} \qquad mirrored: \pB{$a=-1$} \qquad one match: $y[-1]=3=x[2]$}
\stepdown
\stepbox{2. TEMPLATE}{$y[n]=x[\slot{pcB}{$a$}\,n+\slot{pcC}{$b$}]$}
\stepdown
\stepbox{3. PLACE, SOLVE}{$x[\pB{-1}(-1)+\pC b]=x[2]$ $\Rightarrow$ $1+b=2$, \; \pC{$b=1$}}
\stepdown
\stepbox{4. RESULT}{$y[n]=\keyres{x[-n+1]}$}
\stepdown
\stepbox{5. CHECK}{$n=0$: $x[1]=2$ \checkmark \qquad $n=1$: $x[0]=1$ \checkmark}

% ------------------------------------------------------------ 7
\filbreak \subsection{7. periodic signals}
\idea{A periodic signal is a song on repeat. Slide it by one period and nothing changes. The \term{fundamental period} is the shortest loop.}
$$x(t)=x(t+T) \qquad x[n]=x[n+N], \; N\text{ an \keyres{integer}}$$
\begin{itemize}
\item \term{CT sinusoid}: always periodic, \; $T=\dfrac{2\pi}{\slot{pcB}{$\omega$}}$.
\item \term{DT sinusoid}: periodic only if a whole number of photos holds a whole number of turns: \; $\dfrac{\slot{pcB}{$\hat\omega$}}{2\pi}=\dfrac{m}{\slot{pcD}{$N$}}$ in lowest terms.
\item \term{Sum of two}: the loops realign after $\mathrm{lcm}(T_1,T_2)$.
\end{itemize}
\trap{$\cos(n)$ is not periodic ($\frac{1}{2\pi}$ is irrational), though $\cos(t)$ is. Sampling can destroy periodicity.}

\wk{12}{period of $\cos\big(\frac{2\pi}{3}t\big)+\sin\big(\frac{\pi}{2}t\big)$}
\stepbox{1. PIECES}{\term{In words}: two songs on repeat. Find when both loops line up again. \\ \pB{$\omega_1=\frac{2\pi}{3}$} \qquad \pD{$\omega_2=\frac{\pi}{2}$}}
\stepdown
\stepbox{2. TEMPLATE}{$T_1=\dfrac{2\pi}{\slot{pcB}{$\omega_1$}}$, \quad $T_2=\dfrac{2\pi}{\slot{pcD}{$\omega_2$}}$, \quad $T=\mathrm{lcm}(T_1,T_2)$}
\stepdown
\stepbox{3. PLACE}{$T_1=\dfrac{2\pi}{\pB{2\pi/3}}=3$ \qquad $T_2=\dfrac{2\pi}{\pD{\pi/2}}=4$}
\stepdown
\stepbox{4. LCM}{$\mathrm{lcm}(3,4)=\keyres{12}$ s \why{the first time both loops restart together}}
\stepdown
\stepbox{5. CHECK}{$12$ s holds $4$ whole cycles of the first and $3$ of the second \checkmark}

\wk{12}{DT period of $\cos\big(\frac{3\pi}{8}n\big)$}
\stepbox{1. PIECES}{\term{In words}: find the fewest photos that hold a whole number of turns. \\ \pB{$\hat\omega=\frac{3\pi}{8}$}}
\stepdown
\stepbox{2. TEMPLATE}{$\dfrac{\slot{pcB}{$\hat\omega$}}{2\pi}=\dfrac{m}{\slot{pcD}{$N$}}$, reduced}
\stepdown
\stepbox{3. PLACE}{$\dfrac{\pB{3\pi/8}}{2\pi}=\dfrac{3}{16}$, already reduced \; $\Rightarrow$ \pD{$N=\keyres{16}$}}
\stepdown
\stepbox{4. CHECK}{$\frac{3\pi}{8}\cdot16=6\pi$: exactly $3$ whole turns \checkmark}

\begin{qtab}
$\cos\big(\frac{4\pi}{6}n\big)$ & $\frac{4}{12}=\frac13$ $\Rightarrow$ $N=\keyres{3}$ \warn{not $12$: reduce first} \\
$\cos(n)$ & $\frac{1}{2\pi}$ is not a fraction of integers: \keyres{not periodic} \\
\end{qtab}

% ------------------------------------------------------------ 8
\filbreak \subsection{8. even and odd signals}
\idea{\term{Even}: a mirror on the vertical axis. The left half reflects the right. \term{Odd}: spin the graph half a turn about the origin and it lands on itself.}
\begin{itemize}
\item \pA{Even}: $x(-t)=x(t)$. \; $\cos$, $t^2$, constants.
\item \pC{Odd}: $x(-t)=-x(t)$. \; $\sin$, $t$, $t^3$.
\end{itemize}
\term{Test}: replace $t$ with $-t$, simplify, compare. \; \term{Split}:
$$\mathcal{E}v\{x\}=\frac{x(t)+x(-t)}{2} \qquad \mathcal{O}d\{x\}=\frac{x(t)-x(-t)}{2}$$
\term{Shortcut for sums of terms}: sort each term into a \pA{even} or \pC{odd} pile. The piles \emph{are} the two parts. \; Products work like signs: even$\cdot$even $=$ odd$\cdot$odd $=$ even, and even$\cdot$odd $=$ odd.
\trap{An odd signal is $0$ at the origin: $x(0)=-x(0)$.}

\wk{12}{is $x(t)=t^3-2t$ even, odd, or neither?}
\stepbox{1. PIECES (SORT TERMS)}{\term{In words}: put each term in the even pile or the odd pile. \\ \pC{$t^3$} odd \qquad \pC{$-2t$} odd \qquad no even terms}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=\slot{pcA}{even pile}+\slot{pcC}{odd pile}$}
\stepdown
\stepbox{3. PLACE}{$x=\pA{0}+\pC{(t^3-2t)}$ \; $\Rightarrow$ \keyres{odd} \why{only the odd pile has terms}}
\stepdown
\stepbox{4. CHECK BY TEST}{$x(-t)=-t^3+2t=-(t^3-2t)=-x(t)$ \checkmark}

\wk{12}{$x(t)=t^2+t$: test, then split}
\stepbox{1. PIECES (SORT TERMS)}{\term{In words}: one term in each pile, so it is neither, and the piles are the parts. \\ \pA{$t^2$} even \qquad \pC{$t$} odd}
\stepdown
\stepbox{2. TEMPLATE}{$\mathcal{E}v=\slot{pcA}{even pile}$, \qquad $\mathcal{O}d=\slot{pcC}{odd pile}$}
\stepdown
\stepbox{3. PLACE}{$\mathcal{E}v=\keyres{\pA{t^2}}$ \qquad $\mathcal{O}d=\keyres{\pC{t}}$ \qquad both piles non-empty \; $\Rightarrow$ \keyres{neither}}
\stepdown
\stepbox{4. CHECK BY FORMULA}{$\dfrac{(t^2+t)+(t^2-t)}{2}=t^2$ \checkmark \quad $\dfrac{(t^2+t)-(t^2-t)}{2}=t$ \checkmark}

\wk{12}{DT split: $x[0]=1$, $x[1]=2$, $x[2]=3$, else $0$}
\stepbox{1. PIECES}{\term{In words}: no formula, so build a table. Read $x[-n]$ from $x$ at the opposite index. \\ $x[n]$ for $n=-2..2$: \; $0,0,1,2,3$ \qquad $x[-n]$: \; $3,2,1,0,0$}
\stepdown
\stepbox{2. TEMPLATE}{\pA{$\dfrac{x[n]+x[-n]}{2}$} \qquad \pC{$\dfrac{x[n]-x[-n]}{2}$}, \; one column per $n$}
\stepdown
\stepbox{3. PLACE}{{\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}c|ccccc@{}}
$n$ & $-2$ & $-1$ & $0$ & $1$ & $2$ \\\hline
$x[n]$ & $0$ & $0$ & $1$ & $2$ & $3$ \\
$x[-n]$ & $3$ & $2$ & $1$ & $0$ & $0$ \\\hline
\pA{even} & $1.5$ & $1$ & $1$ & $1$ & $1.5$ \\
\pC{odd} & $-1.5$ & $-1$ & $0$ & $1$ & $1.5$ \\
\end{tabular}}}
\stepdown
\stepbox{4. CHECK EACH COLUMN}{\pA{even} $+$ \pC{odd} $=x[n]$: \; $n=2$: $1.5+1.5=3$ \checkmark \; $n=-2$: $0$ \checkmark \qquad odd part is $0$ at $n=0$ \checkmark}

% ------------------------------------------------------------ 9
\filbreak \subsection{9. complex exponentials}
\idea{$e^{j\theta}$ is an arrow of length $1$ pointing at angle $\theta$. Let $\theta=\omega t$ and it spins. Its shadow on the horizontal axis is a cosine. Multiply by $e^{\sigma t}$ and it also grows or shrinks: a spiral.}

\term{Euler}: $e^{j\theta}=\cos\theta+j\sin\theta$. \quad $\cos\theta=\dfrac{e^{j\theta}+e^{-j\theta}}{2}$, \; $\sin\theta=\dfrac{e^{j\theta}-e^{-j\theta}}{2j}$ \why{two arrows spinning opposite ways}.

\term{CT form}: $x(t)=Ce^{at}$, \; $C=\slot{pcA}{$\lvert C\rvert$}e^{j\slot{pcC}{$\phi$}}$ (start length, angle), \; $a=\slot{pcD}{$\sigma$}+j\slot{pcB}{$\omega$}$ (growth, spin). The template:
$$\mathrm{Re}\{Ce^{at}\}=\slot{pcA}{$\lvert C\rvert$}\,e^{\slot{pcD}{$\sigma$}t}\cos\big(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$}\big)$$
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.614\linewidth}@{}}
\term{Case} & \term{Real part looks like} \\\hline
$\omega=0$ & no spin: \term{real exponential}. Grows if $\sigma>0$, decays if $\sigma<0$ \\[2pt]
$\sigma=0$ & pure spin: \term{sinusoid}, $T=\frac{2\pi}{\lvert\omega\rvert}$ \\[2pt]
both & spiral: \term{damped sinusoid}, envelope $\lvert C\rvert e^{\sigma t}$ \\
\end{tabular}}
\par\vspace{2pt}
\term{DT form}: $x[n]=C\alpha^n$. Each step multiplies by $\alpha$. $\lvert\alpha\rvert<1$ decays, $\lvert\alpha\rvert>1$ grows, $\alpha<0$ flips sign each step.

\keyres{DT frequencies repeat every $2\pi$}: $e^{j(\hat\omega+2\pi)n}=e^{j\hat\omega n}$, because $e^{j2\pi n}=1$ for integer $n$.

{\small
\begin{tabular}{@{}p{0.485\linewidth}|p{0.465\linewidth}@{}}
\term{CT} $e^{j\omega t}$ & \term{DT} $e^{j\hat\omega n}$ \\\hline
each $\omega$ a different signal & $\hat\omega$ and $\hat\omega+2\pi$ the same \\[2pt]
always periodic & periodic only if $\frac{\hat\omega}{2\pi}$ is rational \\[2pt]
larger $\omega$ $\Rightarrow$ faster & fastest at $\hat\omega=\pi$ ($+1,-1,\ldots$) \\
\end{tabular}}

\wk{12}{real part of $x(t)=2e^{j\pi/3}e^{(-1+j4)t}$}
\stepbox{1. PIECES}{\term{In words}: an arrow of length $2$, starting at $\frac{\pi}{3}$, spinning at $4$ rad/s, shrinking like $e^{-t}$. \\ $C$: \pA{$\lvert C\rvert=2$}, \pC{$\phi=\frac{\pi}{3}$} \qquad $a$: \pD{$\sigma=-1$}, \pB{$\omega=4$}}
\stepdown
\stepbox{2. TEMPLATE}{$\mathrm{Re}\{x\}=\slot{pcA}{$\lvert C\rvert$}\,e^{\slot{pcD}{$\sigma$}t}\cos\big(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$}\big)$}
\stepdown
\stepbox{3. PLACE}{$\mathrm{Re}\{x\}=\keyres{\pA{2}\,e^{\pD{-1}t}\cos\big(\pB{4}t+\pC{\tfrac{\pi}{3}}\big)}$ \why{a damped sinusoid with envelope $2e^{-t}$}}
\stepdown
\stepbox{4. CHECK}{$t=0$: $\mathrm{Re}\{2e^{j\pi/3}\}=2\cos\frac{\pi}{3}=1$, and the answer gives $2\cdot1\cdot\frac12=1$ \checkmark}

\wk{12}{(reverse) write $5e^{-2t}\cos\big(3t-\frac{\pi}{4}\big)$ as $\mathrm{Re}\{Ce^{at}\}$}
\stepbox{1. PIECES (MATCH THE TEMPLATE)}{\term{In words}: read the length, growth, spin, and start angle off the real signal. \\ \pA{$\lvert C\rvert=5$} \qquad \pD{$\sigma=-2$} \qquad \pB{$\omega=3$} \qquad \pC{$\phi=-\frac{\pi}{4}$}}
\stepdown
\stepbox{2. TEMPLATE}{$C=\slot{pcA}{$\lvert C\rvert$}e^{j\slot{pcC}{$\phi$}}$ \qquad $a=\slot{pcD}{$\sigma$}+j\slot{pcB}{$\omega$}$}
\stepdown
\stepbox{3. PLACE}{$C=\pA{5}e^{j\pC{(-\pi/4)}}=\keyres{5e^{-j\pi/4}}$ \qquad $a=\pD{-2}+j\pB{3}=\keyres{-2+j3}$}
\stepdown
\stepbox{4. CHECK}{$\mathrm{Re}\{5e^{-j\pi/4}e^{(-2+j3)t}\}=5e^{-2t}\cos\big(3t-\frac{\pi}{4}\big)$ \checkmark}

\wk{12}{write $6\cos(5t)$ as two complex exponentials}
\stepbox{1. PIECES}{\term{In words}: a cosine is two arrows spinning opposite ways, each half as long. \\ \pA{$A=6$} \qquad \pB{$\omega=5$}}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcA}{$A$}\cos(\slot{pcB}{$\omega$}t)=\slot{pcA}{$A$}\cdot\dfrac{e^{j\slot{pcB}{$\omega$}t}+e^{-j\slot{pcB}{$\omega$}t}}{2}$}
\stepdown
\stepbox{3. PLACE}{$\pA6\cdot\dfrac{e^{j\pB5t}+e^{-j\pB5t}}{2}=\keyres{3e^{j5t}+3e^{-j5t}}$}
\stepdown
\stepbox{4. CHECK}{$t=0$: $3+3=6=6\cos0$ \checkmark}

\begin{qtab}
$\cos\big(\frac{9\pi}{4}n\big)$ & remove a whole turn: $\frac{9\pi}{4}-2\pi=\frac{\pi}{4}$ $\Rightarrow$ $\keyres{\cos\big(\frac{\pi}{4}n\big)}$, \; $N=\keyres{8}$ \\
$x[n]=(-0.5)^n$ & $\alpha=-0.5$: shrinks and flips sign each step: $1,-0.5,0.25,\ldots$ \\
\end{qtab}

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
\term{Switch $=$ running total of presses}: \; $u[n]=\sum_{k=-\infty}^{n}\delta[k]$ \why{no presses before $0$, one press at $0$, the total stays $1$}. \; \term{Back}: a switch on at $0$ minus a switch on at $1$ is on only at $0$: \; $\delta[n]=u[n]-u[n-1]$.

\term{Where is it?} Set the inside to $0$ and solve. $\delta[n-k]$ sits at $n=k$. $u[n-k]$ turns on at $n=k$.

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

\wk{12}{write the stems above with buttons}
\stepbox{1. PIECES (HEIGHT AT POSITION)}{\term{In words}: one button per stem, as tall as the stem, pressed at its position. \\ \pA{$2$ at $-1$} \qquad \pB{$-1$ at $0$} \qquad \pC{$3$ at $1$} \qquad \pD{$1$ at $3$} \why{no stem at $2$: no term}}
\stepdown
\stepbox{2. TEMPLATE (ONE PER STEM)}{$\slot{white}{$h$}\,\delta[n-\slot{white}{$k$}]+\cdots$}
\stepdown
\stepbox{3. PLACE}{$x[n]=\keyres{\pA{2\delta[n+1]}\;\pB{-\delta[n]}\;\pC{+3\delta[n-1]}\;\pD{+\delta[n-3]}}$ \why{$n-(-1)=n+1$}}
\stepdown
\stepbox{4. CHECK}{$n=1$: only $\delta[n-1]$ is on, so $x[1]=3$ \checkmark \qquad $n=2$: all off, $0$ \checkmark}

\wk{12}{(reverse) read the stems of $x[n]=4\delta[n-2]-2\delta[n+3]$}
\stepbox{1. PIECES}{\term{In words}: each button is one stem. Its number is the height. Where its inside is $0$ is the position. \\ \pA{$4\delta[n-2]$} \qquad \pB{$-2\delta[n+3]$}}
\stepdown
\stepbox{2. TEMPLATE}{coefficient $=$ height \qquad inside $=0$ $\Rightarrow$ position}
\stepdown
\stepbox{3. PLACE}{\pA{$n-2=0$}: $x[2]=\keyres{4}$ \qquad \pB{$n+3=0$}: $x[-3]=\keyres{-2}$ \why{$+3$ is an advance: left}}
\stepdown
\stepbox{4. CHECK}{$n=2$: $4(1)-2(0)=4$ \checkmark}

\wk{12}{DT pulse $x[n]=u[n]-u[n-3]$}
\stepbox{1. PIECES}{\term{In words}: a switch on at $0$, and a second switch that cancels it from $3$ on. \\ on at \pA{$a=0$}, \; off at \pB{$b=3$}}
\stepdown
\stepbox{2. TEMPLATE}{on for $\slot{pcA}{$a$}\leq n\leq\slot{pcB}{$b$}-1$}
\stepdown
\stepbox{3. PLACE}{on for $\pA0\leq n\leq\pB3-1=2$ \; $\Rightarrow$ \; $x=\keyres{\delta[n]+\delta[n-1]+\delta[n-2]}$}
\stepdown
\stepbox{4. FIRST DIFFERENCE}{a button at each switch: $x[n]-x[n-1]=\keyres{\delta[n]-\delta[n-3]}$}
\stepdown
\stepbox{5. CHECK}{$n=3$: $u[3]-u[0]=1-1=0$, already off \checkmark}

\filbreak \subsubsection{The CT button}
A one-instant press does not exist in CT. Picture a rectangle of width $\varepsilon$, height $\frac{1}{\varepsilon}$: area $1$ always. Shrink $\varepsilon\to0$: infinitely tall, \keyres{area still $1$}. A hammer tap: instant, but a definite amount of hit.
$$\int_{-\infty}^{\infty}\delta(t)\,dt=1 \qquad\text{(CT: \keyres{area} $1$, \; DT: \keyres{height} $1$)}$$
\term{CT switch}: $u(t)=\int_{-\infty}^{t}\delta(\tau)\,d\tau$. Back: $\delta(t)=\frac{du}{dt}$. A jump in a signal becomes a button in its derivative.
\trap{$\delta$ is a function of $t$, not a variable. $\int\delta\,dt$ is not $\delta^2$. Use its one fact, area $1$.}

\filbreak \subsubsection{Sifting: the camera flash}
Fire a flash at $t_0$ and see what value of $g$ it captures. The template:
$$\int_{\slot{pcD}{lo}}^{\slot{pcD}{hi}}\slot{pcA}{$g(t)$}\,\delta\big(t-\slot{pcB}{$t_0$}\big)\,dt=\begin{cases}\slot{pcA}{$g$}(\slot{pcB}{$t_0$}) & \slot{pcB}{$t_0$}\text{ inside }[\slot{pcD}{lo},\slot{pcD}{hi}]\\0 & \text{outside}\end{cases}$$
\term{Three questions}: (1) \pB{Where is the flash?} Set the inside of $\delta$ to $0$. (2) \pD{In the window?} If not, the answer is $0$. (3) \pA{What does it capture?} Plug $t_0$ into everything except the $\delta$. The answer has no $\delta$ left.

\term{Sampling form}: $x(t)\,\delta(t-t_0)=x(t_0)\,\delta(t-t_0)$. DT is the same with $n_0$.

\wk{12}{$\displaystyle\int_{-2}^{6}(3t+1)\,\delta(t-4)\,dt$}
\stepbox{1. PIECES (THE THREE QUESTIONS)}{\term{In words}: a flash at one instant captures $3t+1$ there, if the flash is inside the window. \\ \pB{flash at $t=4$} \why{$t-4=0$} \qquad \pD{window $[-2,6]$} \qquad \pA{$g=3t+1$}}
\stepdown
\stepbox{2. TEMPLATE}{\slot{pcB}{flash} in \slot{pcD}{window}? \; yes: $\slot{pcA}{$g$}(\slot{pcB}{flash})$ \qquad no: $0$}
\stepdown
\stepbox{3. PLACE}{$\pB4$ is in $\pD{[-2,6]}$ \; $\Rightarrow$ \; $\pA{3(\pB4)+1}=\keyres{13}$}
\stepdown
\stepbox{4. CHECK}{no $\delta$ is left in the answer \checkmark}

\wk{12}{(outside the window) $\displaystyle\int_{1}^{3}5\,\delta(t)\,dt$}
\stepbox{1. PIECES (THE THREE QUESTIONS)}{\term{In words}: the flash fires at $0$, but the window starts at $1$. \\ \pB{flash at $t=0$} \qquad \pD{window $[1,3]$} \qquad \pA{$g=5$}}
\stepdown
\stepbox{2. TEMPLATE}{\slot{pcB}{flash} in \slot{pcD}{window}? \; yes: $\slot{pcA}{$g$}(\slot{pcB}{flash})$ \qquad no: $0$}
\stepdown
\stepbox{3. PLACE}{$\pB0\notin\pD{[1,3]}$ \; $\Rightarrow$ \; $\keyres{0}$}
\stepdown
\stepbox{4. CHECK}{over all $t$ it would be $5$. The window decides \checkmark}

\begin{qtab}
$\int_{-\infty}^{\infty}(t^2+1)\delta(t-2)\,dt$ & flash at $2$, in: $2^2+1=\keyres{5}$ \\
$\int_0^5 e^{t}\delta(t+1)\,dt$ & flash at $-1$, outside $[0,5]$: $\keyres{0}$ \\
DT $\sum_n n^2\delta[n-3]$ & flash at $3$, all $n$: $3^2=\keyres{9}$ \\
\end{qtab}

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

\wk{12}{pulse of height $2$ on $[1,4)$ with switches, then down and back}
\stepbox{1. PIECES}{\term{In words}: one switch turns $2$ on at $t=1$, a second turns it off at $t=4$. \\ jump \pA{up $2$ at $t=1$} \qquad jump \pB{down $2$ at $t=4$}}
\stepdown
\stepbox{2. TEMPLATE (ONE SWITCH PER JUMP)}{$\slot{pcA}{jump}\cdot u(t-\slot{pcA}{where})+\slot{pcB}{jump}\cdot u(t-\slot{pcB}{where})$}
\stepdown
\stepbox{3. PLACE}{$x(t)=\keyres{\pA{2u(t-1)}\pB{-2u(t-4)}}$}
\stepdown
\stepbox{4. DOWN AND BACK}{$\dfrac{dx}{dt}=\keyres{2\delta(t-1)-2\delta(t-4)}$ \why{each jump becomes a button}. Integrate to return.}
\stepdown
\stepbox{5. CHECK}{$t=2$: $2-0=2$ \checkmark \qquad $t=5$: $2-2=0$ \checkmark}

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

\wk{12}{check the running-sum form of the DT ramp}
\stepbox{1. PIECES}{\term{In words}: add up the switch, stopping one step before $n$. You should get $0,1,2,3$. \\ \pA{$u[k]$}: $0$ for $k<0$, $1$ for $k\geq0$}
\stepdown
\stepbox{2. TEMPLATE}{$r[n]=\displaystyle\sum_{k=-\infty}^{n-1}\slot{pcA}{$u[k]$}$}
\stepdown
\stepbox{3. PLACE}{$n=0$: nothing on yet, $\keyres{0}$ \quad $n=1$: $\pA{u[0]}=\keyres{1}$ \quad $n=3$: $\pA{u[0]+u[1]+u[2]}=\keyres{3}$}
\stepdown
\stepbox{4. CHECK (THE OTHER FORM)}{$r[n]-r[n-1]=u[n-1]$: \; $r[1]-r[0]=1=u[0]$ \checkmark \qquad $r[0]-r[-1]=0=u[-1]$ \checkmark}

\filbreak \subsubsection{Graphs from ramps and switches}
Walk left to right. At each \pA{corner}, add a ramp weighted by the \emph{change in slope}. At each \pD{jump}, add a switch weighted by the jump:
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

\wk{12}{rise $0\to2$ on $[0,2]$, then flat (left graph)}
\stepbox{1. PIECES (SLOPE BEFORE $\to$ AFTER)}{\term{In words}: at each corner, add a ramp as big as the change in slope. \\ \pA{$t=0$: slope $0\to1$, change $+1$} \qquad \pB{$t=2$: slope $1\to0$, change $-1$}}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=\slot{pcA}{$\Delta$}\,r(t-\slot{pcA}{corner})+\slot{pcB}{$\Delta$}\,r(t-\slot{pcB}{corner})$}
\stepdown
\stepbox{3. PLACE}{$x(t)=\keyres{\pA{r(t)}\pB{-r(t-2)}}$ \why{the second ramp cancels the first's climb}}
\stepdown
\stepbox{4. CHECK}{$t=1$: $1$ \checkmark \qquad $t=5$: $5-3=2$, flat \checkmark}

\wk{12}{a triangle (right graph)}
\stepbox{1. PIECES (SLOPE BEFORE $\to$ AFTER)}{\term{In words}: up with slope $1$, then down with slope $-1$, then flat. \\ \pA{$t=0$: $0\to1$, $+1$} \qquad \pB{$t=1$: $1\to-1$, $-2$} \qquad \pC{$t=2$: $-1\to0$, $+1$}}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=\slot{pcA}{$\Delta$}\,r(t-\slot{pcA}{corner})+\slot{pcB}{$\Delta$}\,r(t-\slot{pcB}{corner})+\slot{pcC}{$\Delta$}\,r(t-\slot{pcC}{corner})$}
\stepdown
\stepbox{3. PLACE}{$x(t)=\keyres{\pA{r(t)}\pB{-2r(t-1)}\pC{+r(t-2)}}$ \why{the peak needs $-2$: undo $+1$, then add $-1$}}
\stepdown
\stepbox{4. CHECK}{$t=1$: $1$, the peak \checkmark \qquad $t=3$: $3-4+1=0$ \checkmark \why{slope changes sum to $0$}}

\wk{12}{(reverse) sketch $x(t)=2r(t-1)-2r(t-3)$}
\stepbox{1. PIECES}{\term{In words}: read each ramp as a corner. Its number is the change in slope. \\ \pA{corner at $1$: slope $+2$} \qquad \pB{corner at $3$: slope $-2$}}
\stepdown
\stepbox{2. TEMPLATE}{slope after each corner $=$ slope before $+\,\slot{pcA}{$\Delta$}$}
\stepdown
\stepbox{3. PLACE}{flat $0$ until \pA{$1$}, then slope $2$ until \pB{$3$}, then slope $0$}
\stepdown
\stepbox{4. RESULT}{a ramp from $0$ at $t=1$ up to $2(2)=\keyres{4}$ at $t=3$, then flat at $4$}
\stepdown
\stepbox{5. CHECK}{$t=5$: $2(4)-2(2)=8-4=4$ \checkmark}

\wk{12}{(jump and ramps) $3$ at $t=0$, then down with slope $-1$ to $0$, then flat}
\stepbox{1. PIECES}{\term{In words}: a jump needs a switch. Each corner needs a ramp. \\ \pD{jump $+3$ at $0$} \qquad \pA{corner at $0$: slope $0\to-1$} \qquad \pB{corner at $3$: slope $-1\to0$} \why{$3-t=0$ at $t=3$}}
\stepdown
\stepbox{2. TEMPLATE}{$x(t)=\slot{pcD}{jump}\,u(t-\slot{pcD}{where})+\sum\slot{pcA}{$\Delta$slope}\,r(t-\slot{pcA}{corner})$}
\stepdown
\stepbox{3. PLACE}{$x(t)=\keyres{\pD{3u(t)}\pA{-r(t)}\pB{+r(t-3)}}$}
\stepdown
\stepbox{4. CHECK}{$t=1$: $3-1=2$ \checkmark \qquad $t=4$: $3-4+1=0$ \checkmark}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. systems and interconnections}
\idea{A \term{system} is a machine: a signal goes in, a different one comes out, $x\to y$. A \term{difference equation} is the machine's recipe: how to cook $y[n]$ from inputs, and sometimes from its own past outputs.}

Three hookups:
\begin{itemize}
\item \term{Series}: an assembly line. $S_1$'s output is $S_2$'s input: \; substitute $S_1$ into $S_2$'s input slot.
\item \term{Parallel}: $x$ feeds both, and the outputs add: \; $y=\slot{pcA}{$y_1$}+\slot{pcB}{$y_2$}$.
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

\wk{12}{series: $S_1$: $w[n]=2x[n]$, then $S_2$: $y[n]=w[n]-w[n-1]$}
\stepbox{1. PIECES}{\term{In words}: $S_1$ doubles the input. $S_2$ takes the change since last step of whatever it gets. \\ \pA{$w[n]=2x[n]$}, so \pA{$w[n-1]=2x[n-1]$} \why{replace every $n$ with $n-1$}}
\stepdown
\stepbox{2. TEMPLATE}{$y[n]=\slot{pcA}{$w[n]$}-\slot{pcA}{$w[n-1]$}$}
\stepdown
\stepbox{3. PLACE}{$y[n]=\keyres{\pA{2x[n]}-\pA{2x[n-1]}}$}
\stepdown
\stepbox{4. CHECK}{press $x=\delta$: \; $w=2,0,\ldots$, then $y=2,-2,0,\ldots$ \; formula: $y[0]=2$, $y[1]=-2$ \checkmark}

\wk{12}{parallel: $S_1$: $2x[n]$, \; $S_2$: $x[n-1]$}
\stepbox{1. PIECES}{\term{In words}: the input feeds both machines, and the two outputs add. \\ \pA{$y_1=2x[n]$} \qquad \pB{$y_2=x[n-1]$}}
\stepdown
\stepbox{2. TEMPLATE}{$y=\slot{pcA}{$y_1$}+\slot{pcB}{$y_2$}$}
\stepdown
\stepbox{3. PLACE}{$y[n]=\keyres{\pA{2x[n]}+\pB{x[n-1]}}$}
\stepdown
\stepbox{4. CHECK}{$x=\delta$: \; $y[0]=2$, \; $y[1]=1$, one stem from each branch \checkmark}

\wk{12}{feedback: $y[n]=x[n]+0.5\,y[n-1]$. Press the button $x=\delta$, \; $y[-1]=0$}
\stepbox{1. PIECES}{\term{In words}: output now $=$ input now $+$ half of the last output. \\ \pA{$x=\delta$}: $1$ at $n=0$, else $0$ \qquad \pB{$y[-1]=0$} \why{at rest}}
\stepdown
\stepbox{2. TEMPLATE (ONE STEP AT A TIME)}{$y[n]=\slot{pcA}{$x[n]$}+0.5\,\slot{pcB}{$y[n-1]$}$}
\stepdown
\stepbox{3. PLACE, RUN IT}{$y[0]=\pA1+0.5(\pB0)=1$ \why{the press} \quad $y[1]=\pA0+0.5(1)=0.5$ \why{only the echo} \quad $y[2]=0.25$ \quad $y[3]=0.125$}
\stepdown
\stepbox{4. PATTERN}{$y[n]=\keyres{(0.5)^n\,u[n]}$ \why{each echo is half the last}}
\stepdown
\stepbox{5. CHECK}{$n=3$: $(0.5)^3=0.125$ \checkmark}

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
The accumulator is the running-total machine: button in, switch out. Switch in, ramp out.

\term{Nonrecursive} (FIR): inputs only. \term{Recursive} (IIR): also its own past outputs. It needs a start value like $y[-1]=0$.

\term{Block diagram parts}: adder (circle) $=$ sum of inputs. \; Gain (box $a$) $=a\cdot$input. \; Unit delay (box $D$) $=$ one-step memory, $x[n]\to x[n-1]$. \; A branch dot copies a signal.

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

\wk{12}{(diagram to equation) read the moving-average diagram}
\stepbox{1. PIECES (NAME EACH WIRE INTO THE ADDER)}{\term{In words}: each $D$ makes a one-step-old copy. The adder sums three copies, then the box takes a third. \\ \pA{$x[n]$} \qquad after one $D$: \pB{$x[n-1]$} \qquad after two: \pC{$x[n-2]$} \qquad gain \pD{$\frac13$}}
\stepdown
\stepbox{2. TEMPLATE}{$y[n]=\slot{pcD}{gain}\big(\slot{pcA}{wire}+\slot{pcB}{wire}+\slot{pcC}{wire}\big)$}
\stepdown
\stepbox{3. PLACE}{$y[n]=\keyres{\pD{\tfrac13}\big(\pA{x[n]}+\pB{x[n-1]}+\pC{x[n-2]}\big)}$}
\stepdown
\stepbox{4. CHECK}{$2$ boxes $D$ $\to$ shifts up to $n-2$ \checkmark \qquad $1$ adder with $3$ wires $\to$ $3$ terms \checkmark}

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

\wk{12}{(equation to diagram) $y[n]=2x[n]-0.5\,y[n-1]$}
\stepbox{1. PIECES (ONE BLOCK PER PIECE)}{\term{In words}: double the input, then subtract half of the last output. \\ input gain \pA{$2$} \qquad \pC{$y[n-1]$}: one $D$ on the output side (feedback) \qquad its gain \pB{$-0.5$}}
\stepdown
\stepbox{2. TEMPLATE}{$x\to$\slot{pcA}{gain}$\to(+)\to y$, \; and from $y$: dot $\to$\slot{pcC}{$D$}$\to$\slot{pcB}{gain}$\to$ back into $(+)$}
\stepdown
\stepbox{3. PLACE (DIAGRAM ABOVE)}{$x\to$\pA{[2]}$\to(+)\to y$, \; from $y$: dot $\to$\pC{[$D$]}$\to$\pB{[$-0.5$]}$\to(+)$}
\stepdown
\stepbox{4. CHECK}{read it back: $y[n]=\pA2x[n]+(\pB{-0.5})\,\pC{y[n-1]}$, the equation \checkmark}

\wk{12}{run the moving average: $x[0..2]=3,6,9$, others $0$}
\stepbox{1. PIECES}{\term{In words}: slide a 3-sample window along the input, and average what is inside. \\ \pA{$x[0]=3$}, \pB{$x[1]=6$}, \pC{$x[2]=9$}}
\stepdown
\stepbox{2. TEMPLATE (A 3-SAMPLE WINDOW)}{$y[n]=\frac13\big(x[n]+x[n-1]+x[n-2]\big)$}
\stepdown
\stepbox{3. PLACE, SLIDE THE WINDOW}{$y[0]=\frac{\pA3}{3}=\keyres{1}$ \quad $y[1]=\frac{\pB6+\pA3}{3}=\keyres{3}$ \quad $y[2]=\frac{\pC9+\pB6+\pA3}{3}=\keyres{6}$ \\ $y[3]=\frac{\pC9+\pB6}{3}=\keyres{5}$ \quad $y[4]=\frac{\pC9}{3}=\keyres{3}$ \quad then $0$}
\stepdown
\stepbox{4. CHECK}{$\sum y=18=\sum x$ \why{each input is counted $3$ times, then divided by $3$} \checkmark}

\wk{12}{run the accumulator $y[n]=y[n-1]+x[n]$ with the switch, \; $y[-1]=0$}
\stepbox{1. PIECES}{\term{In words}: keep a running total of the input. \\ \pA{$x=u[n]$}: $1$ for $n\geq0$ \qquad \pB{$y[-1]=0$}}
\stepdown
\stepbox{2. TEMPLATE}{$y[n]=\slot{pcB}{$y[n-1]$}+\slot{pcA}{$x[n]$}$}
\stepdown
\stepbox{3. PLACE, RUN IT}{$y[0]=\pB0+\pA1=1$ \quad $y[1]=1+1=2$ \quad $y[2]=3$}
\stepdown
\stepbox{4. PATTERN}{$y[n]=(n+1)u[n]=\keyres{r[n+1]}$ \why{the running total of a switch is a ramp}}
\stepdown
\stepbox{5. CHECK WITH THE SUM FORM}{$y[2]=u[0]+u[1]+u[2]=3$ \checkmark}

% ------------------------------------------------------------ 12
\filbreak \subsection{12. system properties}
\idea{Properties are yes/no questions about a machine. Each is separate: a machine can pass one and fail another.}

{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.24\linewidth}p{0.714\linewidth}@{}}
\term{Property} & \term{In plain English} \\\hline
memoryless & It only looks at \emph{now}. \\
causal & It cannot see the future. It may remember the past. \\
stable (BIBO) & It does not blow up: input under a ceiling $\Rightarrow$ output under a ceiling. \\
invertible & You can undo it: different inputs give different outputs. \\
time invariant & It ignores the clock: delay in $\Rightarrow$ same output, delayed. \\
linear & Scale in $\to$ scale out, add in $\to$ add out: $c_1x_1+c_2x_2\to c_1y_1+c_2y_2$. \\
\end{tabular}}

\filbreak \subsubsection{Quick red flags}
\trap{\textbf{Linearity}: put in $x=0$. A linear machine gives $y=0$. The $+3$ in $2x+3$ fails.}
\trap{\textbf{Time invariance}: an $n$ or $t$ \emph{outside} $x(\cdot)$ ($n\,x[n]$) reads the clock. Scaling or flipping inside ($x(2t)$, $x(-t)$) also fails.}
\trap{\textbf{Causality}: an advance like $x[n+1]$. And $y(t)=x(-t)$: at $t=-1$ it needs $x(1)$.}
\trap{\textbf{Stability}: an $n$ multiplying $x$, or a sum with no end, can blow up.}

\filbreak \subsubsection{Memory and causality: read the time stamps}
Every $x[\cdot]$ on the right carries a time stamp. Color each one: \pA{now} ($n$), \pB{past} ($n-1$, \ldots), \pC{future} ($n+1$, \ldots).
$$\text{memoryless}\iff\text{every stamp is }\slot{pcA}{now} \qquad \text{causal}\iff\text{no stamp is }\slot{pcC}{future}$$

\wk{12}{memory and causality of $y[n]=x[n]+x[n-1]$}
\stepbox{1. PIECES (COLOR THE STAMPS)}{\term{In words}: add the input now to the input one step ago. \\ \pA{$x[n]$}: now \qquad \pB{$x[n-1]$}: past}
\stepdown
\stepbox{2. TEMPLATES}{memoryless: every stamp \slot{pcA}{now} \qquad causal: no \slot{pcC}{future} stamp}
\stepdown
\stepbox{3. PLACE}{a \pB{past} stamp $\Rightarrow$ \warn{has memory} \qquad no \pC{future} stamp $\Rightarrow$ \keyres{causal}}
\stepdown
\stepbox{4. CHECK}{$n=5$ uses $x[5]$ and $x[4]$: the past, never $x[6]$ \checkmark}

\wk{12}{invertibility of $y=x^2$}
\stepbox{1. PIECES}{\term{In words}: square the input now. Can you get the input back from the output? \\ output \pA{$y$}}
\stepdown
\stepbox{2. TEMPLATE}{solve for $x$: exactly one answer $\Rightarrow$ invertible}
\stepdown
\stepbox{3. PLACE}{$x=\pm\sqrt{\pA y}$: two answers $\Rightarrow$ \warn{not invertible}}
\stepdown
\stepbox{4. CHECK}{inputs $1$ and $-1$ both give $1$, so the sign is lost \checkmark}

\begin{qtab}
$y[n]=x[n+1]$ & a \pC{future} stamp: memory, \warn{not causal} \\
$y[n]=x[n]^2$ & every stamp \pA{now}: \keyres{memoryless}, causal \\
$y=2x$ & $x=\frac{y}{2}$, one answer: \keyres{invertible} \\
\end{qtab}

\filbreak \subsubsection{Time invariance: two paths, then compare}
\term{Path 1}: delay the input, then run the machine --- change only the \pA{inside of $x$}. \; \term{Path 2}: run the machine, then delay the output --- change \emph{every} $n$, including any \pC{lone $n$}. Same result $\Rightarrow$ time invariant.

\wk{12}{is $y[n]=n\,x[n]$ time invariant?}
\stepbox{1. PIECES}{\term{In words}: multiply the input now by the time $n$. \\ the inside of $x$: \pA{$n$} \qquad a \pC{lone $n$} outside $x$ \qquad delay $n_0$}
\stepdown
\stepbox{2. TEMPLATE}{Path 1: replace only \slot{pcA}{the inside} \qquad Path 2: replace every $n$, the \slot{pcC}{lone $n$} too}
\stepdown
\stepbox{3. PLACE: PATH 1 (DELAY, THEN MACHINE)}{delayed input $x[n-n_0]$ goes in the slot: \; $\pC{n}\,x[\pA{n-n_0}]$ \why{the machine still multiplies by its own clock $n$}}
\stepdown
\stepbox{4. PLACE: PATH 2 (MACHINE, THEN DELAY)}{run first: $n\,x[n]$. Delay the whole output: \; $(\pC{n-n_0})\,x[\pA{n-n_0}]$}
\stepdown
\stepbox{5. COMPARE}{$n\,x[n-n_0]\neq(n-n_0)\,x[n-n_0]$ $\Rightarrow$ \warn{time varying} \why{the lone $n$ reads the clock}}
\stepdown
\stepbox{6. CHECK (RED FLAG)}{an $n$ outside $x(\cdot)$ is the red flag, and it fails \checkmark}

\begin{qtab}
$x(2t)$ & Path 1: $x(2t-t_0)$ \; Path 2: $x(2(t-t_0))$: \warn{time varying} \\
$x[n-1]$ & Path 1: $x[n-1-n_0]$ \; Path 2: $x[n-n_0-1]$: \keyres{time invariant} \\
\end{qtab}

\filbreak \subsubsection{Linearity: combine first, or combine after?}
\term{Path 1}: mix the inputs ($c_1x_1+c_2x_2$), then run the machine. \; \term{Path 2}: run each input alone, then mix the outputs with the same knobs. Linear means the two paths agree.

\term{The knobs} $c_1$, $c_2$ are any two numbers. Use $c_1$, $c_2$, not $a$, $b$: a system can have its own constants named $a$ or $b$.

\wk{12}{is $y[n]=\dfrac{x[n]}{n}$, $n\neq0$, linear?}
\stepbox{1. PIECES}{\term{In words}: take the input \emph{now}, and divide it by the time $n$. \\ inputs \pA{$x_1$}, \pB{$x_2$} \qquad knobs $c_1$, $c_2$}
\stepdown
\stepbox{2. TEMPLATE}{Path 1: $S\{c_1\,\slot{pcA}{$x_1$}+c_2\,\slot{pcB}{$x_2$}\}$ \qquad Path 2: $c_1\,S\{\slot{pcA}{$x_1$}\}+c_2\,S\{\slot{pcB}{$x_2$}\}$}
\stepdown
\stepbox{3. PLACE: PATH 1 (MIX, THEN MACHINE)}{mixed input $w[n]=c_1\pA{x_1[n]}+c_2\pB{x_2[n]}$. \; Write $w$ wherever the recipe says $x$:\\
$\dfrac{w[n]}{n}=\dfrac{c_1\pA{x_1[n]}+c_2\pB{x_2[n]}}{n}=\dfrac{c_1\pA{x_1[n]}}{n}+\dfrac{c_2\pB{x_2[n]}}{n}$ \why{one fraction over a common denominator splits into two}}
\stepdown
\stepbox{4. PLACE: PATH 2 (MACHINE, THEN MIX)}{run each alone: $y_1[n]=\dfrac{\pA{x_1[n]}}{n}$, \; $y_2[n]=\dfrac{\pB{x_2[n]}}{n}$ \\
mix with the same knobs: $c_1y_1[n]+c_2y_2[n]=\dfrac{c_1\pA{x_1[n]}}{n}+\dfrac{c_2\pB{x_2[n]}}{n}$}
\stepdown
\stepbox{5. COMPARE}{Path 1 $=$ Path 2 for every $c_1$, $c_2$ $\Rightarrow$ \keyres{linear} \why{but time varying: the lone $n$ reads the clock. Separate properties}}
\stepdown
\stepbox{6. CHECK (ZERO TEST)}{$x=0$: \; $y=\dfrac{0}{n}=0$ \checkmark \why{a linear system must pass. Passing alone does not prove linear}}

\begin{qtab}
$y=2x[n]+3$ & zero test: $2(0)+3=3\neq0$ $\Rightarrow$ \warn{not linear} \why{incrementally linear} \\
$y=n\,x[n]$ & same steps as above, with $\times n$ for $\div n$: \keyres{linear} \\
\end{qtab}

\filbreak \subsubsection{Stability with a ceiling $B$}
\idea{\term{BIBO}: bounded in, bounded out. ``Bounded'' means a ceiling: $\lvert x[n]\rvert\leq B<\infty$. Stable means the output has a ceiling too. This is Lesson 1 again: is the signal's size finite?}
\term{To show stable}: take $\lvert\,\cdot\,\rvert$ of the equation, split with $\lvert a+b\rvert\leq\lvert a\rvert+\lvert b\rvert$ and $\lvert cx\rvert=\lvert c\rvert\lvert x\rvert$, then replace each $\lvert x[\cdot]\rvert$ (shifted ones too) with $B$:
$$\lvert y\rvert\leq\slot{pcA}{$\lvert c_1\rvert$}B+\slot{pcB}{$\lvert c_2\rvert$}B+\cdots$$
A \keyres{finite number} (no $n$, no endless sum) means stable. \; \term{To show unstable}: one capped input (like $x=1$ or $u[n]$) with an unbounded output.
\trap{$\lvert n\,x[n]\rvert\leq\lvert n\rvert B$ grows with $n$. The accumulator adds another $B$ every step.}

\wk{12}{is $y[n]=2x[n]+x[n-1]$ stable?}
\stepbox{1. PIECES}{\term{In words}: twice the input now plus the input one step ago. Cap the input at $B$. \\ coefficients \pA{$2$}, \pB{$1$}}
\stepdown
\stepbox{2. TEMPLATE}{$\lvert y\rvert\leq\slot{pcA}{$\lvert c_1\rvert$}B+\slot{pcB}{$\lvert c_2\rvert$}B$}
\stepdown
\stepbox{3. PLACE}{$\lvert y\rvert\leq\pA2B+\pB1B=3B$ \why{split the absolute value, then replace each $\lvert x\rvert$ with $B$}}
\stepdown
\stepbox{4. LABEL}{$3B$ is a finite number with no $n$ in it \; $\Rightarrow$ \keyres{stable}}
\stepdown
\stepbox{5. CHECK (SECTION 13)}{$\sum\lvert h\rvert=2+1=3<\infty$ \checkmark}

\wk{12}{is $y[n]=n\,x[n]$ stable?}
\stepbox{1. PIECES}{\term{In words}: multiply the input by the time $n$. Try the simplest capped input. \\ test input \pA{$x=1$} for all $n$ \why{capped at $B=1$}}
\stepdown
\stepbox{2. TEMPLATE}{one capped input with an unbounded output $\Rightarrow$ not stable}
\stepdown
\stepbox{3. PLACE}{$y[n]=n\cdot\pA1=n$ \why{it keeps growing}}
\stepdown
\stepbox{4. LABEL}{a capped input gave an output with no ceiling \; $\Rightarrow$ \warn{not stable}}
\stepdown
\stepbox{5. CHECK (RED FLAG)}{an $n$ multiplying $x$ is the stability red flag \checkmark}

\begin{qtab}
moving average & $\leq\frac13(B+B+B)=B$: \keyres{stable} \\
$y=e^{x[n]}$ & $-B\leq x\leq B$ $\Rightarrow$ $\lvert y\rvert\leq e^{B}$: \keyres{stable} \\
accumulator & input $u[n]$ gives $y=n+1$: \warn{not stable} \\
$y=0.5\,y[n-1]+x$ & unroll: $\lvert y\rvert\leq B\frac{1}{1-0.5}=2B$: \keyres{stable} \why{with $1.01$: unstable} \\
\end{qtab}

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
Mless $=$ memoryless, TI $=$ time invariant. The recursive system starts at rest.

\trap{The properties are separate: linear but time varying ($n\,x[n]$), stable but not causal ($x[n+1]$).}

% ------------------------------------------------------------ 13
\needspace{30\baselineskip}\subsection{13. the convolution sum}
\idea{Section 10 showed that every DT input is a stack of buttons: $x[n]=\sum_k x[k]\,\delta[n-k]$. Press the button once and an LTI machine answers with its \term{impulse response} $h[n]$, its ``echo.'' Each button in the stack makes its own echo, \keyres{scaled} by its height and \keyres{shifted} to its time. The output is the sum of all the echoes. That sum is the \term{convolution sum}.}

\term{Why LTI makes it work}, one property per line:
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.40\linewidth}p{0.554\linewidth}@{}}
\term{Input} & \term{Output} \\\hline
$\delta[n]$ & $h[n]$ \why{definition of $h$} \\
$\delta[n-k]$ & $h[n-k]$ \why{time invariant} \\
$x[k]\,\delta[n-k]$ & $x[k]\,h[n-k]$ \why{linear: scale} \\
$\sum_k x[k]\,\delta[n-k]=x[n]$ & $\sum_k x[k]\,h[n-k]=y[n]$ \why{linear: add} \\
\end{tabular}}

\begin{ftab}
$y[n]=\displaystyle\sum_{k=-\infty}^{\infty}x[k]\,h[n-k]$ & (output at $n$) $=$ sum over every input time $k$ of (input at $k$)(echo, $n-k$ steps later) \\
$y[n]=x[n]*h[n]$ & ``$x$ convolved with $h$'' \\
$y[n]=\displaystyle\sum_{k}h[k]\,x[n-k]$ & same result, roles swapped: $x*h=h*x$ \\
$h[n]=$ output for $x=\delta$, at rest & the \term{impulse response}: it describes the whole LTI system \\
\end{ftab}
\term{Colors in this section}: \pB{the impulse response $h$} is always green. The input stems are \pA{orange}, \pD{blue}, \pE{yellow}, one color per stem. \pC{Purple} is the output time $n$.

\trap{$k$ is the dummy variable that sweeps. $n$ stays fixed during one sum. Each $n$ is a new sum.}
\trap{$h[n-k]$, not $h[k-n]$. And $y[n]\neq x[n]\,h[n]$: convolution is not a product of the two signals.}
\trap{Only for LTI systems that start at rest. $y=x^2$ or $y=n\,x[n]$ has no impulse-response formula.}

\filbreak \subsubsection{The impulse response describes the system}
\begin{ftab}
causal $\iff h[n]=0$ for $n<0$ & no echo before the press \\
BIBO stable $\iff\sum_n\lvert h[n]\rvert<\infty$ & the echoes add to a finite size \\
memoryless $\iff h[n]=c\,\delta[n]$ & the echo is only at $n=0$ \\
FIR: $h$ has finitely many stems & $y[n]=\sum_k h[k]\,x[n-k]$, a nonrecursive equation \\
IIR: $h$ goes on forever & usually from a recursive (feedback) equation \\
series $h_1$ then $h_2$ & one system with $h=h_1*h_2$ \\
parallel $h_1$ and $h_2$ & one system with $h=h_1+h_2$ \\
\end{ftab}
\begin{qtab}
unit delay $y=x[n-1]$ & $h=\keyres{\delta[n-1]}$ \\
first difference & $h=\keyres{\delta[n]-\delta[n-1]}$ \\
3-point moving average & $h=\keyres{\frac13\big(\delta[n]+\delta[n-1]+\delta[n-2]\big)}$ \\
accumulator & $h=\keyres{u[n]}$: $\sum\lvert h\rvert=\infty$, \warn{not stable} \\
$y=0.5\,y[n-1]+x$ & $h=\keyres{(0.5)^nu[n]}$ \why{section 11}: $\sum=2$, \keyres{stable} \\
\end{qtab}

\filbreak \subsubsection{Which way? --- system, impulse response, output}
\begin{ltab}{Given $\to$ find}{Do this}
nonrecursive equation $\to h$ & read the coefficients: $y=\sum b_kx[n-k]$ gives $h[k]=b_k$ \\
recursive equation $\to h$ & put in $x=\delta$, start at rest, run it step by step \\
$h\to$ equation & $y[n]=\sum_kh[k]\,x[n-k]$, one term per stem \\
$h\to$ causal, stable, memoryless & the $h$ tests above \\
$x$ and $h\to y$ & convolve: table, flip and slide, or formula \\
output for $x=\delta\to h$ & that output \emph{is} $h$ \\
\end{ltab}

\wk{12}{find $h$ for $y[n]=x[n]+2x[n-1]-x[n-2]$}
\stepbox{1. PIECES}{\term{In words}: press the button and see what comes out. Each input term becomes one stem of $h$. \\ coefficients \pB{$1$, $2$, $-1$} at delays \pC{$0$, $1$, $2$}}
\stepdown
\stepbox{2. TEMPLATE}{$h[n]=\slot{pcB}{$b_0$}\,\delta[n-\slot{pcC}{$0$}]+\slot{pcB}{$b_1$}\,\delta[n-\slot{pcC}{$1$}]+\slot{pcB}{$b_2$}\,\delta[n-\slot{pcC}{$2$}]$}
\stepdown
\stepbox{3. PLACE}{$h[n]=\keyres{\pB1\,\delta[n]+\pB2\,\delta[n-1]\pB{-1}\,\delta[n-2]}$ \why{an FIR system: $3$ stems}}
\stepdown
\stepbox{4. CHECK}{put in $x=\delta$ by hand: $y[1]=\delta[1]+2\delta[0]-\delta[-1]=2$, the second stem \checkmark}

\wk{12}{find $h$ for $y[n]=0.8\,y[n-1]+x[n]$}
\stepbox{1. PIECES}{\term{In words}: press the button once, start at rest, and run the feedback loop. \\ input \pA{$x=\delta$} \qquad start \pC{$y[-1]=0$} \qquad feedback gain \pB{$0.8$}}
\stepdown
\stepbox{2. TEMPLATE}{$h[n]=\slot{pcB}{$0.8$}\,h[n-1]+\slot{pcA}{$\delta[n]$}$}
\stepdown
\stepbox{3. PLACE, RUN IT}{$h[0]=\pB{0.8}(\pC0)+\pA1=1$ \quad $h[1]=0.8(1)+0=0.8$ \quad $h[2]=0.64$ \why{each echo is $0.8$ of the last}}
\stepdown
\stepbox{4. PATTERN}{$h[n]=\keyres{(0.8)^nu[n]}$ \why{an IIR system: it never stops}}
\stepdown
\stepbox{5. CHECK}{$\sum(0.8)^n=\frac{1}{1-0.8}=5<\infty$: stable \checkmark \qquad $h[n]=0$ for $n<0$: causal \checkmark}

\wk{12}{(reverse) $h[0]=3$, $h[1]=-1$, else $0$. Write the system and its properties}
\stepbox{1. PIECES}{\term{In words}: each stem of $h$ becomes one input term. \\ \pB{$h[0]=3$}, \pB{$h[1]=-1$}}
\stepdown
\stepbox{2. TEMPLATE}{$y[n]=\slot{pcB}{$h[0]$}\,x[n]+\slot{pcB}{$h[1]$}\,x[n-1]$}
\stepdown
\stepbox{3. PLACE}{$y[n]=\keyres{\pB3\,x[n]\pB{-1}\,x[n-1]}$}
\stepdown
\stepbox{4. PROPERTIES}{\keyres{causal} \why{no stem before $0$} \quad \keyres{stable} \why{$\sum\lvert h\rvert=4$} \quad \warn{not memoryless} \why{a stem at $1$}}
\stepdown
\stepbox{5. CHECK}{$x=\delta$: \; $y[0]=3$, \; $y[1]=-1$, the stems of $h$ \checkmark}

\filbreak \subsubsection{Method 1: the table (one shifted echo per input stem)}
\idea{Each input stem \pA{$x[k]$} launches its own copy of $h$, scaled by $x[k]$ and starting at $n=k$. Write one row per stem, then add each column. It is long multiplication without carrying.}
\begin{ftab}
row for stem $k$ & $x[k]\cdot h$, shifted to start at $n=k$ \\
$y[n]$ & sum of column $n$ \\
$x$ on $[a,b]$, $h$ on $[c,d]$ & $y$ on $[a+c,\,b+d]$ \\
length of $y$ & $L_x+L_h-1$ \\
$\sum_ny[n]=\Big(\sum_nx[n]\Big)\Big(\sum_nh[n]\Big)$ & quick check of the whole answer \\
\end{ftab}

\wk{12}{$x[-1]=2$, $x[0]=-1$, $x[1]=3$ \; and \; $h[0]=1$, $h[1]=2$}
\stepbox{1. PIECES}{\term{In words}: three input stems, so three echoes. Each echo is $h$ scaled by its stem and started at its time. \\ input stems \pA{$2$ at $-1$}, \pD{$-1$ at $0$}, \pE{$3$ at $1$} \qquad echo \pB{$h=1,\,2$} from $0$}
\stepdown
\stepbox{2. TEMPLATE (ONE ROW PER STEM)}{row $k$: \; $\slot{pcA}{$x[k]$}\cdot\big(\slot{pcB}{$1$},\,\slot{pcB}{$2$}\big)$, starting at column $n=k$ \\ range $[-1+0,\;1+1]=[-1,2]$, length $3+2-1=4$}
\stepdown
\stepbox{3. PLACE}{{\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}l|cccc@{}}
$n$ & $-1$ & $0$ & $1$ & $2$ \\\hline
\pA{$2\cdot h$} & \pA{$2$} & \pA{$4$} & & \\
\pD{$-1\cdot h$} & & \pD{$-1$} & \pD{$-2$} & \\
\pE{$3\cdot h$} & & & \pE{$3$} & \pE{$6$} \\\hline
$y[n]$ & \keyres{$2$} & \keyres{$3$} & \keyres{$1$} & \keyres{$6$} \\
\end{tabular}}}
\stepdown
\stepbox{4. CHECK}{$\sum y=12$ and $\big(\sum x\big)\big(\sum h\big)=(4)(3)=12$ \checkmark \qquad $4$ stems on $[-1,2]$ \checkmark}

\filbreak \subsubsection{Method 2: flip and slide (one output time at a time)}
\idea{Fix one output time $n$. Draw $x[k]$. Flip $h$ to get $h[-k]$, then slide it right by $n$ to get $h[n-k]$. Multiply the two stem by stem where they overlap and add. Then move to the next $n$.}
\begin{enumerate}
\item Draw \pA{$x[k]$} on a $k$ axis.
\item Flip: $h[k]\to h[-k]$. Slide: $h[-k]\to h[\pC{n}-k]$. Its first stem sits at $k=\pC{n}$, the rest trail to the \emph{left}.
\item Multiply where both are nonzero. Add. That is $y[\pC n]$.
\item Split $n$ into regions: no overlap ($y=0$), partial overlap, full overlap. Each region gets one formula.
\end{enumerate}
\trap{After the flip, $h[n-k]$ is \emph{backwards}: $h[0]$ sits at $k=n$, and $h[1]$ sits at $k=n-1$.}

\needspace{14\baselineskip}
\noindent\hfil
\begin{tikzpicture}
\begin{axis}[sigax,
xmin=-2.6, xmax=6.4, ymin=-0.2, ymax=1.35,
xtick={-2,-1,1,2,3,4,5}, ytick={0.5,1},
xlabel={$k$}, ylabel={},
width=8.4cm, height=3.6cm]
\addplot[pcA, ycomb, very thick, mark=*, mark size=1.6pt] coordinates {(0,1)(1,1)(2,1)};
\addplot[pcB, ycomb, thick, mark=o, mark size=2pt] coordinates {(-2,0.0156)(-1,0.03125)(0,0.0625)(1,0.125)(2,0.25)(3,0.5)(4,1)};
\node[text=pcA, font=\scriptsize] at (axis cs:1,1.22) {$x[k]$};
\node[text=pcB, font=\scriptsize] at (axis cs:5.2,0.9) {$h[4-k]$};
\draw[pcC, dashed] (axis cs:4,0) -- (axis cs:4,1.15) node[above, font=\scriptsize] {$k=n=4$};
\end{axis}
\end{tikzpicture}

The picture is the next example at $n=4$: the pulse \pA{$x[k]$} and the flipped echo \pB{$h[4-k]$}. The overlap is $k=0,1,2$.

\wk{12}{$x[n]=u[n]-u[n-3]$ (on at $0,1,2$) \; and \; $h[n]=(0.5)^nu[n]$}
\stepbox{1. PIECES}{\term{In words}: a 3-sample pulse meets an echo that halves each step. Slide the flipped echo across and watch the overlap grow, then stay full. \\ \pA{$x[k]=1$ for $k=0,1,2$} \qquad \pB{$h[n-k]=(0.5)^{n-k}$ for $k\leq n$} \qquad regions: \pC{$n<0$}, \pC{$0\leq n\leq2$}, \pC{$n\geq3$}}
\stepdown
\stepbox{2. TEMPLATE}{$y[\slot{pcC}{$n$}]=\displaystyle\sum_{k\,\in\,\text{overlap}}\slot{pcA}{$x[k]$}\;\slot{pcB}{$h[n-k]$}$}
\stepdown
\stepbox{3. PLACE: NO OVERLAP, $n<0$}{the flipped echo is all left of $0$ \; $\Rightarrow$ \; $y[n]=\keyres{0}$}
\stepdown
\stepbox{4. PLACE: PARTIAL OVERLAP, $0\leq n\leq2$ ($k=0..n$)}{$y[n]=\displaystyle\sum_{k=0}^{n}\pA1\cdot\pB{(0.5)^{n-k}}=\sum_{m=0}^{n}(0.5)^m=\keyres{2\big(1-(0.5)^{n+1}\big)}$ \why{rename $m=n-k$, then the finite geometric sum}}
\stepdown
\stepbox{5. PLACE: FULL OVERLAP, $n\geq3$ ($k=0,1,2$)}{$y[n]=\pB{(0.5)^n}+\pB{(0.5)^{n-1}}+\pB{(0.5)^{n-2}}=(0.5)^n(1+2+4)=\keyres{7(0.5)^n}$ \why{pull out $(0.5)^n$}}
\stepdown
\stepbox{6. CHECK}{the regions meet: $n=2$ gives $2(1-0.125)=1.75$ and $7(0.25)=1.75$ \checkmark \\ $n=4$ (picture): $0.0625+0.125+0.25=0.4375=7(0.5)^4$ \checkmark}

\needspace{18\baselineskip}\subsubsection{Method 3: formula (infinite signals)}
\idea{When both signals are formulas, put them in the sum. The switches $u[k]$ and $u[n-k]$ cut the sum down to $0\leq k\leq n$. Then use the geometric sum.}
\begin{ftab}
$u[k]\,u[n-k]$ & $1$ for $0\leq k\leq n$, else $0$: the sum runs $k=0..n$, and $y=0$ for $n<0$ \\
$\displaystyle\sum_{k=0}^{n}r^k=\frac{1-r^{n+1}}{1-r}$ & finite geometric sum, $r\neq1$ \\
$a^nu[n]*b^nu[n]=\dfrac{a^{n+1}-b^{n+1}}{a-b}\,u[n]$ & two exponentials, $a\neq b$ \st\\
$a^nu[n]*a^nu[n]=(n+1)\,a^nu[n]$ & same base \\
\end{ftab}
\begin{qtab}
$x*\delta$ & $\keyres{x}$: the button changes nothing \\
$x*\delta[n-3]$ & $\keyres{x[n-3]}$: a delay by $3$ \\
$\delta[n-1]*\delta[n-4]$ & $\keyres{\delta[n-5]}$: delays add \\
$u*u$ & $\sum_{k=0}^{n}1=\keyres{(n+1)u[n]}=r[n+1]$ \why{the accumulator of a switch, section 11} \\
$u[n]*(0.5)^nu[n]$ & $\sum_{k=0}^n(0.5)^k=\keyres{2\big(1-(0.5)^{n+1}\big)u[n]}$ \\
\end{qtab}

\wk{12}{$x[n]=(0.5)^nu[n]$ \; and \; $h[n]=(0.25)^nu[n]$}
\stepbox{1. PIECES}{\term{In words}: both signals start at $0$ and shrink, so the switches limit the sum to $k=0..n$. \\ \pA{$x[k]=(0.5)^ku[k]$} \qquad \pB{$h[n-k]=(0.25)^{n-k}u[n-k]$} \qquad switches: $0\leq k\leq\pC{n}$}
\stepdown
\stepbox{2. TEMPLATE}{$y[\slot{pcC}{$n$}]=\displaystyle\sum_{k=0}^{\slot{pcC}{$n$}}\slot{pcA}{$x[k]$}\;\slot{pcB}{$h[n-k]$}$}
\stepdown
\stepbox{3. PLACE}{$y[n]=\displaystyle\sum_{k=0}^{n}\pA{(0.5)^k}\,\pB{(0.25)^{n-k}}=(0.25)^n\sum_{k=0}^{n}2^k$ \why{pull out $(0.25)^n$, and $\frac{0.5}{0.25}=2$}}
\stepdown
\stepbox{4. GEOMETRIC SUM}{$\sum_{k=0}^{n}2^k=2^{n+1}-1$ \; $\Rightarrow$ \; $y=(0.25)^n\big(2^{n+1}-1\big)=\keyres{\big(2(0.5)^n-(0.25)^n\big)u[n]}$}
\stepdown
\stepbox{5. CHECK}{$y[0]=x[0]h[0]=1$, and $2-1=1$ \checkmark \qquad $y[1]=0.25+0.5=0.75$, and $1-0.25=0.75$ \checkmark}

\filbreak \subsubsection{Which method?}
\begin{ltab}{If the signals are \ldots}{Use}
both short lists of stems & the table (Method 1) \\
one short pulse, one long formula & flip and slide, by regions (Method 2) \\
both formulas with switches & the formula (Method 3) \\
one of them is $\delta[n-n_0]$ & shift the other by $n_0$ \\
\end{ltab}

\end{multicols}

\makeatother
```