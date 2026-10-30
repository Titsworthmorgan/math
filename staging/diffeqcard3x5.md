---
geometry:
  - paperwidth=3in
  - paperheight=5in
  - margin=0.06in
fontsize: 8pt
documentclass: extarticle
header-includes: |
  \usepackage{amsmath,amssymb}
  \usepackage{mathptmx}
  \usepackage{enumitem}
  \usepackage{array}
  \usepackage{tikz}
  \usetikzlibrary{arrows.meta}
  \usepackage{xcolor}
  \pagecolor{white}
  \color{black}
  \definecolor{keyHi}{HTML}{1E7B34}
  \definecolor{warnHi}{HTML}{B03A2E}
  \definecolor{termHi}{HTML}{2C4A63}
  \definecolor{titleHi}{HTML}{8A6100}
  \definecolor{numHi}{HTML}{098658}
  \definecolor{opHi}{HTML}{000000}
  \definecolor{funcHi}{HTML}{795E26}
  \definecolor{varHi}{HTML}{001080}
  \definecolor{delimHi}{HTML}{AF00DB}
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{0pt}
  \raggedright
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

% ---- card macros: light background, pieces darkened for white paper ----
\definecolor{pcA}{HTML}{D35400}
\definecolor{pcB}{HTML}{1E8449}
\definecolor{pcC}{HTML}{7D3C98}
\definecolor{pcD}{HTML}{1F6FB5}
\definecolor{pcE}{HTML}{A67C00}
\newcommand{\pA}[1]{\leavevmode{\syntaxonfalse\color{pcA}#1}}
\newcommand{\pB}[1]{\leavevmode{\syntaxonfalse\color{pcB}#1}}
\newcommand{\pC}[1]{\leavevmode{\syntaxonfalse\color{pcC}#1}}
\newcommand{\pD}[1]{\leavevmode{\syntaxonfalse\color{pcD}#1}}
\newcommand{\pE}[1]{\leavevmode{\syntaxonfalse\color{pcE}#1}}
% empty slot in a template: \slot{color}{what goes here}
\newcommand{\slot}[2]{{\setlength{\fboxsep}{0.5pt}\setlength{\fboxrule}{0.3pt}\fcolorbox{#1}{white}{\syntaxonfalse\color{#1}#2}}}
% method header bar
\newcommand{\hd}[1]{\par\vspace{1.2pt}\noindent{\setlength{\fboxsep}{0.7pt}\colorbox{termHi!14}{\makebox[\dimexpr\linewidth-2\fboxsep\relax][l]{\textbf{\color{termHi}#1}}}}\par\vspace{0.2pt}}
\newcommand{\sub}[1]{\textbf{\color{titleHi}#1}\ }
\newcommand{\tr}[1]{{\color{warnHi}\textbf{!}}\,#1}
\newcommand{\key}[1]{\textcolor{keyHi}{#1}}
\newenvironment{steps}{\begin{enumerate}[label=\textbf{\arabic*},leftmargin=5pt,labelsep=1.5pt,nosep,topsep=0pt]}{\end{enumerate}}
\newcommand{\mt}{\ \textbf{\textperiodcentered}\ }

\fontsize{6}{6.7}\selectfont
\setlength{\abovedisplayskip}{0pt}\setlength{\belowdisplayskip}{0pt}

\noindent{\fontsize{6.5}{7}\selectfont\textbf{\color{termHi}DIFF EQ --- SOLUTION STEPS}}\hfill \pA{$p$} \pB{$q$} \pC{$\mu$} \pD{$x_0,y_0$} \pE{$n$, $a(x)$}\par
\vspace{0.6pt}
\textbf{Read pieces first.} Std form: all $y$ left, divide every term by \pE{$a(x)$} (coef of $y'$). Then \pA{$p$} = coef of $y$ (sign kept), \pB{$q$} = right side. A piece goes in the slot of its color.\par
\sub{Which method?} $y'+py=q$ $\to$ L3 \mt $y'=g(x)h(y)$ $\to$ L4 \mt $y'+py=qy^n$ $\to$ Bern. \mt $y'=F(y/x)$ $\to$ homog. \mt $M\,dx+N\,dy=0$, $M_y=N_x$ $\to$ exact \mt $y'=f(y)$ $\to$ phase line. \mt Master idea: rearrange until each side is integrable.

% ------------------------------------------------ L3
\hd{L3 \; LINEAR --- SEVEN LINES}
\begin{steps}
\item \textbf{Std form}: $y'+\slot{pcA}{$p$}\,y=\slot{pcB}{$q$}$. \; Write \pA{$p=\ldots$}, \pB{$q=\ldots$}
\item \textbf{Build $\mu$}: $\slot{pcC}{$\mu$}=e^{\int\slot{pcA}{$p$}dx}$. Simplify ($e^{k\ln u}=u^k$). \key{No $+C$}
\item \textbf{Check}: differentiate $\slot{pcC}{$\mu$}'$ \; $=$ \; $\slot{pcA}{$p$}\slot{pcC}{$\mu$}$ computed separately. Must match
\item \textbf{Multiply}: $\slot{pcC}{$\mu$}y'+\slot{pcC}{$\mu$}\slot{pcA}{$p$}y=\slot{pcC}{$\mu$}\slot{pcB}{$q$}$ \; (three products)
\item \textbf{Collapse}: $(\slot{pcC}{$\mu$}y)'=\slot{pcC}{$\mu$}\slot{pcB}{$q$}$ \; since $(\mu y)'=\mu'y+\mu y'=\mu py+\mu y'$
\item \textbf{Integrate}: $\slot{pcC}{$\mu$}\,y=\int\slot{pcC}{$\mu$}\slot{pcB}{$q$}\,dx+C$ \; (left is $\mu\cdot y$, not $\mu'$)
\item \textbf{Divide}: $y=\big(\int\slot{pcC}{$\mu$}\slot{pcB}{$q$}\,dx+C\big)\big/\slot{pcC}{$\mu$}$ \; ($C\to C/\mu$) \; \textbf{IC}: plug \pD{$x_0,y_0$}, solve $C$
\end{steps}
\sub{Common $\mu$} \pA{$k$}$\to$\pC{$e^{kx}$} \mt \pA{$k/x$}$\to$\pC{$x^k$} \mt \pA{$-1/x$}$\to$\pC{$1/x$} \mt \pA{$2x$}$\to$\pC{$e^{x^2}$} \mt \pA{$\tan x$}$\to$\pC{$\sec x$} \mt \pA{$-\tan x$}$\to$\pC{$\cos x$}\par
\tr{$\int\frac kx=k\ln x$ not $\ln\frac kx$} \mt \tr{$\int e^{kx}=\frac1ke^{kx}$} \mt \tr{$\int\tan x=\ln|\sec x|$} \mt \tr{$1/e^{-kx}=e^{kx}$, $1/\sec=\cos$}

% ------------------------------------------------ L6 Bernoulli
\hd{L6 \; BERNOULLI \; $y'+\pA{p}\,y=\pB{q}\,y^{\pE{n}}$, \; $n\neq0,1$}
\begin{steps}
\item \textbf{Choose $v$}: $v=y^{1-\slot{pcE}{$n$}}$, \; $v'=(1-\slot{pcE}{$n$})\,y^{-n}y'$ \; \key{keep $(1-n)$, often negative}
\item \textbf{Divide every term by $y^n$}: $y^{-n}y'+\slot{pcA}{$p$}\,y^{1-n}=\slot{pcB}{$q$}$
\item \textbf{Replace}: $y^{-n}y'\to\frac{v'}{1-n}$, $y^{1-n}\to v$: \; $\frac{v'}{1-n}+\slot{pcA}{$p$}\,v=\slot{pcB}{$q$}$
\item \textbf{Multiply by $(1-n)$}: $v'+\slot{pcA}{$(1-n)p$}\,v=\slot{pcB}{$(1-n)q$}$ \; = new \pA{$p$}, new \pB{$q$}
\item \textbf{Seven lines on $v$}: \\
\hspace*{3pt}L1 $v'+\slot{pcA}{new $p$}\,v=\slot{pcB}{new $q$}$ \quad L2 $\slot{pcC}{$\mu$}=e^{\int \slot{pcA}{new $p$}\,dx}$, no $+C$ \\
\hspace*{3pt}L3 check $\slot{pcC}{$\mu$}'=\slot{pcA}{new $p$}\,\slot{pcC}{$\mu$}$ \quad L4 $\slot{pcC}{$\mu$} v'+\slot{pcC}{$\mu$} \slot{pcA}{new $p$} v=\slot{pcC}{$\mu$} \slot{pcB}{new $q$}$ \\
\hspace*{3pt}L5 $(\slot{pcC}{$\mu$} v)'=\slot{pcC}{$\mu$} \slot{pcB}{new $q$}$ \quad L6 $\slot{pcC}{$\mu$} v=\int \slot{pcC}{$\mu$} \slot{pcB}{new $q$}\,dx+C$ \\
\hspace*{3pt}L7 $v=\big(\int \slot{pcC}{$\mu$} \slot{pcB}{new $q$}\,dx+C\big)\big/\slot{pcC}{$\mu$}$
\item \textbf{Back-sub}: $y=v^{1/(1-n)}$ (whole thing, $C$ inside). IC on $y$.
\end{steps}

% ------------------------------------------------ L6 homogeneous
\hd{L6 \; HOMOGENEOUS \; $y'=\pA{F}(y/x)$}
Get \pA{$F$}: divide top and bottom by the highest power of $x$, then $\frac yx\to v$.
\begin{steps}
\item $y=vx$, \; $y'=v+xv'$ \key{(product rule, $y'\neq v'$)}
\item $v+xv'=\slot{pcA}{$F(v)$}$ $\Rightarrow$ $xv'=\slot{pcA}{$F(v)$}-v$
\item Separate (L4): $\dfrac{dv}{\slot{pcA}{$F(v)$}-v}=\dfrac{dx}{x}$ \; integrate, one $+C$ \; back-sub $v=y/x$
\end{steps}

% ------------------------------------------------ L7
\hd{L7 \; EXACT \; $\pA{M}\,dx+\pB{N}\,dy=0$}
\begin{steps}
\item \textbf{Test}: $\partial\slot{pcA}{$M$}/\partial y\overset?=\partial\slot{pcB}{$N$}/\partial x$. Equal $\to$ exact
\item \textbf{Integrate $M$ in $x$} ($y$ const): $F=\int\slot{pcA}{$M$}\,dx+\slot{pcC}{$g(y)$}$
\item \textbf{$\partial F/\partial y$, set $=N$}: solve $\slot{pcC}{$g'(y)$}$. \key{All $x$ terms cancel} or a step is wrong
\item \textbf{Integrate} $g'$ $\to$ $\slot{pcC}{$g$}$, put back. \textbf{Answer} $F(x,y)=C$ (implicit ok). IC $\to C$
\end{steps}
\sub{Not exact} \; $\frac{N_x-M_y}{M}$ only $y$ $\to$ \pD{$\mu(y)$}$=e^{\int(\cdot)dy}$ \mt $\frac{M_y-N_x}{N}$ only $x$ $\to$ \pD{$\mu(x)$}$=e^{\int(\cdot)dx}$. \; Why: $(\mu M)_y=(\mu N)_x$ $\to$ $\mu'M+\mu M_y=\mu N_x$. Then new $M=\mu M$, $N=\mu N$; redo 1--4.\par
\tr{$M=F_x$, $N=F_y$; test = $F_{xy}=F_{yx}$} \mt \tr{$y'=-\frac xy$ $\to$ $x\,dx+y\,dy=0$}

% ------------------------------------------------ L4
\newpage
\hd{L4 \; SEPARABLE \; $y'=\pA{g(x)}\,\pB{h(y)}$}
\begin{steps}
\item $\dfrac{dy}{\slot{pcB}{$h(y)$}}=\slot{pcA}{$g(x)$}\,dx$ \; (won't factor $\to$ not separable)
\item Integrate both, \key{one $+C$} \quad \textbf{3} Free $y$ \quad \textbf{4} IC \quad \textbf{5} Lost sol'ns: $\slot{pcB}{$h(y)$}=0$
\end{steps}
\sub{Free $y$} $\ln|y|$$\to$$e^{(\cdot)}$, $e^{a+C}=Ce^a$ \mt $y^2$$\to$$\pm\sqrt{}$ (IC picks sign) \mt $\frac1y$$\to$ reciprocal first \mt $\tan^{-1}y$$\to$$\tan$ \mt $\int y^{-n}dy=\frac{y^{1-n}}{1-n}$, $n\neq1$

% ------------------------------------------------ L9
\hd{L9 \; APPLICATIONS}
Words $\to$ DE $\to$ sep./linear $\to$ solve $\to$ $C$ from $t=0$ $\to$ $k$ from 2nd data point. \; ``rate of change''$\to\frac{d}{dt}$ \mt ``prop. to''$\to k\cdot$ \mt ``$25\%$ of''$\to0.25\cdot$ \mt ``initially''$\to t=0$ \mt pick $t=0$ once, stay consistent\par
\sub{Cooling} $T'=-k(T-\pA{T_m})$ $\to$ $T=\pA{T_m}+(\pB{T_0}-\pA{T_m})e^{-kt}$. \; $k$: $e^{-kt_1}=\frac{T_1-T_m}{T_0-T_m}$, $k=-\frac1{t_1}\ln(\cdot)$. \tr{subtract $T_m$ first}\par
\sub{Growth/decay} $M'=kM$ $\to$ $M=\pB{M_0}e^{kt}$. ``at $25\%$ of remaining'' $k=-0.25$ \mt ``loses $25\%$/hr'' $k=\ln0.75$ \mt half-life $T$: $k=-\frac{\ln2}{T}$ \mt $t=\frac{\ln(M/M_0)}{k}$\par
\sub{Mixing} $V=\pD{V_0}+\pE{\Delta}t$, \; $\pE{\Delta}=r_{in}-r_{out}$. \; $Q'=c_{in}r_{in}-\tfrac QV r_{out}$ (in $-$ out) $\to$ L3: \pA{$p=\frac{r_{out}}{V_0+\Delta t}$}, \pB{$q=c_{in}r_{in}$}. \; \pC{$\mu$}$=(V_0+\Delta t)^{r_{out}/\Delta}$; $\Delta=0$: $e^{r_{out}t/V_0}$. \; $C$ from $Q_0$. Conc $=Q/V$. Pure water: $c_{in}=0$\par
\sub{Power} $W'=kW^a$ $\to$ $\frac{W^{1-a}}{1-a}=kt+C$; \; $\sqrt W$: $2\sqrt W=kt+C$. $C$ from $t=0$, then $k$.

% ------------------------------------------------ L5
\hd{L5 \; EXISTENCE \& UNIQUENESS}
\sub{Linear} std form $\to$ list bad $x$ of \pA{$p$}, \pB{$q$} ($\div0$; $\ln(\le0)$; $\sqrt{<0}$; $\tan$ at $\frac\pi2+n\pi$) $\to$ open interval between nearest bad $x$ below and above \pD{$x_0$}. \key{$y_0$ irrelevant.}\par
\sub{Nonlinear} $y'=f$. \textbf{T1} $f(\pD{x_0,y_0})$ real \& $f$ defined on open rectangle around it. \textbf{T2} $\partial f/\partial y$ at the point real. Both $\to$ \key{unique} \mt T1 only $\to$ exists, not guaranteed unique \mt T1 fails $\to$ says nothing. \tr{changing $y_0$ can change verdict}

% ------------------------------------------------ L8
\hd{L8 \; AUTONOMOUS \; $y'=f(y)$ \; (phase line)}
\begin{steps}
\item Equilibria: $f(y)=0$, factor, \key{never divide by $y$}
\item Test one $y$ per region: $f>0$ up, $f<0$ down
\item Both arrows toward: \key{stable} \mt both away: \textcolor{warnHi}{unstable} \mt one each: semistable
\item Limit: from $y_0$ follow the arrow to the nearest equilibrium; none $\to\pm\infty$
\end{steps}

% ------------------------------------------------ L1 / L2
\hd{L1 / L2 \; CLASSIFY, VERIFY, FIELDS}
Order = highest derivative. \mt Linear: $y,y',\ldots$ alone, power 1, coef in $x$ only; breaks: $y^2$, $yy'$, $(y')^3$, $\sin y$, $e^y$. \mt Homog. (2.1): $q$ is the zero function. \mt \textbf{Verify}: differentiate given $y$ (never solve DE for $y'$), plug into left side, match right. \mt Slope at point $=f(\pD{x_0,y_0})$: $+$ rises, $-$ falls. \mt Zero-slope: factor $f=0$. No $x$ in $f$: horizontal flat lines, solutions never cross.

% ------------------------------------------------ rules
\hd{RULES}
$e^{k\ln u}=u^k$ \mt $e^{a+b}=e^ae^b$, $e^{ab}$ no split \mt $\int\frac{dx}{ax+b}=\frac1a\ln|ax+b|$ \mt $\int\sin ax=-\frac{\cos ax}{a}$ \mt $\int\cos ax=\frac{\sin ax}{a}$ \mt $\int\frac{dy}{1+y^2}=\tan^{-1}y$ \mt parts: $\int u\,dv=uv-\int v\,du$ \mt $(\mu y)'=\mu'y+\mu y'$

\makeatother
```
