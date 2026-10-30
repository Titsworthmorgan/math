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

\filbreak \subsection{how to read this note}
Every method is a chain of steps. Each step is a template with empty colored slots.
{\small\renewcommand{\arraystretch}{1.2}
\begin{tabular}{@{}p{0.27\linewidth}p{0.684\linewidth}@{}}
\term{Do} & \term{How} \\\hline
1. find the pieces & Each lesson opens with a PIECES table. It says where each piece is in your equation, and its color. \\[1pt]
2. fill the slots & A piece goes in the slot of the same color: \pA{$p$} goes in \slot{pcA}{$p$}. \\[1pt]
3. one box at a time & Each box is one move. Do not merge two boxes. \\
\end{tabular}}
\par\vspace{2pt}
\term{Colors in lessons 1, 3, 5 and Bernoulli}: \pA{$p(x)$} \quad \pB{$q(x)$} \quad \pC{$\mu$ (mu)} \quad \pD{$x_0$, $y_0$} \quad \pE{$a(x)$ or $n$}. \; Lessons 2, 4 and the homogeneous method set their own colors in their PIECES tables.

\filbreak \subsection{the master idea}
Rearrange until each side is integrable.
\begin{ltab}{Method}{Rearrange it until}
linear (L3) & the left side is one derivative, $(\mu y)'$ \\
separable (L4) & all $y$ is with $dy$, all $x$ is with $dx$ \\
Bernoulli (L6) & it is linear in $v=y^{1-n}$. Then L3 \\
homogeneous (L6) & it is separable in $v=y/x$. Then L4 \\
exact (L7) & the left side is one differential, $dF$ \\
autonomous (L8) & no solving: read the phase line \\
\end{ltab}

\filbreak \subsection{which method? --- the sorter}
Test in this order. Stop at the first yes.
\begin{ltab}{If the equation}{Use}
fits $y'+p(x)\,y=q(x)$ after you divide & linear, seven lines \hfill (L3) \\[1pt]
factors as $y'=g(x)\,h(y)$ & separable \hfill (L4) \\[1pt]
fits $y'+p\,y=q\,y^n$, \; $n\neq0,1$ & Bernoulli, $v=y^{1-n}$ \hfill (L6) \\[1pt]
has a right side in $\frac yx$ only & homogeneous, $v=\frac yx$ \hfill (L6) \\[1pt]
is $M\,dx+N\,dy=0$ with $M_y=N_x$ & exact, build $F$ \hfill (L7) \\[1pt]
has $M_y\neq N_x$ & integrating factor $\mu(x)$ or $\mu(y)$ \hfill (L7) \\
\end{ltab}
\trap{Some equations fit two rows. $y'+3y=6$ is linear and separable. Either method works.}
\trap{Bernoulli with $n=0$ or $n=1$ is already linear. Do not substitute.}

\filbreak \subsection{which tool? --- given $\to$ find}
\begin{ltab}{Given $\to$ find}{Do this}
an equation $\to$ order & highest derivative \hfill (L1) \\[1pt]
an equation $\to$ linear or not & the linear checklist \hfill (L1) \\[1pt]
an equation $\to$ $p$ and $q$ & standard form \hfill (L1) \\[1pt]
a $y$ and a DE $\to$ solution or not & differentiate $y$, substitute \hfill (L1) \\[1pt]
$y'=f$ and a point $\to$ slope & evaluate $f$ there \hfill (L2) \\[1pt]
$f\to$ zero-slope set & factor $f=0$ \hfill (L2) \\[1pt]
$f$ with no $x$, $y_0\to$ limit & nearest flat line in the drift \hfill (L2) \\[1pt]
linear $\to$ general solution & seven lines \hfill (L3) \\[1pt]
separable $\to$ general solution & separate, integrate, free $y$ \hfill (L4) \\[1pt]
general solution, IC $\to$ $C$ & plug in $x_0$, $y_0$ \hfill (L3, L4) \\[1pt]
separable $\to$ lost solutions & roots of $h(y)=0$ \hfill (L4) \\[1pt]
linear IVP $\to$ interval & bad $x$ of $p$ and $q$ \hfill (L5) \\[1pt]
nonlinear IVP $\to$ unique or not & Test 1, Test 2 \hfill (L5) \\[1pt]
Bernoulli $\to$ solution & $v=y^{1-n}$, then L3 \hfill (L6) \\[1pt]
$F(y/x)\to$ solution & $v=y/x$, then L4 \hfill (L6) \\[1pt]
$M\,dx+N\,dy\to$ exact or not & $M_y=N_x$ \hfill (L7) \\[1pt]
exact $\to$ solution & build $F$, answer $F=C$ \hfill (L7) \\[1pt]
not exact $\to$ multiplier & one-letter ratio test \hfill (L7) \\[1pt]
$y'=f(y)\to$ equilibria, stability & phase line \hfill (L8) \\[1pt]
$y'=f(y)$, $y_0\to$ limit & follow the arrow \hfill (L8) \\[1pt]
words $\to$ a DE & the translation table \hfill (L9) \\[1pt]
a second reading $\to$ $k$ & plug in, take $\ln$ \hfill (L9) \\[1pt]
tank $\to$ $Q(t)$ & in $-$ out, linear \hfill (L9) \\
\end{ltab}

\filbreak \subsection{which way? --- differentiate or integrate}
\begin{ltab}{Task}{Direction}
verify a solution & \keyres{differentiate} the given $y$ \\
check $\mu$ & \keyres{differentiate} $\mu$, compare with $p\mu$ \\
uniqueness test & \keyres{differentiate} $f$ in $y$ ($x$ is a constant) \\
linear line 6, separable step 3 & \keyres{integrate} \\
\end{ltab}
\trap{To verify, never solve the DE for $y'$. Get $y'$ from the given $y$.}

\filbreak \subsection{integrals (add $+C$ once)}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.36\linewidth}p{0.60\linewidth}@{}}
\term{Function} & \term{Antiderivative} \\\hline
$x^n$, \; $n\neq-1$ & $\dfrac{x^{n+1}}{n+1}$ \st\\
$y^{-n}$, \; $n\neq1$ & $\dfrac{y^{1-n}}{1-n}$ \; \why{only $n=1$ gives $\ln$} \st\\
$\dfrac{k}{x}$ & $k\ln\lvert x\rvert$ \; \warn{not $\ln\frac kx$} \st\\
$\dfrac{1}{ax+b}$ & $\dfrac{1}{a}\ln\lvert ax+b\rvert$ \st\\
$e^{kx}$ & $\dfrac{1}{k}e^{kx}$ \; \warn{divide by $k$} \st\\
$\sin(ax)$ / $\cos(ax)$ & $-\dfrac{\cos(ax)}{a}$ / $\dfrac{\sin(ax)}{a}$ \st\\
$\tan x$ & $\ln\lvert\sec x\rvert$ \\
$\sec^2x$ & $\tan x$ \\
$\dfrac{1}{1+y^2}$ & $\tan^{-1}y$ \st\\
\end{tabular}}
\par\vspace{2pt}
\term{By parts}: $\int u\,dv=uv-\int v\,du$. Pick $u$ = the part that gets simpler when you differentiate ($x$, $x^2$, $\ln x$).

