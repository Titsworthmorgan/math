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

\filbreak \subsection{how to read this note}
Every method is a chain of steps. Each step is a template with empty colored slots.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.27\linewidth}p{0.684\linewidth}@{}}
\term{Do} & \term{How} \\\hline
1. find the pieces & Each topic opens with a PIECES table. It says where each piece is in your problem, and its color. \\[1pt]
2. fill the slots & A piece goes in the slot of the same color: \pB{$\omega$} goes in \slot{pcB}{$\omega$}. \\[1pt]
3. one box at a time & Each box is one move. Do not merge two boxes. \\
\end{tabular}}
\par\vspace{2pt}
\term{Sinusoid colors stay fixed}: \pA{amplitude}, \pB{frequency}, \pC{phase}, \pD{sampling rate}. Other topics set their colors in their PIECES tables. The number in parentheses in the tables below is the topic page.

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

\filbreak \subsection{properties of common DT systems}
\resizebox{\linewidth}{!}{\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}l|c|c|c|c|c@{}}
\term{System} & \term{Memoryless} & \term{Causal} & \term{Linear} & \term{Time inv.} & \term{Stable} \\\hline
$x[n-1]$, $x[n]-x[n-1]$, moving average & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
accumulator & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \warn{no} \\
$n\,x[n]$ & \keyres{yes} & \keyres{yes} & \keyres{yes} & \warn{no} & \warn{no} \\
$x[n]^2$, \; $2x[n]+3$ & \keyres{yes} & \keyres{yes} & \warn{no} & \keyres{yes} & \keyres{yes} \\
$x[n+1]$ & \warn{no} & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
$x[2n]$, \; $x[-n]$ & \warn{no} & \warn{no} & \keyres{yes} & \warn{no} & \keyres{yes} \\
$0.5\,y[n-1]+x[n]$ (at rest) & \warn{no} & \keyres{yes} & \keyres{yes} & \keyres{yes} & \keyres{yes} \\
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
The number in parentheses is the topic page.

\end{multicols}

% ---- topic pages: one topic per page, explanation left, work right ----
\newenvironment{lcol}{\noindent\begin{minipage}[t]{0.475\linewidth}\vspace{0pt}{\scriptsize\textcolor{titleHi}{\textbf{EXPLANATION}}}\par\vspace{2pt}}{\end{minipage}\hfill}
\newenvironment{rcol}{\begin{minipage}[t]{0.475\linewidth}\vspace{0pt}{\scriptsize\textcolor{titleHi}{\textbf{WORK}}}\par\vspace{2pt}}{\end{minipage}\par\vspace{8pt}}
\newcommand{\lesson}[1]{\newpage\section{#1}}

% ============================================================ 1
\lesson{1 --- signals and sampling}
\idea{A \term{signal} changes over time. \term{Sampling} takes one snapshot every $T_s$ seconds: the movie $x(t)$ becomes a stack of photos $x[n]$.}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$x(t)$} & the CT signal (the movie) \\
\pB{$T_s$} & seconds between photos. Or $T_s=\frac{1}{f_s}$ from the rate \\
\pC{$x[n]$} & the DT signal (the photos) \\
\end{ltab}
\begin{ltab}{CT}{DT}
$x(t)$, round brackets & $x[n]$, square brackets \\
$t$ any real number & $n$ an \keyres{integer only} \\
\end{ltab}
\trap{$x[2.5]$ does not exist. Between samples a DT signal is undefined, not zero.}
\trap{$T_s$ is seconds per photo. $f_s$ is photos per second. Flip one to get the other.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- CT $\to$ DT (sample)}
\stepbox{1. READ THE PIECES}{\pA{$x(t)$} \qquad \pB{$T_s$} \why{if given $f_s$: $T_s=1/f_s$}}
\stepdown
\stepbox{2. SUBSTITUTE}{$x[n]=\slot{pcA}{$x$}\big(n\cdot\slot{pcB}{$T_s$}\big)$ \why{write $nT_s$ wherever the formula says $t$}}
\stepdown
\stepbox{3. SIMPLIFY}{Collect the numbers. The answer has only $n$ in it.}

\subsubsection{Steps --- DT $\to$ CT (undo)}
\stepbox{1. READ THE PIECES}{\pC{$x[n]$} \qquad \pB{$T_s$}}
\stepdown
\stepbox{2. SOLVE FOR $n$}{photo $n$ was taken at $t=nT_s$, so $n=\dfrac{t}{\slot{pcB}{$T_s$}}$}
\stepdown
\stepbox{3. SUBSTITUTE}{$x(t)=\slot{pcC}{$x$}\Big[\dfrac{t}{\slot{pcB}{$T_s$}}\Big]$ \why{write $t/T_s$ wherever the formula says $n$}}
\end{rcol}

% ============================================================ 2
\lesson{2 --- sinusoids}
\idea{A dot on a spinning wheel. Its height over time is a sinusoid. Wheel size: \pA{amplitude}. Spin rate: \pB{frequency}. Where the dot starts: \pC{phase}.}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$A$} & the number in front of $\cos$. The peak \\
\pB{$\omega$} & the number multiplying $t$ (rad/s) \\
\pC{$\phi$} & the number added inside, sign included (rad) \\
\end{ltab}
\term{Exact form first}: $x(t)=\pA{A}\cos(\pB{\omega}t+\pC{\phi})$.
\begin{ltab}{If you have}{Rewrite as}
$A\sin\theta$ & $A\cos\big(\theta-\frac\pi2\big)$ \\
$-A\cos\theta$ & $A\cos(\theta+\pi)$ \\
\end{ltab}

\subsubsection{Which way?}
\begin{ltab}{Given $\to$ find}{Do this}
$\omega\to f$ & $f=\dfrac{\omega}{2\pi}$ \st\\
$f\to\omega$ & $\omega=2\pi f$ \\
$f\to T$ / $T\to\omega$ & $T=\dfrac1f$ / $\omega=\dfrac{2\pi}{T}$ \st\\
$\phi\to t_0$ & $t_0=-\dfrac{\phi}{\omega}$ \st\\
$t_0\to\phi$ & $\phi=-\omega t_0$ \\
\end{ltab}
\begin{qtab}
$3\cos(4\pi t-\frac\pi3)$ & \pA{$A=3$}, \pB{$\omega=4\pi$}, \pC{$\phi=-\frac\pi3$} \\
$4\sin(10t)$ & $=4\cos(10t-\frac\pi2)$: \pA{$4$}, \pB{$10$}, \pC{$-\frac\pi2$} \\
\end{qtab}
\trap{Negative $\phi$ means $t_0>0$: delayed, moves right.}
\trap{The first peak is at $t=t_0$. That is the shift.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- read the parts}
\stepbox{1. EXACT FORM}{Rewrite to $\slot{pcA}{$A$}\cos\big(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$}\big)$. Read the three pieces.}
\stepdown
\stepbox{2. FREQUENCY}{$f=\dfrac{\slot{pcB}{$\omega$}}{2\pi}$ Hz \why{one turn is $2\pi$ rad}}
\stepdown
\stepbox{3. PERIOD}{$T=\dfrac{1}{f}=\dfrac{2\pi}{\slot{pcB}{$\omega$}}$ s}
\stepdown
\stepbox{4. TIME SHIFT}{$t_0=-\dfrac{\slot{pcC}{$\phi$}}{\slot{pcB}{$\omega$}}$ s \why{$A\cos(\omega(t-t_0))$}}

