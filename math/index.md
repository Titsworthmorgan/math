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
\def\synmk#1#2{%
  \expandafter\mathchardef\csname syng\string#1\endcsname=\numexpr\mathcode`#1-4096*(\mathcode`#1/4096)\relax
  \expandafter\edef\csname synmc\string#1\endcsname{\the\mathcode`#1}%
  \begingroup \lccode`\~=`#1\relax
    % preserve ALL capitals from \lowercase: \string#1 of an uppercase letter must not
    % be lowercased (else active B prints \syngb = lowercase glyph), and color names (varHi...) keep their H
    \lccode`\A=`\A\lccode`\B=`\B\lccode`\C=`\C\lccode`\D=`\D\lccode`\E=`\E\lccode`\F=`\F\lccode`\G=`\G\lccode`\H=`\H\lccode`\I=`\I\lccode`\J=`\J\lccode`\K=`\K\lccode`\L=`\L\lccode`\M=`\M\lccode`\N=`\N\lccode`\O=`\O\lccode`\P=`\P\lccode`\Q=`\Q\lccode`\R=`\R\lccode`\S=`\S\lccode`\T=`\T\lccode`\U=`\U\lccode`\V=`\V\lccode`\W=`\W\lccode`\X=`\X\lccode`\Y=`\Y\lccode`\Z=`\Z\relax
    \lowercase{\endgroup\expandafter\gdef\expandafter~\expandafter{\expandafter\@synord\expandafter{\csname syng\string#1\endcsname}{#2}}}%
  \mathcode`#1="8000\relax }
\def\synv#1{\synmk #1{varHi}}\def\synf#1{\synmk #1{funcHi}}
\synmk 0{numHi}\synmk 1{numHi}\synmk 2{numHi}\synmk 3{numHi}\synmk 4{numHi}\synmk 5{numHi}\synmk 6{numHi}\synmk 7{numHi}\synmk 8{numHi}\synmk 9{numHi}%
\synmk +{opHi}\synmk -{opHi}\synmk ={opHi}\synmk <{opHi}\synmk >{opHi}%
\synmk ({delimHi}\synmk ){delimHi}\synmk [{delimHi}\synmk ]{delimHi}\synmk |{delimHi}%
\synv a\synv b\synv c\synv d\synv e\synf f\synf g\synf h\synv i\synv j\synv k\synv l\synv m\synv n\synv o\synv p\synv q\synv r\synv s\synv t\synv u\synv v\synv w\synv x\synv y\synv z%
\synv A\synv B\synv C\synv D\synv E\synf F\synf G\synf H\synv I\synv J\synv K\synv L\synv M\synv N\synv O\synf P\synf Q\synv R\synv S\synv T\synv U\synv V\synv W\synv X\synv Y\synv Z%
% restore all letters to their normal (non-active) mathcode, locally
\def\syn@lettersoff{\mathcode`\a="7161\mathcode`\b="7162\mathcode`\c="7163\mathcode`\d="7164\mathcode`\e="7165\mathcode`\f="7166\mathcode`\g="7167\mathcode`\h="7168\mathcode`\i="7169\mathcode`\j="716A\mathcode`\k="716B\mathcode`\l="716C\mathcode`\m="716D\mathcode`\n="716E\mathcode`\o="716F\mathcode`\p="7170\mathcode`\q="7171\mathcode`\r="7172\mathcode`\s="7173\mathcode`\t="7174\mathcode`\u="7175\mathcode`\v="7176\mathcode`\w="7177\mathcode`\x="7178\mathcode`\y="7179\mathcode`\z="717A\mathcode`\A="7141\mathcode`\B="7142\mathcode`\C="7143\mathcode`\D="7144\mathcode`\E="7145\mathcode`\F="7146\mathcode`\G="7147\mathcode`\H="7148\mathcode`\I="7149\mathcode`\J="714A\mathcode`\K="714B\mathcode`\L="714C\mathcode`\M="714D\mathcode`\N="714E\mathcode`\O="714F\mathcode`\P="7150\mathcode`\Q="7151\mathcode`\R="7152\mathcode`\S="7153\mathcode`\T="7154\mathcode`\U="7155\mathcode`\V="7156\mathcode`\W="7157\mathcode`\X="7158\mathcode`\Y="7159\mathcode`\Z="715A}
\def\syncm#1#2{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{{\noexpand\ifsyntaxon\noexpand\color{#2}\noexpand\fi\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}}
\def\syncmc#1#2#3{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{\noexpand#3{\noexpand\textcolor{#2}{\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}}}
% math-alphabet commands must not let active letters override their font
\let\synm@mrm\mathrm \protected\def\mathrm#1{{\syn@lettersoff\synm@mrm{#1}}}
\let\synm@mbf\mathbf \protected\def\mathbf#1{{\syn@lettersoff\synm@mbf{#1}}}
\let\synm@mbb\mathbb \protected\def\mathbb#1{{\syn@lettersoff\synm@mbb{#1}}}
\let\synm@mcal\mathcal \protected\def\mathcal#1{{\syn@lettersoff\synm@mcal{#1}}}
\let\synm@msf\mathsf \protected\def\mathsf#1{{\syn@lettersoff\synm@msf{#1}}}
\let\synm@mit\mathit \protected\def\mathit#1{{\syn@lettersoff\synm@mit{#1}}}
\syncm\sin{funcHi}\syncm\cos{funcHi}\syncm\tan{funcHi}\syncm\cot{funcHi}\syncm\sec{funcHi}\syncm\csc{funcHi}%
\syncm\ln{funcHi}\syncm\log{funcHi}\syncm\arcsin{funcHi}\syncm\arccos{funcHi}\syncm\arctan{funcHi}%
\syncmc\leq{opHi}\mathrel\syncmc\geq{opHi}\mathrel\syncmc\neq{opHi}\mathrel\syncmc\to{opHi}\mathrel\syncmc\Rightarrow{opHi}\mathrel%
\syncmc\in{opHi}\mathrel\syncmc\subseteq{opHi}\mathrel\syncmc\approx{opHi}\mathrel\syncmc\equiv{opHi}\mathrel%
\syncm\cdot{opHi}\syncm\times{opHi}\syncm\div{opHi}\syncm\pm{opHi}\syncm\cup{opHi}\syncm\cap{opHi}%
\syncm\pi{varHi}\syncm\theta{varHi}\syncm\infty{numHi}%
% amsmath's \resetMathstrut@ reads \mathcode`( into a \mathchardef; restore the original there so it doesn't choke on the active "8000
\let\synOrigReset\resetMathstrut@
\def\resetMathstrut@{\mathcode`\(=\csname synmc(\endcsname\relax\synOrigReset\mathcode`\(="8000\relax}
% delimiter-sizing commands scan a delimiter char; restore the originals locally so the active delimiters don't break the scan
\def\syn@delimoff{\mathcode`\(=\csname synmc(\endcsname\mathcode`\)=\csname synmc)\endcsname\mathcode`\[=\csname synmc[\endcsname\mathcode`\]=\csname synmc]\endcsname\mathcode`\|=\csname synmc|\endcsname\relax}
\let\synszL\left\def\left{\syn@delimoff\synszL}
\let\synszR\right\def\right{\syn@delimoff\synszR}
\tikzset{every picture/.append style={execute at begin picture={\syntaxonfalse}}}
\makeatother
```

\section{Index — which file, which page}

\begin{multicols}{2}

\filbreak \subsection{Trigonometry \emph{\small(trig.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
degrees $\leftrightarrow$ radians & 1 \\
root-$n$ pattern & 1 \\
key identities & 1 \\
sum \& difference & 1 \\
double angle & 1 \\
power reduction / half angle & 1 \\
law of sines \& cosines & 2 \\
polar coordinates & 2 \\
vectors & 2 \\
\end{tabular}}
\filbreak \subsection{Calculus I — Limits \& Derivatives \emph{\small(calc1.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
domain blockers & 1 \\
slope & 1 \\
avg / instantaneous rate of change & 1 \\
limits & 1 \\
limits from leading exponents & 1 \\
asymptotes — the finding procedure & 1 \\
fundamental limits & 1 \\
limit laws & 1 \\
algebraic limit techniques — killing a $0/0$ by hand & 1 \\
squeeze theorem & 1 \\
L'H\^opital's rule & 1 \\
indeterminate forms — rearrange, then L'Hôpital & 2 \\
continuity & 2 \\
intermediate value theorem (IVT) & 2 \\
discontinuities & 3 \\
derivatives & 1 \\
tangent line & 3 \\
implicit differentiation & 3 \\
logarithmic differentiation & 4 \\
derivative of an inverse function & 4 \\
higher-order derivatives & 4 \\
differentiability vs continuity & 4 \\
critical points and extrema & 4 \\
concavity and inflection & 4 \\
curve sketching — the synthesis & 5 \\
mean value theorem (MVT) & 5 \\
extreme value theorem (EVT) & 5 \\
linear approximation \& differentials & 5 \\
related rates & 5 \\
optimization (one variable) & 5 \\
rectilinear motion (1-D) & 6 \\
Newton's method & 2 \\
Calc I common pitfalls & 6 \\
\end{tabular}}
\filbreak \subsection{Calculus II — Integration \emph{\small(calc2.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
antiderivatives (indefinite integrals) & 1 \\
riemann sums & 1 \\
sigma to integral & 1 \\
definite integral & 1 \\
fundamental theorem of calculus & 2 \\
Absolute value integrals & 2 \\
u-substitution & 2 \\
integration by parts (IBP) & 3 \\
trig integrals & 4 \\
partial fractions & 3 \\
trig substitution & 3 \\
net change theorem & 5 \\
average value & 5 \\
area between curves & 5 \\
geometry as integrals & 6 \\
volumes of revolution & 6 \\
arc length & 7 \\
surface area of revolution & 7 \\
work (springs \& pumping) & 7 \\
hydrostatic force & 8 \\
improper integrals & 9 \\
integration pitfalls & 10 \\
\end{tabular}}
\filbreak \subsection{Vector Calculus \emph{\small(vector-calc.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
Calc 2 $\to$ Vector Calc: carry-over cheat sheet & 1 \\
vector basics (2D \& 3D) & 1 \\
3D vectors & 1 \\
dot product & 1 \\
cross product (3D only) & 2 \\
lines \& planes in space & 4 \\
quadric surfaces & 6 \\
vector-valued functions (space curves) & 7 \\
calculus of vector-valued functions & 8 \\
arc length & 10 \\
motion in space & 11 \\
functions of several variables & 12 \\
multivariable limits \& continuity & 13 \\
partial derivatives & 14 \\
tangent planes \& linear approximation & 15 \\
multivariable chain rule & 16 \\
directional derivatives \& the gradient & 18 \\
max/min — critical points \& the second derivative test & 20 \\
double integrals — rectangular regions & 23 \\
double integrals — general regions & 24 \\
double integrals — polar coordinates & 25 \\
triple integrals — rectangular coordinates & 27 \\
coordinate conversions — the full table & 29 \\
triple integrals — cylindrical coordinates & 30 \\
triple integrals — spherical coordinates & 30 \\
mass, center of mass \& moments & 32 \\
change of variables — where every Jacobian comes from & 33 \\
\end{tabular}}
\filbreak \subsection{Discrete I — Logic, Sets \& Proofs \emph{\small(discrete.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
algebra refreshers & 1 \\
propositional logic & 2 \\
predicate logic \& quantifiers & 3 \\
sets & 1 \\
functions & 4 \\
relations & 5 \\
number theory & 5 \\
proof strategies & 6 \\
mathematical induction & 7 \\
\end{tabular}}
\filbreak \subsection{Discrete II — Counting, Recurrences \& Graphs \emph{\small(discrete.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
sequences \& recurrences & 9 \\
combinatorics & 9 \\
asymptotic notation & 10 \\
graph theory basics & 11 \\
\end{tabular}}
\filbreak \subsection{Start Here \emph{\small(pre-algebra.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
how to read this & 1 \\
why algebra works & 1 \\
the rules everything assumes & 1 \\
when you are stuck & 1 \\
\end{tabular}}
\filbreak \subsection{Pre-Algebra \emph{\small(pre-algebra.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
integers and the number line & 2 \\
fractions & 1 \\
decimals and percents & 3 \\
ratios and proportions & 3 \\
exponents and square roots & 3 \\
basic geometry & 3 \\
\end{tabular}}
\filbreak \subsection{Algebra I \emph{\small(algebra.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
expressions & 1 \\
solving linear equations & 1 \\
turning words into algebra & 1 \\
inequalities & 1 \\
absolute value & 2 \\
lines and slope & 2 \\
systems of equations & 3 \\
exponent rules & 3 \\
polynomials & 3 \\
factoring & 4 \\
quadratic equations & 4 \\
\end{tabular}}
\filbreak \subsection{Algebra II \emph{\small(algebra.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
rational expressions & 5 \\
radicals and rational exponents & 5 \\
complex numbers & 5 \\
exponential and logarithmic functions & 6 \\
growth and decay & 6 \\
sequences and series & 6 \\
sigma notation and the binomial theorem & 6 \\
direct and inverse variation & 7 \\
polynomial division & 7 \\
finding polynomial roots & 7 \\
\end{tabular}}
\filbreak \subsection{Pre-Calculus \emph{\small(pre-calc.pdf)}}
{\small\begin{tabular}{@{}p{0.86\linewidth}@{}r@{}}
functions & 1 \\
the parent graphs & 1 \\
polynomial and rational behaviour & 1 \\
finding the zeros & 2 \\
the key points of a graph & 2 \\
sketching a polynomial & 2 \\
maximums and minimums & 3 \\
polynomial and rational inequalities & 3 \\
conic sections & 4 \\
right-triangle trigonometry & 4 \\
the unit circle & 4 \\
trigonometric identities and equations & 4 \\
graphs of the trigonometric functions & 4 \\
inverse trigonometric functions & 5 \\
triangles that are not right-angled & 5 \\
combining functions & 5 \\
average rate of change & 6 \\
polar coordinates & 5 \\
vectors & 6 \\
\end{tabular}}
\end{multicols}