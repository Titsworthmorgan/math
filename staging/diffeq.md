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

\newcommand{\why}[1]{\emph{\scriptsize(#1)}}
\newcommand{\wk}[2]{\needspace{#1\baselineskip}\subsubsection{Worked: #2}}
\newcommand{\st}{\rule[-7pt]{0pt}{19pt}}

\section{Differential Equations --- Reference}

\begin{multicols}{2}
\raggedcolumns

\filbreak \subsection{notation}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}l|l@{}}
\term{Symbol} & \term{Meaning} \\\hline
$y'$, \; $\dfrac{dy}{dx}$ & first derivative of $y$ \st\\
$y''$, \; $\dfrac{d^2y}{dx^2}$ & second derivative \st\\
$y'''$, \; $y^{(4)}$, \; $y^{(n)}$ & third, fourth, $n$-th derivative \\
$x$ or $t$ & \term{independent variable} (the input) \\
$y$ & \term{dependent variable} (the unknown function) \\
$y(x_0)=k_0$ & \term{initial condition}: the value at $x_0$ \\
$c$, $c_1$, $c_2$ & arbitrary constants \\
\end{tabular}}
\par\vspace{2pt}
If the independent variable is time, the book writes $t$, and $y'$ means $\frac{dy}{dt}$.

\filbreak \subsection{terminology}
{\small
\begin{tabular}{@{}p{0.34\linewidth}p{0.62\linewidth}@{}}
\term{Term} & \term{Meaning} \\\hline
differential equation (DE) & an equation with one or more derivatives of an unknown function \\[1pt]
ordinary (ODE) & the unknown is a function of one variable \\[1pt]
partial (PDE) & the unknown has two or more variables (partial derivatives) \\[1pt]
order & the highest derivative in the equation \\[1pt]
linear & $y$ and its derivatives appear to the first power only, not multiplied together, not inside other functions \\[1pt]
autonomous & $y'=f(y)$: no $x$ on the right side \\[1pt]
solution & a function that makes the equation true on an open interval \\[1pt]
general solution & the family of all solutions, with constants $c$ \\[1pt]
particular solution & one member of the family, with numbers for $c$ \\[1pt]
explicit solution & $y=$ a formula in $x$ \\[1pt]
implicit solution & an equation in $x$ and $y$, not solved for $y$ \\[1pt]
initial value problem (IVP) & a DE plus initial conditions \\[1pt]
interval of validity & the largest open interval that contains $x_0$ on which the solution works \\[1pt]
solution curve & the graph of a solution \\[1pt]
integral curve & a curve made of solution curves (a circle, for example) \\[1pt]
direction field & short slope marks drawn on a grid \\[1pt]
isocline & a curve where the slope $f(x,y)$ is one constant \\[1pt]
equilibrium solution & a constant solution $y=k$ \\
\end{tabular}}

\filbreak \subsection{linear or not? --- the checklist}
A linear equation can be written as
$$a_n(x)y^{(n)}+\cdots+a_1(x)y'+a_0(x)y=g(x)$$
{\small
\begin{tabular}{@{}p{0.48\linewidth}p{0.48\linewidth}@{}}
\term{Allowed (still linear)} & \term{Not allowed (nonlinear)} \\\hline
coefficients in $x$: $x^2y''$, $e^xy'$ & a power of $y$: $y^2$, $(y')^3$, $\sqrt{y}$ \\[1pt]
any $g(x)$ on the right: $\sin x$ & a product: $y\,y'$, $y\,y''$ \\[1pt]
a constant coefficient: $3y'$ & $y$ inside a function: $\sin y$, $e^y$ \\
\end{tabular}}

\filbreak \subsection{calculus tables}
\term{Derivatives} ($a$, $n$ constants):
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.30\linewidth}p{0.30\linewidth}p{0.34\linewidth}@{}}
\term{Function} & \term{Derivative} & \term{Note} \\\hline
$x^n$ & $n\,x^{n-1}$ & power rule \\
$e^{ax}$ & $a\,e^{ax}$ & chain rule \\
$\ln x$ & $\dfrac{1}{x}$ & \st\\
$\sin(ax)$ & $a\cos(ax)$ & \\
$\cos(ax)$ & $-a\sin(ax)$ & \\
$\tan x$ & $\sec^2x$ & \\
$f\,g$ & $f'g+fg'$ & product rule \\
$\dfrac{f}{g}$ & $\dfrac{f'g-fg'}{g^2}$ & quotient rule \st\\
$f\big(g(x)\big)$ & $f'\big(g(x)\big)\,g'(x)$ & chain rule \\
\end{tabular}}
\par\vspace{2pt}
\term{Implicit differentiation}: differentiate both sides in $x$. Each $y$ term gets a factor $y'$: \; $\frac{d}{dx}\big(y^2\big)=2y\,y'$.

\term{Integrals} (add $+c$):
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
\term{Function} & \term{Antiderivative} \\\hline
$x^n$, \; $n\neq-1$ & $\dfrac{x^{n+1}}{n+1}$ \st\\
$\dfrac{1}{x}$ & $\ln\lvert x\rvert$ \st\\
$e^{ax}$ & $\dfrac{e^{ax}}{a}$ \st\\
$\sin(ax)$ & $-\dfrac{\cos(ax)}{a}$ \st\\
$\cos(ax)$ & $\dfrac{\sin(ax)}{a}$ \st\\
$\sec^2x$ & $\tan x$ \\
$\dfrac{1}{1+x^2}$ & $\arctan x$ \st\\
\end{tabular}}
\par\vspace{2pt}
\term{Integration by parts}: $\int u\,dv=uv-\int v\,du$. \; Pick $u$ = the part that gets simpler when you differentiate ($x$, $x^2$, $\ln x$).

\term{$u$-substitution}: $\int f\big(g(x)\big)g'(x)\,dx=\int f(u)\,du$ with $u=g(x)$.

\filbreak \subsection{algebra tools}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.36\linewidth}p{0.60\linewidth}@{}}
quadratic formula & $r=\dfrac{-b\pm\sqrt{b^2-4ac}}{2a}$ \st\\
two equations, two constants & solve one for $c_1$, substitute into the other \\
$e^{(\cdot)}$ is never $0$ & divide it out of an equation \\
$\ln$ undoes $e$ & $e^{a}=b$ $\Rightarrow$ $a=\ln b$ \\
\end{tabular}}

\filbreak \needspace{10\baselineskip}\subsection{formula sheet}
\needspace{3\baselineskip}\term{1--3. Classification}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
order & highest derivative \\
linear form & $a_n(x)y^{(n)}+\cdots+a_0(x)y=g(x)$ \\
normal form, first order & $y'=f(x,y)$ \\
autonomous, first order & $y'=f(y)$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{4--5. Solutions}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
verify & substitute $y$, $y'$, \ldots; both sides must match \\
try $y=e^{rx}$ & $y'=re^{rx}$, \; $y''=r^2e^{rx}$ \\
try $y=x^r$ & $y'=rx^{r-1}$, \; $y''=r(r-1)x^{r-2}$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{6--8. General solutions and IVPs}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
$y'=f(x)$ & $y=\int f(x)\,dx+c$ \\
$y^{(n)}=f(x)$ & integrate $n$ times, $n$ constants \\
order $n$ IVP & needs $n$ conditions: $y(x_0)$, \ldots, $y^{(n-1)}(x_0)$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{9. Models}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
growth or decay (Malthus) & $P'=aP$, \; $P=P_0e^{at}$ \\
logistic (Verhulst) & $P'=aP(1-\alpha P)$, \; $P\to\frac{1}{\alpha}$ \\
Newton's law of cooling & $T'=-k(T-T_m)$ \\
cooling solution & $T=T_m+(T_0-T_m)e^{-kt}$ \\
glucose with injection & $G'=-\lambda G+r$ \\
epidemic & $I'=rI(S-I)$ \\
free fall & $y''=-g$ \\
free fall solution & $y=-\dfrac{g}{2}t^2+v_0t+y_0$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{10--12. Direction fields}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
slope at $(x_0,y_0)$ & $m=f(x_0,y_0)$ \\
isocline of slope $c$ & $f(x,y)=c$ \\
equilibrium of $y'=f(y)$ & $f(k)=0$ $\Rightarrow$ $y=k$ \\
stable equilibrium & arrows on both sides point toward it \\
unstable equilibrium & arrows on both sides point away \\
semistable equilibrium & toward on one side, away on the other \\
\end{tabular}}

\filbreak \subsection{which tool? --- given $\to$ find}
The number in parentheses is the concept section.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.46\linewidth}p{0.50\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
an equation $\to$ ODE or PDE & count the independent variables \hfill (1) \\[1pt]
an equation $\to$ order & highest derivative \hfill (2) \\[1pt]
an equation $\to$ linear or not & the checklist \hfill (3) \\[1pt]
a function and a DE $\to$ is it a solution? & differentiate, substitute \hfill (4) \\[1pt]
a DE $\to$ values of $r$ & try $e^{rx}$ or $x^r$ \hfill (5) \\[1pt]
$y^{(n)}=f(x)\to$ general solution & integrate $n$ times \hfill (6) \\[1pt]
general solution, conditions $\to c$ & substitute, solve \hfill (7) \\[1pt]
a solution $\to$ interval of validity & remove bad $x$, keep $x_0$'s piece \hfill (8) \\[1pt]
words $\to$ a DE & phrase table \hfill (9) \\[1pt]
$y'=f(x,y)$ $\to$ slope at a point & evaluate $f$ \hfill (10) \\[1pt]
a field $\to$ its equation & match the features \hfill (10) \\[1pt]
slope $c\to$ where on the field & isocline $f(x,y)=c$ \hfill (11) \\[1pt]
$y'=f(y)\to$ constant solutions & solve $f(y)=0$ \hfill (12) \\[1pt]
$y(0)\to$ long-term behavior & phase line \hfill (12) \\
\end{tabular}}

\end{multicols}

\section{Differential Equations --- Concepts}

\begin{multicols}{2}
\raggedcolumns

% ------------------------------------------------------------ 1
\filbreak \subsection{1. what a differential equation is}
A \term{differential equation} (DE) is an equation that contains one or more derivatives of an unknown function. A solution is a \emph{function}, not a number.

Derivatives are rates of change. So a DE is a statement about how a quantity changes. Example: $P'=0.02P$ says "the population grows at $2\%$ of its size per unit time."
\begin{itemize}
\item \term{Ordinary} DE (ODE): the unknown is a function of one variable, $y(x)$. Derivatives are $y'$, $y''$.
\item \term{Partial} DE (PDE): the unknown has two or more variables, $u(x,t)$. Derivatives are $\frac{\partial u}{\partial x}$, $\frac{\partial u}{\partial t}$.
\end{itemize}
\term{Dependent variable}: the unknown function (the one that is differentiated). \term{Independent variable}: what it is differentiated with respect to.

\wk{14}{name the type and the variables}
\stepbox{1. $\frac{dy}{dt}=3y-t$}{One variable $t$ $\Rightarrow$ \keyres{ODE}. \; Dependent: $y$. \; Independent: $t$.}
\stepdown
\stepbox{2. $\frac{\partial u}{\partial t}=4\frac{\partial^2u}{\partial x^2}$}{Two variables $x$, $t$ $\Rightarrow$ \keyres{PDE}. \; Dependent: $u$. \; Independent: $x$ and $t$.}
\stepdown
\stepbox{3. $x^2\frac{d^2w}{dx^2}+w=0$}{One variable $x$ $\Rightarrow$ \keyres{ODE}. \; Dependent: $w$ \why{it is the one that is differentiated}. \; Independent: $x$.}

% ------------------------------------------------------------ 2
\filbreak \subsection{2. order}
The \term{order} is the order of the \keyres{highest derivative} in the equation.

\warn{A power is not an order.} $(y')^3$ is a first derivative cubed: order $1$. $y'''$ is a third derivative: order $3$.

\warn{The highest derivative wins, even if a lower one has a bigger power.} $y''+(y')^5=0$ is order $2$.

\wk{16}{find the order of each equation}
\stepbox{1. $y'+3y=e^x$}{Highest derivative: $y'$ $\Rightarrow$ order \keyres{1}}
\stepdown
\stepbox{2. $(y')^4+y=0$}{Only $y'$ appears (raised to a power) $\Rightarrow$ order \keyres{1}}
\stepdown
\stepbox{3. $y''-x\,(y')^3=\sin x$}{Highest derivative: $y''$ $\Rightarrow$ order \keyres{2}}
\stepdown
\stepbox{4. $\frac{d^3y}{dx^3}+\big(\frac{d^2y}{dx^2}\big)^2=x$}{Highest derivative: $\frac{d^3y}{dx^3}$ $\Rightarrow$ order \keyres{3}}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. linear or nonlinear}
A DE is \term{linear} if it can be written as
$$a_n(x)y^{(n)}+\cdots+a_1(x)y'+a_0(x)y=g(x)$$
The coefficients $a_k(x)$ and the right side $g(x)$ can be any functions of $x$. Only $y$ and its derivatives must be "plain".

\term{Test}: look at each term that contains $y$ or a derivative of $y$. If any such term has a power, a product of two $y$ terms, or $y$ inside a function, the DE is \term{nonlinear}.

\warn{The $x$ parts never decide.} $x^2y''$, $e^xy'$, $\sin(x)\,y$ are all linear terms.

\wk{20}{linear or nonlinear?}
\stepbox{1. $x^2y''+xy'+y=\cos x$}{$y''$, $y'$, $y$ each to the first power. The coefficients are in $x$ only. \; \keyres{linear}}
\stepdown
\stepbox{2. $y'+y^2=x$}{$y^2$ is a power of $y$. \; \warn{nonlinear}}
\stepdown
\stepbox{3. $y\,y'=3$}{$y\cdot y'$ is a product of two $y$ terms. \; \warn{nonlinear}}
\stepdown
\stepbox{4. $y''+\sin y=0$}{$y$ is inside $\sin$. \; \warn{nonlinear}}
\stepdown
\stepbox{5. $e^x\,y'''-4y=x^3$}{$e^x$ is a coefficient in $x$. $y'''$ and $y$ are plain. \; \keyres{linear}}
\stepdown
\stepbox{6. $\frac{dy}{dx}=x+y$}{Move $y$ to the left: $y'-y=x$. Plain terms. \; \keyres{linear}}

% ------------------------------------------------------------ 4
\filbreak \subsection{4. solutions, and how to verify one}
A \term{solution} of a DE is a function that makes the equation true for \keyres{every $x$ in an open interval}. It must have the derivatives that the DE uses.

\term{Verify procedure}:
\begin{enumerate}
\item Find each derivative the DE needs ($y'$, $y''$, \ldots).
\item Substitute $y$ and the derivatives into the left side.
\item Simplify.
\item Compare with the right side. They must be equal for all $x$ in an interval.
\end{enumerate}
\warn{Equal at a few points only is not a solution.} $y=x^2$ makes $y'=2y$ true at $x=0$ and $x=1$ only.

\warn{Constants $c$ stay as letters.} If the function has $c$, the check must work for every value of $c$.

\filbreak \subsubsection{Which way? --- verify or find}
{\small
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
a function and a DE $\to$ yes or no & \keyres{Differentiate} the function and substitute. \\[2pt]
a DE only $\to$ the function & \keyres{Solve}: integrate (section 6), or later methods. \\
\end{tabular}}

\wk{18}{verify $y=\frac{x^2}{3}+\frac{1}{x}$ solves $xy'+y=x^2$}
\stepbox{1. DERIVATIVE}{$y'=\dfrac{2x}{3}-\dfrac{1}{x^2}$ \; \why{$\frac{1}{x}=x^{-1}$, derivative $-x^{-2}$}}
\stepdown
\stepbox{2. THE TERM $xy'$}{$x\Big(\dfrac{2x}{3}-\dfrac{1}{x^2}\Big)=\dfrac{2x^2}{3}-\dfrac{1}{x}$}
\stepdown
\stepbox{3. ADD $y$}{$xy'+y=\dfrac{2x^2}{3}-\dfrac{1}{x}+\dfrac{x^2}{3}+\dfrac{1}{x}$}
\stepdown
\stepbox{4. COMBINE LIKE TERMS}{$x^2$ terms: $\dfrac23+\dfrac13=1$. \quad $\frac1x$ terms: $-\dfrac1x+\dfrac1x=0$. \; Result: $x^2$}
\stepdown
\stepbox{5. COMPARE}{Left $=x^2=$ right \checkmark \; $y$ is undefined at $x=0$, so it is a solution on $(0,\infty)$ and on $(-\infty,0)$.}

\wk{14}{verify $y=ce^{2x}$ solves $y'=2y$ for every $c$}
\stepbox{1. DERIVATIVE}{$y'=c\cdot2e^{2x}=2ce^{2x}$}
\stepdown
\stepbox{2. RIGHT SIDE}{$2y=2\cdot ce^{2x}=2ce^{2x}$}
\stepdown
\stepbox{3. COMPARE}{$2ce^{2x}=2ce^{2x}$ for all $x$ and all $c$ \checkmark \; Interval: $(-\infty,\infty)$}

\wk{20}{(second order) verify $y=c_1e^{x}+c_2e^{-2x}$ solves $y''+y'-2y=0$}
\stepbox{1. FIRST DERIVATIVE}{$y'=c_1e^{x}-2c_2e^{-2x}$}
\stepdown
\stepbox{2. SECOND DERIVATIVE}{$y''=c_1e^{x}+4c_2e^{-2x}$ \; \why{$-2\cdot-2=4$}}
\stepdown
\stepbox{3. SUBSTITUTE}{$\big(c_1e^{x}+4c_2e^{-2x}\big)+\big(c_1e^{x}-2c_2e^{-2x}\big)-2\big(c_1e^{x}+c_2e^{-2x}\big)$}
\stepdown
\stepbox{4. COLLECT THE $e^{x}$ TERMS}{$c_1+c_1-2c_1=0$}
\stepdown
\stepbox{5. COLLECT THE $e^{-2x}$ TERMS}{$4c_2-2c_2-2c_2=0$}
\stepdown
\stepbox{6. COMPARE}{Left $=0=$ right \checkmark}

\wk{12}{(a failure) is $y=x^2$ a solution of $y'=2y$?}
\stepbox{1. DERIVATIVE}{$y'=2x$}
\stepdown
\stepbox{2. RIGHT SIDE}{$2y=2x^2$}
\stepdown
\stepbox{3. COMPARE}{$2x=2x^2$ only at $x=0$ and $x=1$. \; Not on an interval $\Rightarrow$ \warn{not a solution}}

% ------------------------------------------------------------ 5
\filbreak \subsection{5. finding $r$ so that a guess is a solution}
Some problems give a form, like $y=e^{rx}$ or $y=x^r$, and ask for the values of $r$ that make it a solution.

\term{Procedure}:
\begin{enumerate}
\item Differentiate the guess, with $r$ as a letter.
\item Substitute into the DE.
\item Factor out the common function ($e^{rx}$ or $x^r$).
\item That function is not zero, so the other factor must be $0$. Solve for $r$.
\end{enumerate}

\wk{18}{find $r$ so that $y=e^{rx}$ solves $y''-y'-6y=0$}
\stepbox{1. DERIVATIVES}{$y'=re^{rx}$, \quad $y''=r^2e^{rx}$}
\stepdown
\stepbox{2. SUBSTITUTE}{$r^2e^{rx}-re^{rx}-6e^{rx}=0$}
\stepdown
\stepbox{3. FACTOR OUT $e^{rx}$}{$e^{rx}\big(r^2-r-6\big)=0$}
\stepdown
\stepbox{4. DIVIDE BY $e^{rx}$}{$e^{rx}\neq0$, so $r^2-r-6=0$}
\stepdown
\stepbox{5. FACTOR}{$(r-3)(r+2)=0$ $\Rightarrow$ $r=\keyres{3}$ or $r=\keyres{-2}$}
\stepdown
\stepbox{6. CHECK $r=3$}{$3^2-3-6=9-3-6=0$ \checkmark}

\wk{20}{find $r$ so that $y=x^r$ solves $x^2y''-4xy'+6y=0$, $x>0$}
\stepbox{1. DERIVATIVES}{$y'=rx^{r-1}$, \quad $y''=r(r-1)x^{r-2}$}
\stepdown
\stepbox{2. THE TERM $x^2y''$}{$x^2\cdot r(r-1)x^{r-2}=r(r-1)x^{r}$ \; \why{add the exponents: $2+(r-2)=r$}}
\stepdown
\stepbox{3. THE TERM $xy'$}{$x\cdot rx^{r-1}=rx^{r}$}
\stepdown
\stepbox{4. SUBSTITUTE}{$r(r-1)x^r-4rx^r+6x^r=0$}
\stepdown
\stepbox{5. FACTOR OUT $x^r$}{$x^r\big(r(r-1)-4r+6\big)=0$ $\Rightarrow$ $r^2-r-4r+6=0$}
\stepdown
\stepbox{6. SIMPLIFY AND FACTOR}{$r^2-5r+6=(r-2)(r-3)=0$ $\Rightarrow$ $r=\keyres{2}$ or $r=\keyres{3}$}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. general solutions by direct integration}
The simplest DE has only $x$ on the right: $y'=f(x)$. Integrate both sides:
$$y=\int f(x)\,dx+c$$
For $y^{(n)}=f(x)$, integrate $n$ times. Each integration adds a new constant. So the \term{general solution} of an order $n$ equation has \keyres{$n$ arbitrary constants}.

\warn{Add the constant at each integration, not only at the end.} The constant from the first integration becomes $c_1x$ after the second.

\wk{8}{general solution of $y'=x^3$}
\stepbox{1. INTEGRATE}{$y=\int x^3\,dx=\keyres{\dfrac{x^4}{4}+c}$}
\stepdown
\stepbox{2. CHECK}{$\dfrac{d}{dx}\Big(\dfrac{x^4}{4}+c\Big)=x^3$ \checkmark}

\wk{14}{general solution of $y''=\cos(2x)$}
\stepbox{1. FIRST INTEGRATION}{$y'=\int\cos(2x)\,dx=\dfrac{\sin(2x)}{2}+c_1$}
\stepdown
\stepbox{2. SECOND INTEGRATION}{$y=\int\Big(\dfrac{\sin(2x)}{2}+c_1\Big)dx$}
\stepdown
\stepbox{3. EACH TERM}{$\dfrac12\cdot\Big(-\dfrac{\cos(2x)}{2}\Big)=-\dfrac{\cos(2x)}{4}$. \quad $\int c_1\,dx=c_1x$.}
\stepdown
\stepbox{4. ASSEMBLE}{$y=\keyres{-\dfrac{\cos(2x)}{4}+c_1x+c_2}$ \; \why{two constants for order 2}}

\wk{18}{(by parts) general solution of $y'=xe^{3x}$}
\stepbox{1. PICK $u$ AND $dv$}{$u=x$, \; $dv=e^{3x}\,dx$ \; \why{$x$ gets simpler when differentiated}}
\stepdown
\stepbox{2. FIND $du$ AND $v$}{$du=dx$, \; $v=\dfrac{e^{3x}}{3}$}
\stepdown
\stepbox{3. PARTS FORMULA $uv-\int v\,du$}{$\dfrac{xe^{3x}}{3}-\int\dfrac{e^{3x}}{3}\,dx$}
\stepdown
\stepbox{4. FINISH THE INTEGRAL}{$\int\dfrac{e^{3x}}{3}\,dx=\dfrac{e^{3x}}{9}$}
\stepdown
\stepbox{5. ASSEMBLE}{$y=\keyres{\dfrac{xe^{3x}}{3}-\dfrac{e^{3x}}{9}+c}$}
\stepdown
\stepbox{6. CHECK}{$y'=\dfrac{e^{3x}}{3}+xe^{3x}-\dfrac{e^{3x}}{3}=xe^{3x}$ \checkmark \; \why{product rule on the first term}}

% ------------------------------------------------------------ 7
\filbreak \subsection{7. initial value problems}
An \term{initial value problem} (IVP) is a DE plus conditions at one point $x_0$. The conditions pick one \term{particular solution} out of the general family.

An order $n$ IVP needs $n$ conditions: $y(x_0)$, $y'(x_0)$, \ldots, $y^{(n-1)}(x_0)$.

\term{Procedure}:
\begin{enumerate}
\item Find the general solution (with $c$, or $c_1$, $c_2$).
\item For each condition, substitute $x_0$ and the given value. Each gives one equation.
\item Solve the equations for the constants.
\item Write the particular solution. Check each condition.
\end{enumerate}
\warn{A $y'$ condition goes into $y'$, not into $y$.} Differentiate the general solution first.

\filbreak \subsubsection{Which way? --- general or particular}
{\small
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
general solution $+$ conditions $\to$ particular & substitute $x_0$, solve for the constants \\[2pt]
particular solution $\to$ its condition & evaluate it at $x_0$ \\[2pt]
a point the graph passes through & that is the condition: $(1,2)$ means $y(1)=2$ \\
\end{tabular}}

\wk{12}{$y'=3x^2$, \; $y(2)=5$}
\stepbox{1. GENERAL SOLUTION}{$y=\int3x^2\,dx=x^3+c$}
\stepdown
\stepbox{2. SUBSTITUTE $x=2$, $y=5$}{$5=2^3+c=8+c$}
\stepdown
\stepbox{3. SOLVE}{$c=5-8=-3$}
\stepdown
\stepbox{4. PARTICULAR SOLUTION}{$y=\keyres{x^3-3}$. \; Check: $2^3-3=5$ \checkmark}

\wk{20}{$y''=6x$, \; $y(0)=1$, \; $y'(0)=-2$}
\stepbox{1. FIRST INTEGRATION}{$y'=3x^2+c_1$}
\stepdown
\stepbox{2. USE $y'(0)=-2$}{$-2=3(0)^2+c_1$ $\Rightarrow$ $c_1=-2$. \; So $y'=3x^2-2$}
\stepdown
\stepbox{3. SECOND INTEGRATION}{$y=x^3-2x+c_2$}
\stepdown
\stepbox{4. USE $y(0)=1$}{$1=0-0+c_2$ $\Rightarrow$ $c_2=1$}
\stepdown
\stepbox{5. PARTICULAR SOLUTION}{$y=\keyres{x^3-2x+1}$}
\stepdown
\stepbox{6. CHECK}{$y(0)=1$ \checkmark \quad $y'(0)=0-2=-2$ \checkmark \quad $y''=6x$ \checkmark}

\wk{22}{general solution $y=c_1e^{x}+c_2e^{-2x}$, \; $y(0)=3$, \; $y'(0)=0$}
\stepbox{1. DIFFERENTIATE THE GENERAL SOLUTION}{$y'=c_1e^{x}-2c_2e^{-2x}$}
\stepdown
\stepbox{2. CONDITION $y(0)=3$}{$e^0=1$: \; $c_1+c_2=3$}
\stepdown
\stepbox{3. CONDITION $y'(0)=0$}{$c_1-2c_2=0$}
\stepdown
\stepbox{4. SOLVE THE SECOND FOR $c_1$}{$c_1=2c_2$}
\stepdown
\stepbox{5. SUBSTITUTE INTO THE FIRST}{$2c_2+c_2=3$ $\Rightarrow$ $3c_2=3$ $\Rightarrow$ $c_2=1$}
\stepdown
\stepbox{6. BACK-SUBSTITUTE}{$c_1=2(1)=2$}
\stepdown
\stepbox{7. PARTICULAR SOLUTION}{$y=\keyres{2e^{x}+e^{-2x}}$}
\stepdown
\stepbox{8. CHECK}{$y(0)=2+1=3$ \checkmark \quad $y'(0)=2-2=0$ \checkmark}

\wk{12}{(first order family) $y=3+ce^{-2x}$, \; $y(0)=7$}
\stepbox{1. SUBSTITUTE $x=0$, $y=7$}{$7=3+ce^{0}=3+c$}
\stepdown
\stepbox{2. SOLVE}{$c=4$ $\Rightarrow$ $y=\keyres{3+4e^{-2x}}$}

% ------------------------------------------------------------ 8
\filbreak \subsection{8. interval of validity; explicit and implicit}
The \term{interval of validity} is the largest open interval that \keyres{contains $x_0$} on which the solution is defined and solves the DE.

\term{Procedure}:
\begin{enumerate}
\item Find each $x$ where the solution (or the DE) breaks: a zero denominator, a negative under a square root, $\ln$ of $0$ or less.
\item Those $x$ values cut the number line into intervals.
\item Keep the one interval that contains $x_0$.
\end{enumerate}
\term{Explicit solution}: $y$ is alone, $y=\ldots$. \term{Implicit solution}: an equation in $x$ and $y$, like $x^2+y^2=25$. Check an implicit solution with implicit differentiation.

\wk{16}{$y=\frac{1}{x-2}$ and $y'=-y^2$, \; $y(3)=1$}
\stepbox{1. VERIFY: DERIVATIVE}{$y=(x-2)^{-1}$ $\Rightarrow$ $y'=-(x-2)^{-2}=-\dfrac{1}{(x-2)^2}$}
\stepdown
\stepbox{2. VERIFY: RIGHT SIDE}{$-y^2=-\dfrac{1}{(x-2)^2}$. \; Same \checkmark}
\stepdown
\stepbox{3. VERIFY: CONDITION}{$y(3)=\dfrac{1}{3-2}=1$ \checkmark}
\stepdown
\stepbox{4. WHERE IT BREAKS}{$x-2=0$ at $x=2$. \; Intervals: $(-\infty,2)$ and $(2,\infty)$}
\stepdown
\stepbox{5. KEEP THE ONE WITH $x_0=3$}{Interval of validity: $\keyres{(2,\infty)}$ \; \why{with $y(0)=-\frac12$ instead, it is $(-\infty,2)$}}

\wk{16}{(implicit) $x^2+y^2=25$ and $y'=-\frac{x}{y}$}
\stepbox{1. DIFFERENTIATE BOTH SIDES IN $x$}{$2x+2y\,y'=0$ \; \why{chain rule: $y^2\to2yy'$}}
\stepdown
\stepbox{2. SOLVE FOR $y'$}{$2y\,y'=-2x$ $\Rightarrow$ $y'=-\dfrac{x}{y}$ \checkmark}
\stepdown
\stepbox{3. EXPLICIT PIECE THROUGH $(3,4)$}{$y>0$ there, so $y=\sqrt{25-x^2}$}
\stepdown
\stepbox{4. INTERVAL}{Need $25-x^2>0$ \why{$y=0$ makes $y'$ undefined} $\Rightarrow$ $\keyres{(-5,5)}$}

% ------------------------------------------------------------ 9
\filbreak \subsection{9. models: from words to a DE}
A \term{model} turns a description into an equation. "Rate of change" means a derivative.
{\small
\begin{tabular}{@{}p{0.52\linewidth}p{0.44\linewidth}@{}}
\term{Words} & \term{Math} \\\hline
the rate of change of $y$ & $\dfrac{dy}{dt}$ \st\\
is proportional to $y$ & $=ky$ \\[1pt]
is proportional to the square of $y$ & $=ky^2$ \\[1pt]
is inversely proportional to $y$ & $=\dfrac{k}{y}$ \st\\
is proportional to the difference of $T$ and $T_m$ & $=k(T-T_m)$ \\[1pt]
is proportional to the product of $I$ and $S-I$ & $=kI(S-I)$ \\[1pt]
decreases, decays, is absorbed & a minus sign, with $k>0$ \\[1pt]
is added at a constant rate $r$ & $+r$ \\
\end{tabular}}

\wk{12}{write each model as a DE}
\stepbox{1. A SUBSTANCE DECAYS AT A RATE PROPORTIONAL TO THE AMOUNT $A$}{$\dfrac{dA}{dt}=\keyres{-kA}$, \; $k>0$ \; \why{"decays" gives the minus sign}}
\stepdown
\stepbox{2. A RUMOR SPREADS AT A RATE PROPORTIONAL TO THE PRODUCT OF THOSE WHO HEARD IT, $R$, AND THOSE WHO DID NOT, IN A TOWN OF $5000$}{Did not hear: $5000-R$. \; $\dfrac{dR}{dt}=\keyres{kR(5000-R)}$}

\wk{14}{growth: $P'=0.02P$, \; $P(0)=1000$. Find $P(10)$}
\stepbox{1. MATCH THE MODEL}{$P'=aP$ with $a=0.02$ $\Rightarrow$ $P=P_0e^{at}$}
\stepdown
\stepbox{2. PUT IN $P_0$}{$P=1000e^{0.02t}$}
\stepdown
\stepbox{3. EVALUATE AT $t=10$}{$0.02\cdot10=0.2$. \; $e^{0.2}=1.2214$. \; $P(10)=1000(1.2214)=\keyres{1221}$}

\wk{14}{(reverse) a population doubles in $35$ years. Find $a$}
\stepbox{1. DOUBLING MEANS}{$P(35)=2P_0$ $\Rightarrow$ $P_0e^{35a}=2P_0$}
\stepdown
\stepbox{2. DIVIDE BY $P_0$}{$e^{35a}=2$}
\stepdown
\stepbox{3. TAKE $\ln$}{$35a=\ln2=0.6931$}
\stepdown
\stepbox{4. DIVIDE}{$a=\dfrac{0.6931}{35}=\keyres{0.0198}$ per year}

\wk{14}{cooling: $T'=-0.1(T-20)$, \; $T(0)=90$. Find $T(5)$}
\stepbox{1. MATCH THE MODEL}{$k=0.1$, \; $T_m=20$, \; $T_0=90$}
\stepdown
\stepbox{2. SOLUTION FORMULA}{$T=T_m+(T_0-T_m)e^{-kt}=20+70e^{-0.1t}$}
\stepdown
\stepbox{3. EVALUATE AT $t=5$}{$e^{-0.5}=0.6065$. \; $T(5)=20+70(0.6065)=20+42.46=\keyres{62.5}$}
\stepdown
\stepbox{4. LONG TERM}{$e^{-0.1t}\to0$, \; so $T\to20$, the room temperature}

\wk{24}{free fall: $y''=-9.8$, \; $y(0)=24.5$ m, \; $y'(0)=19.6$ m/s}
\stepbox{1. FIRST INTEGRATION (VELOCITY)}{$y'=-9.8t+c_1$. \; $y'(0)=19.6$ $\Rightarrow$ $c_1=19.6$}
\stepdown
\stepbox{2. SECOND INTEGRATION (HEIGHT)}{$y=-4.9t^2+19.6t+c_2$. \; $y(0)=24.5$ $\Rightarrow$ $c_2=24.5$}
\stepdown
\stepbox{3. HIGHEST POINT: VELOCITY $=0$}{$-9.8t+19.6=0$ $\Rightarrow$ $t=2$ s}
\stepdown
\stepbox{4. HEIGHT AT $t=2$}{$-4.9(4)+19.6(2)+24.5=-19.6+39.2+24.5=\keyres{44.1}$ m}
\stepdown
\stepbox{5. GROUND: HEIGHT $=0$}{$-4.9t^2+19.6t+24.5=0$}
\stepdown
\stepbox{6. DIVIDE BY $-4.9$}{$t^2-4t-5=0$}
\stepdown
\stepbox{7. FACTOR}{$(t-5)(t+1)=0$ $\Rightarrow$ $t=\keyres{5}$ s \; \why{$t=-1$ is before the launch}}

% ------------------------------------------------------------ 10
\filbreak \subsection{10. direction fields}
For a first order equation $y'=f(x,y)$, the right side gives the \keyres{slope of the solution curve at each point}. You can draw slopes without solving the DE.

\term{Slope at a point}: $m=f(x_0,y_0)$.

\term{Direction field} (slope field): at each point of a grid, draw a short segment with slope $f(x,y)$. Solution curves follow the segments, like water follows a current.

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[scale=0.8, font=\scriptsize]
\begin{scope}
\clip (-2.25,-2.25) rectangle (3.25,3.25);
\foreach \x in {-2,-1.5,...,3} \foreach \y in {-2,-1.5,...,3} {
  \pgfmathsetmacro\ang{atan((\x)-(\y))}
  \draw[white!60] (\x,\y) ++(\ang+180:0.16) -- ++(\ang:0.32);
}
\foreach \C in {-3,-1,1,3} \draw[keyHi, thick, domain=-2.25:3.25, samples=80] plot (\x, {\x-1+\C*exp(-\x)});
\draw[uHi, thick, domain=-2.25:3.25] plot (\x, {\x-1});
\draw[warnHi, dashed, domain=-2.25:3.25] plot (\x, {\x});
\end{scope}
\draw[->, white!45] (-2.35,0) -- (3.45,0) node[right, white!70] {$x$};
\draw[->, white!45] (0,-2.35) -- (0,3.45) node[above, white!70] {$y$};
\foreach \t in {-2,-1,1,2,3} { \draw[white!45] (\t,0.06) -- (\t,-0.06) node[below, white!70] {$\t$}; \draw[white!45] (0.06,\t) -- (-0.06,\t) node[left, white!70] {$\t$}; }
\node[warnHi] at (2.3,2.85) {$y=x$};
\node[uHi] at (2.6,1.1) {$y=x-1$};
\end{tikzpicture}

\begin{itemize}
\item The field above is for $y'=x-y$. \keyres{Green}: solution curves. \term{Blue}: the solution $y=x-1$. \warn{Dashed red}: the slope-$0$ line $y=x$.
\item Every curve bends toward the blue line as $x$ grows.
\end{itemize}

\term{How to read a field and match it to an equation}:
{\small
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
\term{Feature of the field} & \term{What it tells you} \\\hline
slopes are the same along each horizontal row & $f$ has no $x$: autonomous, $y'=f(y)$ \\[2pt]
slopes are the same along each vertical column & $f$ has no $y$: $y'=f(x)$ \\[2pt]
flat segments along a line or curve & that is where $f(x,y)=0$ \\[2pt]
a horizontal row of flat segments at $y=k$ & equilibrium solution $y=k$ \\[2pt]
slope sign in each region & sign of $f$ there \\
\end{tabular}}

\filbreak \subsubsection{Which way? --- equation or field}
{\small
\begin{tabular}{@{}p{0.36\linewidth}p{0.60\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
equation $\to$ field & evaluate $f$ at grid points, draw the segments \\[2pt]
field $\to$ equation & test the features in the table above, one at a time \\[2pt]
field and a start point $\to$ curve & start there, follow the segments both ways \\
\end{tabular}}

\wk{18}{slopes of $y'=x-y$ at five points}
\stepbox{1. AT $(0,0)$}{$m=0-0=0$ \; (flat)}
\stepdown
\stepbox{2. AT $(1,0)$}{$m=1-0=1$ \; (up at $45^\circ$)}
\stepdown
\stepbox{3. AT $(0,1)$}{$m=0-1=-1$ \; (down at $45^\circ$)}
\stepdown
\stepbox{4. AT $(2,-1)$}{$m=2-(-1)=3$ \; (steep up)}
\stepdown
\stepbox{5. AT $(-1,2)$}{$m=-1-2=-3$ \; (steep down)}
\stepdown
\stepbox{6. CHECK WITH THE PICTURE}{Below the dashed line ($y<x$) the slopes are positive. Above it, negative \checkmark}

\wk{18}{match: which of $y'=y$, \; $y'=x$, \; $y'=x-y$ fits a field?}
The field has: flat segments along the line $y=x$, slopes that change along each row and each column.
\par\vspace{2pt}
\stepbox{1. TEST $y'=y$}{It is autonomous: each row would be the same slope. The field's rows change. \; \warn{no}}
\stepdown
\stepbox{2. TEST $y'=x$}{Each column would be the same slope, flat along $x=0$. The field is flat along $y=x$. \; \warn{no}}
\stepdown
\stepbox{3. TEST $y'=x-y$}{Flat where $x-y=0$, which is $y=x$. Both $x$ and $y$ change the slope. \; \keyres{match}}

\wk{12}{(reverse) sketch the solution of $y'=x-y$ through $(0,1)$}
\stepbox{1. START POINT}{At $(0,1)$ the slope is $-1$: the curve goes down to the right.}
\stepdown
\stepbox{2. FOLLOW THE SEGMENTS}{It falls until it crosses $y=x$ (flat there), then rises.}
\stepdown
\stepbox{3. LONG TERM}{It bends toward $y=x-1$ as $x$ grows. \why{the exact solution is $x-1+2e^{-x}$}}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. isoclines}
An \term{isocline} is a curve on which every segment has the same slope $c$:
$$f(x,y)=c$$
Draw a few isoclines first. Then put segments of slope $c$ along each one. This is faster than point-by-point.

\keyres{The isocline for $c=0$} is where solution curves are flat: their peaks and valleys sit there.

\wk{14}{isoclines of $y'=x-y$}
\stepbox{1. SET $f=c$}{$x-y=c$ $\Rightarrow$ $y=x-c$: lines of slope $1$}
\stepdown
\stepbox{2. $c=0$}{$y=x$: flat segments}
\stepdown
\stepbox{3. $c=1$}{$y=x-1$: segments of slope $1$}
\stepdown
\stepbox{4. $c=-1$}{$y=x+1$: segments of slope $-1$}
\stepdown
\stepbox{5. NOTICE}{On $y=x-1$ the segments have slope $1$, the same as the line. So the line is itself a solution (blue in section 10).}

\wk{10}{(reverse) where does $y'=x^2+y^2$ have slope $4$?}
\stepbox{1. SET $f=4$}{$x^2+y^2=4$}
\stepdown
\stepbox{2. READ THE CURVE}{A circle of radius $\keyres{2}$ about the origin}

% ------------------------------------------------------------ 12
\filbreak \subsection{12. equilibrium solutions and long-term behavior}
For an \term{autonomous} equation $y'=f(y)$, a constant $y=k$ is a solution if $f(k)=0$. It is an \term{equilibrium solution}: a horizontal line of flat segments.

\term{Phase line procedure}:
\begin{enumerate}
\item Solve $f(y)=0$. The roots are the equilibria.
\item Mark them on a vertical $y$ line. They cut it into intervals.
\item Test one $y$ in each interval: $f>0$ means $y$ increases (arrow up). $f<0$ means it decreases (arrow down).
\item Classify each equilibrium by its arrows.
\end{enumerate}
{\small
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Type} & \term{Arrows} \\\hline
\keyres{stable} & both point toward it: nearby solutions go to it \\[2pt]
\warn{unstable} & both point away: nearby solutions leave it \\[2pt]
\term{semistable} & toward on one side, away on the other \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Long-term behavior}: a solution starting at $y(0)$ follows the arrow of its interval. It goes to the next equilibrium in that direction, or to $\pm\infty$ if there is none.

\warn{Solution curves cannot cross an equilibrium line.} A curve that starts between two equilibria stays between them.

\nopagebreak
\noindent\hfil
\begin{tikzpicture}[xscale=0.95, yscale=0.95, font=\scriptsize]
\begin{scope}
\clip (-0.1,-1.15) rectangle (4.15,3.15);
\foreach \x in {0,0.5,...,4} \foreach \y in {-1,-0.5,...,3} {
  \pgfmathsetmacro\ang{atan((\y)*(2-(\y)))}
  \draw[white!60] (\x,\y) ++(\ang+180:0.13) -- ++(\ang:0.26);
}
\foreach \c in {7,1,0.143} \draw[keyHi, thick, domain=0:4.15, samples=80] plot (\x, {2/(1+\c*exp(-2*\x))});
\foreach \c in {0.2,0.333} \draw[keyHi, thick, domain=0:4.15, samples=80] plot (\x, {2/(1-\c*exp(-2*\x))});
\draw[keyHi, thick, domain=0:0.95, samples=60] plot (\x, {2/(1-9*exp(-2*\x))});
\draw[uHi, very thick] (0,2) -- (4.15,2);
\draw[warnHi, very thick] (0,0) -- (4.15,0);
\end{scope}
\draw[->, white!45] (-0.1,0) -- (4.35,0) node[right, white!70] {$x$};
\draw[->, white!45] (0,-1.2) -- (0,3.35) node[above, white!70] {$y$};
\node[left, white!70] at (0,2) {$2$}; \node[left, white!70] at (0,-1) {$-1$}; \node[left, white!70] at (0,1) {$1$};
% phase line
\draw[white!70, thick] (5,-1.1) -- (5,3.1);
\fill[uHi] (5,2) circle (2pt); \fill[warnHi] (5,0) circle (2pt);
\node[right, uHi] at (5.1,2) {$2$ stable};
\node[right, warnHi] at (5.1,0) {$0$ unstable};
\draw[-{Latex[length=1.6mm]}, white, thick] (5,2.9) -- (5,2.25);
\draw[-{Latex[length=1.6mm]}, white, thick] (5,0.3) -- (5,1.7);
\draw[-{Latex[length=1.6mm]}, white, thick] (5,-0.25) -- (5,-1.0);
\node[white!70] at (5,3.3) {phase line};
\end{tikzpicture}

The field above is for $y'=y(2-y)$, with its phase line on the right.

\wk{20}{equilibria, stability, and limits for $y'=y(2-y)$}
\stepbox{1. SOLVE $f(y)=0$}{$y(2-y)=0$ $\Rightarrow$ $y=0$ or $y=2$}
\stepdown
\stepbox{2. TEST $y=-1$ (BELOW $0$)}{$f(-1)=(-1)(2-(-1))=(-1)(3)=-3<0$: \; down}
\stepdown
\stepbox{3. TEST $y=1$ (BETWEEN)}{$f(1)=(1)(2-1)=1>0$: \; up}
\stepdown
\stepbox{4. TEST $y=3$ (ABOVE $2$)}{$f(3)=(3)(2-3)=-3<0$: \; down}
\stepdown
\stepbox{5. CLASSIFY $y=2$}{Up from below, down from above: both toward $\Rightarrow$ \keyres{stable}}
\stepdown
\stepbox{6. CLASSIFY $y=0$}{Down below, up above: both away $\Rightarrow$ \warn{unstable}}
\stepdown
\stepbox{7. LIMITS AS $x\to\infty$}{$y(0)=1$ or $y(0)=3$: \; $y\to\keyres{2}$. \quad $y(0)=0$: stays $0$. \quad $y(0)=-1$: \; $y\to-\infty$.}

\wk{14}{(semistable) $y'=(y-1)^2$}
\stepbox{1. SOLVE $f(y)=0$}{$(y-1)^2=0$ $\Rightarrow$ $y=1$ only}
\stepdown
\stepbox{2. TEST $y=0$ (BELOW)}{$f(0)=(0-1)^2=1>0$: \; up, toward $1$}
\stepdown
\stepbox{3. TEST $y=2$ (ABOVE)}{$f(2)=(2-1)^2=1>0$: \; up, away from $1$}
\stepdown
\stepbox{4. CLASSIFY}{Toward from below, away above $\Rightarrow$ \term{semistable}}

\wk{12}{(reverse) build an autonomous DE with equilibria $-1$ (stable) and $3$ (unstable)}
\stepbox{1. ROOTS}{Try $f(y)=a(y+1)(y-3)$}
\stepdown
\stepbox{2. TEST THE MIDDLE $y=0$ WITH $a=1$}{$f(0)=(1)(-3)=-3<0$: down toward $-1$, away from $3$ \checkmark}
\stepdown
\stepbox{3. TEST THE ENDS}{$y=-2$: $f=(-1)(-5)=5>0$, up toward $-1$ \checkmark \; $y=4$: $f=(5)(1)=5>0$, away from $3$ \checkmark}
\stepdown
\stepbox{4. RESULT}{$y'=\keyres{(y+1)(y-3)}$}

\wk{10}{(no equilibrium) does $y'=x-y$ have a constant solution?}
\stepbox{1. TRY $y=k$}{Then $y'=0$, so $0=x-k$ for every $x$.}
\stepdown
\stepbox{2. CONCLUDE}{That fails for all $x\neq k$ $\Rightarrow$ \warn{no equilibrium}. \; \why{it is not autonomous; its straight-line solution $y=x-1$ is not constant}}

\end{multicols}

\makeatother
```