\subsubsection{Steps --- build from the parts}
\stepbox{1. AMPLITUDE}{\pA{$A$} = the peak height.}
\stepdown
\stepbox{2. FREQUENCY}{$\slot{pcB}{$\omega$}=\dfrac{2\pi}{T}$ or $2\pi f$.}
\stepdown
\stepbox{3. PHASE}{$t_0$ = time of the first peak. \; $\slot{pcC}{$\phi$}=-\slot{pcB}{$\omega$}\,t_0$}
\stepdown
\stepbox{4. ASSEMBLE}{$x(t)=\slot{pcA}{$A$}\cos\big(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$}\big)$}
\end{rcol}

% ============================================================ 3
\lesson{3 --- DT sinusoids, DT frequency, aliasing}
\idea{Photograph the spinning wheel with a strobe. In the photos you only see how far it turned between photos. That angle per photo is the \term{DT frequency} $\hat\omega$ (rad/sample).}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pB{$\omega$} or \pB{$f$} & the CT frequency (rad/s or Hz) \\
\pD{$f_s$} or \pD{$T_s$} & the sampling rate or period \\
\pC{$\hat\omega$} & the DT frequency: the number multiplying $n$ \\
\end{ltab}
\begin{ltab}{Given $\to$ find}{Do this}
$f$, $f_s\to\hat\omega$ & $\hat\omega=\dfrac{2\pi f}{f_s}$ \st\\
$\omega$, $T_s\to\hat\omega$ & $\hat\omega=\omega T_s=\dfrac{\omega}{f_s}$ \st\\
$\hat\omega$, $f_s\to f$ & $f=\dfrac{\hat\omega f_s}{2\pi}$ (the lowest answer) \st\\
\end{ltab}
\term{Aliasing}: $\hat\omega$, $\hat\omega+2\pi k$ and $-\hat\omega$ give the \keyres{same photos}. In Hz: $\pm f+kf_s$ all look the same.
\trap{DT $\to$ CT has more than one answer. Any alias fits.}
\trap{$\cos$ is even, so $f_s-f$ aliases to $f$ too.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- CT $\to$ DT frequency}
\stepbox{1. READ THE PIECES}{\pB{$\omega$} (or \pB{$f$}) \qquad \pD{$f_s$}}
\stepdown
\stepbox{2. DIVIDE}{$\slot{pcC}{$\hat\omega$}=\dfrac{\slot{pcB}{$\omega$}}{\slot{pcD}{$f_s$}}=\dfrac{2\pi\,\slot{pcB}{$f$}}{\slot{pcD}{$f_s$}}$}
\stepdown
\stepbox{3. WRITE $x[n]$}{$x[n]=A\cos\big(\slot{pcC}{$\hat\omega$}\,n+\phi\big)$ \why{$A$ and $\phi$ do not change}}

\subsubsection{Steps --- DT $\to$ CT frequency}
\stepbox{1. READ THE PIECES}{\pC{$\hat\omega$} \qquad \pD{$f_s$}}
\stepdown
\stepbox{2. MULTIPLY}{$f=\dfrac{\slot{pcC}{$\hat\omega$}\cdot\slot{pcD}{$f_s$}}{2\pi}$ \why{the lowest answer. Others: $\pm f+kf_s$}}

