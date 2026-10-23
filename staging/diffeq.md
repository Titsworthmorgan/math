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

\newcommand{\why}[1]{\emph{\scriptsize(#1)}}
\newcommand{\wk}[2]{\needspace{#1\baselineskip}\subsubsection{Worked: #2}}
\newcommand{\st}{\rule[-7pt]{0pt}{19pt}}
% ---- puzzle-piece format: a colored piece read off the problem goes in the same-colored slot ----
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
% formula table: symbols | words
\newenvironment{ftab}{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.3}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.42\linewidth}>{\raggedright\arraybackslash}p{0.535\linewidth}@{}}\term{Formula} & \term{In words} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
% quick-example table: given | work and answer
\newenvironment{qtab}{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.3}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.36\linewidth}>{\raggedright\arraybackslash}p{0.595\linewidth}@{}}\term{Quick example} & \term{Work $\to$ answer} \\\hline}%
{\end{tabular}\par\vspace{3pt}}
% plain two-column lookup table
\newenvironment{ltab}[2]{\par\vspace{2pt}\noindent\small\renewcommand{\arraystretch}{1.2}%
\begin{tabular}{@{}>{\raggedright\arraybackslash}p{0.40\linewidth}>{\raggedright\arraybackslash}p{0.555\linewidth}@{}}\term{#1} & \term{#2} \\\hline}%
{\end{tabular}\par\vspace{3pt}}

\section{Differential Equations --- Reference}

\begin{multicols}{2}
\raggedcolumns

\filbreak \subsection{notation}
\begin{ltab}{Symbol}{Meaning}
$y'$, \; $\dfrac{dy}{dx}$ & first derivative of $y$ \st\\
$y''$, \; $\dfrac{d^2y}{dx^2}$ & second derivative \st\\
$y'''$, \; $y^{(4)}$, \; $y^{(n)}$ & third, fourth, $n$-th derivative \\
$x$ or $t$ & \term{independent variable} (the input) \\
$y$ & \term{dependent variable} (the unknown function) \\
$y(x_0)=y_0$ & \term{initial condition}: the value at $x_0$ \\
$c$, $c_1$, $c_2$ & constants from integration \\
$C=\pm e^{c}$ & a renamed constant: capital $C$, not $c$ \\
$M_y$, \; $\dfrac{\partial M}{\partial y}$ & \term{partial derivative}: differentiate in $y$, hold $x$ constant \st\\
$M\,dx+N\,dy=0$ & \term{differential form}, the same as $M+N\,y'=0$ \\
$F(x,y)=c$ & \term{potential function} of an exact equation \\
$\mu$ (``mu'') & \term{integrating factor}: the multiplier \\
$u$, $v$ & a new variable in a substitution \\
$\tau$ (``tau'') & half-life \\
$W(y_1,y_2)$ & Wronskian: $y_1y_2'-y_1'y_2$ \\
\end{ltab}
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
direction field & short slope marks drawn on a grid \\[1pt]
isocline & a curve where the slope $f(x,y)$ is one constant \\[1pt]
equilibrium solution & a constant solution $y=k$ \\[1pt]
separable & $y'=g(x)\,p(y)$: a product of an $x$ part and a $y$ part \\[1pt]
lost solution & a solution $y=k$ that a division by $p(y)$ removed \\[1pt]
exact & $M\,dx+N\,dy=0$ with $M_y=N_x$ \\[1pt]
standard form (linear) & $y'+p(x)\,y=q(x)$: the coefficient of $y'$ is $1$ \\[1pt]
complementary equation & the linear equation with $q=0$: $y'+p(x)\,y=0$ \\[1pt]
integrating factor & a multiplier $\mu$ that makes an equation exact, or makes the left side $(\mu y)'$ \\[1pt]
substitution & a new variable that turns a hard equation into a known type \\[1pt]
Bernoulli & $y'+p(x)\,y=q(x)\,y^n$, \; $n\neq0,1$ \\[1pt]
homogeneous & \warn{two meanings}: linear with $q=0$ (sections 16, 23), \emph{or} $y'=q(y/x)$ (section 18) \\[1pt]
half-life & time for half the amount to decay \\[1pt]
steady state & the value $Q$ approaches as $t\to\infty$ \\[1pt]
terminal velocity & the velocity approached as $t\to\infty$ \\[1pt]
escape velocity & the smallest launch speed that never falls back \\[1pt]
trivial solution & $y=0$ \\[1pt]
linearly independent & neither function is a constant multiple of the other \\[1pt]
fundamental set & two independent solutions. $c_1y_1+c_2y_2$ gives every solution \\[1pt]
Wronskian & $W=y_1y_2'-y_1'y_2$. Nonzero means independent \\
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
$\ln\lvert x\rvert$ & $\dfrac{1}{x}$ & \st\\
$\sin(ax)$ & $a\cos(ax)$ & \\
$\cos(ax)$ & $-a\sin(ax)$ & \\
$\tan x$ & $\sec^2x$ & \\
$\arctan x$ & $\dfrac{1}{1+x^2}$ & \st\\
$f\,g$ & $f'g+fg'$ & product rule \\
$\dfrac{f}{g}$ & $\dfrac{f'g-fg'}{g^2}$ & quotient rule \st\\
$f\big(g(x)\big)$ & $f'\big(g(x)\big)\,g'(x)$ & chain rule \\
$H\big(y(x)\big)$ & $H'(y)\,y'$ & chain rule, $y$ inside \\
$\mu\,y$ & $\mu y'+\mu'y$ & product rule, used in 16 \\
\end{tabular}}
\par\vspace{2pt}
\term{Implicit differentiation}: differentiate both sides in $x$. Each $y$ term gets a factor $y'$: \; $\frac{d}{dx}\big(y^2\big)=2y\,y'$.

\term{Partial derivatives}: differentiate in one letter. The other letter is a constant, term by term.
\begin{qtab}
$\frac{\partial}{\partial y}\big(x^2y+5x\big)$ & $x^2$ is a constant: $\keyres{x^2}$. \; $5x$ has no $y$: $0$ \\
$\frac{\partial}{\partial x}\big(x^2y+3y^2\big)$ & $\keyres{2xy}$. \; $3y^2$ has no $x$: $0$ \\
$\frac{\partial}{\partial y}\big(ye^{x}\big)$ & a plain $y$ gives $1$: $\keyres{e^{x}}$ \\
\end{qtab}

\term{Integrals} (add $+c$):
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
\term{Function} & \term{Antiderivative} \\\hline
$x^n$, \; $n\neq-1$ & $\dfrac{x^{n+1}}{n+1}$ \; \warn{divide by $n+1$} \st\\
$u^{-1/2}$ & $2u^{1/2}$ \; \why{$\div\frac12$ is $\times2$} \\
$\dfrac{1}{x}$ & $\ln\lvert x\rvert$ \st\\
$\dfrac{1}{ax+b}$ & $\dfrac{1}{a}\ln\lvert ax+b\rvert$ \st\\
$e^{ax}$ & $\dfrac{e^{ax}}{a}$ \; \why{the same $a$ below} \st\\
$\sin(ax)$ & $-\dfrac{\cos(ax)}{a}$ \st\\
$\cos(ax)$ & $\dfrac{\sin(ax)}{a}$ \st\\
$\sec^2x$ & $\tan x$ \\
$\dfrac{1}{1+x^2}$ & $\arctan x$ \st\\
$\dfrac{1}{y(a-y)}$ & $\dfrac{1}{a}\ln\Big\lvert\dfrac{y}{a-y}\Big\rvert$ \why{partial fractions} \st\\
\end{tabular}}
\par\vspace{2pt}
\term{Integration by parts}: $\int u\,dv=uv-\int v\,du$. \; Pick $u$ = the part that gets simpler when you differentiate ($x$, $x^2$, $\ln x$).

\term{$u$-substitution}: $\int f\big(g(x)\big)g'(x)\,dx=\int f(u)\,du$ with $u=g(x)$. \; \warn{Solve $du=2x\,dx$ by dividing}: $x\,dx=\frac{du}{2}$.

\term{Partial fractions}: $\dfrac{1}{y(a-y)}=\dfrac1a\Big(\dfrac1y+\dfrac{1}{a-y}\Big)$. \; Check by adding the two fractions back.

\filbreak \subsection{exponent and log rules}
\begin{ltab}{Rule}{Watch for}
$e^{a+b}=e^ae^b$ & only a \keyres{sum} in the exponent splits \\
$e^{ab}$ & does \warn{not} split: $e^{xy}$ is not $e^xe^y$ \\
$(e^a)^n=e^{an}$ & $(e^x)^3=e^{3x}\neq e^{x^3}$ \\
$e^{x^2/2}$ & already finished. The $2$ never comes down \\
$\ln(e^{\square})=\square$, \; $e^{\ln\square}=\square$ & $\ln$ and $e$ undo each other \\
$\ln(ab)=\ln a+\ln b$ & $\ln(a+b)$ never splits \\
$k\ln\lvert x\rvert=\ln\lvert x\rvert^k$ & so $e^{2\ln x}=x^2$, \; $e^{-\ln x}=\frac1x$ \\
$a^t=e^{(\ln a)t}$ & any base as base $e$ \\
$e^{(\cdot)}$ is never $0$ & divide it out of an equation \\
\end{ltab}
\term{Self-check}: plug a number into the line before and the line after. They must match.

\filbreak \subsubsection{Free $y$: undo what is wrapped around it, outside in}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.22\linewidth}p{0.22\linewidth}p{0.48\linewidth}@{}}
\term{Wrapped} & \term{Undo with} & \term{Watch for} \\\hline
$\ln\lvert y\rvert$ & $e^{(\cdot)}$ of the \keyres{whole} side & $e^{a+c}=e^ae^c$. Clearing $\lvert\,\rvert$ gives $\pm$. Rename $\pm e^c\to C$ \\[2pt]
$y^2$ & square root & $\pm$ appears; the \keyres{condition picks the sign} ($C$ cannot absorb it) \\[2pt]
$e^{ky}$ & take $\ln$ & isolate $e^{(\cdots)}$ first \\[2pt]
$\tfrac12(\cdots)$ & multiply by $2$ & the $2$ hits \keyres{every} term, $c$ too \\[2pt]
$\arctan y$ & $\tan$ & $y=\tan(x+c)$, $c$ stays inside \\
\end{tabular}}

\filbreak \needspace{10\baselineskip}\subsection{formula sheet}
\needspace{3\baselineskip}\term{1--3. Classification}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
order & highest derivative \\
linear form & $a_n(x)y^{(n)}+\cdots+a_0(x)y=g(x)$ \\
normal form, first order & $y'=f(x,y)$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{4--5. Solutions}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
verify & substitute $y$, $y'$, \ldots. Both sides must match \\
$ay''+by'+cy=0$, try $e^{rx}$ & $ar^2+br+c=0$ \\
$x^2y''+bxy'+cy=0$, try $x^r$ & $r(r-1)+br+c=0$ \\
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
free fall & $y''=-g$, \; $y=-\dfrac{g}{2}t^2+v_0t+y_0$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{10--12. Direction fields}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
slope at $(x_0,y_0)$ & $m=f(x_0,y_0)$ \\
isocline of slope $c$ & $f(x,y)=c$ \\
equilibrium of $y'=f(y)$ & $f(k)=0$ $\Rightarrow$ $y=k$ \\
stable / unstable / semistable & arrows toward / away / mixed \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{13--14. Separable and autonomous}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
separable & $y'=g(x)\,p(y)$ \\
separated & $\displaystyle\int\frac{dy}{p(y)}=\int g(x)\,dx+c$ \\
lost solutions & $y=k$ where $p(k)=0$ \\
autonomous concavity & $y''=f'(y)\,f(y)$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{15. Exact}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
test & $M_y=N_x$ \\
potential & $F=\int M\,dx+g(y)$, \; $F_y=N$ \\
solution & $F(x,y)=c$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{16--17. Linear and integrating factors}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
standard form & $y'+p(x)\,y=q(x)$ \\
integrating factor & $\mu=e^{\int p\,dx}$ \; (no $+c$) \\
solution & $\mu y=\int\mu q\,dx+c$ \\
$\mu(x)$ for $M\,dx+N\,dy$ & $\dfrac{M_y-N_x}{N}$ has only $x$: \; $\mu=e^{\int\text{it}\,dx}$ \st\\
$\mu(y)$ for $M\,dx+N\,dy$ & $\dfrac{N_x-M_y}{M}$ has only $y$: \; $\mu=e^{\int\text{it}\,dy}$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{18--19. Substitutions}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
$y'=q(y/x)$ & $y=ux$, \; $y'=u+xu'$ \\
$y'=f(ax+by)$ & $v=ax+by$, \; $v'=a+by'$ \\
Bernoulli $y'+py=qy^n$ & $v=y^{1-n}$ \\
Bernoulli, linear in $v$ & $v'+(1-n)p\,v=(1-n)q$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{20. Growth and decay}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
exponential & $Q=Q_0e^{a(t-t_0)}$ \\
half-life & $\tau=\dfrac{\ln2}{k}$, \; $Q=Q_0(\tfrac12)^{t/\tau}$ \st\\
compound, continuous & $Q_0(1+\tfrac rn)^{nt}$, \; $Q_0e^{rt}$ \\
made at $s$, decays at $kQ$ & $Q\to\dfrac sk$ \st\\
savings with deposits $d$ & $Q_0e^{rt}+\dfrac dr(e^{rt}-1)$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{21. Cooling and mixing}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
cooling & $T=T_m+(T_0-T_m)e^{-kt}$ \\
mixing & $Q'=c_{in}r_{in}-\dfrac{Q}{V(t)}r_{out}$ \st\\
volume & $V=V_0+(r_{in}-r_{out})t$ \\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{22. Mechanics}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
linear drag & $mv'=-mg-kv$, \; $v_{term}=-\dfrac{mg}{k}$ \st\\
square drag, falling & $mv'=-mg+kv^2$, \; $v_{term}=-\sqrt{\dfrac{mg}{k}}$ \st\\
escape velocity & $v_e=\sqrt{\dfrac{2gR^2}{h+R}}$ \st\\
\end{tabular}}
\par\vspace{3pt}
\needspace{3\baselineskip}\term{23. Second order homogeneous}\par
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.40\linewidth}p{0.56\linewidth}@{}}
standard form & $y''+p\,y'+q\,y=0$ \\
general solution & $y=c_1y_1+c_2y_2$, \; $W\neq0$ \\
Wronskian & $W=y_1y_2'-y_1'y_2$ \\
Abel & $W=Ke^{-\int p\,dx}$ \\
reduction of order & $y_2=uy_1$, \; $u'=\dfrac{e^{-\int p}}{y_1^2}$ \st\\
\end{tabular}}

\filbreak \subsection{which method? --- first order sorter}
Test in this order. Stop at the first yes. One equation can fit more than one row. Any method that fits works.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.50\linewidth}p{0.46\linewidth}@{}}
\term{If the equation \ldots} & \term{Use} \\\hline
has only $x$ on the right: $y'=f(x)$ & integrate \hfill (6) \\[1pt]
factors as (only $x$)(only $y$) & separate \hfill (13) \\[1pt]
has no $x$: $y'=f(y)$ & separate, phase line \hfill (14) \\[1pt]
fits $y'+p(x)\,y=q(x)$ & $\mu=e^{\int p}$ \hfill (16) \\[1pt]
is $M\,dx+N\,dy=0$ with $M_y=N_x$ & potential $F$ \hfill (15) \\[1pt]
has $M_y\neq N_x$, but a one-letter ratio & $\mu(x)$ or $\mu(y)$ \hfill (17) \\[1pt]
fits $y'+p\,y=q\,y^n$ & $v=y^{1-n}$ \hfill (19) \\[1pt]
has a right side in $\frac{y}{x}$ only & $y=ux$ \hfill (18) \\[1pt]
has a right side in $ax+by$ only & $v=ax+by$ \hfill (18) \\
\end{tabular}}

\filbreak \subsection{which tool? --- given $\to$ find}
The number in parentheses is the concept section.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.50\linewidth}p{0.46\linewidth}@{}}
\term{Given} $\to$ \term{find} & \term{Do this} \\\hline
an equation $\to$ ODE or PDE & count the independent variables \hfill (1) \\[1pt]
an equation $\to$ order & highest derivative \hfill (2) \\[1pt]
an equation $\to$ linear or not & the checklist \hfill (3) \\[1pt]
a function and a DE $\to$ solution? & differentiate, substitute \hfill (4) \\[1pt]
a DE $\to$ values of $r$ & try $e^{rx}$ or $x^r$ \hfill (5) \\[1pt]
DEs and functions $\to$ match & count constants, then verify \hfill (5) \\[1pt]
$y^{(n)}=f(x)\to$ general solution & integrate $n$ times \hfill (6) \\[1pt]
general solution, conditions $\to c$ & substitute, solve \hfill (7) \\[1pt]
a solution $\to$ interval of validity & remove bad $x$, keep $x_0$'s piece \hfill (8) \\[1pt]
words $\to$ a DE & phrase table \hfill (9) \\[1pt]
$y'=f(x,y)\to$ slope at a point & evaluate $f$ \hfill (10) \\[1pt]
a field $\to$ its equation & match the features \hfill (10) \\[1pt]
slope $c\to$ where on the field & isocline $f(x,y)=c$ \hfill (11) \\[1pt]
$y'=f(y)\to$ constant solutions & solve $f(y)=0$ \hfill (12) \\[1pt]
$y(0)\to$ long-term behavior & phase line \hfill (12) \\[1pt]
separable $\to$ solution & separate, integrate, free $y$ \hfill (13) \\[1pt]
separable $\to$ lost solutions & roots of $p(y)$ \hfill (13) \\[1pt]
$y'=f(y)\to$ where curves bend & sign of $f'(y)f(y)$ \hfill (14) \\[1pt]
$M\,dx+N\,dy\to$ exact? & $M_y=N_x$ \hfill (15) \\[1pt]
exact $\to$ solution & build $F$, then $F=c$ \hfill (15) \\[1pt]
$y'+py=q\to$ solution & $\mu$, then $\mu y=\int\mu q$ \hfill (16) \\[1pt]
not exact $\to$ multiplier & $\mu(x)$ or $\mu(y)$ test \hfill (17) \\[1pt]
$y'=q(y/x)$ or $f(ax+by)\to$ solution & substitute \hfill (18) \\[1pt]
$y'+py=qy^n\to$ solution & $v=y^{1-n}$, linear \hfill (19) \\[1pt]
half-life $\to k$, amount $\to$ time & $k=\frac{\ln2}{\tau}$, \; $t=\frac{\tau\ln(Q_0/Q)}{\ln2}$ \hfill (20) \\[1pt]
interest $\to$ value or deposit & $Q_0e^{rt}$, \; $Qe^{-rt}$ \hfill (20) \\[1pt]
one temperature reading $\to T(t)$ & ratio to the power $t/t_1$ \hfill (21) \\[1pt]
tank $\to Q(t)$ & in $-$ out, linear \hfill (21) \\[1pt]
mass, drag $\to v(t)$, terminal $v$ & $mv'=F$, linear \hfill (22) \\[1pt]
altitude $h\to$ escape speed & $v_e=\sqrt{2gR^2/(h+R)}$ \hfill (22) \\[1pt]
two solutions $\to$ fundamental set? & $W\neq0$ \hfill (23) \\[1pt]
one solution $\to$ second solution & reduction of order \hfill (23) \\[1pt]
$y_1$, $y_2\to$ the equation & $p=-\frac{W'}{W}$ \hfill (23) \\
\end{tabular}}

\filbreak \subsection{check before you circle an answer}
\begin{itemize}
\item \warn{Divide, do not multiply}, when you separate or solve $du=2x\,dx$ for $x\,dx$.
\item Take $e^{(\cdot)}$ of the \keyres{whole} side, not piece by piece.
\item Keep $\pm$ when you clear $\lvert\,\rvert$ or take a square root.
\item Power rule: divide by $n+1$. \; $\int u^{-1/2}\,du=2u^{1/2}$.
\item Keep every negative sign in an exponent.
\item Keep one variable name. Do not switch from $t$ to $x$ mid-problem.
\item Compare each line with the line before it: copy slips ($t^2\to t$, a coefficient).
\item Lowercase $c$ comes from integration. Capital $C=\pm e^c$ is renamed.
\item Check the answer: differentiate it and put it back in the DE.
\end{itemize}

\end{multicols}

\newpage
\section{Differential Equations --- Concepts}

\begin{multicols}{2}
\raggedcolumns

\term{How to read a worked example.} Every example is a puzzle: colored pieces go into the slots of the same color.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.27\linewidth}p{0.684\linewidth}@{}}
\term{Step} & \term{What it does} \\\hline
1. PIECES & Read each value off the problem. Give each one a color. Prep (standard form, rearranging) is named in this title. \\[1pt]
2. TEMPLATE & The formula, with an empty slot \slot{pcA}{like this} for each piece, in the piece's color. \\[1pt]
3. PLACE & Put each piece in its slot. Then do the arithmetic. \\[1pt]
middle steps & One operation each, named by the operation: SOLVE, FREE $y$, CONDITION. \\[1pt]
last: CHECK & Put the answer back into the DE, the condition, or a known fact. \\
\end{tabular}}
\par\vspace{2pt}
\term{Colors.} In sections 1--12, step 1 of each example sets the colors. In 13--19: \pA{the $x$ side} ($g(x)$, $M$), \pB{the $y$ side} ($p(y)$, $f(y)$, $N$), \pC{the condition} ($x_0$, $y_0$), \pD{the multiplier} ($p(x)$, $\mu$, $f'$), \pE{the right side} ($q(x)$, $q(u)$, $n$). In 20--22: \pA{rate in}, \pB{rate out or a reading}, \pC{start values}, \pD{constants} ($k$, $r$, $m$, $\tau$), \pE{the long-term value} ($T_m$, steady state). In 23: \pA{$y_1$}, \pB{$y_2$}, \pC{conditions}, \pD{$p(x)$}.

% ------------------------------------------------------------ 1
\filbreak \subsection{1. what a differential equation is}
\idea{A \term{differential equation} (DE) is a rule about how something changes. $P'=0.02P$ says ``the population grows at $2\%$ of its size per unit time.'' The answer to a DE is a \keyres{function}, not a number.}
\begin{ftab}
$y(x)$, \; $y'$, $y''$ & \term{ordinary} DE (ODE): the unknown has one input variable \\
$u(x,t)$, \; $\dfrac{\partial u}{\partial x}$, $\dfrac{\partial u}{\partial t}$ & \term{partial} DE (PDE): the unknown has two or more input variables \st\\
$\dfrac{d\,\slot{pcA}{dependent}}{d\,\slot{pcB}{independent}}$ & the top is the unknown function, the bottom is its input \st\\
\end{ftab}
\begin{qtab}
$\dfrac{dy}{dt}=3y-t$ & one input $t$: \keyres{ODE}. \; Dependent $y$, independent $t$ \st\\
$\dfrac{\partial u}{\partial t}=4\dfrac{\partial^2u}{\partial x^2}$ & inputs $x$, $t$: \keyres{PDE}. \; Dependent $u$ \st\\
$x^2\dfrac{d^2w}{dx^2}+w=0$ & \keyres{ODE}. \; Dependent $w$ \why{it is the one differentiated}, independent $x$ \st\\
\end{qtab}
\trap{The letter that is differentiated is the dependent variable, even if it is not $y$.}

% ------------------------------------------------------------ 2
\filbreak \subsection{2. order}
\idea{The \term{order} is the order of the \keyres{highest derivative}. Count the primes on each derivative. Ignore the powers.}
\begin{ftab}
order $=$ the most primes on one $y$ & (order) $=$ (highest derivative) \\
$(y')^3$ & a first derivative, cubed: order $1$ \\
$y'''$ & a third derivative: order $3$ \\
\end{ftab}
\trap{A power is not an order. $y''+(y')^5=0$ is order $2$: the highest derivative wins.}

\wk{8}{order of $y''-x\,(y')^3=\sin x$}
\stepbox{1. PIECES (EVERY DERIVATIVE)}{\pA{$y''$}: two primes \qquad \pB{$(y')^3$}: one prime, then a power}
\stepdown
\stepbox{2. TEMPLATE}{order $=$ the larger of \slot{pcA}{primes} and \slot{pcB}{primes}}
\stepdown
\stepbox{3. PLACE}{order $=$ the larger of \pA{$2$} and \pB{$1$} $=\keyres{2}$}
\stepdown
\stepbox{4. CHECK}{the cube on $y'$ is a power, not a prime count \checkmark}

\begin{qtab}
$y'+3y=e^x$ & highest $y'$: order \keyres{1} \\
$(y')^4+y=0$ & only $y'$, raised to a power: order \keyres{1} \\
$\dfrac{d^3y}{dx^3}+\Big(\dfrac{d^2y}{dx^2}\Big)^2=x$ & highest $\frac{d^3y}{dx^3}$: order \keyres{3} \st\\
\end{qtab}

% ------------------------------------------------------------ 3
\filbreak \subsection{3. linear or nonlinear}
\idea{In a \term{linear} DE, $y$ and its derivatives are ``plain'': first power, never multiplied together, never inside a function. The $x$ parts can be anything.}
$$\slot{pcD}{$a_n(x)$}\,y^{(n)}+\cdots+\slot{pcD}{$a_1(x)$}\,y'+\slot{pcD}{$a_0(x)$}\,y=\slot{pcE}{$g(x)$}$$
\term{Test}: look only at the terms with $y$ or a derivative of $y$. A power, a product of two $y$ terms, or $y$ inside a function makes it \term{nonlinear}.
\trap{The $x$ parts never decide. $x^2y''$, $e^xy'$, $\sin(x)\,y$ are all linear terms.}

\wk{8}{is $x^2y''+xy'+y=\cos x$ linear?}
\stepbox{1. PIECES}{coefficients \pD{$x^2$}, \pD{$x$}, \pD{$1$} \qquad right side \pE{$\cos x$}}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcD}{$a_2(x)$}\,y''+\slot{pcD}{$a_1(x)$}\,y'+\slot{pcD}{$a_0(x)$}\,y=\slot{pcE}{$g(x)$}$}
\stepdown
\stepbox{3. PLACE}{$\pD{x^2}\,y''+\pD{x}\,y'+\pD{1}\,y=\pE{\cos x}$ fits the template $\Rightarrow$ \keyres{linear}}
\stepdown
\stepbox{4. CHECK (RED FLAGS)}{no $y^2$, no $y\,y'$, no $\sin y$ \checkmark}

\begin{qtab}
$y'+y^2=x$ & $y^2$ is a power of $y$: \warn{nonlinear} \\
$y\,y'=3$ & a product of two $y$ terms: \warn{nonlinear} \\
$y''+\sin y=0$ & $y$ inside $\sin$: \warn{nonlinear} \\
$e^x\,y'''-4y=x^3$ & $e^x$ is a coefficient: \keyres{linear} \\
$\frac{dy}{dx}=x+y$ & move $y$ left: $y'-y=x$: \keyres{linear} \\
\end{qtab}

% ------------------------------------------------------------ 4
\filbreak \subsection{4. solutions, and how to verify one}
\idea{A \term{solution} is a function that makes the DE true for \keyres{every $x$ in an open interval}. To check one, make the pieces $y$, $y'$, $y''$ and drop each into its slot in the DE.}
\begin{enumerate}
\item Pieces: find each derivative the DE needs.
\item Template: the DE with an empty slot for each of $y$, $y'$, $y''$.
\item Place, then simplify the left side.
\item Compare with the right side. They must be equal for all $x$ in an interval.
\end{enumerate}
\trap{Equal at a few points only is not a solution. $y=x^2$ makes $y'=2y$ true at $x=0$ and $x=1$ only.}
\trap{Constants $c$ stay as letters. The check must work for every value of $c$.}

\filbreak \subsubsection{Which way? --- verify or find}
\begin{ltab}{Given $\to$ find}{Do this}
a function and a DE $\to$ yes or no & \keyres{differentiate} the function and substitute \\
a DE only $\to$ the function & \keyres{solve}: integrate (6), or methods 13--23 \\
\end{ltab}

\wk{8}{verify $y=\frac{x^2}{3}+\frac{1}{x}$ solves $xy'+y=x^2$}
\stepbox{1. PIECES}{\pA{$y=\dfrac{x^2}{3}+\dfrac1x$} \qquad \pB{$y'=\dfrac{2x}{3}-\dfrac{1}{x^2}$} \why{$\frac1x=x^{-1}$, derivative $-x^{-2}$}}
\stepdown
\stepbox{2. TEMPLATE}{$x\cdot\slot{pcB}{$y'$}+\slot{pcA}{$y$}=x^2$}
\stepdown
\stepbox{3. PLACE}{$x\Big(\pB{\dfrac{2x}{3}-\dfrac{1}{x^2}}\Big)+\pA{\dfrac{x^2}{3}+\dfrac1x}=\dfrac{2x^2}{3}-\dfrac1x+\dfrac{x^2}{3}+\dfrac1x$}
\stepdown
\stepbox{4. SIMPLIFY}{$x^2$ terms: $\frac23+\frac13=1$. \; $\frac1x$ terms cancel. \; Left side $=x^2$}
\stepdown
\stepbox{5. CHECK}{left $=x^2=$ right \checkmark \qquad $y$ breaks at $x=0$: a solution on $(0,\infty)$ and on $(-\infty,0)$}

\wk{8}{(second order) verify $y=c_1e^{x}+c_2e^{-2x}$ solves $y''+y'-2y=0$}
\stepbox{1. PIECES}{\pA{$y=c_1e^{x}+c_2e^{-2x}$} \quad \pB{$y'=c_1e^{x}-2c_2e^{-2x}$} \quad \pC{$y''=c_1e^{x}+4c_2e^{-2x}$}}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcC}{$y''$}+\slot{pcB}{$y'$}-2\,\slot{pcA}{$y$}=0$}
\stepdown
\stepbox{3. PLACE}{$\pC{(c_1e^{x}+4c_2e^{-2x})}+\pB{(c_1e^{x}-2c_2e^{-2x})}-2\pA{(c_1e^{x}+c_2e^{-2x})}$}
\stepdown
\stepbox{4. COLLECT}{$e^{x}$: $c_1+c_1-2c_1=0$ \qquad $e^{-2x}$: $4c_2-2c_2-2c_2=0$}
\stepdown
\stepbox{5. CHECK}{left $=0=$ right, for every $c_1$, $c_2$ \checkmark}

\begin{qtab}
$y=ce^{2x}$ in $y'=2y$ & $y'=2ce^{2x}$, \; $2y=2ce^{2x}$: \keyres{yes}, every $c$ \\
$y=x^2$ in $y'=2y$ & $2x$ vs $2x^2$: equal at $0$, $1$ only: \warn{no} \\
\end{qtab}

% ------------------------------------------------------------ 5
\filbreak \subsection{5. finding $r$, and matching equations to solutions}
\idea{The problem gives a shape, like $y=e^{rx}$ or $y=x^r$, with $r$ unknown. Make the pieces with $r$ as a letter, place them, and factor out the shape. It is never $0$, so what is left must be $0$.}
\begin{ftab}
$ay''+by'+cy=0$, \; $y=e^{rx}$ & $ar^2+br+c=0$ \why{each prime becomes one $r$} \\
$x^2y''+bxy'+cy=0$, \; $y=x^r$ & $r(r-1)+br+c=0$ \\
\end{ftab}

\wk{8}{find $r$ so that $y=e^{rx}$ solves $y''-y'-6y=0$}
\stepbox{1. PIECES}{\pA{$y=e^{rx}$} \qquad \pB{$y'=re^{rx}$} \qquad \pC{$y''=r^2e^{rx}$}}
\stepdown
\stepbox{2. TEMPLATE}{$\slot{pcC}{$y''$}-\slot{pcB}{$y'$}-6\,\slot{pcA}{$y$}=0$}
\stepdown
\stepbox{3. PLACE, FACTOR}{$\pC{r^2e^{rx}}-\pB{re^{rx}}-6\pA{e^{rx}}=e^{rx}\big(r^2-r-6\big)=0$}
\stepdown
\stepbox{4. SOLVE}{$e^{rx}\neq0$: \; $(r-3)(r+2)=0$ $\Rightarrow$ $r=\keyres{3}$, $r=\keyres{-2}$}
\stepdown
\stepbox{5. CHECK}{$r=3$: $9-3-6=0$ \checkmark \qquad $r=-2$: $4+2-6=0$ \checkmark}

\wk{8}{find $r$ so that $y=x^r$ solves $x^2y''-4xy'+6y=0$, $x>0$}
\stepbox{1. PIECES}{\pA{$y=x^r$} \qquad \pB{$y'=rx^{r-1}$} \qquad \pC{$y''=r(r-1)x^{r-2}$}}
\stepdown
\stepbox{2. TEMPLATE}{$x^2\,\slot{pcC}{$y''$}-4x\,\slot{pcB}{$y'$}+6\,\slot{pcA}{$y$}=0$}
\stepdown
\stepbox{3. PLACE, FACTOR}{$x^2\pC{r(r-1)x^{r-2}}-4x\pB{rx^{r-1}}+6\pA{x^r}=x^r\big(r(r-1)-4r+6\big)=0$ \why{add exponents}}
\stepdown
\stepbox{4. SOLVE}{$r^2-5r+6=(r-2)(r-3)=0$ $\Rightarrow$ $r=\keyres{2}$, $r=\keyres{3}$}
\stepdown
\stepbox{5. CHECK}{$r=2$, $y=x^2$: $x^2(2)-4x(2x)+6x^2=0$ \checkmark}

\filbreak \subsubsection{Matching equations to solutions}
\begin{enumerate}
\item \term{Count the constants.} Order $n$ has $n$ constants. One $c$: first order. $c_1$, $c_2$: second order.
\item \term{Read the form} with the clue table.
\item \term{Verify the guess} (section 4). A guess is not an answer until it checks.
\item \term{Cross off the pair.}
\end{enumerate}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
\term{The function has} & \term{Look for the DE} \\\hline
$ce^{kx}$ only & $y'=ky$ \\
$k+ce^{-ax}$ & $y'=a(k-y)$ \; \why{equilibrium at $k$} \\
$c_1e^{r_1x}+c_2e^{r_2x}$ & $y''+by'+cy=0$, roots $r_1$, $r_2$ \\
$c_1\cos(kx)+c_2\sin(kx)$ & $y''+k^2y=0$ \\
$c_1x^{r_1}+c_2x^{r_2}$ & $x^2y''+bxy'+cy=0$ \\
a polynomial plus $c$ & $y'=f(x)$: integrate to check \\
\end{tabular}}
\trap{Same order is not enough. Always finish with the substitution check. A list can have more than one answer per equation: $e^{-x}$ and $xe^{-x}$ both solve $y''+2y'+y=0$.}

\wk{8}{match (A) $y'=-3y$, (B) $y''+9y=0$, (C) $y''-y'-2y=0$, (D) $y'=2(4-y)$ to (1) $c_1\cos3x+c_2\sin3x$, (2) $ce^{-3x}$, (3) $4+ce^{-2x}$, (4) $c_1e^{2x}+c_2e^{-x}$}
\stepbox{1. PIECES (COUNT CONSTANTS, READ THE NUMBERS)}{two constants: (1) \pA{$k=3$}, \; (4) \pD{$r=2,-1$} \qquad one constant: (2) \pB{$k=-3$}, \; (3) \pC{$k=4$, $a=2$}}
\stepdown
\stepbox{2. TEMPLATE (CLUE TABLE ROWS)}{$y''+\slot{pcA}{$k$}^2y=0$ \quad $y'=\slot{pcB}{$k$}\,y$ \quad $y'=\slot{pcC}{$a$}(\slot{pcC}{$k$}-y)$ \quad $r^2+br+c=0$ at \slot{pcD}{$r_1$}, \slot{pcD}{$r_2$}}
\stepdown
\stepbox{3. PLACE}{$y''+\pA{9}y=0$ is (B) \quad $y'=\pB{-3}y$ is (A) \quad $y'=\pC{2}(\pC{4}-y)$ is (D) \quad (4) goes to (C)}
\stepdown
\stepbox{4. CHECK EACH}{(B): $y''=-9y$ $\Rightarrow$ $-9y+9y=0$ \checkmark \quad (C): $4-2-2=0$, $1+1-2=0$ \checkmark \\ (D): $y'=-2ce^{-2x}$, \; $2(4-4-ce^{-2x})=-2ce^{-2x}$ \checkmark \quad \keyres{A--2, B--1, C--4, D--3}}

% ------------------------------------------------------------ 6
\filbreak \subsection{6. general solutions by direct integration}
\idea{If the right side has only $x$, undo the derivative: integrate. Each integration adds one new constant, so order $n$ gives \keyres{$n$ constants}.}
\begin{ftab}
$y'=f(x)$ $\Rightarrow$ $y=\int f(x)\,dx+c$ & (function) $=$ (integral of its rate) $+$ (constant) \\
$y''=f(x)$ & integrate twice: $c_1$, then $c_1x+c_2$ \\
$\int u\,dv=uv-\int v\,du$ & by parts, for $x\,e^{ax}$, $x\sin x$, $\ln x$ \\
\end{ftab}
\trap{Add the constant at each integration, not only at the end. The first $c_1$ becomes $c_1x$ after the second.}
\begin{qtab}
$y'=x^3$ & $y=\keyres{\frac{x^4}{4}+c}$. \; Check: $\frac{d}{dx}=x^3$ \checkmark \\
$y''=\cos(2x)$ & $y'=\frac{\sin2x}{2}+c_1$. \; $y=\keyres{-\frac{\cos2x}{4}+c_1x+c_2}$ \\
\end{qtab}

\wk{8}{(by parts) general solution of $y'=xe^{3x}$}
\stepbox{1. PIECES}{\pA{$u=x$} $\to$ \pA{$du=dx$} \why{simpler when differentiated} \qquad \pB{$dv=e^{3x}dx$} $\to$ \pB{$v=\frac{e^{3x}}{3}$}}
\stepdown
\stepbox{2. TEMPLATE}{$y=\slot{pcA}{$u$}\,\slot{pcB}{$v$}-\int\slot{pcB}{$v$}\,\slot{pcA}{$du$}$}
\stepdown
\stepbox{3. PLACE}{$y=\pA{x}\cdot\pB{\dfrac{e^{3x}}{3}}-\int\pB{\dfrac{e^{3x}}{3}}\,\pA{dx}$}
\stepdown
\stepbox{4. FINISH THE INTEGRAL}{$\int\frac{e^{3x}}{3}\,dx=\frac{e^{3x}}{9}$ \; $\Rightarrow$ \; $y=\keyres{\dfrac{xe^{3x}}{3}-\dfrac{e^{3x}}{9}+c}$}
\stepdown
\stepbox{5. CHECK}{$y'=\frac{e^{3x}}{3}+xe^{3x}-\frac{e^{3x}}{3}=xe^{3x}$ \checkmark \why{product rule on the first term}}

% ------------------------------------------------------------ 7
\filbreak \subsection{7. initial value problems}
\idea{The general solution is a whole family of curves. An \term{initial condition} is a point the curve must pass through. It picks one curve: the \term{particular solution}.}
\begin{ftab}
$\slot{pcC}{$y_0$}=y\big(\slot{pcC}{$x_0$}\big)$ & put the point into the general solution, solve for $c$ \\
order $n$ $\Rightarrow$ $n$ conditions & $y(x_0)$, $y'(x_0)$, \ldots, $y^{(n-1)}(x_0)$ \\
point $(1,2)$ & means $y(1)=2$ \\
\end{ftab}
\trap{A $y'$ condition goes into $y'$, not into $y$. Differentiate the general solution first.}
\begin{qtab}
$y'=3x^2$, \; $y(2)=5$ & $y=x^3+c$. \; $5=8+c$. \; $y=\keyres{x^3-3}$ \\
$y=3+ce^{-2x}$, \; $y(0)=7$ & $7=3+c$. \; $y=\keyres{3+4e^{-2x}}$ \\
\end{qtab}

\wk{8}{$y''=6x$, \; $y(0)=1$, \; $y'(0)=-2$}
\stepbox{1. PIECES}{general: $y'=3x^2+c_1$, \; $y=x^3+c_1x+c_2$ \qquad conditions: \pC{$x_0=0$}, \pC{$y_0=1$}, \pC{$y'_0=-2$}}
\stepdown
\stepbox{2. TEMPLATE (ONE EQUATION PER CONDITION)}{$\slot{pcC}{$y'_0$}=3\slot{pcC}{$x_0$}^2+c_1$ \qquad $\slot{pcC}{$y_0$}=\slot{pcC}{$x_0$}^3+c_1\slot{pcC}{$x_0$}+c_2$}
\stepdown
\stepbox{3. PLACE}{$\pC{-2}=0+c_1$ $\Rightarrow$ $c_1=-2$ \qquad $\pC{1}=0+0+c_2$ $\Rightarrow$ $c_2=1$ \qquad $y=\keyres{x^3-2x+1}$}
\stepdown
\stepbox{4. CHECK}{$y(0)=1$ \checkmark \quad $y'(0)=-2$ \checkmark \quad $y''=6x$ \checkmark}

\wk{8}{two constants: $y=c_1e^{x}+c_2e^{-2x}$, \; $y(0)=3$, \; $y'(0)=0$}
\stepbox{1. PIECES}{$y'=c_1e^{x}-2c_2e^{-2x}$ \qquad \pC{$x_0=0$}, \pC{$y_0=3$}, \pC{$y'_0=0$}}
\stepdown
\stepbox{2. TEMPLATE}{$c_1e^{\slot{pcC}{$x_0$}}+c_2e^{-2\slot{pcC}{$x_0$}}=\slot{pcC}{$y_0$}$ \qquad $c_1e^{\slot{pcC}{$x_0$}}-2c_2e^{-2\slot{pcC}{$x_0$}}=\slot{pcC}{$y'_0$}$}
\stepdown
\stepbox{3. PLACE}{$e^{0}=1$: \; $c_1+c_2=\pC{3}$ \qquad $c_1-2c_2=\pC{0}$}
\stepdown
\stepbox{4. SOLVE THE PAIR}{$c_1=2c_2$ $\Rightarrow$ $3c_2=3$ $\Rightarrow$ $c_2=1$, \; $c_1=2$ \qquad $y=\keyres{2e^{x}+e^{-2x}}$}
\stepdown
\stepbox{5. CHECK}{$y(0)=2+1=3$ \checkmark \quad $y'(0)=2-2=0$ \checkmark}

% ------------------------------------------------------------ 8
\filbreak \subsection{8. interval of validity, explicit and implicit}
\idea{A solution lives on one unbroken stretch of the $x$ axis. Find where it breaks, cut the line there, and keep the piece that holds the start point $x_0$.}
\begin{ftab}
$\dfrac{\cdots}{\square}$ & breaks where $\square=0$ \st\\
$\sqrt{\square}$ & needs $\square\geq0$ ($>0$ if it is also in a denominator) \\
$\ln(\square)$ & needs $\square>0$ \\
interval $=$ piece that holds \slot{pcC}{$x_0$} & the largest open interval through the start point \\
\end{ftab}
\term{Explicit}: $y$ alone, $y=\ldots$ \quad \term{Implicit}: an equation in $x$ and $y$, like $x^2+y^2=25$. Check an implicit solution with implicit differentiation.

\wk{8}{$y=\frac{1}{x-2}$ solves $y'=-y^2$, \; $y(3)=1$. Find the interval}
\stepbox{1. PIECES}{break: \pA{$x=2$} \why{$x-2=0$} \qquad start \pC{$x_0=3$}}
\stepdown
\stepbox{2. TEMPLATE}{cut at \slot{pcA}{break}, keep the piece that holds \slot{pcC}{$x_0$}}
\stepdown
\stepbox{3. PLACE}{pieces $(-\infty,\pA2)$ and $(\pA2,\infty)$. \; $\pC{3}$ is in $\keyres{(2,\infty)}$ \why{with $y(0)=-\frac12$ instead: $(-\infty,2)$}}
\stepdown
\stepbox{4. CHECK THE SOLUTION}{$y'=-(x-2)^{-2}$, \; $-y^2=-(x-2)^{-2}$ \checkmark \quad $y(3)=1$ \checkmark}

\wk{8}{(implicit) $x^2+y^2=25$ and $y'=-\frac{x}{y}$, through $(3,4)$}
\stepbox{1. PIECES}{curve $x^2+y^2=25$ \qquad point \pC{$(3,4)$}, so \pC{$y_0=4$}}
\stepdown
\stepbox{2. TEMPLATE (IMPLICIT DIFFERENTIATION)}{$\frac{d}{dx}\big(x^2\big)+\frac{d}{dx}\big(y^2\big)=0$, \; with $\frac{d}{dx}\big(y^2\big)=2y\,\slot{white}{$y'$}$}
\stepdown
\stepbox{3. PLACE}{$2x+2y\,y'=0$ $\Rightarrow$ $y'=-\dfrac{x}{y}$, the DE \checkmark}
\stepdown
\stepbox{4. EXPLICIT PIECE}{\pC{$y_0=4>0$} $\Rightarrow$ keep $+$: \; $y=\sqrt{25-x^2}$}
\stepdown
\stepbox{5. INTERVAL, CHECK}{$25-x^2>0$ \why{$y=0$ makes $y'$ undefined} $\Rightarrow$ $\keyres{(-5,5)}$ \qquad holds $x_0=3$ \checkmark}

% ------------------------------------------------------------ 9
\filbreak \subsection{9. models: from words to a DE}
\idea{``Rate of change'' is a derivative. Translate the sentence phrase by phrase, then match the result to a model with a known solution.}
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
\begin{ftab}
$P'=aP$ $\Rightarrow$ $P=\slot{pcC}{$P_0$}e^{\slot{pcD}{$a$}t}$ & (amount) $=$ (start)(growth factor) \\
$a=\dfrac{\ln(P/P_0)}{t}$ & rate from two readings \st\\
$T=\slot{pcE}{$T_m$}+(\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$})e^{-\slot{pcD}{$k$}t}$ & (temp) $=$ (room) $+$ (start gap)(fade) \\
\end{ftab}
\begin{qtab}
decays at a rate proportional to the amount $A$ & $\frac{dA}{dt}=\keyres{-kA}$, $k>0$ \\
rumor: product of heard $R$ and not heard, town of $5000$ & $\frac{dR}{dt}=\keyres{kR(5000-R)}$ \\
\end{qtab}

\wk{8}{growth $P'=0.02P$, \; $P(0)=1000$. Find $P(10)$}
\stepbox{1. PIECES}{\pD{$a=0.02$} \qquad \pC{$P_0=1000$}}
\stepdown
\stepbox{2. TEMPLATE}{$P=\slot{pcC}{$P_0$}e^{\slot{pcD}{$a$}t}$}
\stepdown
\stepbox{3. PLACE}{$P=\pC{1000}e^{\pD{0.02}t}$ \qquad $P(10)=1000e^{0.2}=\keyres{1221}$}
\stepdown
\stepbox{4. CHECK}{$2\%$ a year for $10$ years: a bit more than $20\%$ growth \checkmark}

\wk{8}{(reverse) a population doubles in $35$ years. Find $a$}
\stepbox{1. PIECES}{\pC{$P/P_0=2$} \why{only the ratio matters} \qquad \pD{$t=35$}}
\stepdown
\stepbox{2. TEMPLATE}{$a=\dfrac{\ln(\slot{pcC}{$P/P_0$})}{\slot{pcD}{$t$}}$}
\stepdown
\stepbox{3. PLACE}{$a=\dfrac{\ln\pC{2}}{\pD{35}}=\dfrac{0.6931}{35}=\keyres{0.0198}$ per year}
\stepdown
\stepbox{4. CHECK}{$e^{0.0198(35)}=e^{0.693}=2$ \checkmark}

\wk{8}{cooling $T'=-0.1(T-20)$, \; $T(0)=90$. Find $T(5)$}
\stepbox{1. PIECES}{\pD{$k=0.1$} \qquad \pE{$T_m=20$} \qquad \pC{$T_0=90$}}
\stepdown
\stepbox{2. TEMPLATE}{$T=\slot{pcE}{$T_m$}+(\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$})e^{-\slot{pcD}{$k$}t}$}
\stepdown
\stepbox{3. PLACE}{$T=\pE{20}+(\pC{90}-\pE{20})e^{-\pD{0.1}t}=20+70e^{-0.1t}$}
\stepdown
\stepbox{4. EVALUATE}{$T(5)=20+70e^{-0.5}=20+70(0.6065)=\keyres{62.5}$}
\stepdown
\stepbox{5. CHECK}{between $20$ and $90$ \checkmark \qquad $t\to\infty$: $T\to20$, the room \checkmark}

\wk{8}{free fall $y''=-9.8$, \; $y(0)=24.5$ m, \; $y'(0)=19.6$ m/s}
\stepbox{1. PIECES}{\pD{$g=9.8$} \qquad \pC{$v_0=19.6$} \qquad \pC{$y_0=24.5$}}
\stepdown
\stepbox{2. TEMPLATE}{$y=-\dfrac{\slot{pcD}{$g$}}{2}t^2+\slot{pcC}{$v_0$}t+\slot{pcC}{$y_0$}$}
\stepdown
\stepbox{3. PLACE}{$y=-\dfrac{\pD{9.8}}{2}t^2+\pC{19.6}t+\pC{24.5}=-4.9t^2+19.6t+24.5$ \qquad $y'=-9.8t+19.6$}
\stepdown
\stepbox{4. TOP: $y'=0$}{$t=2$ s. \; $y(2)=-19.6+39.2+24.5=\keyres{44.1}$ m}
\stepdown
\stepbox{5. GROUND: $y=0$}{$\div(-4.9)$: $t^2-4t-5=(t-5)(t+1)=0$ $\Rightarrow$ $t=\keyres{5}$ s \why{$-1$ is before launch}}
\stepdown
\stepbox{6. CHECK}{$y(5)=-122.5+98+24.5=0$ \checkmark}

% ------------------------------------------------------------ 10
\filbreak \subsection{10. direction fields}
\idea{$y'=f(x,y)$ tells you the slope of the solution curve at every point, without solving anything. Draw a short dash with that slope at each grid point. Solution curves follow the dashes, like water follows a current.}
\begin{ftab}
$m=f(\slot{pcA}{$x_0$},\slot{pcB}{$y_0$})$ & (slope at a point) $=$ the right side evaluated there \\
$f=0$ & flat dashes \\
$f>0$ / $f<0$ & dashes go up / down to the right \\
\end{ftab}

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

The field is for $y'=x-y$. \keyres{Green}: solution curves. \term{Blue}: the solution $y=x-1$. \warn{Dashed red}: the slope-$0$ line $y=x$. Every curve bends toward the blue line.

\begin{qtab}
$y'=x-y$ at $(1,0)$ & $1-0=\keyres{1}$, up at $45^\circ$ \\
at $(0,1)$ & $0-1=\keyres{-1}$, down at $45^\circ$ \\
at $(2,-1)$ & $2+1=\keyres{3}$, steep up \\
at $(0,0)$ & $\keyres{0}$, flat \why{on the red line} \\
\end{qtab}

\term{Read a field, match an equation}:
{\small
\begin{tabular}{@{}p{0.44\linewidth}p{0.52\linewidth}@{}}
\term{Feature of the field} & \term{What it tells you} \\\hline
same slope along each horizontal row & no $x$: autonomous, $y'=f(y)$ \\[2pt]
same slope along each vertical column & no $y$: $y'=f(x)$ \\[2pt]
flat dashes along a curve & that curve is $f(x,y)=0$ \\[2pt]
a row of flat dashes at $y=k$ & equilibrium $y=k$ \\[2pt]
slope sign in each region & sign of $f$ there \\
\end{tabular}}

\filbreak \subsubsection{Which way? --- equation or field}
\begin{ltab}{Given $\to$ find}{Do this}
equation $\to$ field & evaluate $f$ at grid points, draw the dashes \\
field $\to$ equation & test the features above, one at a time \\
field and a start point $\to$ curve & start there, follow the dashes both ways \\
\end{ltab}

\wk{8}{which of $y'=y$, \; $y'=x$, \; $y'=x-y$ fits the field above?}
\stepbox{1. PIECES (FEATURES OF THE FIELD)}{flat along \pA{$y=x$} \qquad rows \pB{change} \qquad columns \pC{change}}
\stepdown
\stepbox{2. TEMPLATE (WHAT A CANDIDATE MUST DO)}{flat where $f=0$ is \slot{pcA}{the flat line} \qquad rows \slot{pcB}{change}: $f$ has $x$ \qquad columns \slot{pcC}{change}: $f$ has $y$}
\stepdown
\stepbox{3. PLACE EACH CANDIDATE}{$y'=y$: no $x$, rows would match \warn{no} \quad $y'=x$: flat on $x=0$ \warn{no} \\ $y'=x-y$: flat on \pA{$y=x$}, has \pB{$x$} and \pC{$y$} \keyres{match}}
\stepdown
\stepbox{4. CHECK}{$f(1,0)=1$: the dash at $(1,0)$ rises at $45^\circ$ \checkmark}

\wk{8}{(reverse) sketch the solution of $y'=x-y$ through $(0,1)$}
\stepbox{1. PIECES}{start \pC{$(0,1)$} \qquad $f=x-y$}
\stepdown
\stepbox{2. TEMPLATE}{$m=f(\slot{pcC}{$x_0$},\slot{pcC}{$y_0$})$}
\stepdown
\stepbox{3. PLACE}{$m=\pC0-\pC1=-1$: down to the right}
\stepdown
\stepbox{4. FOLLOW THE DASHES}{falls until it meets $y=x$ (flat there), then rises, bending toward $y=x-1$}
\stepdown
\stepbox{5. CHECK}{the exact solution $x-1+2e^{-x}$ passes $(0,1)$ and approaches $x-1$ \checkmark}

% ------------------------------------------------------------ 11
\filbreak \subsection{11. isoclines}
\idea{An \term{isocline} is a curve where every dash has the same slope. Draw a few of these first, then fill dashes along each one. It is faster than point by point.}
\begin{ftab}
$f(x,y)=\slot{pcC}{$c$}$ & the isocline of slope $c$ \\
$c=0$ & where curves are flat: their peaks and valleys \\
\end{ftab}
\begin{qtab}
$y'=x-y$, \; $c=0$ & $y=x$: flat dashes \\
$y'=x-y$, \; $c=1$ & $y=x-1$: slope $1$ dashes on a slope-$1$ line $\Rightarrow$ the line is a \keyres{solution} \\
$y'=x^2+y^2$, slope $4$ & $x^2+y^2=4$: circle of radius \keyres{2} \\
\end{qtab}

\wk{8}{isoclines of $y'=x+y$ for $c=0$, $1$, $-1$}
\stepbox{1. PIECES}{$f=x+y$ \qquad slopes \pA{$c=0$}, \pB{$c=1$}, \pC{$c=-1$}}
\stepdown
\stepbox{2. TEMPLATE}{$x+y=\slot{white}{$c$}$ \; $\Rightarrow$ \; $y=\slot{white}{$c$}-x$}
\stepdown
\stepbox{3. PLACE}{\pA{$y=-x$}: flat dashes \qquad \pB{$y=1-x$}: slope $1$ \qquad \pC{$y=-1-x$}: slope $-1$}
\stepdown
\stepbox{4. READ}{on \pC{$y=-1-x$} the dashes have slope $-1$, the same as the line $\Rightarrow$ the line is a \keyres{solution}}
\stepdown
\stepbox{5. CHECK}{$y=-1-x$: \; $y'=-1$ and $x+y=-1$ \checkmark}

% ------------------------------------------------------------ 12
\filbreak \subsection{12. equilibrium solutions and long-term behavior}
\idea{For $y'=f(y)$, a value $k$ with $f(k)=0$ means ``no change, ever'': $y=k$ is an \term{equilibrium}. Between equilibria, $y$ only goes up or only goes down. Arrows on a vertical line (the \term{phase line}) show which.}
\begin{ftab}
$f(\slot{pcB}{$k$})=0$ & $y=k$ is an equilibrium \\
$f>0$ on an interval & arrow up: $y$ increases \\
$f<0$ on an interval & arrow down: $y$ decreases \\
\end{ftab}
{\small
\begin{tabular}{@{}p{0.30\linewidth}p{0.66\linewidth}@{}}
\term{Type} & \term{Arrows} \\\hline
\keyres{stable} & both point toward it \\[2pt]
\warn{unstable} & both point away \\[2pt]
\term{semistable} & toward on one side, away on the other \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Long term}: a solution follows the arrow of its interval to the next equilibrium. If there is none in that direction, it goes to $\pm\infty$.
\trap{Solution curves cannot cross an equilibrium line. A curve that starts between two equilibria stays between them.}

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
\draw[pcE, dashed] (0,1) -- (4.15,1);
\end{scope}
\draw[->, white!45] (-0.1,0) -- (4.35,0) node[right, white!70] {$x$};
\draw[->, white!45] (0,-1.2) -- (0,3.35) node[above, white!70] {$y$};
\node[left, white!70] at (0,2) {$2$}; \node[left, white!70] at (0,-1) {$-1$}; \node[left, pcE] at (0,1) {$1$};
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

The field is for $y'=y(2-y)$, with its phase line on the right. \pE{Dashed yellow}: $y=1$, where the S-curves bend (section 14).

\wk{8}{equilibria, stability, and limits for $y'=y(2-y)$}
\stepbox{1. PIECES (ROOTS OF $f$)}{$y(2-y)=0$ $\Rightarrow$ \pB{$y=0$}, \pB{$y=2$} \qquad test values \pA{$-1$}, \pA{$1$}, \pA{$3$}, one per interval}
\stepdown
\stepbox{2. TEMPLATE}{sign of $f(\slot{pcA}{test})$ in each interval cut by \slot{pcB}{roots}}
\stepdown
\stepbox{3. PLACE}{$f(\pA{-1})=-3$ \warn{down} \qquad $f(\pA1)=1$ \keyres{up} \qquad $f(\pA3)=-3$ \warn{down}}
\stepdown
\stepbox{4. CLASSIFY, LIMITS}{\pB{$2$}: up from below, down from above $\Rightarrow$ \keyres{stable} \quad \pB{$0$}: both away $\Rightarrow$ \warn{unstable} \\ $y(0)=1$ or $3$: $y\to\keyres{2}$ \quad $y(0)=0$: stays \quad $y(0)=-1$: $y\to-\infty$}
\stepdown
\stepbox{5. CHECK}{section 14 solves it: $y=\frac{2}{1+e^{-2x}}$ starts at $1$ and goes to $2$ \checkmark}

\begin{qtab}
$y'=(y-1)^2$ & root $1$. \; $f(0)=1$ up, $f(2)=1$ up: \term{semistable} \\
build: $-1$ stable, $3$ unstable & $y'=\keyres{(y+1)(y-3)}$: \; $f(0)=-3$ down, $f(\pm4)>0$ \checkmark \\
$y'=x-y$: constant solution? & $0=x-k$ for all $x$ fails: \warn{none} \why{not autonomous} \\
\end{qtab}

% ------------------------------------------------------------ 13
\filbreak \subsection{13. separable equations}
\idea{If the right side is a \keyres{product} (only $x$)$\times$(only $y$), put every $y$ on the left with $dy$ and every $x$ on the right with $dx$. Then integrate each side in its own letter.}
$$y'=\slot{pcA}{$g(x)$}\cdot\slot{pcB}{$p(y)$}\quad\Rightarrow\quad\int\frac{dy}{\slot{pcB}{$p(y)$}}=\int\slot{pcA}{$g(x)$}\,dx+c$$
\begin{ftab}
$y'=g(x)\,p(y)$ & (rate) $=$ (only $x$)(only $y$): \keyres{separable} \\
$h(y)\,y'=g(x)$, \; $h=\dfrac1p$ & Trench form. $h$ can be any $y$ function: $\frac1y$, $e^{-3y}$ \st\\
$H(y)=G(x)+c$ & $H'=h$, \; $G'=g$: the implicit solution \\
\end{ftab}
\term{Why it works}: chain rule. If $H'=h$, then $\frac{d}{dx}H(y)=h(y)\,y'$. So $h(y)\,y'=g(x)$ says $\frac{d}{dx}H(y)=\frac{d}{dx}G(x)$, and $H(y)=G(x)+c$.

\filbreak \subsubsection{Which way? --- separable or not}
\begin{qtab}
$y'=xy+x$ & factor: $x(y+1)$ \keyres{separable} \\
$y'=e^{x+y}$ & a sum in the exponent splits: $e^xe^y$ \keyres{separable} \\
$y'=y^2\sin x$ & $\sin x\cdot y^2$ \keyres{separable} \\
$y'=x+y$ & a sum that will not factor \warn{not separable} \why{linear: 16} \\
$y'=e^{xy}$ & a product inside an exponent does not split \warn{not separable} \\
\end{qtab}

\filbreak \subsubsection{Procedure}
\begin{enumerate}
\item Separate: \keyres{divide} by $p(y)$: \; $\frac{dy}{p(y)}=g(x)\,dx$.
\item Integrate both sides. Add \keyres{one} $+c$, on the $x$ side, now.
\item Free $y$: undo what is wrapped around it, outside in (reference table).
\item Lost solutions: test each $y=k$ with $p(k)=0$.
\item IVP: put in $(x_0,y_0)$ on the easiest line, often the implicit one.
\end{enumerate}

\filbreak \subsubsection{Lost solutions}
\begin{ftab}
$p(\slot{pcB}{$k$})=0$ & dividing by $p(y)$ assumed $p\neq0$: each root $y=k$ is a candidate \\
$y=k$, \; $y'=0$ in the \keyres{original} DE & a true statement means $y=k$ is a solution \\
some $C$ gives $y=k$ & write ``$C$ any real number, including $0$'' \\
no $C$ gives $y=k$ & list $y=k$ separately \\
\end{ftab}
These are exactly the \term{equilibria} of section 12.

\wk{8}{$y'=4x(y+2)$, \; $y(0)=1$}
\stepbox{1. PIECES}{\pA{$g=4x$} \qquad \pB{$p=y+2$} \qquad \pC{$(x_0,y_0)=(0,1)$}}
\stepdown
\stepbox{2. TEMPLATE}{$\displaystyle\int\frac{dy}{\slot{pcB}{$p(y)$}}=\int\slot{pcA}{$g(x)$}\,dx+c$}
\stepdown
\stepbox{3. PLACE, INTEGRATE}{$\displaystyle\int\frac{dy}{\pB{y+2}}=\int\pA{4x}\,dx$ \; $\Rightarrow$ \; $\ln\lvert y+2\rvert=2x^2+c$}
\stepdown
\stepbox{4. FREE $y$ ($e$ OF THE WHOLE SIDE)}{$\lvert y+2\rvert=e^{c}e^{2x^2}$ \; $\Rightarrow$ \; $y+2=\pm e^ce^{2x^2}=Ce^{2x^2}$ \; $\Rightarrow$ \; $y=-2+Ce^{2x^2}$}
\stepdown
\stepbox{5. LOST SOLUTION}{\pB{$p(-2)=0$}: $y=-2$ is lost, but $C=0$ gives it back $\Rightarrow$ $C$ any real number, including $0$}
\stepdown
\stepbox{6. CONDITION}{$\pC{1}=-2+Ce^{0}$ $\Rightarrow$ $C=3$: \; $y=\keyres{-2+3e^{2x^2}}$}
\stepdown
\stepbox{7. CHECK}{$y'=12xe^{2x^2}$ \qquad $4x(y+2)=4x\cdot3e^{2x^2}=12xe^{2x^2}$ \checkmark}

\wk{8}{$y'=-\frac{x}{y}$ through $(3,4)$ (derives the section 8 circle)}
\stepbox{1. PIECES}{\pA{$g=-x$} \qquad \pB{$p=\frac1y$} \qquad \pC{$(3,4)$}}
\stepdown
\stepbox{2. TEMPLATE}{$\displaystyle\int\frac{dy}{\slot{pcB}{$p(y)$}}=\int\slot{pcA}{$g(x)$}\,dx+c$}
\stepdown
\stepbox{3. PLACE}{$\displaystyle\int\frac{dy}{\pB{1/y}}=\int y\,dy=\int\pA{(-x)}\,dx$ \why{dividing by $\frac1y$ is multiplying by $y$}}
\stepdown
\stepbox{4. INTEGRATE, $\times2$ EVERY TERM}{$\dfrac{y^2}{2}=-\dfrac{x^2}{2}+c$ \; $\Rightarrow$ \; $x^2+y^2=C$ \why{$C=2c$}}
\stepdown
\stepbox{5. CONDITION}{$\pC{3}^2+\pC{4}^2=C$ $\Rightarrow$ $\keyres{x^2+y^2=25}$}
\stepdown
\stepbox{6. CHECK}{implicit differentiation gives $y'=-\frac xy$ (section 8) \checkmark}

\wk{8}{(square-root ending) $y'=\frac{x}{y}$, \; $y(0)=-2$}
\stepbox{1. PIECES}{\pA{$g=x$} \qquad \pB{$p=\frac1y$} \qquad \pC{$(0,-2)$}}
\stepdown
\stepbox{2. TEMPLATE}{$\displaystyle\int\frac{dy}{\slot{pcB}{$p(y)$}}=\int\slot{pcA}{$g(x)$}\,dx+c$}
\stepdown
\stepbox{3. PLACE, INTEGRATE}{$\displaystyle\int y\,dy=\int\pA{x}\,dx$ \; $\Rightarrow$ \; $\dfrac{y^2}{2}=\dfrac{x^2}{2}+c$ \; $\Rightarrow$ \; $y^2=x^2+C$}
\stepdown
\stepbox{4. FREE $y$}{$y=\pm\sqrt{x^2+C}$ \why{the square root brings $\pm$}}
\stepdown
\stepbox{5. CONDITION PICKS THE SIGN}{$\pC{-2}=\pm\sqrt{C}$. \; A root is never negative, so keep $-$: \; $\sqrt C=2$, \; $C=4$ \; $\Rightarrow$ \; $y=\keyres{-\sqrt{x^2+4}}$}
\stepdown
\stepbox{6. CHECK}{$y'=\dfrac{-x}{\sqrt{x^2+4}}$ \qquad $\dfrac xy=\dfrac{x}{-\sqrt{x^2+4}}$, the same \checkmark}

\wk{8}{(exponential ending) $y'=6x^2e^{3y}$, \; $y(0)=0$}
\stepbox{1. PIECES}{\pA{$g=6x^2$} \qquad \pB{$p=e^{3y}$} \qquad \pC{$(0,0)$}}
\stepdown
\stepbox{2. TEMPLATE}{$\displaystyle\int\frac{dy}{\slot{pcB}{$p(y)$}}=\int\slot{pcA}{$g(x)$}\,dx+c$}
\stepdown
\stepbox{3. PLACE}{$\displaystyle\int\frac{dy}{\pB{e^{3y}}}=\int e^{-3y}\,dy=\int\pA{6x^2}\,dx$ \why{divide: the exponent flips sign}}
\stepdown
\stepbox{4. INTEGRATE}{$\dfrac{e^{-3y}}{-3}=2x^3+c$ \why{the same $-3$ in both places}}
\stepdown
\stepbox{5. FREE $y$}{$\times(-3)$: $e^{-3y}=-6x^3+C$ \quad $\ln$: $-3y=\ln(C-6x^3)$ \quad $\div(-3)$: $y=-\tfrac13\ln(C-6x^3)$}
\stepdown
\stepbox{6. CONDITION}{$\pC{0}=-\tfrac13\ln C$ $\Rightarrow$ $C=1$: \; $y=\keyres{-\tfrac13\ln(1-6x^3)}$}
\stepdown
\stepbox{7. INTERVAL (SECTION 8)}{$\ln$ needs $1-6x^3>0$: \; $x<6^{-1/3}\approx0.550$ $\Rightarrow$ $\keyres{(-\infty,\,0.550)}$}
\stepdown
\stepbox{8. CHECK}{$y'=\dfrac{6x^2}{1-6x^3}$ \qquad $e^{3y}=\dfrac{1}{1-6x^3}$, so $6x^2e^{3y}=y'$ \checkmark}

\filbreak \subsubsection{Exponentials in any base}
$a^t=e^{(\ln a)t}$, so $x=a^t$ solves $x'=kx$ with $k=\ln a$, a constant. The section 9 model $P=P_0e^{at}$ is the separable solution of $P'=aP$.
\begin{qtab}
$x=2^t$ & $k=\ln2=\keyres{0.693}$: growth \\
$x=(0.5)^t$ & $k=\ln0.5=\keyres{-0.693}$: decay \why{$0<a<1$} \\
\end{qtab}

% ------------------------------------------------------------ 14
\filbreak \subsection{14. autonomous equations}
\idea{$y'=f(y)$ has no $x$ on the right. The slope depends only on the height. So every horizontal row of the field has one slope, and a solution slid left or right is still a solution.}
\begin{ftab}
$y'=f(y)$ & separable with $g=1$: \; $\displaystyle\int\frac{dy}{f(y)}=x+c$ \\
$f(k)=0$ & equilibria $=$ lost solutions of the separation \\
$y''=f'(y)\,f(y)$ & concavity, by the chain rule \\
\end{ftab}
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.42\linewidth}p{0.52\linewidth}@{}}
\term{Sign of $f'(y)\,f(y)$} & \term{Curve} \\\hline
$>0$ & concave up \\
$<0$ & concave down \\
$f'(y)=0$ between equilibria & inflection point \\
\end{tabular}}

\wk{8}{where do the curves of $y'=y(2-y)$ bend?}
\stepbox{1. PIECES}{\pB{$f=y(2-y)$}, zero at $0$, $2$ \qquad \pD{$f'=2-2y$}, zero at \pC{$y=1$}}
\stepdown
\stepbox{2. TEMPLATE}{sign of $\slot{pcD}{$f'$}\cdot\slot{pcB}{$f$}$, one test per strip}
\stepdown
\stepbox{3. PLACE}{$0<y<1$: $\pD{(+)}\pB{(+)}$ \keyres{up} \quad $1<y<2$: $\pD{(-)}\pB{(+)}$ \warn{down} \quad $y>2$: $\pD{(-)}\pB{(-)}$ \keyres{up} \quad $y<0$: $\pD{(+)}\pB{(-)}$ \warn{down}}
\stepdown
\stepbox{4. READ}{curves rising from $0$ to $2$ bend up, flip at \pC{$y=1$}, then flatten into $2$: the \term{S-curve} (picture in 12)}
\stepdown
\stepbox{5. CHECK}{$y=\frac{2}{1+e^{-2x}}$ (next example) is $1$ at $x=0$, its steepest point \checkmark}

\wk{8}{solve $y'=y(2-y)$, \; $y(0)=1$}
\stepbox{1. PIECES}{\pB{$f=y(2-y)$} \qquad \pC{$(0,1)$}}
\stepdown
\stepbox{2. TEMPLATE}{$\displaystyle\int\frac{dy}{\slot{pcB}{$f(y)$}}=x+c$}
\stepdown
\stepbox{3. PLACE, PARTIAL FRACTIONS}{$\displaystyle\int\frac{dy}{\pB{y(2-y)}}=x+c$ \qquad $\dfrac{1}{y(2-y)}=\dfrac12\Big(\dfrac1y+\dfrac1{2-y}\Big)$}
\stepdown
\stepbox{4. INTEGRATE}{$\tfrac12\big(\ln\lvert y\rvert-\ln\lvert2-y\rvert\big)=x+c$ \; $\Rightarrow$ \; $\ln\Big\lvert\dfrac{y}{2-y}\Big\rvert=2x+2c$}
\stepdown
\stepbox{5. FREE $y$, CONDITION}{$\dfrac{y}{2-y}=Ce^{2x}$ \qquad $\frac{\pC1}{2-\pC1}=C$, so $C=1$ \qquad $y=(2-y)e^{2x}$ $\Rightarrow$ $y=\keyres{\dfrac{2}{1+e^{-2x}}}$}
\stepdown
\stepbox{6. LOST SOLUTIONS}{$y=0$: $C=0$ gives it \quad $y=2$: no $C$ gives it, list it separately}
\stepdown
\stepbox{7. CHECK}{$x=0$: $\frac{2}{2}=1$ \checkmark \quad $x\to\infty$: $y\to2$, the stable equilibrium \checkmark}

% ------------------------------------------------------------ 15
\filbreak \subsection{15. exact equations}
\idea{Think of a hill $F(x,y)$. A solution curve walks along one height, $F=c$: a level curve. If $M$ is the $x$ slope of the hill and $N$ is the $y$ slope, rebuild the hill from its slopes.}
$$\slot{pcA}{$M(x,y)$}\,dx+\slot{pcB}{$N(x,y)$}\,dy=0 \qquad F_x=\slot{pcA}{$M$},\;\; F_y=\slot{pcB}{$N$}$$
\begin{ftab}
$M\,dx+N\,dy=0$ & $M$ multiplies $dx$, $N$ multiplies $dy$, \keyres{with signs} \\
$M+N\,y'=0$ & the same equation, divided by $dx$ \\
$\frac{d}{dx}F(x,y)=M+Ny'$ & multivariable chain rule: so $F=c$ \\
$M_y=N_x$ & \term{exactness test} (Clairaut): a cross, $M$ by $y$, $N$ by $x$ \\
$F=\int M\,dx+g(y)$ & integrate in $x$. The ``constant'' is a function of $y$ \\
$F_y=N$ & solves for $g'(y)$. Only $y$ may remain \\
\end{ftab}

\filbreak \subsubsection{Procedure}
\begin{enumerate}
\item Rearrange to $M\,dx+N\,dy=0$. A term that crosses $=$ flips sign.
\item Test $M_y=N_x$. If they differ, the equation is not exact: go to 17.
\item $F=\int M\,dx+g(y)$.
\item $F_y=N$: differentiate \keyres{every} term, $g(y)\to g'(y)$ too. Solve for $g'(y)$.
\item Integrate $g'(y)$ to get $g(y)$. No constant needed.
\item Answer: $F(x,y)=c$, one equation. IVP: put in $(x_0,y_0)$ for $c$.
\end{enumerate}
\term{Rearranging}: $y'=\frac{A}{B}$ $\to$ $B\,dy=A\,dx$ $\to$ $A\,dx-B\,dy=0$. Put the minus into $N$.

\begin{qtab}
$(y+\cos x)\,dx+(x+2y)\,dy$ & $M_y=1$, $N_x=1$: \keyres{exact} \\
$(-2xy-1)\,dx+x^2\,dy$ & $M_y=-2x$, $N_x=2x$: \warn{not exact} \why{17} \\
$(kxy^2+1)\,dx+3x^2y\,dy$: find $k$ & $M_y=2kxy$, $N_x=6xy$: \; $2k=6$, \; $k=\keyres{3}$ \\
\end{qtab}

\wk{8}{$(2xy+5)\,dx+(x^2+6y)\,dy=0$, through $(1,1)$}
\stepbox{1. PIECES (TEST FIRST)}{\pA{$M=2xy+5$} \qquad \pB{$N=x^2+6y$} \qquad \pC{$(1,1)$} \\ $\pA{M}_y=2x$, \; $\pB{N}_x=2x$ \; equal $\Rightarrow$ exact}
\stepdown
\stepbox{2. TEMPLATE}{$F=\displaystyle\int\slot{pcA}{$M$}\,dx+g(y)$, \quad then $F_y=\slot{pcB}{$N$}$}
\stepdown
\stepbox{3. PLACE}{$F=\displaystyle\int\pA{(2xy+5)}\,dx=x^2y+5x+g(y)$ \\ $F_y=x^2+g'(y)=\pB{x^2+6y}$ $\Rightarrow$ $g'=6y$, \; $g=3y^2$}
\stepdown
\stepbox{4. ANSWER, CONDITION}{$x^2y+5x+3y^2=c$ \qquad $\pC{(1,1)}$: $1+5+3=9$ $\Rightarrow$ $\keyres{x^2y+5x+3y^2=9}$}
\stepdown
\stepbox{5. CHECK (IMPLICIT DIFFERENTIATION)}{$2xy+x^2y'+5+6yy'=0$ $\Rightarrow$ $(2xy+5)+(x^2+6y)y'=0$ \checkmark}

\wk{8}{(rearrange first) $y'=\dfrac{2x+ye^{x}}{3y^2-e^{x}}$}
\stepbox{1. PIECES (REARRANGE FIRST)}{$(3y^2-e^x)\,dy=(2x+ye^x)\,dx$ $\Rightarrow$ $(2x+ye^x)\,dx-(3y^2-e^x)\,dy=0$ \\ \pA{$M=2x+ye^x$} \qquad \pB{$N=e^x-3y^2$} \why{minus moved in} \qquad $\pA{M}_y=e^x=\pB{N}_x$: exact}
\stepdown
\stepbox{2. TEMPLATE}{$F=\displaystyle\int\slot{pcA}{$M$}\,dx+g(y)$, \quad then $F_y=\slot{pcB}{$N$}$}
\stepdown
\stepbox{3. PLACE}{$F=\displaystyle\int\pA{(2x+ye^x)}\,dx=x^2+ye^x+g(y)$ \\ $F_y=e^x+g'(y)=\pB{e^x-3y^2}$ $\Rightarrow$ $g'=-3y^2$, \; $g=-y^3$}
\stepdown
\stepbox{4. ANSWER}{$\keyres{x^2+ye^x-y^3=c}$}
\stepdown
\stepbox{5. CHECK}{$2x+ye^x+e^xy'-3y^2y'=0$ $\Rightarrow$ $y'=\dfrac{2x+ye^x}{3y^2-e^x}$ \checkmark}

\filbreak \subsubsection{Traps}
\trap{Forgetting $+g(y)$ in step 3.}
\trap{Writing $g(y)$ instead of $g'(y)$ after you differentiate.}
\trap{Adding $\int N\,dy$ on top of $F$: shared terms count twice.}
\trap{Swapping $M$ and $N$. $M$ is always the $dx$ coefficient.}

% ------------------------------------------------------------ 16
\filbreak \subsection{16. first order linear equations}
\idea{Multiply the equation by a factor $\mu$ chosen so that the left side becomes one product-rule derivative, $(\mu y)'$. Then one integration finishes the job.}
$$y'+\slot{pcD}{$p(x)$}\,y=\slot{pcE}{$q(x)$} \qquad \mu=e^{\int\slot{pcD}{$p$}\,dx} \qquad \mu y=\int\mu\,\slot{pcE}{$q$}\,dx+c$$
\begin{ftab}
$y'+p(x)\,y=q(x)$ & \term{standard form}: $y'$ alone, coefficient $1$ \why{Trench writes $f(x)$ for $q$} \\
$\mu=e^{\int p\,dx}$ & integrating factor. \keyres{No $+c$} \\
$(\mu y)'=\mu q$ & the left side after multiplying \\
$y=\dfrac{1}{\mu}\Big(\int\mu q\,dx+c\Big)$ & divide by $\mu$, \keyres{$c$ too} \st\\
\end{ftab}
\term{Why}: $(\mu y)'=\mu y'+\mu'y$. This equals $\mu y'+p\mu y$ when $\mu'=p\mu$. That is a separable equation, and its solution is $\mu=e^{\int p}$.

\term{Trench's way} (variation of parameters): $y=uy_1$, with $y_1=e^{-\int p}$ solving $y'+py=0$. Then $u'=\frac{q}{y_1}=\mu q$: the same integral.

\begin{enumerate}
\item Standard form: divide by the coefficient of $y'$.
\item Read $p$ (with its sign) and $q$.
\item $\mu=e^{\int p\,dx}$. Simplify $e^{\ln}$.
\item $\mu y=\int\mu q\,dx+c$.
\item Divide by $\mu$. Interval: where $p$ and $q$ are continuous, through $x_0$.
\end{enumerate}

\wk{8}{$y'+3y=e^{2x}$}
\stepbox{1. PIECES}{\pD{$p=3$} \qquad \pE{$q=e^{2x}$}}
\stepdown
\stepbox{2. TEMPLATE}{$\mu=e^{\int\slot{pcD}{$p$}dx}$ \qquad $\mu y=\int\mu\,\slot{pcE}{$q$}\,dx+c$}
\stepdown
\stepbox{3. PLACE}{$\mu=e^{\int\pD{3}dx}=e^{3x}$ \qquad $e^{3x}y=\int e^{3x}\pE{e^{2x}}\,dx=\dfrac{e^{5x}}{5}+c$}
\stepdown
\stepbox{4. DIVIDE BY $\mu$}{$y=\keyres{\dfrac{e^{2x}}{5}+ce^{-3x}}$ \why{$c$ divided too}}
\stepdown
\stepbox{5. CHECK}{$y'+3y=\frac{2e^{2x}}{5}-3ce^{-3x}+\frac{3e^{2x}}{5}+3ce^{-3x}=e^{2x}$ \checkmark}

\wk{8}{(standard form first) $xy'+2y=x^2$, \; $y(1)=1$}
\stepbox{1. PIECES (STANDARD FORM: $\div x$)}{$y'+\dfrac2x\,y=x$ \qquad \pD{$p=\frac2x$} \qquad \pE{$q=x$} \qquad \pC{$(1,1)$}}
\stepdown
\stepbox{2. TEMPLATE}{$\mu=e^{\int\slot{pcD}{$p$}dx}$ \qquad $\mu y=\int\mu\,\slot{pcE}{$q$}\,dx+c$}
\stepdown
\stepbox{3. PLACE IN $\mu$}{$\mu=e^{\int\pD{2/x}\,dx}=e^{2\ln\lvert x\rvert}=x^2$ \why{$e^{\ln\square}=\square$}}
\stepdown
\stepbox{4. PLACE IN $\mu y$}{$x^2y=\int x^2\cdot\pE{x}\,dx=\dfrac{x^4}{4}+c$ \; $\Rightarrow$ \; $y=\dfrac{x^2}{4}+\dfrac{c}{x^2}$}
\stepdown
\stepbox{5. CONDITION, INTERVAL}{$\pC1=\frac14+c$ $\Rightarrow$ $c=\frac34$: \; $y=\keyres{\dfrac{x^2}{4}+\dfrac{3}{4x^2}}$ on $\keyres{(0,\infty)}$ \why{$p$ breaks at $0$}}
\stepdown
\stepbox{6. CHECK}{$xy'=\frac{x^2}{2}-\frac{3}{2x^2}$, \; $2y=\frac{x^2}{2}+\frac{3}{2x^2}$, \; sum $=x^2$ \checkmark}

\begin{qtab}
$y'-2y=4x$ & \pD{$p=-2$}: $\mu=e^{-2x}$. \; $\int4xe^{-2x}dx$ by parts. \; $y=\keyres{-2x-1+ce^{2x}}$ \\
$y'+3y=6$ & linear \emph{and} separable: $y=\keyres{2+ce^{-3x}}$ \\
cooling $T'+kT=kT_m$ & $\mu=e^{kt}$: \; $T=T_m+ce^{-kt}$ \why{section 9} \\
\end{qtab}
\trap{Standard form first: in $xy'+2y=x^2$, $p$ is $\frac2x$, not $2$.}
\trap{The sign rides with $p$: $y'-2y$ has $p=-2$.}
\trap{Divide $c$ by $\mu$ too: $\frac{c}{x^2}$, not $c$.}

% ------------------------------------------------------------ 17
\filbreak \subsection{17. integrating factors: not exact $\to$ exact}
\idea{If $M_y\neq N_x$, multiply the whole equation by a factor $\mu$ that forces the cross test to pass. The mismatch $M_y-N_x$ tells you what $\mu$ is.}
\begin{ftab}
$\dfrac{\slot{pcA}{$M_y$}-\slot{pcB}{$N_x$}}{\slot{pcB}{$N$}}$ has only $x$ & $\mu(x)=e^{\int(\text{that})\,dx}$ \st\\
$\dfrac{\slot{pcB}{$N_x$}-\slot{pcA}{$M_y$}}{\slot{pcA}{$M$}}$ has only $y$ & $\mu(y)=e^{\int(\text{that})\,dy}$ \why{flipped top, $M$ below} \st\\
neither & try another method: linear (16), Bernoulli (19) \\
\end{ftab}
\term{Why}: for $(\mu M)_y=(\mu N)_x$ with $\mu(x)$: \; $\mu M_y=\mu'N+\mu N_x$, so $\dfrac{\mu'}{\mu}=\dfrac{M_y-N_x}{N}$. That must have no $y$.
\trap{$\mu$ can add or remove a solution where $\mu=0$ or is undefined. Test those lines in the original equation.}

\wk{8}{$(-2xy-1)\,dx+x^2\,dy=0$}
\stepbox{1. PIECES}{\pA{$M=-2xy-1$}, \; \pA{$M_y=-2x$} \qquad \pB{$N=x^2$}, \; \pB{$N_x=2x$} \qquad not equal: not exact}
\stepdown
\stepbox{2. TEMPLATE ($\mu(x)$ TEST)}{$\dfrac{\slot{pcA}{$M_y$}-\slot{pcB}{$N_x$}}{\slot{pcB}{$N$}}$ must have only $x$ \qquad $\mu=e^{\int(\text{that})\,dx}$}
\stepdown
\stepbox{3. PLACE}{$\dfrac{\pA{-2x}-\pB{2x}}{\pB{x^2}}=-\dfrac{4}{x}$: only $x$ \checkmark \qquad \pD{$\mu=e^{-4\ln\lvert x\rvert}=x^{-4}$}}
\stepdown
\stepbox{4. MULTIPLY, RETEST}{$\big(-2x^{-3}y-x^{-4}\big)dx+x^{-2}\,dy=0$ \qquad $M_y=-2x^{-3}=N_x$ \checkmark}
\stepdown
\stepbox{5. SOLVE THE EXACT EQUATION (SECTION 15)}{$F=\int\big(-2x^{-3}y-x^{-4}\big)dx=x^{-2}y+\tfrac13x^{-3}+g(y)$ \\ $F_y=x^{-2}+g'=x^{-2}$ $\Rightarrow$ $g=0$ \qquad $\keyres{\dfrac{y}{x^2}+\dfrac{1}{3x^3}=c}$, on $x>0$ or $x<0$}
\stepdown
\stepbox{6. CHECK (SOLVE IT AS LINEAR)}{$y'-\frac2xy=\frac1{x^2}$, \; $\mu=x^{-2}$, \; $\frac{y}{x^2}=-\frac{1}{3x^3}+c$, the same \checkmark}

\wk{8}{($\mu(y)$) $y\,dx+(2x+y^2)\,dy=0$}
\stepbox{1. PIECES}{\pA{$M=y$}, \; \pA{$M_y=1$} \qquad \pB{$N=2x+y^2$}, \; \pB{$N_x=2$}}
\stepdown
\stepbox{2. TEMPLATES (BOTH TESTS)}{$\dfrac{\slot{pcA}{$M_y$}-\slot{pcB}{$N_x$}}{\slot{pcB}{$N$}}$ only $x$? \qquad $\dfrac{\slot{pcB}{$N_x$}-\slot{pcA}{$M_y$}}{\slot{pcA}{$M$}}$ only $y$?}
\stepdown
\stepbox{3. PLACE}{$\dfrac{\pA1-\pB2}{\pB{2x+y^2}}$ has a $y$ \warn{no} \qquad $\dfrac{\pB{2}-\pA{1}}{\pA{y}}=\dfrac1y$: only $y$ \checkmark \qquad \pD{$\mu=e^{\ln\lvert y\rvert}=y$}}
\stepdown
\stepbox{4. MULTIPLY, RETEST}{$y^2\,dx+(2xy+y^3)\,dy=0$ \qquad $M_y=2y=N_x$ \checkmark}
\stepdown
\stepbox{5. SOLVE THE EXACT EQUATION (SECTION 15)}{$F=xy^2+g(y)$, \; $F_y=2xy+g'=2xy+y^3$ $\Rightarrow$ $g=\frac{y^4}{4}$ \qquad $\keyres{xy^2+\dfrac{y^4}{4}=c}$}
\stepdown
\stepbox{6. CHECK}{$\frac{d}{dx}$: $y^2+(2xy+y^3)y'=0$, then $\div y$ gives the original \checkmark \\ $\mu=0$ at $y=0$: in the original, $0\,dx+2x\cdot0=0$, so $y=0$ is a solution too}

% ------------------------------------------------------------ 18
\filbreak \subsection{18. transformations (substitutions)}
\idea{Rename part of the equation with a new letter. If you pick the right part, the equation in the new letter is one you can already solve (separable or linear). Solve it, then put the old letters back.}
\begin{ftab}
$y'=q\big(\tfrac{y}{x}\big)$ & right side depends only on $\frac yx$: \term{homogeneous} (this meaning only here) \\
$y=ux$, \; $y'=u+xu'$ & product rule on $ux$ \\
$x\,u'=q(u)-u$ & separable in $u$ and $x$ \\
$q(u_0)=u_0$ & constant $u$: lost solution $y=u_0x$ \\
$y'=f(ax+by+c)$ & right side depends only on one combination \\
$v=ax+by+c$, \; $v'=a+b\,y'$ & then $v'=a+b\,f(v)$: autonomous in $v$ \\
\end{ftab}
\term{Test for $\frac yx$}: put $y=ux$. If every $x$ cancels, it is homogeneous. Quick version: every term on top and bottom has the same total degree.
\trap{Two meanings of homogeneous. Section 16: $q=0$. Here: $y'=q(y/x)$.}
\trap{Substitute $y'$ too. $y=ux$ means $y'=u+xu'$, not $u'$.}

\begin{qtab}
$y'=\dfrac{y-x}{x+y}$ & $\div x$: $\dfrac{u-1}{1+u}$ \keyres{homogeneous} \st\\
$y'=\dfrac{x^2+y}{x}$ & $x+u$: an $x$ is left \warn{not $y/x$} \why{linear: 16} \st\\
$y'=\sin(x-y)$ & $v=x-y$: \; $v'=1-\sin v$ \keyres{separable} \\
\end{qtab}

\wk{8}{$y'=\dfrac{x^2+y^2}{xy}$, \; $y(1)=2$}
\stepbox{1. PIECES ($\div x^2$ TOP AND BOTTOM)}{$\dfrac{1+(y/x)^2}{y/x}$ \; $\Rightarrow$ \; \pE{$q(u)=\dfrac1u+u$} \qquad \pC{$(1,2)$}}
\stepdown
\stepbox{2. TEMPLATE}{$u+xu'=\slot{pcE}{$q(u)$}$}
\stepdown
\stepbox{3. PLACE, SEPARATE}{$u+xu'=\pE{\dfrac1u+u}$ $\Rightarrow$ $xu'=\dfrac1u$ $\Rightarrow$ $u\,du=\dfrac{dx}{x}$}
\stepdown
\stepbox{4. INTEGRATE, BACK TO $y$}{$\dfrac{u^2}{2}=\ln\lvert x\rvert+c$ $\Rightarrow$ $u^2=2\ln\lvert x\rvert+C$ $\Rightarrow$ $y^2=x^2\big(2\ln\lvert x\rvert+C\big)$}
\stepdown
\stepbox{5. CONDITION}{$\pC{2}^2=\pC{1}^2(0+C)$ $\Rightarrow$ $C=4$. \; $y>0$: \; $y=\keyres{x\sqrt{2\ln x+4}}$ on $\keyres{(e^{-2},\infty)}$}
\stepdown
\stepbox{6. CHECK}{$S=2\ln x+4$: \; $y'=\sqrt S+\dfrac{1}{\sqrt S}$ \qquad right side $\dfrac{x^2+x^2S}{x^2\sqrt S}=\dfrac{1+S}{\sqrt S}$, the same \checkmark}

\wk{8}{$y'=(x+y+1)^2$, \; $y(0)=-1$}
\stepbox{1. PIECES}{one combination: \pD{$v=x+y+1$}, so $a=1$, $b=1$ \qquad \pE{$f(v)=v^2$} \qquad \pC{$(0,-1)$}, so $v(0)=0$}
\stepdown
\stepbox{2. TEMPLATE}{$v'=a+b\cdot\slot{pcE}{$f(v)$}$}
\stepdown
\stepbox{3. PLACE, SEPARATE}{$v'=1+\pE{v^2}$ \why{autonomous} $\Rightarrow$ $\dfrac{dv}{1+v^2}=dx$}
\stepdown
\stepbox{4. INTEGRATE, BACK TO $y$}{$\arctan v=x+c$ $\Rightarrow$ $v=\tan(x+c)$ $\Rightarrow$ $y=\tan(x+c)-x-1$}
\stepdown
\stepbox{5. CONDITION}{$\pC{-1}=\tan c-1$ $\Rightarrow$ $c=0$: \; $y=\keyres{\tan x-x-1}$}
\stepdown
\stepbox{6. CHECK}{$y'=\sec^2x-1=\tan^2x$, \; and $(x+y+1)^2=\tan^2x$ \checkmark}

% ------------------------------------------------------------ 19
\filbreak \subsection{19. Bernoulli equations}
\idea{A Bernoulli equation is a linear equation with one extra power of $y$ on the right. The substitution $v=y^{1-n}$ removes the power. The equation in $v$ is linear, so section 16 finishes it.}
$$y'+\slot{pcD}{$p(x)$}\,y=\slot{pcE}{$q(x)$}\,y^{\slot{pcE}{$n$}} \quad\Rightarrow\quad v'+(1-\slot{pcE}{$n$})\,\slot{pcD}{$p$}\,v=(1-\slot{pcE}{$n$})\,\slot{pcE}{$q$}$$
\begin{ftab}
$n\neq0,1$ & $n=0$ or $1$ is already linear \\
$v=y^{1-n}$ & the new letter \\
$v'=(1-n)\,y^{-n}\,y'$ & chain rule \\
divide the DE by $y^n$ & $y^{-n}y'+p\,y^{1-n}=q$, then put in $v$ \\
$y=v^{1/(1-n)}$ & back to $y$ at the end \\
$y=0$ & a lost solution if $n>0$ \\
\end{ftab}
\term{Trench's way}: $y=uy_1$ with $y_1=e^{-\int p}$ gives a separable equation in $u$. Both ways give the same $y$.
\trap{The factor $(1-n)$ multiplies \keyres{both} $p$ and $q$.}
\trap{Undo $v$ at the end. If $v^{1/(1-n)}$ is an even root ($n=3$: $v^{-1/2}$, \; $n=-1$: $v^{1/2}$), write $\pm$. The condition picks the sign.}

\begin{qtab}
$y'-y=e^xy^{1/2}$ & \pE{$n=\frac12$}: $v=y^{1/2}$ \\
$y'=y-y^3$ & \pE{$n=3$}, \pD{$p=-1$}, \pE{$q=-1$} \why{also autonomous} \\
$y'+\frac{y}{x}=\frac{1}{y}$ & \pE{$n=-1$}: $v=y^2$ \\
\end{qtab}

\wk{8}{$y'+\frac1x\,y=x\,y^2$, \; $x>0$}
\stepbox{1. PIECES}{\pD{$p=\frac1x$} \qquad \pE{$q=x$} \qquad \pE{$n=2$} \; $\Rightarrow$ \; $1-n=-1$, \; $v=y^{-1}$}
\stepdown
\stepbox{2. TEMPLATE}{$v'+(1-\slot{pcE}{$n$})\,\slot{pcD}{$p$}\,v=(1-\slot{pcE}{$n$})\,\slot{pcE}{$q$}$}
\stepdown
\stepbox{3. PLACE}{$v'+(1-\pE2)\pD{\dfrac1x}\,v=(1-\pE2)\pE{x}$ \; $\Rightarrow$ \; $v'-\dfrac1x\,v=-x$}
\stepdown
\stepbox{4. SOLVE THE LINEAR EQUATION (SECTION 16)}{$\mu=e^{-\ln x}=\dfrac1x$ \qquad $\Big(\dfrac vx\Big)'=-1$ $\Rightarrow$ $\dfrac vx=-x+c$ $\Rightarrow$ $v=cx-x^2$}
\stepdown
\stepbox{5. BACK TO $y$}{$y=v^{-1}=\keyres{\dfrac{1}{cx-x^2}}$, \; and $y=0$ \why{lost when we divided by $y^2$}}
\stepdown
\stepbox{6. CHECK}{$D=cx-x^2$: \; $y'=\dfrac{2x-c}{D^2}$, \; $\dfrac yx=\dfrac{c-x}{D^2}$, \; sum $\dfrac{x}{D^2}=xy^2$ \checkmark}

\wk{8}{$y'+y=x\,y^3$, \; $y(0)=1$}
\stepbox{1. PIECES}{\pD{$p=1$} \qquad \pE{$q=x$} \qquad \pE{$n=3$} \; $\Rightarrow$ \; $1-n=-2$, \; $v=y^{-2}$ \qquad \pC{$v(0)=1^{-2}=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$v'+(1-\slot{pcE}{$n$})\,\slot{pcD}{$p$}\,v=(1-\slot{pcE}{$n$})\,\slot{pcE}{$q$}$}
\stepdown
\stepbox{3. PLACE}{$v'+(1-\pE3)(\pD{1})\,v=(1-\pE3)\pE{x}$ \; $\Rightarrow$ \; $v'-2v=-2x$}
\stepdown
\stepbox{4. SOLVE THE LINEAR EQUATION (SECTION 16)}{$\mu=e^{-2x}$ \qquad $e^{-2x}v=\int-2xe^{-2x}dx=xe^{-2x}+\tfrac12e^{-2x}+c$ \why{by parts} \\ $v=x+\tfrac12+ce^{2x}$}
\stepdown
\stepbox{5. CONDITION}{$\pC{1}=0+\tfrac12+c$ $\Rightarrow$ $c=\tfrac12$: \; $v=x+\tfrac12+\tfrac12e^{2x}$}
\stepdown
\stepbox{6. BACK TO $y$}{$y=\pm v^{-1/2}$. \; $y(0)=1>0$, so keep $+$: \; $y=\keyres{\dfrac{1}{\sqrt{x+\frac12+\frac12e^{2x}}}}$}
\stepdown
\stepbox{7. CHECK}{$v'-2v=1+e^{2x}-2x-1-e^{2x}=-2x$ \checkmark \qquad $y(0)=\frac{1}{\sqrt1}=1$ \checkmark}

% ------------------------------------------------------------ 20
\filbreak \subsection{20. applications: growth and decay}
\idea{``The rate of change is proportional to the amount'' gives $Q'=aQ$, so the amount is an exponential. Most problems give you two facts (a start value and one reading, a half-life, a doubling time). Use one fact for $Q_0$ and the other for the rate.}
\begin{ftab}
$Q'=aQ$ $\Rightarrow$ $Q=Q_0e^{a(t-t_0)}$ & (amount) $=$ (start)(growth factor). $a>0$ grows, $a<0$ decays \\
$Q'=-kQ$, \; $Q=Q_0e^{-kt}$ & radioactive decay. $k>0$ is the \term{decay constant} \\
$\tau=\dfrac{\ln2}{k}$, \; $k=\dfrac{\ln2}{\tau}$ & \term{half-life} $\leftrightarrow$ decay constant \st\\
$Q=Q_0\big(\tfrac12\big)^{t/\tau}$ & same decay, counted in half-lives \\
$t=\dfrac{\tau\,\ln(Q_0/Q)}{\ln2}$ & time to fall from $Q_0$ to $Q$ (carbon dating) \st\\
$Q=Q_0\big(1+\tfrac{r}{n}\big)^{nt}$ & compounded $n$ times a year \\
$Q=Q_0e^{rt}$, \; $Q_0=Qe^{-rt}$ & compounded continuously, and the deposit needed now (present value) \\
$Q'=s-kQ$ $\Rightarrow$ $Q=\dfrac sk+\Big(Q_0-\dfrac sk\Big)e^{-kt}$ & made at rate $s$, decays at $kQ$. \term{Steady state} $\frac sk$ \why{Trench writes $a$ for $s$} \st\\
$Q'=rQ+d$ $\Rightarrow$ $Q=Q_0e^{rt}+\dfrac dr\big(e^{rt}-1\big)$ & savings: interest $r$ plus deposits $d$ per year, made continuously \st\\
\end{ftab}
\trap{Write a rate as a decimal: $5\tfrac12\%$ is $r=0.055$.}
\trap{Keep $t$ in the units of $\tau$ or $r$ (years with years).}
\trap{The half-life does not depend on how much you start with.}

\begin{qtab}
$\$500$ at $4\%$, continuous, $8$ yr & $500e^{0.32}=\keyres{\$688.56}$ \\
need $\$20{,}000$ in $15$ yr at $6\%$, continuous & $Q_0=20000e^{-0.9}=\keyres{\$8131.39}$ \\
$\$1000$ at $6\%$, monthly, $5$ yr & $1000(1.005)^{60}=\keyres{\$1348.85}$ \\
made at $3$ g/yr, $k=0.1$ & steady state $\frac{3}{0.1}=\keyres{30}$ g, from any $Q_0$ \\
\end{qtab}

\wk{8}{half-life $1200$ yr, $6$ g now: amount after $300$ yr, and time until $2$ g}
\stepbox{1. PIECES}{\pC{$Q_0=6$} \qquad \pD{$\tau=1200$} \qquad time $t=300$ \qquad target $Q=2$}
\stepdown
\stepbox{2. TEMPLATES}{$Q=\slot{pcC}{$Q_0$}\big(\tfrac12\big)^{t/\slot{pcD}{$\tau$}}$ \qquad $t=\dfrac{\slot{pcD}{$\tau$}\ln(\slot{pcC}{$Q_0$}/Q)}{\ln2}$}
\stepdown
\stepbox{3. PLACE}{$Q(300)=\pC6\big(\tfrac12\big)^{300/\pD{1200}}=6(0.8409)=\keyres{5.05}$ g \\ $t=\dfrac{\pD{1200}\ln(\pC6/2)}{\ln2}=1200(1.585)=\keyres{1902}$ yr}
\stepdown
\stepbox{4. CHECK}{$1902$ yr is $1.585$ half-lives. After $1$ half-life $6\to3$, and $2$ comes a bit later \checkmark}

\wk{8}{(reverse: carbon dating) bones hold $30\%$ of the live amount of carbon-14, \; $\tau=5570$ yr}
\stepbox{1. PIECES}{\pC{$Q_0/Q=\frac{1}{0.30}$} \why{only the ratio matters} \qquad \pD{$\tau=5570$}}
\stepdown
\stepbox{2. TEMPLATE}{$t=\dfrac{\slot{pcD}{$\tau$}\ln(\slot{pcC}{$Q_0/Q$})}{\ln2}$}
\stepdown
\stepbox{3. PLACE}{$t=\dfrac{\pD{5570}\ln(\pC{1/0.30})}{0.6931}=\dfrac{5570(1.2040)}{0.6931}=\keyres{9675}$ yr}
\stepdown
\stepbox{4. CHECK}{$(\tfrac12)^{9675/5570}=(\tfrac12)^{1.737}=0.30$ \checkmark \why{use the half-life the problem gives}}

\wk{8}{savings: $\$2000$ now, $\$3000$ per year added continuously, $5\%$ continuous. Find $Q(10)$}
\stepbox{1. PIECES}{rate in $=$ interest $+$ deposits: $Q'=\pD{0.05}Q+\pA{3000}$ \qquad \pC{$Q_0=2000$}}
\stepdown
\stepbox{2. TEMPLATE (LINEAR, SECTION 16)}{$Q=\slot{pcC}{$Q_0$}e^{\slot{pcD}{$r$}t}+\dfrac{\slot{pcA}{$d$}}{\slot{pcD}{$r$}}\big(e^{\slot{pcD}{$r$}t}-1\big)$}
\stepdown
\stepbox{3. PLACE, $t=10$}{$Q=\pC{2000}e^{0.5}+\dfrac{\pA{3000}}{\pD{0.05}}\big(e^{0.5}-1\big)=3297.44+38923.28=\keyres{\$42{,}220.72}$}
\stepdown
\stepbox{4. CHECK}{money put in: $2000+30{,}000=\$32{,}000$. The rest is interest \checkmark}

% ------------------------------------------------------------ 21
\filbreak \subsection{21. applications: cooling and mixing}
\idea{Both are ``rate in minus rate out.'' Cooling: the gap to the room shrinks exponentially. Mixing: salt flows in at a fixed rate and leaves in proportion to how much is in the tank. Both give a linear equation (section 16).}
\begin{ftab}
$T'=-k(T-T_m)$ & Newton: the rate is proportional to the gap from the room $T_m$ \\
$T=\slot{pcE}{$T_m$}+(\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$})e^{-\slot{pcD}{$k$}t}$ & (temp) $=$ (room) $+$ (start gap)(fade) \\
$e^{-kt_1}=\dfrac{T_1-T_m}{T_0-T_m}$ & one reading $T_1$ at $t_1$ gives $k$ \st\\
$t=-\dfrac1k\ln\dfrac{T-T_m}{T_0-T_m}$ & time to reach a temperature $T$ \st\\
$Q'=(\text{rate in})-(\text{rate out})$ & $Q$ is the amount of salt, not the concentration \\
rate in $=c_{in}\,r_{in}$ & (lb/gal)(gal/min) $=$ lb/min \\
rate out $=\dfrac{Q}{V(t)}\,r_{out}$ & (concentration in the tank)(flow out) \st\\
$V(t)=V_0+(r_{in}-r_{out})\,t$ & volume. The tank overflows when $V$ reaches capacity \\
\end{ftab}
\term{Shortcut}: with one reading $T_1$ at $t_1$, the fade factor is a ratio to a power. No $k$ needed:
$$T=\slot{pcE}{$T_m$}+(\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$})\bigg(\frac{\slot{pcB}{$T_1$}-\slot{pcE}{$T_m$}}{\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$}}\bigg)^{t/\slot{pcB}{$t_1$}}$$
\trap{The tank concentration is $\frac{Q}{V}$, not $c_{in}$. Salt leaves at the tank's concentration.}
\trap{If $r_{in}\neq r_{out}$, $V$ changes, so the rate out has $t$ in it.}
\trap{Equal flows: $Q\to c_{in}V$, the incoming concentration times the volume.}

\wk{8}{cooling: room $20^\circ$, tea $95^\circ$, $70^\circ$ after $5$ min. Find $T(15)$. When is it $40^\circ$?}
\stepbox{1. PIECES}{\pE{$T_m=20$} \qquad \pC{$T_0=95$} \qquad reading \pB{$T_1=70$} at \pB{$t_1=5$}}
\stepdown
\stepbox{2. TEMPLATE (SHORTCUT)}{$T=\slot{pcE}{$T_m$}+(\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$})\Big(\dfrac{\slot{pcB}{$T_1$}-\slot{pcE}{$T_m$}}{\slot{pcC}{$T_0$}-\slot{pcE}{$T_m$}}\Big)^{t/\slot{pcB}{$t_1$}}$}
\stepdown
\stepbox{3. PLACE}{$T=\pE{20}+(\pC{95}-\pE{20})\Big(\dfrac{\pB{70}-\pE{20}}{\pC{95}-\pE{20}}\Big)^{t/\pB5}=20+75\big(\tfrac23\big)^{t/5}$ \why{$k=\frac{\ln1.5}{5}=0.0811$}}
\stepdown
\stepbox{4. EVALUATE $t=15$}{$T=20+75\big(\tfrac23\big)^3=20+22.2=\keyres{42.2^\circ}$}
\stepdown
\stepbox{5. REVERSE: $T=40$}{$\big(\tfrac23\big)^{t/5}=\frac{20}{75}$ $\Rightarrow$ $t=5\cdot\dfrac{\ln(0.2667)}{\ln(2/3)}=\keyres{16.3}$ min}
\stepdown
\stepbox{6. CHECK}{$T(15)=42.2^\circ$ is just above $40^\circ$, so $40^\circ$ comes just after $15$ min \checkmark}

\wk{8}{mixing, equal flows: $200$ L with $10$ g salt. In: $0.3$ g/L at $5$ L/min. Out: $5$ L/min}
\stepbox{1. PIECES}{\pA{rate in $=0.3(5)=1.5$} g/min \qquad \pB{rate out $=\frac{Q}{200}(5)=\frac{Q}{40}$} \qquad \pC{$Q(0)=10$}}
\stepdown
\stepbox{2. TEMPLATE}{$Q'=\slot{pcA}{rate in}-\slot{pcB}{rate out}$}
\stepdown
\stepbox{3. PLACE}{$Q'=\pA{1.5}-\pB{\dfrac{Q}{40}}$ \; $\Rightarrow$ \; $Q'+\dfrac{Q}{40}=1.5$}
\stepdown
\stepbox{4. SOLVE THE LINEAR EQUATION (SECTION 16)}{$\mu=e^{t/40}$ \qquad $e^{t/40}Q=60e^{t/40}+c$ \qquad $Q=60+ce^{-t/40}$}
\stepdown
\stepbox{5. CONDITION}{$\pC{10}=60+c$ $\Rightarrow$ $c=-50$: \; $Q=\keyres{60-50e^{-t/40}}$}
\stepdown
\stepbox{6. CHECK}{$t\to\infty$: $Q\to\pE{60}=0.3(200)$, the incoming concentration times the volume \checkmark}

\wk{8}{mixing, unequal flows: $100$ gal with $5$ lb. In: $0.5$ lb/gal at $3$ gal/min. Out: $1$ gal/min. Holds $300$ gal}
\stepbox{1. PIECES}{$V=100+2t$ \why{gains $2$ gal/min, full at $t=100$} \qquad \pA{rate in $=0.5(3)=1.5$} \qquad \pB{rate out $=\frac{Q}{100+2t}(1)$} \qquad \pC{$Q(0)=5$}}
\stepdown
\stepbox{2. TEMPLATE}{$Q'=\slot{pcA}{rate in}-\slot{pcB}{rate out}$}
\stepdown
\stepbox{3. PLACE}{$Q'=\pA{1.5}-\pB{\dfrac{Q}{100+2t}}$ \; $\Rightarrow$ \; $Q'+\dfrac{1}{100+2t}\,Q=1.5$}
\stepdown
\stepbox{4. SOLVE THE LINEAR EQUATION (SECTION 16)}{$\mu=e^{\frac12\ln(100+2t)}=(100+2t)^{1/2}$ \\ $\mu Q=\int1.5(100+2t)^{1/2}dt=0.5(100+2t)^{3/2}+c$ \; $\Rightarrow$ \; $Q=50+t+\dfrac{c}{\sqrt{100+2t}}$}
\stepdown
\stepbox{5. CONDITION}{$\pC5=50+\frac{c}{10}$ $\Rightarrow$ $c=-450$: \; $Q=\keyres{50+t-\dfrac{450}{\sqrt{100+2t}}}$}
\stepdown
\stepbox{6. AT OVERFLOW, $t=100$}{$Q=150-\frac{450}{17.32}=\keyres{124.0}$ lb. \; Concentration $\frac{124.0}{300}=\keyres{0.413}$ lb/gal}
\stepdown
\stepbox{7. CHECK}{$Q(0)=50-45=5$ \checkmark \qquad $0.413<0.5$, the incoming concentration \checkmark}

% ------------------------------------------------------------ 22
\filbreak \subsection{22. applications: elementary mechanics}
\idea{Newton: $F=ma$, and $a=v'$. If the force depends only on $t$ and $v$, then $mv'=F$ is a \keyres{first order} equation for the velocity. Solve for $v$, then integrate $v$ to get the position $y$. Up is positive, so gravity is $-mg$.}
{\small\renewcommand{\arraystretch}{1.15}
\begin{tabular}{@{}l|l|l|l@{}}
\term{System} & \term{Length} & \term{Mass} & \term{Force}, $g$ \\\hline
cgs & cm & g & dyne, $980$ cm/s$^2$ \\
mks & m & kg & newton, $9.8$ m/s$^2$ \\
British & ft & slug & pound, $32$ ft/s$^2$ \\
\end{tabular}}
\par\vspace{2pt}
\term{Weight is a force}: a $960$ lb object has $m=\frac{960}{32}=30$ slugs.
\begin{ftab}
$F=ma=mv'$, \; $v=y'$ & force, velocity, position \\
$mv'=-mg-kv$ & linear drag: resistance $kv$ always opposes motion \\
$v=-\dfrac{mg}{k}+\Big(v_0+\dfrac{mg}{k}\Big)e^{-kt/m}$ & solution (linear, section 16) \st\\
$v_{term}=-\dfrac{mg}{k}$ & \term{terminal velocity}: $v$ as $t\to\infty$ \st\\
$mv'=-mg+kv^2$ & square drag, \keyres{falling} ($v\leq0$): drag is up \\
$mv'=-mg-kv^2$ & square drag, \keyres{rising} ($v\geq0$): drag is down \\
$v_{term}=-\sqrt{mg/k}$ & square drag terminal velocity \\
$T_{top}=\sqrt{\dfrac{m}{gk}}\arctan\Big(v_0\sqrt{\dfrac{k}{mg}}\Big)$ & square drag: time to the top \st\\
\end{ftab}
\term{Find $k$}: ``$3$ lb for each ft/s'' means $k=3$. ``$8$ N at $2$ m/s'' with square drag means $k(2)^2=8$.

\term{Escape velocity}. Gravity weakens with distance: $y''=-\dfrac{gR^2}{(y+R)^2}$. Chain rule: $y''=\dfrac{dv}{dt}=v\dfrac{dv}{dy}$, which makes it separable in $v$ and $y$.
\begin{ftab}
$v\dfrac{dv}{dy}=-\dfrac{gR^2}{(y+R)^2}$ & $R$ is Earth's radius, $y$ is altitude, burnout at $y=h$ \st\\
$v^2=v_0^2+2gR^2\Big(\dfrac{1}{y+R}-\dfrac{1}{h+R}\Big)$ & speed at altitude $y$ \st\\
$v_e=\sqrt{\dfrac{2gR^2}{h+R}}$ & \term{escape velocity}: if $v_0\geq v_e$, it never falls back \st\\
$\dfrac{gR^2}{y_m+R}=\dfrac{gR^2}{h+R}-\dfrac{v_0^2}{2}$ & maximum altitude $y_m$ if $v_0<v_e$ (set $v=0$) \st\\
\end{ftab}
\trap{Pick a sign for ``up'' and keep it. With up positive, a falling object has $v<0$.}
\trap{Square drag: choose $+kv^2$ or $-kv^2$ so the drag opposes the motion.}

\begin{qtab}
$960$ lb, drag $3$ lb per ft/s & $m=30$, \; $v_{term}=-\frac{960}{3}=\keyres{-320}$ ft/s \\
$2$ kg, square drag $0.4$ N at $2$ m/s & $k=0.1$, \; $v_{term}=-\sqrt{196}=\keyres{-14}$ m/s \\
same, thrown up at $14$ m/s & $T_{top}=\sqrt{\frac{2}{0.98}}\arctan(1)=1.429\cdot\frac{\pi}{4}=\keyres{1.12}$ s \\
escape from the surface, $h=0$ & $\sqrt{2gR}=\sqrt{2(9.8)(6.37\times10^6)}=\keyres{11.2}$ km/s \\
\end{qtab}

\wk{8}{a $640$ lb object dropped from rest, drag $4$ lb per ft/s. Find $v(t)$ and $y(t)$}
\stepbox{1. PIECES}{\pD{$m=\frac{640}{32}=20$} slugs \qquad \pD{$k=4$} \qquad \pC{$v_0=0$}, \pC{$y(0)=0$} \qquad $g=32$}
\stepdown
\stepbox{2. TEMPLATE}{$v=-\dfrac{\slot{pcD}{$m$}g}{\slot{pcD}{$k$}}+\Big(\slot{pcC}{$v_0$}+\dfrac{\slot{pcD}{$m$}g}{\slot{pcD}{$k$}}\Big)e^{-\slot{pcD}{$k$}t/\slot{pcD}{$m$}}$}
\stepdown
\stepbox{3. PLACE}{$\frac{\pD{20}(32)}{\pD4}=160$, \; $\frac{\pD4}{\pD{20}}=0.2$: \; $v=-160+(\pC0+160)e^{-0.2t}=\keyres{-160\big(1-e^{-0.2t}\big)}$ ft/s}
\stepdown
\stepbox{4. POSITION ($y=\int v\,dt$)}{$y=-160t-800e^{-0.2t}+c$. \; \pC{$y(0)=0$} $\Rightarrow$ $c=800$: \; $y=\keyres{-160t+800\big(1-e^{-0.2t}\big)}$}
\stepdown
\stepbox{5. CHECK}{$v(0)=0$ \checkmark \quad $t\to\infty$: $v\to\pE{-160}$, the terminal velocity \checkmark \quad $20v'=-640-4v$ \checkmark}

\wk{8}{(reverse: escape) burnout at $h=R$, one Earth radius up. What $v_0$ escapes?}
\stepbox{1. PIECES}{\pC{$h=R$} \qquad $g=9.8$, \; $R=6.37\times10^6$ m}
\stepdown
\stepbox{2. TEMPLATE}{$v_e=\sqrt{\dfrac{2gR^2}{\slot{pcC}{$h$}+R}}$}
\stepdown
\stepbox{3. PLACE}{$v_e=\sqrt{\dfrac{2gR^2}{\pC{R}+R}}=\sqrt{gR}=\sqrt{9.8(6.37\times10^6)}=\keyres{7.90}$ km/s}
\stepdown
\stepbox{4. CHECK}{smaller than $11.2$ km/s from the ground: gravity is weaker up there \checkmark}

% ------------------------------------------------------------ 23
\needspace{24\baselineskip}\subsection{23. homogeneous linear second order equations}
\idea{A second order linear equation needs \keyres{two} independent solutions. Every solution is then $c_1y_1+c_2y_2$. The \term{Wronskian} $W$ is the test for ``independent'': if $W\neq0$, the pair can match any $y(x_0)$ and $y'(x_0)$.}
\begin{ftab}
$y''+p(x)\,y'+q(x)\,y=f(x)$ & standard form. \term{Homogeneous} if $f=0$ (the section 16 meaning) \\
$P_0y''+P_1y'+P_2y=0$ & divide by $P_0$: \; $p=\frac{P_1}{P_0}$, \; $q=\frac{P_2}{P_0}$. Skip zeros of $P_0$ \\
$p$, $q$ continuous on $(a,b)\ni x_0$ & the IVP $y(x_0)=k_0$, $y'(x_0)=k_1$ has exactly one solution there \\
$y=c_1y_1+c_2y_2$ & \term{superposition}: sums of solutions are solutions \\
$\dfrac{y_2}{y_1}\neq$ constant & \term{linearly independent}: neither is a multiple of the other \st\\
$W=\begin{vmatrix}y_1&y_2\\y_1'&y_2'\end{vmatrix}=y_1y_2'-y_1'y_2$ & \term{Wronskian} \st\\
$W\neq0$ & $\{y_1,y_2\}$ is a \term{fundamental set}: general solution $c_1y_1+c_2y_2$ \\
$W=Ke^{-\int p\,dx}$ & \term{Abel's formula}: $W$ is never $0$, or always $0$ \\
$c_1=\dfrac{k_0y_2'-k_1y_2}{W}$, \; $c_2=\dfrac{k_1y_1-k_0y_1'}{W}$ & IVP constants (all at $x_0$), Cramer's rule \st\\
$y_2=uy_1$, \; $u'=\dfrac{e^{-\int p\,dx}}{y_1^2}$ & \term{reduction of order}: a second solution from one \st\\
$p=-\dfrac{W'}{W}$, \; $q=\dfrac{y_1'y_2''-y_1''y_2'}{W}$ & build the equation from $y_1$, $y_2$ \st\\
\end{ftab}
\trap{Standard form first. Abel and reduction of order read $p$ from $y''+py'+qy=0$.}
\trap{The interval of a solution must avoid zeros of $P_0$ and contain $x_0$ (section 8).}
\trap{$W$ of two functions that do not come from one such equation can be $0$ at some points only. For solutions, $W$ is never $0$ or always $0$.}

\filbreak \subsubsection{Which way? --- solutions and equation}
\begin{ltab}{Given $\to$ find}{Do this}
$y_1$, $y_2$ and the DE $\to$ general solution & verify each (section 4), then $W\neq0$ \\
$y_1$, $y_2$ $\to$ the DE & $p=-\frac{W'}{W}$, \; $q=\frac{y_1'y_2''-y_1''y_2'}{W}$ \\
one solution $y_1$ $\to$ a second & reduction of order \\
DE only $\to$ $W$ up to $K$ & Abel: $W=Ke^{-\int p}$ \\
\end{ltab}

\begin{qtab}
$\{e^{2x},\,3e^{2x}\}$ & ratio $3$: \warn{dependent}, \; $W=0$ \\
$\{\sin2x,\,\sin x\cos x\}$ & $\sin2x=2\sin x\cos x$: \warn{dependent} \\
$\{\cos3x,\,\sin3x\}$ & $W=3\cos^23x+3\sin^23x=\keyres{3}$: independent \\
$\{e^{x},\,e^{-x}\}$ & $W=e^x(-e^{-x})-e^xe^{-x}=\keyres{-2}$ \\
$\{x,\,x^2\}$ & $W=x(2x)-1\cdot x^2=\keyres{x^2}$: $0$ at $x=0$ only. Independent on $(0,\infty)$ \\
\end{qtab}

\wk{8}{$y''-2y'-3y=0$: \; $y_1=e^{3x}$, $y_2=e^{-x}$, \; $y(0)=2$, $y'(0)=10$}
\stepbox{1. PIECES}{\pA{$y_1=e^{3x}$}, \pA{$y_1'=3e^{3x}$} \qquad \pB{$y_2=e^{-x}$}, \pB{$y_2'=-e^{-x}$} \qquad \pD{$p=-2$} \qquad \pC{$k_0=2$}, \pC{$k_1=10$} \\ verify each (section 4): \; $9e^{3x}-6e^{3x}-3e^{3x}=0$ \checkmark \quad $e^{-x}+2e^{-x}-3e^{-x}=0$ \checkmark}
\stepdown
\stepbox{2. TEMPLATES}{$W=\slot{pcA}{$y_1$}\,\slot{pcB}{$y_2'$}-\slot{pcA}{$y_1'$}\,\slot{pcB}{$y_2$}$ \qquad $c_1\slot{pcA}{$y_1(0)$}+c_2\slot{pcB}{$y_2(0)$}=\slot{pcC}{$k_0$}$, \; $c_1\slot{pcA}{$y_1'(0)$}+c_2\slot{pcB}{$y_2'(0)$}=\slot{pcC}{$k_1$}$}
\stepdown
\stepbox{3. PLACE IN $W$}{$W=\pA{e^{3x}}\pB{(-e^{-x})}-\pA{3e^{3x}}\pB{e^{-x}}=\keyres{-4e^{2x}}\neq0$: a fundamental set \\ Abel: $Ke^{-\int\pD{(-2)}dx}=Ke^{2x}$ \checkmark \qquad general: $y=c_1e^{3x}+c_2e^{-x}$}
\stepdown
\stepbox{4. PLACE THE CONDITIONS, SOLVE}{$c_1(\pA1)+c_2(\pB1)=\pC2$ \qquad $c_1(\pA3)+c_2(\pB{-1})=\pC{10}$ \qquad add: $4c_1=12$ $\Rightarrow$ $c_1=3$, $c_2=-1$}
\stepdown
\stepbox{5. ANSWER, CHECK}{$y=\keyres{3e^{3x}-e^{-x}}$ \qquad $y(0)=2$ \checkmark \quad $y'(0)=9+1=10$ \checkmark}

\wk{8}{$x^2y''-2xy'+2y=0$: \; $y_1=x$, $y_2=x^2$, \; $y(1)=3$, $y'(1)=4$}
\stepbox{1. PIECES (STANDARD FORM: $\div x^2$)}{$y''-\frac2xy'+\frac{2}{x^2}y=0$ \qquad \pD{$p=-\frac2x$} \qquad \pA{$y_1=x$}, \pA{$y_1'=1$} \qquad \pB{$y_2=x^2$}, \pB{$y_2'=2x$} \qquad \pC{$x_0=1$}}
\stepdown
\stepbox{2. TEMPLATE}{$W=\slot{pcA}{$y_1$}\,\slot{pcB}{$y_2'$}-\slot{pcA}{$y_1'$}\,\slot{pcB}{$y_2$}$}
\stepdown
\stepbox{3. PLACE}{$W=\pA{x}\pB{(2x)}-\pA{1}\cdot\pB{x^2}=x^2$ \qquad Abel: $Ke^{-\int\pD{(-2/x)}dx}=Kx^2$ \checkmark}
\stepdown
\stepbox{4. INTERVAL}{$P_0=x^2$ is $0$ at $x=0$. \; \pC{$x_0=1$} $\Rightarrow$ $(0,\infty)$, where $W\neq0$}
\stepdown
\stepbox{5. CONDITIONS AT $x_0=1$}{$c_1(\pA1)+c_2(\pB1)=3$ \qquad $c_1(\pA1)+c_2(\pB2)=4$ \qquad $c_2=1$, $c_1=2$}
\stepdown
\stepbox{6. ANSWER, CHECK}{$y=\keyres{2x+x^2}$ on $\keyres{(0,\infty)}$ \qquad $y(1)=3$ \checkmark \quad $y'(1)=2+2=4$ \checkmark}

\wk{8}{(reduction of order) $x^2y''-3xy'+4y=0$, \; $y_1=x^2$. Find $y_2$}
\stepbox{1. PIECES (STANDARD FORM: $\div x^2$)}{$y''-\frac3xy'+\frac4{x^2}y=0$ \qquad \pD{$p=-\frac3x$} \qquad \pA{$y_1=x^2$}}
\stepdown
\stepbox{2. TEMPLATE}{$u'=\dfrac{e^{-\int\slot{pcD}{$p$}\,dx}}{\slot{pcA}{$y_1$}^2}$, \qquad $y_2=u\,\slot{pcA}{$y_1$}$}
\stepdown
\stepbox{3. PLACE}{$e^{-\int(\pD{-3/x})dx}=e^{3\ln x}=x^3$ \qquad $u'=\dfrac{x^3}{(\pA{x^2})^2}=\dfrac1x$ \qquad $u=\ln x$}
\stepdown
\stepbox{4. ANSWER}{$y_2=\ln x\cdot\pA{x^2}=\keyres{x^2\ln x}$}
\stepdown
\stepbox{5. CHECK}{$y_2'=2x\ln x+x$, \; $y_2''=2\ln x+3$ \\ $x^2(2\ln x+3)-3x(2x\ln x+x)+4x^2\ln x=0$ \checkmark}

\wk{8}{(reverse: build the DE) $y_1=e^{x}$, $y_2=xe^{x}$}
\stepbox{1. PIECES}{\pA{$y_1'=y_1''=e^x$} \qquad \pB{$y_2'=(1+x)e^x$}, \pB{$y_2''=(2+x)e^x$}}
\stepdown
\stepbox{2. TEMPLATE}{$W=\slot{pcA}{$y_1$}\,\slot{pcB}{$y_2'$}-\slot{pcA}{$y_1'$}\,\slot{pcB}{$y_2$}$ \qquad $p=-\dfrac{W'}{W}$ \qquad $q=\dfrac{\slot{pcA}{$y_1'$}\slot{pcB}{$y_2''$}-\slot{pcA}{$y_1''$}\slot{pcB}{$y_2'$}}{W}$}
\stepdown
\stepbox{3. PLACE}{$W=\pA{e^x}\pB{(1+x)e^x}-\pA{e^x}\pB{xe^x}=e^{2x}$, \; $W'=2e^{2x}$ \\ $p=-\dfrac{2e^{2x}}{e^{2x}}=-2$ \qquad $q=\dfrac{\pA{e^x}\pB{(2+x)e^x}-\pA{e^x}\pB{(1+x)e^x}}{e^{2x}}=1$}
\stepdown
\stepbox{4. ANSWER}{$\keyres{y''-2y'+y=0}$}
\stepdown
\stepbox{5. CHECK}{$y_2$: $(2+x)e^x-2(1+x)e^x+xe^x=0$ \checkmark}

\end{multicols}

\makeatother
```