\term{Product rule} (the heart of L3): $(\mu y)'=\mu'y+\mu y'$.

\filbreak \subsection{exponent and log rules}
\begin{ltab}{Rule}{Use}
$e^{k\ln u}=u^k$ & simplify $\mu$: $e^{2\ln x}=x^2$, \; $e^{-\ln x}=\frac1x$ \\
$\dfrac{1}{e^{-kx}}=e^{kx}$ & line 7: divide by $\mu$ \st\\
$\dfrac{1}{\sec x}=\cos x$ & line 7 when $\mu=\sec x$ \st\\
$e^{a+C}=e^Ce^a$ & L4: rename $e^C\to C$ \\
$e^{ab}$ & does \warn{not} split: $e^{xy}\neq e^xe^y$ \\
$\ln(e^{\square})=\square$ & $\ln$ and $e$ undo each other \\
\end{ltab}

\end{multicols}

% ---- lesson pages: one lesson per page, explanation left, work right ----
\newenvironment{lcol}{\noindent\begin{minipage}[t]{0.475\linewidth}\vspace{0pt}{\scriptsize\textcolor{titleHi}{\textbf{EXPLANATION}}}\par\vspace{2pt}}{\end{minipage}\hfill}
\newenvironment{rcol}{\begin{minipage}[t]{0.475\linewidth}\vspace{0pt}{\scriptsize\textcolor{titleHi}{\textbf{WORK}}}\par\vspace{2pt}}{\end{minipage}\par\vspace{8pt}}
\newcommand{\lesson}[1]{\newpage\section{#1}}

% ============================================================ LESSON 1
\lesson{Lesson 1 --- classify, standard form, verify}
\begin{lcol}
\idea{Label the equation before you solve it: order, linear or not, homogeneous or not. Then put it in standard form, so that you can read \pA{$p$} and \pB{$q$}.}

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pE{$a(x)$} & the coefficient of $y'$, with all $y$-terms on the left \\
\pA{$p(x)$} & the coefficient of $y$, \keyres{after} you divide by \pE{$a$}. It keeps its sign \\
\pB{$q(x)$} & the right side, \keyres{after} you divide by \pE{$a$} \\
\end{ltab}

\subsubsection{Read the pieces}
\begin{qtab}
$xy'+2y=x^2$ & \pE{$a=x$}: \; $y'+\pA{\frac2x}y=\pB{x}$ \\
$y'=3y+x$ & move: $y'\pA{-3}y=\pB{x}$. \; \pA{$p=-3$} \\
$y'+y\sin x=0$ & \pA{$p=\sin x$}, \pB{$q=0$}: homogeneous \\
$y'=xy^2$ & $y^2$: not linear. No $p$, no $q$ \\
\end{qtab}

\subsubsection{Linear or not?}
\begin{ltab}{Still linear}{Breaks linearity}
$x^2y'$, \; $e^xy$, \; $\sin x$ & $y^2$, \; $y\,y'$, \; $(y')^3$ \\
a missing term (coefficient $0$) & $\sin y$, \; $e^y$ \\
\end{ltab}

\trap{\pA{$p$} includes its sign. $y'-3y$ has \pA{$p=-3$}.}
\trap{Divide every term by \pE{$a$}, the right side too.}
\trap{Homogeneous means $q$ is the zero function. Do not plug in $x=0$.}
\trap{To verify, never solve the DE for $y'$. Get $y'$ from the given $y$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- classify}
\stepbox{1. ORDER}{The highest derivative present. Exponents do not matter: $(y'')^3$ is order $2$.}
\stepdown
\stepbox{2. LINEAR?}{Every $y,y',y'',\ldots$ appears alone, to the first power, with a coefficient in $x$ only. \keyres{Never} $x$-stuff breaks it.}
\stepdown
\stepbox{3. HOMOGENEOUS? (2.1 SENSE)}{Move all $y$-terms to the left. If the right side is the zero function, it is homogeneous.}

\subsubsection{Steps --- standard form}
\stepbox{1. MOVE}{All $y$-terms to the left: \quad $\slot{pcE}{$a$}\,y'+b\,y=g$}
\stepdown
\stepbox{2. DIVIDE EVERY TERM BY \pE{$a$}}{$y'+\slot{pcA}{$\dfrac{b}{a}$}\,y=\slot{pcB}{$\dfrac{g}{a}$}$ \quad \why{the coefficient of $y'$ must be $1$}}
\stepdown
\stepbox{3. READ}{\pA{$p=\dfrac ba$} \qquad \pB{$q=\dfrac ga$} \qquad \why{write both down}}

\subsubsection{Steps --- verify a solution}
\stepbox{1. DIFFERENTIATE}{Find $y'$ (and $y''$ if needed) from the given $y$, with calculus.}
\stepdown
\stepbox{2. SUBSTITUTE}{Put $y$, $y'$, $\ldots$ into the \keyres{left side only}.}
\stepdown
\stepbox{3. SIMPLIFY AND COMPARE}{Simplify the left side. If it equals the right side for every $x$, $y$ is a solution.}
\end{rcol}

% ============================================================ LESSON 2
\lesson{Lesson 2 --- direction fields}
\begin{lcol}
\idea{$y'=f(x,y)$ gives the slope at every point. The field is a picture of those slopes. You never solve anything.}

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$f(x,y)$} & the right side, after you get $y'$ alone \\
\pD{$(x_0,y_0)$} & the point you are asked about \\
\end{ltab}

\subsubsection{Sign of the slope}
\begin{ltab}{Slope}{The solution}
$y'>0$ & rises as $x$ increases \\
$y'<0$ & falls \\
$y'=0$ & is flat \\
\end{ltab}

\subsubsection{Does $f$ have $x$?}
\begin{ltab}{If \pA{$f$}}{Then}
has no $x$: $y'=f(y)$ & every column is the same. Zero-slope lines are \keyres{horizontal} (equilibria). Solutions approach them and never cross \\[1pt]
has $x$ & the zero-slope set is a \keyres{curve}, not a wall. No equilibria \\
\end{ltab}

\trap{Never divide $f=0$ by $y$. You lose the root $y=0$.}
\trap{The limit only works when \pA{$f$} has no $x$.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps --- slope at a point}
\stepbox{1. TEMPLATE}{slope $=\slot{pcA}{$f$}\big(\slot{pcD}{$x_0$},\slot{pcD}{$y_0$}\big)$}
\stepdown
\stepbox{2. READ THE SIGN}{$+$ rises, \; $-$ falls, \; $0$ flat.}

\subsubsection{Steps --- zero-slope set}
\stepbox{1. SET}{$\slot{pcA}{$f(x,y)$}=0$}
\stepdown
\stepbox{2. FACTOR}{Pull out every common factor. Do not divide.}
\stepdown
\stepbox{3. EACH FACTOR $=0$}{Each factor gives one line or curve of the set.}

\subsubsection{Steps --- limit as $x\to\infty$ ($f$ has no $x$)}
\stepbox{1. FLAT LINES}{Solve $\slot{pcA}{$f(y)$}=0$. List the roots.}
\stepdown
\stepbox{2. DRIFT}{Sign of $\slot{pcA}{$f$}\big(\slot{pcD}{$y_0$}\big)$: \; $+$ moves up, \; $-$ moves down, \; $0$ stays.}
\stepdown
\stepbox{3. LIMIT}{The nearest flat line in the direction of drift. If there is none in that direction: $\pm\infty$.}
\end{rcol}

% ============================================================ LESSON 3
\lesson{Lesson 3 --- first order linear (seven lines)}
\begin{lcol}
\idea{Multiply by \pC{$\mu$} so that the left side becomes one product-rule derivative, $(\mu y)'$. Then one integral finishes the job.}

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$p$} & the coefficient of $y$ in standard form, sign included \\
\pB{$q$} & the right side in standard form \\
\pC{$\mu$} (mu) & you make it: $e^{\int p\,dx}$. \keyres{No $+C$} \\
\pD{$x_0$, $y_0$} & the initial condition. Use it only at the end \\
\end{ltab}

\subsubsection{Line 2 --- common $\mu$}
\begin{ltab}{If \pA{$p$} is}{then \pC{$\mu$} is}
\pA{$k$} (a constant) & \pC{$e^{kx}$} \\
\pA{$\frac kx$} & $e^{k\ln x}=$ \pC{$x^k$} \\
\pA{$-\frac1x$} & $e^{-\ln x}=$ \pC{$\frac1x$} \\
\pA{$2x$} & \pC{$e^{x^2}$} \\
\pA{$\tan x$} & $e^{\ln\lvert\sec x\rvert}=$ \pC{$\sec x$} \\
\pA{$-\tan x$} & $e^{\ln\lvert\cos x\rvert}=$ \pC{$\cos x$} \\
\end{ltab}

\subsubsection{Equivalences}
\begin{ltab}{This}{is the same as}
$\mu'$ & $p\mu$, always (that is line 3) \\
$\mu p\,y$ & a line 4 term \\
$\mu y$ & the line 6 left side \\
$\frac{1}{e^{-kx}}$ / $\frac{1}{\sec x}$ & $e^{kx}$ / $\cos x$ \\
\end{ltab}

\trap{$\int\frac kx\,dx=k\ln x$, not $\ln\frac kx$.}
\trap{$\int e^{kx}dx=\frac1ke^{kx}$. Divide by $k$.}
\trap{$\int\tan x\,dx=\ln\lvert\sec x\rvert$.}
\trap{Line 7: divide $C$ by $\mu$ too.}
\end{lcol}
\begin{rcol}
\subsubsection{The seven lines}
\stepbox{LINE 1 --- STANDARD FORM, READ THE PIECES}{$y'+\slot{pcA}{$p$}\,y=\slot{pcB}{$q$}$ \qquad Write \pA{$p=\ldots$} and \pB{$q=\ldots$}}
\stepdown
\stepbox{LINE 2 --- BUILD $\mu$}{$\slot{pcC}{$\mu$}=e^{\int\slot{pcA}{$p$}\,dx}$ \quad Simplify. \why{$e^{k\ln u}=u^k$} \; No $+C$.}
\stepdown
\stepbox{LINE 3 --- CHECK $\mu$}{Differentiate: $\slot{pcC}{$\mu$}'=\ldots$ \quad Separately: $\slot{pcA}{$p$}\,\slot{pcC}{$\mu$}=\ldots$ \\ \keyres{They must be equal.} If not, fix line 2.}
\stepdown
\stepbox{LINE 4 --- MULTIPLY EVERY TERM}{$\slot{pcC}{$\mu$}\,y'+\slot{pcC}{$\mu$}\,\slot{pcA}{$p$}\,y=\slot{pcC}{$\mu$}\,\slot{pcB}{$q$}$ \\ \why{three multiplications, written out}}
\stepdown
\stepbox{LINE 5 --- COLLAPSE THE LEFT SIDE}{$\big(\slot{pcC}{$\mu$}\,y\big)'=\slot{pcC}{$\mu$}\,\slot{pcB}{$q$}$ \\ \why{$(\mu y)'=\mu'y+\mu y'=\mu p\,y+\mu y'$: the whole left side of line 4}}
\stepdown
\stepbox{LINE 6 --- INTEGRATE BOTH SIDES}{$\slot{pcC}{$\mu$}\,y=\displaystyle\int\slot{pcC}{$\mu$}\,\slot{pcB}{$q$}\,dx+C$ \\ \why{left side is $\mu$ times $y$: not $\mu'$, not $\mu p$}}
\stepdown
\stepbox{LINE 7 --- DIVIDE BY $\mu$}{$y=\dfrac{1}{\slot{pcC}{$\mu$}}\Big(\displaystyle\int\slot{pcC}{$\mu$}\,\slot{pcB}{$q$}\,dx+C\Big)$ \\ \why{divide the whole parenthesis: $C$ becomes $C/\mu$}}
\stepdown
\stepbox{IC (IF GIVEN)}{Plug in \pD{$x_0$} and \pD{$y_0$}. Solve for $C$. Rewrite the answer with the number.}
\end{rcol}

% ============================================================ LESSON 4
\lesson{Lesson 4 --- separable}
\begin{lcol}
\idea{Factor the right side into an $x$-part times a $y$-part. Move all $y$ to the $dy$ side and all $x$ to the $dx$ side. Integrate each side.}

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$g(x)$} & the factor with only $x$ (a constant counts) \\
\pB{$h(y)$} & the factor with only $y$ \\
\pD{$x_0$, $y_0$} & the initial condition \\
\end{ltab}

\subsubsection{Read the pieces}
\begin{qtab}
$y'=xy$ & \pA{$g=x$}, \; \pB{$h=y$} \\
$y'=\dfrac xy$ & \pA{$g=x$}, \; \pB{$h=\frac1y$} \st\\
$y'=e^{x+y}$ & $=e^xe^y$: \; \pA{$g=e^x$}, \; \pB{$h=e^y$} \\
$y'=2y$ & \pA{$g=2$}, \; \pB{$h=y$} \\
$y'=x+y$ & will not factor: \warn{not separable} \\
\end{qtab}

\subsubsection{Step 4 --- free $y$}
{\small\renewcommand{\arraystretch}{1.25}
\begin{tabular}{@{}p{0.22\linewidth}p{0.22\linewidth}p{0.48\linewidth}@{}}
\term{Wrapped} & \term{Undo with} & \term{Watch for} \\\hline
$\ln\lvert y\rvert=\ldots$ & $e^{(\cdot)}$ of the whole side & $e^{a+C}=e^Ce^a$. Rename $e^C\to C$ \\[2pt]
$y^2=\ldots$ & square root & $y=\pm\sqrt{\ldots}$. Keep $\pm$ unless an IC picks one \\[2pt]
$\frac1y=\ldots$ & reciprocal & do it \keyres{first}, before anything else \\[2pt]
$\tan^{-1}y=\ldots$ & $\tan$ & $y=\tan(\ldots+C)$, $C$ stays inside \\
\end{tabular}}

\trap{$\int y^{-n}dy=\frac{y^{1-n}}{1-n}$ for $n\neq1$. Only $n=1$ gives $\ln$.}
\trap{Keep the $dy$ and the $dx$ when you separate.}
\end{lcol}
\begin{rcol}
\subsubsection{Steps}
\stepbox{1. FACTOR}{$\dfrac{dy}{dx}=\slot{pcA}{$g(x)$}\,\slot{pcB}{$h(y)$}$ \quad If it will not factor, it is not separable.}
\stepdown
\stepbox{2. SEPARATE}{$\dfrac{dy}{\slot{pcB}{$h(y)$}}=\slot{pcA}{$g(x)$}\,dx$}
\stepdown
\stepbox{3. INTEGRATE}{$\displaystyle\int\dfrac{dy}{\slot{pcB}{$h(y)$}}=\int\slot{pcA}{$g(x)$}\,dx+C$ \quad \why{one $+C$ only}}
\stepdown
\stepbox{4. FREE $y$}{Apply the inverse of whatever wraps $y$. Use the table on the left.}
\stepdown
\stepbox{5. IC (IF GIVEN)}{Plug in \pD{$x_0$}, \pD{$y_0$}. Solve for $C$.}
\stepdown
\stepbox{6. LOST SOLUTIONS}{Solve $\slot{pcB}{$h(y)$}=0$. Each root $y=k$ is a constant solution. Step 2 divided by it. Mention them if asked for all solutions.}
\end{rcol}

% ============================================================ LESSON 5
\lesson{Lesson 5 --- existence and uniqueness}
\idea{Before you solve, ask: does a solution through the point exist, and is it the only one? Linear and nonlinear equations use different tests.}

\subsection{Linear: the interval}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$p$}, \pB{$q$} & standard form $y'+py=q$ \\
\pD{$x_0$} & the IC $y(x_0)=y_0$. \keyres{$y_0$ does not matter} \\
\end{ltab}

\subsubsection{Bad $x$}
\begin{ltab}{Undefined}{Bad $x$}
division by $0$ & where the bottom $=0$ \\
$\ln(\ldots)$ & where $\ldots\le0$ \\
even root $\sqrt{\ldots}$ & where $\ldots<0$ \\
$\tan x$ & $x=\frac\pi2+n\pi$ \\
\end{ltab}

\subsubsection{Read the pieces}
\begin{qtab}
\pA{$p=\frac{1}{x-3}$}, \pD{$x_0=1$} & bad: $3$. \; $\keyres{(-\infty,3)}$ \\
\pA{$p=\ln x$}, \pD{$x_0=2$} & bad: $x\le0$. \; $\keyres{(0,\infty)}$ \\
\end{qtab}
\trap{Divide by $a(x)$ first. Its zeros become bad $x$.}
\end{lcol}
\begin{rcol}
\stepbox{1. STANDARD FORM}{$y'+\slot{pcA}{$p$}\,y=\slot{pcB}{$q$}$}
\stepdown
\stepbox{2. BAD $x$ OF $p$}{List every $x$ where \pA{$p$} is undefined.}
\stepdown
\stepbox{3. BAD $x$ OF $q$}{List every $x$ where \pB{$q$} is undefined.}
\stepdown
\stepbox{4. NUMBER LINE}{Mark all bad $x$ and \pD{$x_0$}.}
\stepdown
\stepbox{5. INTERVAL}{(nearest bad $x$ below \pD{$x_0$}, \; nearest bad $x$ above \pD{$x_0$}). Open. No bad $x$ on a side: $\pm\infty$.}
\end{rcol}

\subsection{Nonlinear: Test 1 and Test 2}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$f(x,y)$} & the right side of $y'=f(x,y)$ \\
\pB{$\frac{\partial f}{\partial y}$} & you make it: differentiate \pA{$f$} in $y$, $x$ held constant \\
\pD{$(x_0,y_0)$} & the IC. \keyres{Both numbers matter} \\
\end{ltab}

\subsubsection{Verdict}
\begin{ltab}{Result}{Verdict}
both pass & a \keyres{unique} solution \\
Test 1 yes, Test 2 no & exists, uniqueness not guaranteed \\
Test 1 fails & the theorem says nothing \\
\end{ltab}

\subsubsection{Read the pieces}
\begin{qtab}
\pA{$f=y^{1/3}$}, \pD{$y_0=0$} & \pB{$\frac{1}{3y^{2/3}}$} breaks at $0$: exists, not guaranteed unique \\
\pA{$f=y^{1/3}$}, \pD{$y_0=1$} & both pass: \keyres{unique} \\
\end{qtab}
\trap{The tests are at the point. Changing \pD{$y_0$} can change the verdict.}
\trap{A point on the edge of the domain fails Test 1: $\sqrt y$ at $y_0=0$ is not defined below.}
\end{lcol}
\begin{rcol}
\stepbox{1. NORMAL FORM}{$y'=\slot{pcA}{$f(x,y)$}$}
\stepdown
\stepbox{2. TEST 1 --- EXISTENCE}{$\slot{pcA}{$f$}\big(\slot{pcD}{$x_0$},\slot{pcD}{$y_0$}\big)$ is a real number, \keyres{and} \pA{$f$} is defined on an open rectangle around the point.}
\stepdown
\stepbox{3. PARTIAL}{$\slot{pcB}{$\dfrac{\partial f}{\partial y}$}=\ldots$ \quad \why{$x$ is a constant}}
\stepdown
\stepbox{4. TEST 2 --- UNIQUENESS}{$\slot{pcB}{$\dfrac{\partial f}{\partial y}$}\big(\slot{pcD}{$x_0$},\slot{pcD}{$y_0$}\big)$ is a real number.}
\stepdown
\stepbox{5. VERDICT}{Use the verdict table on the left.}
\end{rcol}

% ============================================================ LESSON 6
\lesson{Lesson 6 --- transformations}
\idea{Substitute a new variable so that the equation becomes a type you can already solve. Bernoulli $\to$ linear (L3). Homogeneous $\to$ separable (L4).}

\subsection{Bernoulli: $y'+p\,y=q\,y^n$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$p$} & the coefficient of $y$ on the left \\
\pB{$q$} & the coefficient of $y^n$ on the right \\
\pE{$n$} & the power on the right. $n\neq0,1$ \\
new \pA{$p$}, new \pB{$q$} & $(1-\pE{n})\,\pA{p}$ \; and \; $(1-\pE{n})\,\pB{q}$ (step 5) \\
\end{ltab}

\subsubsection{Read the pieces}
\begin{qtab}
$y'+y=xy^3$ & \pA{$1$}, \pB{$x$}, \pE{$3$}: \; $v=y^{-2}$. \; new \pA{$-2$}, new \pB{$-2x$} \\
$y'-\frac yx=y^2$ & \pA{$-\frac1x$}, \pB{$1$}, \pE{$2$}: \; $v=y^{-1}$. \; new \pA{$\frac1x$}, new \pB{$-1$} \\
\end{qtab}
\trap{Keep the $(1-n)$. It is often negative.}
\trap{Divide \keyres{every} term by $y^n$, the $y'$ term too.}
\trap{Forget the $(1-n)$ in step 5 and every later line is wrong.}
\end{lcol}
\begin{rcol}
\stepbox{1. MATCH, READ THE PIECES}{$y'+\slot{pcA}{$p$}\,y=\slot{pcB}{$q$}\,y^{\slot{pcE}{$n$}}$}
\stepdown
\stepbox{2. CHOOSE $v$}{$v=y^{1-\slot{pcE}{$n$}}$ \qquad $v'=(1-\slot{pcE}{$n$})\,y^{-\slot{pcE}{$n$}}\,y'$}
\stepdown
\stepbox{3. DIVIDE EVERY TERM BY $y^n$}{$y^{-\slot{pcE}{$n$}}y'+\slot{pcA}{$p$}\,y^{1-\slot{pcE}{$n$}}=\slot{pcB}{$q$}$}
\stepdown
\stepbox{4. REPLACE}{$y^{-n}y'\to\dfrac{v'}{1-n}$, \; $y^{1-n}\to v$: \quad $\dfrac{v'}{1-\slot{pcE}{$n$}}+\slot{pcA}{$p$}\,v=\slot{pcB}{$q$}$}
\stepdown
\stepbox{5. MULTIPLY BY $(1-n)$, READ NEW PIECES}{$v'+\underbrace{(1-\slot{pcE}{$n$})\slot{pcA}{$p$}}_{\text{new }p}\,v=\underbrace{(1-\slot{pcE}{$n$})\slot{pcB}{$q$}}_{\text{new }q}$}
\subsubsection{Step 6 --- the seven lines on $v$}
\stepbox{LINE 1 --- STANDARD FORM IN $v$}{$v'+\slot{pcA}{new $p$}\,v=\slot{pcB}{new $q$}$ \qquad \why{from step 5}}
\stepdown
\stepbox{LINE 2 --- BUILD $\mu$}{$\slot{pcC}{$\mu$}=e^{\int \slot{pcA}{new $p$}\,dx}$ \quad Simplify. No $+C$.}
\stepdown
\stepbox{LINE 3 --- CHECK $\mu$}{Differentiate: $\slot{pcC}{$\mu$}'=\ldots$ \quad Separately: $\slot{pcA}{new $p$}\,\slot{pcC}{$\mu$}=\ldots$ \\ \keyres{They must be equal.}}
\stepdown
\stepbox{LINE 4 --- \slot{pcC}{$\mu$}LTIPLY EVERY TERM}{$\slot{pcC}{$\mu$}\,v'+\slot{pcC}{$\mu$}\,\slot{pcA}{new $p$}\,v=\slot{pcC}{$\mu$}\,\slot{pcB}{new $q$}$}
\stepdown
\stepbox{LINE 5 --- COLLAPSE THE LEFT SIDE}{$\big(\slot{pcC}{$\mu$}\,v\big)'=\slot{pcC}{$\mu$}\,\slot{pcB}{new $q$}$}
\stepdown
\stepbox{LINE 6 --- INTEGRATE BOTH SIDES}{$\slot{pcC}{$\mu$}\,v=\displaystyle\int \slot{pcC}{$\mu$}\,\slot{pcB}{new $q$}\,dx+C$ \quad \why{$\mu$ times $v$, not $y$}}
\stepdown
\stepbox{LINE 7 --- DIVIDE BY $\mu$}{$v=\dfrac{1}{\slot{pcC}{$\mu$}}\Big(\displaystyle\int \slot{pcC}{$\mu$}\,\slot{pcB}{new $q$}\,dx+C\Big)$ \quad \why{$C$ becomes $C/\mu$}}
\stepdown
\stepbox{7. BACK-SUBSTITUTE}{$y=v^{1/(1-\slot{pcE}{$n$})}$ \quad \why{raise the whole line 7 answer, $C$ included}}
\stepdown
\stepbox{8. IC (IF GIVEN)}{Plug \pD{$x_0$}, \pD{$y_0$} into the $y$ answer. Solve for $C$.}
\end{rcol}

\subsection{Homogeneous: $y'=F(y/x)$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pB{$v$} & $v=\frac yx$, so $y=vx$ \\
\pA{$F(v)$} & the right side, rewritten in $\frac yx$ only, with $\frac yx\to v$ \\
\end{ltab}
\term{Get \pA{$F$}}: divide the top and the bottom by the highest power of $x$.
\begin{qtab}
$y'=\dfrac{x+y}{x}$ & $1+\frac yx$: \; \pA{$F=1+v$} \st\\
$y'=\dfrac{x^2+y^2}{xy}$ & $\div x^2$: \; \pA{$F=\frac{1+v^2}{v}$} \st\\
$y'=\dfrac yx+\dfrac xy$ & \pA{$F=v+\frac1v$} \st\\
\end{qtab}
\trap{$y'$ is not $v'$. \; $y'=v+xv'$.}
\subsubsection{Two meanings of ``homogeneous''}
\begin{ltab}{Where}{Means}
Lesson 1 (Trench 2.1) & the right side of $y'+py=q$ is the zero function: $q=0$ \\
Lesson 6 & the right side is a function of $\frac yx$ only: $y'=F(y/x)$ \\
\end{ltab}
\end{lcol}
\begin{rcol}
\stepbox{1. REWRITE}{$y'=\slot{pcA}{$F$}\big(\tfrac yx\big)$}
\stepdown
\stepbox{2. SUBSTITUTE}{$y=\slot{pcB}{$v$}\,x$ \qquad $y'=\slot{pcB}{$v$}+x\,\slot{pcB}{$v$}'$ \quad \why{product rule}}
\stepdown
\stepbox{3. PLACE AND CANCEL}{$\slot{pcB}{$v$}+x\,v'=\slot{pcA}{$F(v)$}$ \;$\Rightarrow$\; $x\,v'=\slot{pcA}{$F(v)$}-\slot{pcB}{$v$}$}
\stepdown
\stepbox{4. SEPARATE (LESSON 4)}{$\dfrac{dv}{\slot{pcA}{$F(v)$}-\slot{pcB}{$v$}}=\dfrac{dx}{x}$ \quad \why{$g(x)=\frac1x$, \; $h(v)=F(v)-v$}}
\stepdown
\stepbox{5. INTEGRATE}{Both sides. One $+C$. \; $\int\frac{dx}{x}=\ln\lvert x\rvert$.}
\stepdown
\stepbox{6. BACK-SUBSTITUTE}{Replace $v$ with $\frac yx$. Free $y$ if you can.}
\end{rcol}

% ============================================================ LESSON 7
\lesson{Lesson 7 --- exact equations}
\idea{Find one function $F(x,y)$ whose partial derivatives are \pA{$M$} and \pB{$N$}. Then the whole equation says $dF=0$, so the answer is $F=C$.}

\subsection{Exact: build $F$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$M(x,y)$} & whatever multiplies $dx$ \\
\pB{$N(x,y)$} & whatever multiplies $dy$ \\
\pC{$g(y)$} & the ``constant'' of the $x$-integral: an unknown function of $y$ \\
\pE{$F(x,y)$} & you build it: $F_x=M$, \; $F_y=N$ \\
\end{ltab}

\subsubsection{Read the pieces}
\begin{qtab}
$(2xy+1)\,dx+(x^2+3y^2)\,dy=0$ & \pA{$M=2xy+1$}, \; \pB{$N=x^2+3y^2$} \\
$y'=-\dfrac xy$ & $y\,dy=-x\,dx$ $\to$ $x\,dx+y\,dy=0$: \; \pA{$M=x$}, \; \pB{$N=y$} \st\\
\end{qtab}

\subsubsection{Equivalences}
\begin{ltab}{This}{is the same as}
\pA{$M$} & $F_x$ \\
\pB{$N$} & $F_y$ \\
the test $M_y=N_x$ & mixed partials agree: $F_{xy}=F_{yx}$ \\
\end{ltab}

\trap{Integrate \pA{$M$} in $x$: $y$ is a constant. The ``$+C$'' is \pC{$g(y)$}, not a number.}
\trap{In step 5, every $x$ term must cancel. If one is left, a step above is wrong.}
\trap{The answer is $F=C$, not $F=0$. Implicit is fine.}
\end{lcol}
\begin{rcol}
\stepbox{1. FORM, READ THE PIECES}{$\slot{pcA}{$M$}\,dx+\slot{pcB}{$N$}\,dy=0$}
\stepdown
\stepbox{2. TEST}{$\dfrac{\partial\slot{pcA}{$M$}}{\partial y}\overset{?}{=}\dfrac{\partial\slot{pcB}{$N$}}{\partial x}$ \quad Equal $\to$ exact. Not equal $\to$ stop, or find $\mu$ (below).}
\stepdown
\stepbox{3. INTEGRATE $M$ IN $x$}{$\slot{pcE}{$F$}=\displaystyle\int\slot{pcA}{$M$}\,dx+\slot{pcC}{$g(y)$}$ \quad \why{$y$ held constant}}
\stepdown
\stepbox{4. DIFFERENTIATE $F$ IN $y$}{$\dfrac{\partial\slot{pcE}{$F$}}{\partial y}=\ldots+\slot{pcC}{$g'(y)$}$}
\stepdown
\stepbox{5. SET EQUAL TO $N$, SOLVE FOR $g'$}{$\ldots+\slot{pcC}{$g'(y)$}=\slot{pcB}{$N$}$ \quad \why{all $x$ terms cancel}}
\stepdown
\stepbox{6. INTEGRATE $g'$}{$\slot{pcC}{$g(y)$}=\displaystyle\int\slot{pcC}{$g'(y)$}\,dy$ \quad Put it back into step 3.}
\stepdown
\stepbox{7. ANSWER}{$\slot{pcE}{$F(x,y)$}=C$ \quad IC given: plug in $x_0$, $y_0$ for $C$.}
\end{rcol}

\subsection{Not exact: find an integrating factor $\mu$}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$M$}, \pB{$N$} & as above \\
\pA{$M_y$}, \pB{$N_x$} & from the failed test \\
\pD{$\mu$} & you make it: $\mu(y)$ or $\mu(x)$, one letter only \\
\end{ltab}
\term{Definition}: \pD{$\mu$} is an integrating factor if $\mu M\,dx+\mu N\,dy=0$ is exact.

\subsubsection{Which $\mu$?}
\begin{ltab}{If this has only one letter}{then}
$\dfrac{\pB{N_x}-\pA{M_y}}{\pA{M}}$ has only $y$ & \pD{$\mu(y)$} $=e^{\int(\text{that})\,dy}$ \st\\
$\dfrac{\pA{M_y}-\pB{N_x}}{\pB{N}}$ has only $x$ & \pD{$\mu(x)$} $=e^{\int(\text{that})\,dx}$ \st\\
\end{ltab}
\trap{$\mu(y)$ has no $x$, so $\frac{\partial}{\partial x}(\mu N)=\mu N_x$. Only the $y$-side needs the product rule.}
\trap{No $+C$ in $\mu$.}
\end{lcol}
\begin{rcol}
\stepbox{1. MULTIPLY}{$\slot{pcD}{$\mu$}\slot{pcA}{$M$}\,dx+\slot{pcD}{$\mu$}\slot{pcB}{$N$}\,dy=0$}
\stepdown
\stepbox{2. REQUIRE EXACT}{$\dfrac{\partial(\slot{pcD}{$\mu$}\slot{pcA}{$M$})}{\partial y}=\dfrac{\partial(\slot{pcD}{$\mu$}\slot{pcB}{$N$})}{\partial x}$}
\stepdown
\stepbox{3. EXPAND, FOR $\mu=\mu(y)$}{$\slot{pcD}{$\mu$}'\slot{pcA}{$M$}+\slot{pcD}{$\mu$}\slot{pcA}{$M_y$}=\slot{pcD}{$\mu$}\slot{pcB}{$N_x$}$ \quad \why{product rule on the left only}}
\stepdown
\stepbox{4. SEPARATE (LESSON 4)}{$\dfrac{\slot{pcD}{$\mu$}'}{\slot{pcD}{$\mu$}}=\dfrac{\slot{pcB}{$N_x$}-\slot{pcA}{$M_y$}}{\slot{pcA}{$M$}}$ \quad Must have only $y$. \\ $\slot{pcD}{$\mu$}=e^{\int(\ldots)\,dy}$}
\stepdown
\stepbox{5. NEW PIECES, REDO}{new \pA{$M$} $=\mu M$, \; new \pB{$N$} $=\mu N$. \; Do exact steps 2--7.}
\end{rcol}

% ============================================================ LESSON 8
\lesson{Lesson 8 --- autonomous equations}
\begin{lcol}
\idea{$\frac{dy}{dt}=f(y)$ has no $t$ on the right. This is the Lesson 2 ``no $x$'' case. You read the long-term behavior off a phase line, without solving.}

\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$f(y)$} & the right side. No $t$ in it \\
\pB{equilibria} & the roots of $f(y)=0$: constant solutions \\
\pD{$y_0$} & the IC $y(0)=y_0$ \\
\end{ltab}

\subsubsection{Classify an equilibrium}
\begin{ltab}{Arrows}{Type}
both point \keyres{toward} it & stable (asymptotically stable, sink) \\
both point \warn{away} & unstable (source) \\
one toward, one away & semistable \\
\end{ltab}
\begin{center}
\begin{tikzpicture}[>=Stealth, line width=0.7pt]
\foreach \x/\a/\b/\lab in {0/1/1/stable, 2.2/0/0/unstable, 4.4/1/0/semistable}{
  \draw[termHi] (\x,-1) -- (\x,1);
  \fill[titleHi] (\x,0) circle (2.2pt);
  \ifnum\a=1 \draw[->,keyHi] (\x,0.9) -- (\x,0.25); \else \draw[->,warnHi] (\x,0.25) -- (\x,0.9); \fi
  \ifnum\b=1 \draw[->,keyHi] (\x,-0.9) -- (\x,-0.25); \else \draw[->,warnHi] (\x,-0.25) -- (\x,-0.9); \fi
  \node[white,below] at (\x,-1) {\scriptsize \lab};
}
\end{tikzpicture}
\end{center}

\subsubsection{Sign $\to$ arrow}
\begin{ltab}{Sign of $f$}{Arrow}
$f>0$ & up ($y$ increases) \\
$f<0$ & down ($y$ decreases) \\
\end{ltab}

\trap{Never divide $f=0$ by $y$. You lose the equilibrium $y=0$.}
\trap{Test one $y$ \keyres{inside} each region, not at an equilibrium.}
\trap{A solution never crosses an equilibrium.}
\end{lcol}
\begin{rcol}
\stepbox{1. EQUILIBRIA}{Solve $\slot{pcA}{$f(y)$}=0$. Factor, set each factor to $0$. \\ List the \pB{equilibria} in order on a vertical line.}
\stepdown
\stepbox{2. SIGN CHART}{In each region between \pB{equilibria}, pick one $y$. Find the sign of $\slot{pcA}{$f$}(y)$.}
\stepdown
\stepbox{3. PHASE LINE}{Draw an arrow in each region: $+$ up, \; $-$ down.}
\stepdown
\stepbox{4. CLASSIFY}{Look at the arrows on both sides of each \pB{equilibrium}. Use the table on the left.}
\stepdown
\stepbox{5. LIMIT (NO SOLVING)}{Find the region of \pD{$y_0$}. Follow its arrow to the nearest \pB{equilibrium} in that direction. That is $\lim\limits_{t\to\infty}y(t)$. \\ No equilibrium in that direction: $\pm\infty$. \; \pD{$y_0$} on an equilibrium: it stays.}
\end{rcol}

% ============================================================ LESSON 9
\lesson{Lesson 9 --- applications}
\idea{Every application is the same chain: words $\to$ a DE $\to$ separable or linear $\to$ solve $\to$ fit the constants. Usually two constants: $C$ from the IC, and a rate constant $k$ from a second data point.}

\subsection{The recipe}
\begin{lcol}
\subsubsection{Words $\to$ math}
\begin{ltab}{Words}{Math}
``rate of change of $Q$'' & $\dfrac{dQ}{dt}$ \st\\
``proportional to'' & $k\,\cdot$ \\
``at a rate equal to $25\%$ of'' & $0.25\,\cdot$ \\
``decreases'', ``decays'', ``loses'' & a minus sign \\
``initially'' & $t=0$ \\
``6 months ago'' & pick $t=0$ as now or as then. Stay consistent \\
``of the remaining'' & of the current amount $Q$ \\
\end{ltab}
\trap{Write the units of $t$ down once. Every rate uses them.}
\end{lcol}
\begin{rcol}
\stepbox{1. TRANSLATE}{Words $\to$ a DE. Use the table on the left.}
\stepdown
\stepbox{2. CLASSIFY}{Separable (L4) or linear (L3)?}
\stepdown
\stepbox{3. SOLVE}{General solution with $C$ (and $k$).}
\stepdown
\stepbox{4. $C$ FROM THE IC}{Plug in $t=0$.}
\stepdown
\stepbox{5. $k$ FROM A SECOND DATA POINT}{Plug in $(t_1,\text{value}_1)$. Solve for $k$: usually a $\ln$.}
\stepdown
\stepbox{6. ANSWER THE QUESTION}{A value at a time: plug in $t$. \; A time: solve for $t$ with $\ln$.}
\end{rcol}

\subsection{Newton's law of cooling}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$T_m$} & the surrounding (room) temperature \\
\pB{$T_0$} & the temperature at $t=0$ \\
\pC{$k$} & the rate constant, $k>0$. Unknown \\
\pD{$(t_1,T_1)$} & the second reading \\
\end{ltab}
\trap{Subtract \pA{$T_m$} first. The ratio is $\frac{T_1-T_m}{T_0-T_m}$, not $\frac{T_1}{T_0}$.}
\trap{$T\to T_m$ as $t\to\infty$, from above or below.}
\end{lcol}
\begin{rcol}
\stepbox{1. DE}{$\dfrac{dT}{dt}=-\slot{pcC}{$k$}\big(T-\slot{pcA}{$T_m$}\big)$ \quad \why{separable and linear}}
\stepdown
\stepbox{2. SHAPE}{$T=\slot{pcA}{$T_m$}+\big(\slot{pcB}{$T_0$}-\slot{pcA}{$T_m$}\big)e^{-\slot{pcC}{$k$}t}$}
\stepdown
\stepbox{3. $k$ FROM THE READING}{$e^{-\slot{pcC}{$k$}\slot{pcD}{$t_1$}}=\dfrac{\slot{pcD}{$T_1$}-\slot{pcA}{$T_m$}}{\slot{pcB}{$T_0$}-\slot{pcA}{$T_m$}}$ \;$\Rightarrow$\; $\slot{pcC}{$k$}=-\dfrac{1}{\slot{pcD}{$t_1$}}\ln(\text{that ratio})$}
\stepdown
\stepbox{4. ANSWER}{$T$ at a time: plug in $t$. \; Time to reach $T$: $t=-\dfrac1k\ln\dfrac{T-T_m}{T_0-T_m}$.}
\end{rcol}

\subsection{Exponential growth and decay}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pB{$M_0$} & the amount at $t=0$ \\
\pC{$k$} & the rate. $k>0$ grows, $k<0$ decays \\
\pD{data} & a second amount $(t_1,M_1)$, or a half-life $T$ \\
\end{ltab}

\subsubsection{Which $k$?}
\begin{ltab}{Words}{\pC{$k$}}
``decays at $25\%$ of the remaining mass per hour'' & $k=-0.25$ directly \\
``loses $25\%$ each hour'' (the amount after $1$ h) & $e^{k}=0.75$, \; $k=\ln0.75$ \\
amount $M_1$ at $t_1$ & $k=\dfrac{\ln(M_1/M_0)}{t_1}$ \st\\
half-life $T$ & $\frac12=e^{kT}$, \; $k=-\dfrac{\ln2}{T}$ \st\\
\end{ltab}
\end{lcol}
\begin{rcol}
\stepbox{1. DE}{$\dfrac{dM}{dt}=\slot{pcC}{$k$}\,M$ \quad \why{separable}}
\stepdown
\stepbox{2. SHAPE}{$M=\slot{pcB}{$M_0$}\,e^{\slot{pcC}{$k$}t}$}
\stepdown
\stepbox{3. $k$ FROM THE DATA}{Use the ``Which $k$?'' table on the left.}
\stepdown
\stepbox{4. ANSWER}{$M$ at a time: plug in $t$. \; Time to reach $M$: $t=\dfrac{\ln(M/M_0)}{k}$.}
\end{rcol}

\subsection{Mixing (tank)}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
$Q(t)$ & the amount of salt. The unknown \\
\pA{$c_{\text{in}}$} & the concentration coming in. Pure water: $0$ \\
\pB{$r_{\text{in}}$}, \pC{$r_{\text{out}}$} & the flow in and the flow out (volume per time) \\
\pD{$V_0$}, \pD{$Q_0$} & the starting volume and amount \\
\pE{$\Delta$} & $r_{\text{in}}-r_{\text{out}}$, the change in volume per time \\
\end{ltab}

\subsubsection{Lesson 3 pieces}
\begin{ltab}{Piece}{Value}
$p(t)$ & $\dfrac{\pC{r_{\text{out}}}}{\pD{V_0}+\pE{\Delta}t}$ \st\\
$q(t)$ & $\pA{c_{\text{in}}}\,\pB{r_{\text{in}}}$ \\
$\mu$, \; $\pE{\Delta}=0$ & $e^{(\pC{r_{\text{out}}}/\pD{V_0})t}$ \\
$\mu$, \; $\pE{\Delta}\neq0$ & $(\pD{V_0}+\pE{\Delta}t)^{\pC{r_{\text{out}}}/\pE{\Delta}}$ \; \why{a power of $V(t)$} \\
\end{ltab}
\trap{Rate out uses the tank concentration $\frac QV$, not $c_{\text{in}}$.}
\trap{Concentration $=\frac QV$. If asked for concentration, divide at the end.}
\trap{Units: (amount/volume)(volume/time) $=$ amount/time.}
\end{lcol}
\begin{rcol}
\stepbox{1. VOLUME}{$V(t)=\slot{pcD}{$V_0$}+\big(\slot{pcB}{$r_{\text{in}}$}-\slot{pcC}{$r_{\text{out}}$}\big)t=\slot{pcD}{$V_0$}+\slot{pcE}{$\Delta$}t$}
\stepdown
\stepbox{2. DE: IN $-$ OUT}{$\dfrac{dQ}{dt}=\slot{pcA}{$c_{\text{in}}$}\,\slot{pcB}{$r_{\text{in}}$}-\dfrac{Q}{V(t)}\,\slot{pcC}{$r_{\text{out}}$}$}
\stepdown
\stepbox{3. STANDARD FORM (LINE 1)}{$Q'+\dfrac{\slot{pcC}{$r_{\text{out}}$}}{V(t)}\,Q=\slot{pcA}{$c_{\text{in}}$}\slot{pcB}{$r_{\text{in}}$}$ \quad Read $p$, $q$ (left table).}
\stepdown
\stepbox{4. BUILD AND CHECK $\mu$ (LINES 2--3)}{$\mu=e^{\int p\,dt}$. \; Use the left table. Check $\mu'=p\mu$.}
\stepdown
\stepbox{5. MULTIPLY, COLLAPSE (LINES 4--5)}{$(\mu Q)'=\mu\,\slot{pcA}{$c_{\text{in}}$}\slot{pcB}{$r_{\text{in}}$}$}
\stepdown
\stepbox{6. INTEGRATE (LINE 6)}{$\mu Q=\displaystyle\int\mu\,\slot{pcA}{$c_{\text{in}}$}\slot{pcB}{$r_{\text{in}}$}\,dt+C$}
\stepdown
\stepbox{7. DIVIDE (LINE 7)}{$Q=\dfrac1\mu\Big(\displaystyle\int\mu\,c_{\text{in}}r_{\text{in}}\,dt+C\Big)$}
\stepdown
\stepbox{8. $C$ FROM $Q_0$}{Plug in $t=0$, $Q=\slot{pcD}{$Q_0$}$.}
\end{rcol}

\subsection{Growth proportional to a power}
\begin{lcol}
\subsubsection{Pieces}
\begin{ltab}{Piece}{Where to find it}
\pA{$a$} & the power: ``proportional to $\sqrt W$'' gives $a=\frac12$ \\
\pC{$k$} & the unknown constant \\
\pD{two data points} & $(0,W_0)$ gives $C$, \; $(t_1,W_1)$ gives $k$ \\
\end{ltab}
\trap{$\int W^{-1/2}dW=2W^{1/2}$. Divide by $\frac12$.}
\trap{Find $C$ first from $t=0$. Then $k$.}
\end{lcol}
\begin{rcol}
\stepbox{1. DE}{$\dfrac{dW}{dt}=\slot{pcC}{$k$}\,W^{\slot{pcA}{$a$}}$ \quad \why{separable}}
\stepdown
\stepbox{2. SEPARATE}{$W^{-\slot{pcA}{$a$}}\,dW=\slot{pcC}{$k$}\,dt$}
\stepdown
\stepbox{3. INTEGRATE}{$\dfrac{W^{1-\slot{pcA}{$a$}}}{1-\slot{pcA}{$a$}}=\slot{pcC}{$k$}t+C$ \quad \why{$a=\frac12$: $2\sqrt W=kt+C$}}
\stepdown
\stepbox{4. $C$, THEN $k$}{Plug in \pD{$(0,W_0)$} for $C$. Then \pD{$(t_1,W_1)$} for $k$.}
\stepdown
\stepbox{5. FREE $W$}{$a=\frac12$: \; $W=\Big(\dfrac{kt+C}{2}\Big)^2$}
\end{rcol}

\makeatother
```