\subsubsection{Steps --- does $f$ alias to $f'$?}
\stepbox{1. DT FREQUENCY}{$\slot{pcC}{$\hat\omega$}=\dfrac{2\pi\,\slot{pcB}{$f$}}{\slot{pcD}{$f_s$}}$}
\stepdown
\stepbox{2. REMOVE WHOLE TURNS}{Subtract $2\pi$ until $\hat\omega$ is in $(-\pi,\pi]$.}
\stepdown
\stepbox{3. COMPARE}{Same $\lvert\hat\omega\rvert$ as $f'$ $\Rightarrow$ \warn{same photos} (aliases).}
\end{rcol}

% ============================================================ 4
\lesson{4 --- energy and power}
\idea{Think of $\lvert x\rvert^2$ as money spent per day, forever. \term{Energy} is the total. \term{Power} is the average per day. Spend \$100 once: total finite, average $0$. Spend \$5 a day: total $\infty$, average \$5.}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{on at} & where the signal starts. A switch $u(t-a)$ turns on at $a$ \\
\pB{off at} & where it ends ($\infty$ if never) \\
\pC{$\lvert x\rvert^2$} & square the signal \keyres{first} \\
\pD{$T$} (or $N$) & the window half-width. It goes to $\infty$ \\
\end{ltab}

\subsubsection{Classify by shape first}
\begin{ltab}{The signal}{Result}
dies out, or finite length & \term{energy signal}: $E$ finite, $P=0$ \\
periodic, or constant & \term{power signal}: $P$ finite, $E=\infty$ \\
grows without limit ($x=t$) & \term{neither}: both $\infty$ \\
\end{ltab}

\subsubsection{Shortcuts}
\begin{ltab}{Signal}{Result}
sinusoid, amplitude $A$ & $P=\dfrac{A^2}{2}$ \st\\
constant $c$ & $P=c^2$ \\
$Ae^{-at}u(t)$, $a>0$ & $E=\dfrac{A^2}{2a}$ \st\\
$a^nu[n]$, $\lvert a\rvert<1$ & $E=\dfrac{1}{1-a^2}$ \st\\
\end{ltab}
\trap{Square first, then add. Negatives count positive.}
\trap{``$16$ forever'' is the power. The energy is $\infty$.}
\trap{A final $E$ or $P$ never contains $T$ or $N$. $\frac cT\to0$.}
\trap{Write the label: energy signal, power signal, or neither.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- energy}
\stepbox{1. CLASSIFY}{Use the shape table. Periodic or constant $\to$ go to power.}
\stepdown
\stepbox{2. READ THE PIECES}{\pA{on at}, \pB{off at}, and \pC{$\lvert x\rvert^2$}}
\stepdown
\stepbox{3. INTEGRATE (DT: SUM)}{$E=\displaystyle\int_{\slot{pcA}{on}}^{\slot{pcB}{off}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$ \qquad $E=\displaystyle\sum_{\slot{pcA}{on}}^{\slot{pcB}{off}}\slot{pcC}{$\lvert x\rvert^2$}$ \\ \why{where $x=0$ it adds nothing, so the limits shrink}}
\stepdown
\stepbox{4. LABEL}{$E$ finite $\Rightarrow$ $P=\lim\dfrac{E}{2T}=0$ $\Rightarrow$ \keyres{energy signal}}

\subsubsection{Steps --- power}
\stepbox{1. WINDOW TOTAL}{$\displaystyle\int_{-\slot{pcD}{$T$}}^{\slot{pcD}{$T$}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$ \qquad DT: $\displaystyle\sum_{-\slot{pcD}{$N$}}^{\slot{pcD}{$N$}}\slot{pcC}{$\lvert x\rvert^2$}$}
\stepdown
\stepbox{2. DIVIDE BY THE WINDOW}{CT: $\div\,2\slot{pcD}{$T$}$ \qquad DT: $\div\,(2\slot{pcD}{$N$}+1)$}
\stepdown
\stepbox{3. LIMIT}{Let $T\to\infty$. $T$ must cancel or vanish.}
\stepdown
\stepbox{4. LABEL}{$P$ finite, nonzero $\Rightarrow$ $E=\infty$ $\Rightarrow$ \keyres{power signal}}

\subsubsection{Steps --- periodic shortcut}
\stepbox{1. ONE PERIOD}{$P=\dfrac{1}{T_0}\displaystyle\int_{\text{one period}}\slot{pcC}{$\lvert x\rvert^2$}\,dt$ \why{DT: $\frac1N\sum$ over one period}}
\end{rcol}

% ============================================================ 5
\lesson{5 --- energy from a graph}
\idea{Do not write one big integral. Chop the graph into straight pieces, find each piece's energy from the shortcut table, and add. In DT there are no widths: each stem's energy is its height squared.}
\begin{lcol}
\subsubsection{Pieces (one per straight piece)}
\begin{ltab}{Piece}{Where to find it}
\pA{$A$} & the height at the start of the piece \\
\pB{$B$} & the height at the end of the piece \\
\pC{$D$} & the length (duration) of the piece \\
\pE{$h$} & DT: the height of one stem \\
\end{ltab}

\subsubsection{Shortcut table (the templates)}
\begin{ltab}{Piece of the graph}{Energy of that piece}
flat at level \pA{$A$} & $\pA{A}^2\pC{D}$ \\
ramp $0\to\pA{A}$ (or $A\to0$) & $\dfrac{\pA{A}^2\pC{D}}{3}$ \st\\
line $\pA{A}\to\pB{B}$ & $\dfrac{\pC{D}}{3}\big(\pA{A}^2+\pA{A}\pB{B}+\pB{B}^2\big)$ \st\\
DT stem of height \pE{$h$} & $\pE{h}^2$ \\
\end{ltab}
Line through $(t_1,x_1)$ with slope $m$: $x=x_1+m(t-t_1)$, if you want to check by integral.
\trap{A squared ramp is a curve: $\div3$, not $\div2$.}
\trap{Negative heights count positive: $(-2)^2=4$.}
\trap{If the graph repeats forever, $E=\infty$. Find the power over one period.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- energy from a graph}
\stepbox{1. CHOP}{Split the graph at every corner and jump. Each piece is flat, a ramp, or a line.}
\stepdown
\stepbox{2. READ EACH PIECE}{\pA{$A$}, \pB{$B$}, \pC{$D$} for each piece. DT: each \pE{$h$}.}
\stepdown
\stepbox{3. SHORTCUT EACH PIECE}{flat: $\slot{pcA}{$A$}^2\slot{pcC}{$D$}$ \quad ramp: $\dfrac{\slot{pcA}{$A$}^2\slot{pcC}{$D$}}{3}$ \quad line: $\dfrac{\slot{pcC}{$D$}}{3}\big(\slot{pcA}{$A$}^2+\slot{pcA}{$A$}\slot{pcB}{$B$}+\slot{pcB}{$B$}^2\big)$}
\stepdown
\stepbox{4. ADD}{$E=$ sum of the pieces. \quad DT: $E=\sum\slot{pcE}{$h$}^2$}
\stepdown
\stepbox{5. LABEL}{Finite length $\Rightarrow$ \keyres{energy signal}.}

\subsubsection{Steps --- a repeating graph (power)}
\stepbox{1. ONE PERIOD}{Find the period $T_0$. Chop one period only.}
\stepdown
\stepbox{2. ENERGY OF ONE PERIOD}{Steps 2--4 above, over one period.}
\stepdown
\stepbox{3. DIVIDE}{$P=\dfrac{E_{\text{one period}}}{T_0}$ \quad $\Rightarrow$ \keyres{power signal}}
\end{rcol}

% ============================================================ 6
\lesson{6 --- transformations of the time variable}
\idea{The shape does not change, only \emph{when} things happen. Ask each corner of the graph one question: \term{where did this point move to?} It keeps its height and lands at a new time.}

\subsection{Sketch $x(at+b)$ from $x(t)$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$t_{\text{old}}$} & each corner or jump of the $x(t)$ graph \\
\pB{$a$} & the number multiplying $t$ inside \\
\pC{$b$} & the number added inside, sign included \\
\end{ltab}
\begin{ltab}{Inside}{Effect}
$x(t-t_0)$, $t_0>0$ & moves \keyres{right} (delay) \\
$x(t+t_0)$, $t_0>0$ & moves left (advance) \\
$x(-t)$ & mirror about $t=0$ \\
$x(at)$, $\lvert a\rvert>1$ / $<1$ & compress / stretch \\
\end{ltab}
\trap{The sign inside is opposite to the direction: $x(t-3)$ moves right.}
\trap{Scale-then-shift is wrong. The point map does it in one step.}
\trap{DT: $x[2n]$ keeps only the even samples. It cannot be undone.}
\end{lcol}
\begin{rcol}
\stepbox{1. LIST THE CORNERS}{Each corner \pA{$t_{\text{old}}$} of $x(t)$, with its height.}
\stepdown
\stepbox{2. READ $a$, $b$}{Match the inside to $\slot{pcB}{$a$}\,t+\slot{pcC}{$b$}$.}
\stepdown
\stepbox{3. MAP EACH CORNER}{$t_{\text{new}}=\dfrac{\slot{pcA}{$t_{\text{old}}$}-\slot{pcC}{$b$}}{\slot{pcB}{$a$}}$ \why{heights do not change}}
\stepdown
\stepbox{4. DRAW}{Connect the moved corners in the same order. If $a<0$ the order reverses.}
\stepdown
\stepbox{5. DT ONLY}{Keep only integer $t_{\text{new}}$. A non-integer sample is lost.}
\end{rcol}

\subsection{Undo, or find $y=A\,x(at+b)$ from two graphs}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pE{$A$} & height of $y$ $\div$ height of $x$. Upside down: $A<0$ \\
\pB{$a$} & negative if $y$ is a mirror of $x$ \\
\pD{$(t_1,\tau_1)$}, \pD{$(t_2,\tau_2)$} & two matching points: $x$ at $t_1$ moved to $\tau_1$ in $y$ \\
\end{ltab}
\begin{ltab}{Given $\to$ find}{Do this}
$x(t)\to x(at+b)$ & map each corner (above) \\
$y(t)=x(at+b)\to x$ & $x(t)=y\Big(\dfrac{t-b}{a}\Big)$ \st\\
two graphs $\to A,a,b$ & two matching points (right) \\
\end{ltab}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- undo $y=x(at+b)$}
\stepbox{1. TEMPLATE}{$x(t)=y\Big(\dfrac{t-\slot{pcC}{$b$}}{\slot{pcB}{$a$}}\Big)$ \why{solve $at+b=s$ for $t$, rename $s\to t$}}

\subsubsection{Steps --- find $A$, $a$, $b$}
\stepbox{1. HEIGHT}{$\slot{pcE}{$A$}=\dfrac{\text{height of }y}{\text{height of }x}$}
\stepdown
\stepbox{2. MIRROR?}{Mirrored $\Rightarrow$ $\slot{pcB}{$a$}<0$.}
\stepdown
\stepbox{3. TWO EQUATIONS}{$\slot{pcB}{$a$}\,\slot{pcD}{$\tau_1$}+\slot{pcC}{$b$}=\slot{pcD}{$t_1$}$ \qquad $\slot{pcB}{$a$}\,\slot{pcD}{$\tau_2$}+\slot{pcC}{$b$}=\slot{pcD}{$t_2$}$ \\ \why{$y$ at $\tau$ is $x$ at $a\tau+b$}}
\stepdown
\stepbox{4. SOLVE}{Subtract the equations for \pB{$a$}. Back-substitute for \pC{$b$}.}
\stepdown
\stepbox{5. ASSEMBLE, CHECK}{$y(t)=\slot{pcE}{$A$}\,x(\slot{pcB}{$a$}t+\slot{pcC}{$b$})$. Test a third point.}
\end{rcol}

% ============================================================ 7
\lesson{7 --- periodic signals}
\idea{A periodic signal is a song on repeat. Slide it by one period and nothing changes. The \term{fundamental period} is the shortest loop.}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pB{$\omega$} & CT: the number multiplying $t$ \\
\pC{$\hat\omega$} & DT: the number multiplying $n$ \\
\pD{$m/N$} & $\hat\omega/2\pi$ as a fraction in lowest terms \\
\end{ltab}
\begin{ltab}{Test}{Means}
$x(t+T)=x(t)$ & CT periodic with period $T$ \\
$x[n+N]=x[n]$, $N$ an integer & DT periodic \\
\end{ltab}
\begin{qtab}
$\cos(\frac{4\pi}{6}n)$ & $\frac{4}{12}=\frac13$ $\Rightarrow$ \pD{$N=3$} \warn{reduce first} \\
$\cos(n)$ & $\frac{1}{2\pi}$ not rational: \warn{not periodic} \\
\end{qtab}
\trap{A CT sinusoid is always periodic. A DT sinusoid is not always.}
\trap{Reduce the fraction before reading $N$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- CT period}
\stepbox{1. EACH TERM}{$T_i=\dfrac{2\pi}{\slot{pcB}{$\omega_i$}}$}
\stepdown
\stepbox{2. COMBINE}{One term: $T=T_1$. \quad A sum: $T=\mathrm{lcm}(T_1,T_2,\ldots)$ \why{the first time all loops restart together}}

\subsubsection{Steps --- DT period}
\stepbox{1. DIVIDE BY $2\pi$}{$\dfrac{\slot{pcC}{$\hat\omega$}}{2\pi}$}
\stepdown
\stepbox{2. RATIONAL?}{Not a fraction of integers $\Rightarrow$ \warn{not periodic}. Stop.}
\stepdown
\stepbox{3. REDUCE}{Write it as $\dfrac{m}{\slot{pcD}{$N$}}$ in lowest terms.}
\stepdown
\stepbox{4. READ $N$}{The period is the denominator \pD{$N$}. \why{$N$ photos hold $m$ whole turns}}
\stepdown
\stepbox{5. A SUM (DT)}{$N=\mathrm{lcm}(N_1,N_2,\ldots)$}
\end{rcol}

% ============================================================ 8
\lesson{8 --- even and odd signals}
\idea{\term{Even}: a mirror on the vertical axis. \term{Odd}: spin the graph half a turn about the origin and it lands on itself. Every signal splits into one even part plus one odd part.}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{even pile} & terms with $\cos$, $t^2$, $\lvert t\rvert$, constants \\
\pC{odd pile} & terms with $\sin$, $t$, $t^3$ \\
$x(-t)$ & replace every $t$ with $-t$ \\
\end{ltab}
\begin{ltab}{Test}{Result}
$x(-t)=x(t)$ & \pA{even} \\
$x(-t)=-x(t)$ & \pC{odd} \\
neither holds & neither \\
\end{ltab}
\term{Products work like signs}: even$\cdot$even $=$ odd$\cdot$odd $=$ even. \; even$\cdot$odd $=$ odd.
\trap{An odd signal is $0$ at the origin.}
\trap{DT: read $x[-n]$ from $x$ at the opposite index.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- test}
\stepbox{1. FLIP}{Write $x(-t)$. Simplify.}
\stepdown
\stepbox{2. COMPARE}{Same as $x(t)$: \pA{even}. \; Same with every sign flipped: \pC{odd}. \; Else: neither.}

\subsubsection{Steps --- split (formula)}
\stepbox{1. SORT THE TERMS}{Each term goes in the \pA{even pile} or the \pC{odd pile}.}
\stepdown
\stepbox{2. READ THE PARTS}{$\mathcal{E}v\{x\}=\slot{pcA}{even pile}$ \qquad $\mathcal{O}d\{x\}=\slot{pcC}{odd pile}$}

\subsubsection{Steps --- split (any signal, DT table)}
\stepbox{1. TABLE}{Rows $n$, $x[n]$, $x[-n]$ for each $n$.}
\stepdown
\stepbox{2. EVEN PART}{$\mathcal{E}v=\dfrac{x[n]+x[-n]}{2}$ in each column}
\stepdown
\stepbox{3. ODD PART}{$\mathcal{O}d=\dfrac{x[n]-x[-n]}{2}$ in each column}
\stepdown
\stepbox{4. CHECK}{$\mathcal{E}v+\mathcal{O}d=x[n]$ in each column. \; $\mathcal{O}d[0]=0$.}
\end{rcol}

% ============================================================ 9
\lesson{9 --- complex exponentials}
\idea{$e^{j\theta}$ is an arrow of length $1$ at angle $\theta$. Let $\theta=\omega t$ and it spins. Its shadow on the horizontal axis is a cosine. Multiply by $e^{\sigma t}$ and it also grows or shrinks: a spiral.}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$\lvert C\rvert$} & length of $C$: $\sqrt{a^2+b^2}$ \\
\pC{$\phi$} & angle of $C$: $\arctan\frac ba$, check the quadrant \\
\pD{$\sigma$} & real part of $a$: growth ($+$) or decay ($-$) \\
\pB{$\omega$} & imaginary part of $a$: spin rate \\
\end{ltab}
$x(t)=Ce^{at}$, \quad $C=\pA{\lvert C\rvert}e^{j\pC{\phi}}$, \quad $a=\pD{\sigma}+j\pB{\omega}$.
\begin{ltab}{Case}{Real part looks like}
$\omega=0$ & real exponential: grows or decays \\
$\sigma=0$ & sinusoid, $T=\frac{2\pi}{\lvert\omega\rvert}$ \\
both & damped sinusoid, envelope $\lvert C\rvert e^{\sigma t}$ \\
\end{ltab}
\term{DT}: $x[n]=C\alpha^n$. $\lvert\alpha\rvert<1$ decays, $>1$ grows, $\alpha<0$ flips sign each step. \; $e^{j(\hat\omega+2\pi)n}=e^{j\hat\omega n}$.
\trap{$e^{j2\pi k}=1$ for every integer $k$. $\lvert e^{j\theta}\rvert=1$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- $Ce^{at}\to$ real signal}
\stepbox{1. POLAR $C$}{$C=\slot{pcA}{$\lvert C\rvert$}e^{j\slot{pcC}{$\phi$}}$}
\stepdown
\stepbox{2. SPLIT $a$}{$a=\slot{pcD}{$\sigma$}+j\slot{pcB}{$\omega$}$}
\stepdown
\stepbox{3. REAL PART}{$\mathrm{Re}\{Ce^{at}\}=\slot{pcA}{$\lvert C\rvert$}\,e^{\slot{pcD}{$\sigma$}t}\cos\big(\slot{pcB}{$\omega$}t+\slot{pcC}{$\phi$}\big)$}

\subsubsection{Steps --- real signal $\to Ce^{at}$}
\stepbox{1. MATCH}{Read \pA{$\lvert C\rvert$}, \pD{$\sigma$}, \pB{$\omega$}, \pC{$\phi$} off $\lvert C\rvert e^{\sigma t}\cos(\omega t+\phi)$.}
\stepdown
\stepbox{2. ASSEMBLE}{$C=\slot{pcA}{$\lvert C\rvert$}e^{j\slot{pcC}{$\phi$}}$ \qquad $a=\slot{pcD}{$\sigma$}+j\slot{pcB}{$\omega$}$}

\subsubsection{Steps --- cosine or sine $\to$ two exponentials}
\stepbox{1. EULER}{$\cos\theta=\dfrac{e^{j\theta}+e^{-j\theta}}{2}$ \qquad $\sin\theta=\dfrac{e^{j\theta}-e^{-j\theta}}{2j}$}
\stepdown
\stepbox{2. PLACE}{$\slot{pcA}{$A$}\cos(\slot{pcB}{$\omega$}t)=\dfrac{\slot{pcA}{$A$}}{2}e^{j\slot{pcB}{$\omega$}t}+\dfrac{\slot{pcA}{$A$}}{2}e^{-j\slot{pcB}{$\omega$}t}$}
\end{rcol}

% ============================================================ 10
\lesson{10 --- the button, the switch, and the ramp}
\idea{$\delta$ is a \term{button}: pressed once at time $0$. $u$ is a \term{switch}: flipped on at $0$ and left on. $r$ is a \term{ramp}: the running total of the switch. Each is the running total of the one before. Everything else is built from these three.}

\subsection{Where is it? Stems as buttons, pulses as switches}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$h$} & the height of a stem (the coefficient) \\
\pB{$k$} & the position: set the inside to $0$ \\
\pA{$a$}, \pB{$b$} & switch on at $a$, off at $b$ \\
\end{ltab}
\begin{ltab}{Inside}{Position, direction}
$n-3$ & at $n=3$: delay, right \\
$n+2$ & at $n=-2$: advance, left \\
\end{ltab}
\begin{ltab}{Given $\to$ find}{Do this}
$u\to\delta$ (CT) / (DT) & $\dfrac{du}{dt}$ \; / \; $u[n]-u[n-1]$ \st\\
$\delta\to u$ (CT) / (DT) & $\int_{-\infty}^{t}\delta$ \; / \; $\sum_{k\le n}\delta[k]$ \\
\end{ltab}
\trap{The off-switch's own position is already off: $u[n]-u[n-4]$ is $0$ at $n=4$.}
\trap{$u[n]$ is $0,0,1,1,1,\ldots$ It does not climb. The ramp climbs.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- stems $\to$ buttons}
\stepbox{1. READ EACH STEM}{height \pA{$h$} at position \pB{$k$}}
\stepdown
\stepbox{2. ONE BUTTON PER STEM}{$x[n]=\sum\slot{pcA}{$h$}\,\delta[n-\slot{pcB}{$k$}]$ \why{no stem, no term}}

\subsubsection{Steps --- buttons $\to$ stems}
\stepbox{1. EACH TERM}{coefficient $=$ height \pA{$h$} \qquad inside $=0$ $\Rightarrow$ position \pB{$k$}}

\subsubsection{Steps --- pulse from switches}
\stepbox{1. TEMPLATE}{DT: $u[n-\slot{pcA}{$a$}]-u[n-\slot{pcB}{$b$}]$ is on for $\slot{pcA}{$a$}\le n\le\slot{pcB}{$b$}-1$ \\ CT: $u(t-\slot{pcA}{$t_1$})-u(t-\slot{pcB}{$t_2$})$ is on for $\slot{pcA}{$t_1$}\le t<\slot{pcB}{$t_2$}$}
\stepdown
\stepbox{2. HEIGHT}{Multiply the pair by the pulse height.}
\end{rcol}

\subsection{Sifting: the camera flash}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pB{$t_0$} & the flash: set the inside of $\delta$ to $0$ \\
\pD{lo}, \pD{hi} & the limits of the integral (the window) \\
\pA{$g(t)$} & everything multiplying $\delta$ \\
\end{ltab}
CT button: area $1$ (not height). \; $\int_{-\infty}^{\infty}\delta(t)\,dt=1$.
\begin{qtab}
$\int_0^5 e^t\delta(t+1)\,dt$ & flash \pB{$-1$}, outside $[0,5]$: $0$ \\
$\sum_n n^2\delta[n-3]$ & flash \pB{$3$}, all $n$: $\pA{3^2}$ \\
\end{qtab}
\trap{The answer has no $\delta$ left in it.}
\end{lcol}
\begin{rcol}
\stepbox{1. WHERE IS THE FLASH?}{Set the inside of $\delta$ to $0$: $t=\slot{pcB}{$t_0$}$}
\stepdown
\stepbox{2. IN THE WINDOW?}{Is $\slot{pcB}{$t_0$}$ in $[\slot{pcD}{lo},\slot{pcD}{hi}]$? \; No $\Rightarrow$ the answer is $0$.}
\stepdown
\stepbox{3. WHAT DOES IT CAPTURE?}{$\displaystyle\int\slot{pcA}{$g(t)$}\,\delta(t-\slot{pcB}{$t_0$})\,dt=\slot{pcA}{$g$}(\slot{pcB}{$t_0$})$ \why{plug $t_0$ into everything except $\delta$}}
\end{rcol}

\subsection{Graphs from ramps and switches}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{corner} & where the slope changes \\
\pA{$\Delta$slope} & slope after $-$ slope before \\
\pD{jump} & where the graph jumps, and by how much (up $+$) \\
\end{ltab}
\begin{ltab}{Form}{Formula}
ramp & $r(t)=t\,u(t)$, \; $r[n]=n\,u[n]$ \\
CT chain & $\frac{dr}{dt}=u$, \; $\frac{du}{dt}=\delta$ \\
DT chain & $r[n]-r[n-1]=u[n-1]$ \\
DT running sum & $r[n]=\sum_{k=-\infty}^{n-1}u[k]$ \\
\end{ltab}
\trap{The DT ramp sum stops at $n-1$.}
\trap{At a peak the slope change is double: $+1\to-1$ is $-2$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- graph $\to$ formula}
\stepbox{1. WALK LEFT TO RIGHT}{List every \pA{corner} and every \pD{jump}.}
\stepdown
\stepbox{2. SLOPE CHANGE AT EACH CORNER}{$\slot{pcA}{$\Delta$}=$ slope after $-$ slope before}
\stepdown
\stepbox{3. ASSEMBLE}{$x(t)=\sum\slot{pcA}{$\Delta$}\,r(t-\slot{pcA}{corner})+\sum\slot{pcD}{jump}\,u(t-\slot{pcD}{where})$}
\stepdown
\stepbox{4. CHECK}{The slope changes sum to $0$ if the graph ends flat at $0$.}

\subsubsection{Steps --- formula $\to$ graph}
\stepbox{1. EACH RAMP IS A CORNER}{$\slot{pcA}{$\Delta$}\,r(t-\slot{pcA}{corner})$: the slope changes by $\Delta$ there.}
\stepdown
\stepbox{2. EACH SWITCH IS A JUMP}{$\slot{pcD}{jump}\,u(t-\slot{pcD}{where})$}
\stepdown
\stepbox{3. DRAW}{Start flat at $0$. Add each change in time order.}
\end{rcol}

% ============================================================ 11
\lesson{11 --- systems and interconnections}
\idea{A \term{system} is a machine: a signal goes in, another comes out. A \term{difference equation} is its recipe: how to cook $y[n]$ from inputs, and sometimes from its own past outputs.}

\subsection{Hookups: series, parallel, feedback}
\begin{lcol}
\resizebox{\linewidth}{!}{%
\begin{tikzpicture}[node distance=0.55cm, font=\small]
\node (x1) {$x$};
\node[blk, draw=pcA] (s1) [right=of x1] {$S_1$};
\node[blk, draw=pcB] (s2) [right=of s1] {$S_2$};
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
\node[blk, draw=pcA, right=0.45cm of sf] (f1) {$S_1$};
\node[right=0.45cm of f1] (y3) {$y$};
\node[blk, draw=pcB, below=0.45cm of f1] (f2) {$S_2$};
\draw[sig] (x3) -- (sf); \draw[sig] (sf) -- (f1); \draw[sig] (f1) -- (y3);
\draw[sig] ($(f1.east)!0.5!(y3.west)$) |- (f2);
\draw[sig] (f2) -| (sf);
\node[font=\scriptsize, text=termHi, above=0.05cm of f1] {feedback};
\end{tikzpicture}}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$S_1$} & the first machine (or top branch) \\
\pB{$S_2$} & the second machine (or bottom branch, or the loop) \\
\pC{start} & a recursive system's start value, $y[-1]=0$ at rest \\
\end{ltab}
\trap{Shifting $w[n]=2x[n]$ to $w[n-1]$ shifts every $n$: $2x[n-1]$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- series}
\stepbox{1. NAME THE MIDDLE}{$w=$ output of \pA{$S_1$}.}
\stepdown
\stepbox{2. SHIFT AS NEEDED}{Write $w[n-1]$, $w[n-2]$, \ldots\ by replacing every $n$ in \pA{$S_1$}.}
\stepdown
\stepbox{3. SUBSTITUTE}{Put \pA{$w$} into \pB{$S_2$}'s input slot. The answer has only $x$ and $y$.}

\subsubsection{Steps --- parallel}
\stepbox{1. ADD THE BRANCHES}{$y=\slot{pcA}{$y_1$}+\slot{pcB}{$y_2$}$ \why{both get the same $x$}}

\subsubsection{Steps --- run a recursive system}
\stepbox{1. START AT REST}{$y[-1]=\slot{pcC}{$0$}$ (or the given start).}
\stepdown
\stepbox{2. ONE STEP AT A TIME}{$y[0]$ from $x[0]$ and $y[-1]$. Then $y[1]$ from $x[1]$ and $y[0]$. \ldots}
\stepdown
\stepbox{3. PATTERN}{Spot the rule (often $c\,a^n u[n]$). Check one more $n$.}
\end{rcol}

\subsection{Diagram $\leftrightarrow$ equation}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Block}{Does}
adder (circle) & sums its inputs \\
gain (box $a$) & $a\cdot$input \\
unit delay (box $D$) & $x[n]\to x[n-1]$ \\
branch dot & copies a signal \\
\end{ltab}
\begin{ltab}{System}{Equation}
first difference & $y=x[n]-x[n-1]$ \\
3-pt moving average & $y=\frac13\big(x[n]+x[n-1]+x[n-2]\big)$ \\
accumulator & $y[n]=y[n-1]+x[n]$ \\
\end{ltab}
\term{Nonrecursive (FIR)}: inputs only. \; \term{Recursive (IIR)}: also past outputs. Needs a start value.
\trap{A $D$ that feeds $y$ back into the adder means $y[n-1]$ in the equation.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- diagram $\to$ equation}
\stepbox{1. NAME EACH WIRE}{After $k$ delays, a wire carries $x[n-k]$ or $y[n-k]$.}
\stepdown
\stepbox{2. EACH ADDER}{output $=$ sum of the wires in, each times its gain.}
\stepdown
\stepbox{3. CHECK THE COUNT}{One $D$ per shift. One term per wire into the adder.}

\subsubsection{Steps --- equation $\to$ diagram}
\stepbox{1. ONE BLOCK PER PIECE}{Each $x[n-k]$: $k$ delays on the input side. Each $y[n-k]$: $k$ delays on the output side (feedback).}
\stepdown
\stepbox{2. GAINS}{One gain box per coefficient.}
\stepdown
\stepbox{3. ADDER}{All terms meet in one adder. Its output is $y[n]$.}
\stepdown
\stepbox{4. READ IT BACK}{Diagram $\to$ equation must give the original.}
\end{rcol}

% ============================================================ 12
\lesson{12 --- system properties}
\idea{Properties are yes/no questions about a machine. Each is separate: a machine can pass one and fail another.}

\subsection{Memory, causality, invertibility}
\begin{lcol}
\subsubsection{Pieces: the time stamps}
\begin{ltab}{Stamp on $x[\cdot]$}{Color}
$n$ (or $t$) & \pA{now} \\
$n-1$, $n-2$, \ldots & \pB{past} \\
$n+1$, \ldots, or $-n$, $2n$ & \pC{future} (for some $n$) \\
\end{ltab}
\trap{$y(t)=x(-t)$: at $t=-1$ it needs $x(1)$, the future.}
\trap{$y=x^2$ is not invertible: $1$ and $-1$ both give $1$.}
\end{lcol}
\begin{rcol}
\stepbox{1. COLOR EACH STAMP}{\pA{now}, \pB{past}, or \pC{future}.}
\stepdown
\stepbox{2. MEMORYLESS?}{Every stamp is \slot{pcA}{now} $\Rightarrow$ memoryless. Else it has memory.}
\stepdown
\stepbox{3. CAUSAL?}{No stamp is \slot{pcC}{future} $\Rightarrow$ causal.}
\stepdown
\stepbox{4. INVERTIBLE?}{Solve for $x$. Exactly one answer $\Rightarrow$ invertible. \why{find two inputs with the same output to show no}}
\end{rcol}

\subsection{Linearity: mix before the machine, or after?}
\begin{lcol}
\term{Linear} means: mixing two inputs \emph{before} the machine gives the same output as running each one alone and mixing the outputs \emph{after}. Mixing means $c_1x_1+c_2x_2$ for any numbers $c_1$, $c_2$.

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}} & the input box: every place the recipe has an $x$. Keep the index on it: \slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}}$[n-1]$ \\
\pA{$x_1$}, \pB{$x_2$} & two test inputs. Never pick numbers: keep them as letters \\
\pE{$c_1$}, \pE{$c_2$} & the knobs: any two numbers \\
\pA{$y_1$}, \pB{$y_2$} & the recipe run on \pA{$x_1$} alone, and on \pB{$x_2$} alone \\
\end{ltab}

\subsubsection{Shortcut: look at how $x$ enters each term}
\begin{ltab}{Term in the recipe}{Linear?}
a number or a function of $n$ times one $x$: \; $3x[n]$, \; $n\,x[n]$, \; $\frac{x[n]}{n}$, \; $e^{n}x[n]$ & \keyres{yes} \\
$x$ shifted, flipped, or squeezed: \; $x[n-1]$, \; $x[-n]$, \; $x[2n]$ & \keyres{yes} \\
$x$ inside a function: \; $x^2$, \; $\sqrt{x}$, \; $e^{x}$, \; $\lvert x\rvert$, \; $\cos(x[n])$ & \warn{no} \\
two $x$'s multiplied: \; $x[n]\,x[n-1]$ & \warn{no} \\
a term with no $x$: \; $+3$, \; $+\sin n$, \; $+u[n]$ & \warn{no} (fails the zero test) \\
\end{ltab}
Every term \keyres{yes} $\Rightarrow$ linear. One \warn{no} $\Rightarrow$ not linear. The steps on the right prove it.

\begin{qtab}
$y=n\,x[n]$ & P1: $n(c_1x_1+c_2x_2)$ \; P2: $c_1nx_1+c_2nx_2$ \; \keyres{equal} \\
$y=x[n]^2$ & P1: $c_1^2x_1^2+2c_1c_2x_1x_2+c_2^2x_2^2$ \; P2: $c_1x_1^2+c_2x_2^2$ \; \warn{not equal} \\
$y=2x[n]+3$ & zero test: $2(0)+3=3\neq0$ \; \warn{not linear} \\
\end{qtab}
\trap{The coefficients may depend on $n$. Only how $x$ appears matters.}
\trap{Use knobs $c_1$, $c_2$, not $a$, $b$. The system may have its own $a$.}
\trap{Passing the zero test alone does not prove linear.}
\end{lcol}
\begin{rcol}
\stepbox{1. BOX THE INPUT}{Rewrite the recipe with an empty box wherever it says $x$. Keep each index. \\[2pt] $y[n]=$ recipe of $\slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}}$ \qquad for example \; $n\cdot\slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}}[n]+\slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}}[n-1]$}
\stepdown
\stepbox{2. ZERO TEST}{Put $0$ in every box. If $y\neq0$ $\Rightarrow$ \warn{not linear}. Stop.}
\stepdown
\stepbox{3. PATH 1: MIX, THEN MACHINE}{Put $\big(\slot{pcE}{$c_1$}\slot{pcA}{$x_1$}+\slot{pcE}{$c_2$}\slot{pcB}{$x_2$}\big)$ in \keyres{every} box, with that box's index. \\ Expand: multiply out every bracket. Call it \term{P1}.}
\stepdown
\stepbox{4. PATH 2, PART A: MACHINE ON EACH}{$\slot{pcA}{$y_1$}=$ recipe with \pA{$x_1$} in every box. \\ $\slot{pcB}{$y_2$}=$ recipe with \pB{$x_2$} in every box.}
\stepdown
\stepbox{5. PATH 2, PART B: THEN MIX}{$\text{P2}=\slot{pcE}{$c_1$}\,\slot{pcA}{$y_1$}+\slot{pcE}{$c_2$}\,\slot{pcB}{$y_2$}$. Expand.}
\stepdown
\stepbox{6. COMPARE TERM BY TERM}{Match each term of P1 with a term of P2. \\ All match, for every $c_1$, $c_2$ $\Rightarrow$ \keyres{linear}. \\ A leftover term ($c_1^2$, \; $c_1c_2x_1x_2$, \; an extra constant) $\Rightarrow$ \warn{not linear}. The leftover is your reason.}
\end{rcol}

\subsection{Time invariance: delay before the machine, or after?}
\begin{lcol}
\term{Time invariant} means: delaying the input by $n_0$ just delays the output by $n_0$. The machine ignores the clock.

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}} & the input box: every place the recipe has an $x$ \\
\pA{inside of $x$} & the index in each box: $n$, $n-1$, $2n$, \ldots \\
\pD{lone $n$} & any $n$ (or $t$) outside a box: $n\,x[n]$, $\frac{x[n]}{n}$ \\
\pE{$n_0$} & the delay you apply \\
\end{ltab}

\subsubsection{Shortcut: look for the clock}
\begin{ltab}{Recipe has}{Time invariant?}
only shifts inside: $x[n-1]$, $x[n+2]$ & \keyres{yes} \\
a \pD{lone $n$}: $n\,x[n]$, $\cos(n)\,x[n]$ & \warn{no} \\
a squeeze or flip inside: $x[2n]$, $x[-n]$ & \warn{no} \\
numbers only outside: $3x[n]$, $x^2$ & \keyres{yes} \\
\end{ltab}
\trap{Path 1 changes only the inside of $x$. Path 2 changes every $n$.}
\end{lcol}
\begin{rcol}
\stepbox{1. BOX THE INPUT}{Rewrite the recipe with $\slot{pcC}{\rule{0pt}{1.5ex}\hspace{0.9em}}[\slot{pcA}{inside}]$ wherever it says $x$. Mark each \pD{lone $n$}.}
\stepdown
\stepbox{2. PATH 1: DELAY, THEN MACHINE}{In each box only: $\slot{pcA}{inside}\to\slot{pcA}{inside}-\slot{pcE}{$n_0$}$. \\ Leave every \pD{lone $n$} alone.}
\stepdown
\stepbox{3. PATH 2: MACHINE, THEN DELAY}{Replace \keyres{every} $n$ with $n-\slot{pcE}{$n_0$}$: inside the boxes \emph{and} each \slot{pcD}{lone $n$}.}
\stepdown
\stepbox{4. COMPARE}{Same $\Rightarrow$ \keyres{time invariant}. Different $\Rightarrow$ \warn{time varying}.}
\end{rcol}

\subsection{Stability with a ceiling $B$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$\lvert c_i\rvert$} & the size of each coefficient \\
\pD{$B$} & the input ceiling: $\lvert x[n]\rvert\le B$ \\
\end{ltab}
\term{BIBO}: bounded in $\Rightarrow$ bounded out.
\begin{ltab}{Red flag}{Why}
$n\,x[n]$ & $\lvert n\rvert B$ grows with $n$ \\
accumulator & adds another $B$ every step \\
$y=a\,y[n-1]+x$, $\lvert a\rvert\ge1$ & the echo never shrinks \\
\end{ltab}
\end{lcol}
\begin{rcol}
\stepbox{1. ABSOLUTE VALUE}{Take $\lvert\cdot\rvert$ of both sides.}
\stepdown
\stepbox{2. SPLIT}{$\lvert a+b\rvert\le\lvert a\rvert+\lvert b\rvert$, \; $\lvert cx\rvert=\lvert c\rvert\lvert x\rvert$}
\stepdown
\stepbox{3. CAP EACH INPUT}{$\lvert y\rvert\le\slot{pcA}{$\lvert c_1\rvert$}\slot{pcD}{$B$}+\slot{pcA}{$\lvert c_2\rvert$}\slot{pcD}{$B$}+\cdots$ \why{shifted $x$ too}}
\stepdown
\stepbox{4. VERDICT}{A finite number (no $n$, no endless sum) $\Rightarrow$ \keyres{stable}. \\ To show \warn{unstable}: one capped input ($x=1$, $u[n]$) with an unbounded output.}
\end{rcol}

% ============================================================ 13
\lesson{13 --- the convolution sum}
\idea{Every DT input is a stack of buttons. Press one button and an LTI machine answers with its echo, the \term{impulse response} $h[n]$. Each input stem makes its own echo, scaled by its height and shifted to its time. The output is the sum of all the echoes: $y=x*h$.}

\subsection{Find $h$, and read the system from $h$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pB{$b_k$} & the coefficient of $x[n-k]$ \\
\pC{$k$} & the delay of that term \\
\pA{$x=\delta$} & the test input: $1$ at $n=0$, else $0$ \\
\end{ltab}
\begin{ltab}{From $h$}{Property}
$h[n]=0$ for $n<0$ & causal \\
$\sum\lvert h[n]\rvert<\infty$ & BIBO stable \\
$h=c\,\delta[n]$ & memoryless \\
finitely many stems & FIR (nonrecursive) \\
series / parallel & $h_1*h_2$ / $h_1+h_2$ \\
\end{ltab}
\trap{Only for LTI systems at rest. $y=x^2$ has no $h$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- nonrecursive $\to h$}
\stepbox{1. READ THE COEFFICIENTS}{$y=\sum\slot{pcB}{$b_k$}\,x[n-\slot{pcC}{$k$}]$}
\stepdown
\stepbox{2. ONE STEM EACH}{$h[n]=\sum\slot{pcB}{$b_k$}\,\delta[n-\slot{pcC}{$k$}]$}

\subsubsection{Steps --- recursive $\to h$}
\stepbox{1. PRESS THE BUTTON}{Put \slot{pcA}{$x=\delta$}. Start at rest: $h[-1]=0$.}
\stepdown
\stepbox{2. RUN IT}{$h[0]$, $h[1]$, $h[2]$, \ldots\ one step at a time.}
\stepdown
\stepbox{3. PATTERN}{Usually $h=a^nu[n]$.}

\subsubsection{Steps --- $h\to$ equation}
\stepbox{1. ONE TERM PER STEM}{$y[n]=\sum_k h[k]\,x[n-k]$}
\end{rcol}

\subsection{Convolve $x$ and $h$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$x[k]$} & each input stem (Method 1: one color per stem) \\
\pB{$h$} & the echo, as stems or a formula \\
\pC{$n$} & the output time. Fixed during one sum \\
\end{ltab}
\begin{ltab}{Fact}{Formula}
convolution sum & $y[n]=\sum_k x[k]\,h[n-k]$ \\
swap & $x*h=h*x$ \\
$x$ on $[a,b]$, $h$ on $[c,d]$ & $y$ on $[a+c,\,b+d]$ \\
length & $L_x+L_h-1$ \\
sum check & $\sum y=\big(\sum x\big)\big(\sum h\big)$ \\
$x*\delta[n-n_0]$ & $x[n-n_0]$ \\
$a^nu*b^nu$, $a\neq b$ & $\dfrac{a^{n+1}-b^{n+1}}{a-b}u[n]$ \st\\
$a^nu*a^nu$ & $(n+1)a^nu[n]$ \\
finite geometric & $\sum_{k=0}^{n}r^k=\dfrac{1-r^{n+1}}{1-r}$ \st\\
\end{ltab}
\begin{ltab}{If the signals are}{Use}
two short lists of stems & Method 1, table \\
short pulse, long formula & Method 2, flip and slide \\
two formulas with switches & Method 3, formula \\
\end{ltab}
\trap{$h[n-k]$, not $h[k-n]$. And $y\neq x\cdot h$.}
\trap{After the flip, $h[0]$ sits at $k=n$, and $h[1]$ at $k=n-1$.}
\end{lcol}
\begin{rcol}
\subsubsection{Method 1 --- the table}
\stepbox{1. RANGE AND LENGTH}{$y$ on $[a+c,\,b+d]$, length $L_x+L_h-1$.}
\stepdown
\stepbox{2. ONE ROW PER INPUT STEM}{row $k$: $\slot{pcA}{$x[k]$}\cdot\slot{pcB}{$h$}$, starting at column $n=k$}
\stepdown
\stepbox{3. ADD EACH COLUMN}{$y[n]=$ sum of column $n$}
\stepdown
\stepbox{4. CHECK}{$\sum y=\big(\sum x\big)\big(\sum h\big)$}

\subsubsection{Method 2 --- flip and slide}
\stepbox{1. DRAW $x[k]$}{on a $k$ axis}
\stepdown
\stepbox{2. FLIP AND SLIDE $h$}{$h[k]\to h[-k]\to h[\slot{pcC}{$n$}-k]$. Its first stem sits at $k=n$, the rest trail left.}
\stepdown
\stepbox{3. REGIONS}{Split $n$: no overlap ($y=0$), partial overlap, full overlap.}
\stepdown
\stepbox{4. EACH REGION}{$y[\slot{pcC}{$n$}]=\displaystyle\sum_{k\in\text{overlap}}\slot{pcA}{$x[k]$}\,\slot{pcB}{$h[n-k]$}$}
\stepdown
\stepbox{5. CHECK}{The region formulas agree where they meet.}

\subsubsection{Method 3 --- formula}
\stepbox{1. PLACE}{$y[n]=\displaystyle\sum_k\slot{pcA}{$x[k]$}\,\slot{pcB}{$h[n-k]$}$}
\stepdown
\stepbox{2. SWITCHES CUT THE SUM}{$u[k]\,u[n-k]$ $\Rightarrow$ $k=0..\slot{pcC}{$n$}$, and $y=0$ for $n<0$.}
\stepdown
\stepbox{3. PULL OUT, GEOMETRIC SUM}{Pull out what has no $k$. Then $\sum_{k=0}^{n}r^k=\dfrac{1-r^{n+1}}{1-r}$.}
\stepdown
\stepbox{4. CHECK}{$y[0]=x[0]\,h[0]$.}
\end{rcol}

\makeatother
```
