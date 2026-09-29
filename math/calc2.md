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


\section{Calculus II — Integration}

\begin{multicols}{2}

\filbreak \subsection{antiderivatives (indefinite integrals)}
$\int f(x)\,dx = F(x) + C$ means $F'(x) = f(x)$. $+C$ accounts for all constant shifts.

\filbreak \subsubsection{Antiderivative Rules}
\begin{itemize}
\item \term{Power}: $\int x^n\,dx = \frac{x^{n+1}}{n+1} + C$, $n \neq -1$
\item \term{Constant Mult.}: $\int cf\,dx = c\int f\,dx$
\item \term{Sum/Diff}: $\int[f \pm g]\,dx = \int f\,dx \pm \int g\,dx$
\item \term{Reverse Chain}: $\int f(g(x))g'(x)\,dx = \int f(u)\,du$, \; $u = g(x)$
\end{itemize}

\filbreak \subsubsection{Common Antiderivatives}
\begin{itemize}
\item $\int 0\,dx = C$, \; $\int 1\,dx = x + C$
\item $\int x^n\,dx = \frac{x^{n+1}}{n+1} + C$ \; ($n \neq -1$)
\item \keyres{\textbf{ln-flag}}: $\int \frac{1}{x}\,dx = \int x^{-1}\,dx = \ln|x| + C$. \; Any time you see $u^{-1}$ (power $=-1$), it's a \keyres{$\ln$}, \emph{never} the power rule (that divides by $0$).
\item $\int e^x\,dx = e^x + C$, \; $\int a^x\,dx = \frac{a^x}{\ln(a)} + C$
\item $\int \sin(x)\,dx = -\cos(x) + C$
\item $\int \cos(x)\,dx = \sin(x) + C$
\item $\int \sec^2(x)\,dx = \tan(x) + C$
\item $\int \csc^2(x)\,dx = -\cot(x) + C$
\item $\int \sec(x)\tan(x)\,dx = \sec(x) + C$
\item $\int \csc(x)\cot(x)\,dx = -\csc(x) + C$
\item $\int \sec(x)\,dx = \ln|\sec x + \tan x| + C$
\item $\int \frac{1}{\sqrt{1-x^2}}\,dx = \arcsin(x) + C$
\item $\int \frac{1}{1+x^2}\,dx = \arctan(x) + C$
\end{itemize}

\filbreak \subsubsection{Inside a constant ($k$) — the $\frac{1}{k}$ rule}
When the inside is $kx$ instead of $x$, divide by the inside's derivative $k$ (mini u-sub):
\begin{itemize}
\item $\int e^{kx}\,dx = \frac{1}{k}e^{kx} + C$
\item $\int \cos(kx)\,dx = \frac{1}{k}\sin(kx) + C$
\item $\int \sin(kx)\,dx = -\frac{1}{k}\cos(kx) + C$
\end{itemize}
\keyres{Any \emph{linear} inside $kx+b$ works the same} — the shift changes nothing: $\int e^{3x-1}dx=\tfrac13e^{3x-1}+C$; \; $\int(2x+5)^7dx=\tfrac{(2x+5)^8}{16}+C$; \; $\int\frac{dx}{4x+3}=\tfrac14\ln|4x+3|+C$ \emph{\scriptsize(the ln-flag wearing its $\tfrac1k$)}.

\filbreak \subsubsection{Arctan / arcsin spotting}
A lone constant $+ x^2$ in a denominator (no $x$ in the numerator) is an \keyres{$\arctan$}; a constant $- x^2$ under a root is an \keyres{$\arcsin$}. General forms:
$$\int \frac{1}{a^2+x^2}\,dx = \frac{1}{a}\arctan\!\Big(\frac{x}{a}\Big) + C \qquad \int \frac{1}{\sqrt{a^2-x^2}}\,dx = \arcsin\!\Big(\frac{x}{a}\Big) + C$$
\filbreak \subsubsection{Worked: arctan — $\int\frac{1}{4+x^2}\,dx$}
\stepbox{1. MATCH THE FORM}{constant $+\,x^2$, no $x$ upstairs: arctan. \; $a^2=4\Rightarrow a=2$}
\stepdown
\stepbox{2. APPLY — WITH THE $\frac1a$}{$\keyres{\tfrac12\arctan\!\big(\tfrac{x}{2}\big)+C}$ \; \emph{\scriptsize(\warn{the $\frac1a$ out front is the most common miss}; $a=1$ gives the plain $\arctan x$)}}

\filbreak \subsubsection{Worked: arcsin twin — $\int\frac{1}{\sqrt{9-x^2}}\,dx$}
\stepbox{1. MATCH THE FORM}{constant $-\,x^2$ under a root: arcsin. \; $a^2=9\Rightarrow a=3$}
\stepdown
\stepbox{2. APPLY — NO $\frac1a$ THIS TIME}{$\keyres{\arcsin\!\big(\tfrac{x}{3}\big)+C}$ \; \emph{\scriptsize(arctan keeps a $\frac1a$, arcsin doesn't — the root supplies it)}}

\filbreak \subsection{riemann sums}
Partition $[a,b]$ into $n$ equal subintervals of width $\Delta x = \frac{b-a}{n}$. Pick $x_i^*$ in each:

$\text{Area} \approx \sum_{i=1}^{n} f(x_i^*) \cdot \Delta x$

\filbreak \subsubsection{Sample Point Choices}
\begin{itemize}
\item \term{Left} $L_n$: $x_i = a + i\Delta x$, $i = 0, \ldots, n-1$
\item \term{Right} $R_n$: $x_i = a + i\Delta x$, $i = 1, \ldots, n$
\item \term{Midpoint} $M_n$: $x_i = a + (i - \tfrac{1}{2})\Delta x$
\item \term{Trapezoidal}: $T_n = \frac{L_n + R_n}{2}$
\end{itemize}

\filbreak \subsubsection{Summation Formulas}
\begin{itemize}
\item $\sum_{i=1}^n c = cn$, \; $\sum[ca_i] = c\sum a_i$
\item $\sum_{i=1}^n i = \frac{n(n+1)}{2}$
\item $\sum_{i=1}^n i^2 = \frac{n(n+1)(2n+1)}{6}$
\item $\sum_{i=1}^n i^3 = \left[\frac{n(n+1)}{2}\right]^2$
\item $\sum[a_i \pm b_i] = \sum a_i \pm \sum b_i$
\end{itemize}
\term{Example}: $\sum_{i=1}^{10}(i^2+3i)=\sum i^2+3\sum i=385+3(55)=\keyres{550}$ — split, pull constants, plug the closed forms.

\begin{center}
\begin{tikzpicture}
\begin{axis}[
axis lines = middle,
axis line style={white!45},
xmin=-0.3, xmax=4.5,
ymin=-0.3, ymax=5.2,
xtick={0,2,4},
ytick={0,2,4},
tick style={white!45},
tick label style={text=white!70, font=\tiny},
width=7cm, height=4.4cm,
samples=100,
title style={font=\scriptsize, text=white},
title={$L_4$ for $f(x)=0.3x^2+1$ on $[0,4]$},
]
\addplot[draw=uHi, thick, fill=uHi, fill opacity=0.22] coordinates {(0,0)(0,1)(1,1)(1,0)} --cycle;
\addplot[draw=uHi, thick, fill=uHi, fill opacity=0.22] coordinates {(1,0)(1,1.3)(2,1.3)(2,0)} --cycle;
\addplot[draw=uHi, thick, fill=uHi, fill opacity=0.22] coordinates {(2,0)(2,2.2)(3,2.2)(3,0)} --cycle;
\addplot[draw=uHi, thick, fill=uHi, fill opacity=0.22] coordinates {(3,0)(3,3.7)(4,3.7)(4,0)} --cycle;
\addplot[duHi, very thick, domain=0:4] {0.3*x*x + 1};
\end{axis}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: the drawn $L_4$, computed — then $R_4$, $M_4$}
\stepbox{1. WIDTH \& SAMPLE HEIGHTS}{$f(x)=0.3x^2+1$, \; $\Delta x=\tfrac{4-0}{4}=1$; \; left heights: $f(0)=1$, $f(1)=1.3$, $f(2)=2.2$, $f(3)=3.7$}
\stepdown
\stepbox{2. SUM $\times$ WIDTH}{$L_4=(1+1.3+2.2+3.7)(1)=\keyres{8.2}$}
\stepdown
\stepbox{3. RIGHT SAMPLES — DROP $f(0)$, ADD $f(4)$}{$f(4)=0.3(16)+1=5.8$: \quad $R_4=(1.3+2.2+3.7+5.8)(1)=\keyres{13}$}
\stepdown
\stepbox{4. MIDPOINT SAMPLES $x=0.5,1.5,2.5,3.5$}{$f=1.075,\ 1.675,\ 2.875,\ 4.675$ \; \emph{\scriptsize(for example, $f(0.5)=0.3(0.25)+1$)}: \quad $M_4=(1.075+1.675+2.875+4.675)(1)=\keyres{10.3}$}
\stepdown
\stepbox{5. OVER OR UNDER?}{exact: $\int_0^4(0.3x^2+1)dx=\big[0.1x^3+x\big]_0^4=(6.4+4)-0=10.4$: \; $f$ increasing $\Rightarrow$ \keyres{$L$ under, $R$ over} — always; $M$ lands closest}

\filbreak \subsection{sigma to integral}
$\int_a^b f(x)\,dx = \lim_{n \to \infty} \sum_{i=1}^n f(x_i^*)\Delta x$

$\Sigma \to \int$, \; $\Delta x \to dx$, \; $x_i^* \to x$. Bounds carry over.

\filbreak \subsubsection{Worked: evaluate $\int_0^2x^2\,dx$ from the definition}
\stepbox{1. BUILD THE RIGHT SUM}{$\Delta x=\tfrac2n$, \; $x_i=\tfrac{2i}{n}$: \quad $\displaystyle\sum_{i=1}^n\Big(\tfrac{2i}{n}\Big)^2\tfrac2n=\sum_{i=1}^n\frac{4i^2}{n^2}\cdot\frac2n=\frac{8}{n^3}\sum_{i=1}^n i^2$ \; \emph{\scriptsize(constants slide out of the $\Sigma$)}}
\stepdown
\stepbox{2. CLOSED FORM}{$\dfrac{8}{n^3}\cdot\dfrac{n(n+1)(2n+1)}{6}=\dfrac{8(n+1)(2n+1)}{6n^2}$}
\stepdown
\stepbox{3. LIMIT}{$n\to\infty$: leading terms $\dfrac{8\cdot2n^2}{6n^2}=\keyres{\dfrac83}$ \; \emph{\scriptsize(FTC agrees: $\frac{x^3}{3}\big|_0^2=\frac83$)}}

\filbreak \subsubsection{Worked: reverse — recognize the integral}
$\displaystyle\lim_{n\to\infty}\sum_{i=1}^n\Big(1+\tfrac{2i}{n}\Big)^3\tfrac2n$: \; read off $\Delta x=\tfrac2n\Rightarrow b-a=2$; \; $x_i=1+\tfrac{2i}{n}\Rightarrow a=1$; \; the function wraps $x_i$ cubed $\Rightarrow$ $\keyres{\int_1^3x^3\,dx}$.

\filbreak \subsection{definite integral}
Net signed area between $y = f(x)$ and x-axis on $[a,b]$. Below x-axis contributes negatively.

\begin{center}
\begin{tikzpicture}
\begin{axis}[
axis lines=middle, axis line style={white!45},
xmin=-0.4, xmax=4.4, ymin=-1.5, ymax=1.5,
xtick=\empty, ytick=\empty, clip=false,
width=6.6cm, height=3.6cm,
]
% positive lobe (green)
\addplot[name path=fp, draw=none, domain=0:3.1416, samples=80]{1.15*sin(deg(x))};
\addplot[name path=axp, draw=none, domain=0:3.1416, samples=2]{0};
\addplot[keyHi, fill opacity=0.32] fill between[of=fp and axp];
% negative lobe (terracotta)
\addplot[name path=fn, draw=none, domain=3.1416:4.0, samples=50]{1.15*sin(deg(x))};
\addplot[name path=axn, draw=none, domain=3.1416:4.0, samples=2]{0};
\addplot[warnHi, fill opacity=0.32] fill between[of=fn and axn];
% curve on top
\addplot[termHi, very thick, domain=-0.2:4.35, samples=100]{1.15*sin(deg(x))};
\node[keyHi] at (axis cs:1.57,0.5){$+$};
\node[warnHi] at (axis cs:3.62,-0.28){$-$};
\node[white!70, font=\tiny, anchor=north east] at (axis cs:0,-0.04){$a$};
\node[white!70, font=\tiny, anchor=north] at (axis cs:4.0,-0.04){$b$};
\end{axis}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Properties}
\begin{itemize}
\item $\int_a^a f\,dx = 0$, \; $\int_b^a f\,dx = -\int_a^b f\,dx$
\item $\int_a^b c\,dx = c(b-a)$
\item $\int_a^b cf\,dx = c\int_a^b f\,dx$
\item $\int_a^b[f \pm g]\,dx = \int_a^b f \pm \int_a^b g$
\item $\int_a^b f\,dx = \int_a^c f\,dx + \int_c^b f\,dx$
\item $f \geq 0 \Rightarrow \int_a^b f\,dx \geq 0$
\item $f \geq g \Rightarrow \int_a^b f \geq \int_a^b g$
\end{itemize}
\term{Example}: given $\int_0^5f=10$ and $\int_0^3f=4$: \; $\int_3^5f=10-4=\keyres{6}$ (additivity), and $\int_5^3f=\keyres{-6}$ (reversal).

\filbreak \subsection{fundamental theorem of calculus}

\subsubsection{FTC Part 1 (derivative of an integral)}
If $f$ continuous on $[a,b]$, $F(x) = \int_a^x f(t)\,dt$ is differentiable:

$F'(x) = \frac{d}{dx}\int_a^x f(t)\,dt = f(x)$

With chain (variable upper bound):

$\frac{d}{dx}\int_a^{g(x)} f(t)\,dt = f(g(x)) \cdot g'(x)$

Both bounds variable:

$\frac{d}{dx}\int_{h(x)}^{g(x)} f(t)\,dt = f(g(x))g'(x) - f(h(x))h'(x)$

\filbreak \subsubsection{Worked: all three variants on $f(t)=\cos(t^2)$}
\stepbox{1. PLAIN}{$\frac{d}{dx}\int_1^x\cos(t^2)\,dt=\keyres{\cos(x^2)}$ \; \emph{\scriptsize(stamp $x$ in for $t$ — no integration happens)}}
\stepdown
\stepbox{2. CHAIN BOUND}{$\frac{d}{dx}\int_0^{x^3}\cos(t^2)\,dt=\cos\big((x^3)^2\big)\cdot3x^2=\keyres{3x^2\cos(x^6)}$}
\stepdown
\stepbox{3. VARIABLE \emph{LOWER} BOUND — SIGN FLIP}{$\frac{d}{dx}\int_x^5\cos(t^2)\,dt=\frac{d}{dx}\Big[-\!\int_5^x\Big]=\keyres{-\cos(x^2)}$ \; \emph{\scriptsize(the most-missed variant)}}

\filbreak \subsubsection{FTC Part 2 (evaluation)}
If $f$ continuous and $F$ any antiderivative of $f$:

$\int_a^b f(x)\,dx = F(b) - F(a) = F(x)\big|_a^b$

\term{Example}: $\int_1^4 3\sqrt x\,dx=3\cdot\tfrac23x^{3/2}\big|_1^4=2(8-1)=\keyres{14}$.

\filbreak \subsection{Absolute value integrals}
Split at roots of the inside, then determine sign on each piece.

$|f(t)| = \begin{cases} f(t) & f(t) \geq 0 \\ -f(t) & f(t) < 0 \end{cases}$

\filbreak \subsubsection{Worked: $\int_{-2}^{4}|t^2-2t-3|\,dt$}
\stepbox{1. ROOTS OF THE INSIDE}{$(t-3)(t+1)=0 \Rightarrow t=-1,\,3$ — both inside $[-2,4]$}
\stepdown
\stepbox{2. SPLIT \& TEST A POINT PER PIECE}{$t=-1.5\to+$, \quad $t=0\to-$, \quad $t=3.5\to+$ \;$\Rightarrow$\; signs $+\,-\,+$}
\stepdown
\stepbox{3. FLIP THE NEGATIVE PIECE}{$\displaystyle\int_{-2}^{-1}\!f - \int_{-1}^{3}\!f + \int_{3}^{4}\!f$, \quad $f=t^2-2t-3$}
\stepdown
\stepbox{4. EVALUATE WITH $F=\frac{t^3}{3}-t^2-3t$}{$\big[F\big]_{-2}^{-1}=\tfrac53-\big({-}\tfrac23\big)=\tfrac73$; \quad $-\big[F\big]_{-1}^{3}=-\big({-}9-\tfrac53\big)=\tfrac{32}{3}$; \quad $\big[F\big]_{3}^{4}=-\tfrac{20}{3}-(-9)=\tfrac73$}
\stepdown
\stepbox{5. ADD}{$\tfrac73+\tfrac{32}{3}+\tfrac73=\keyres{\tfrac{46}{3}}$}
\par\vspace{2pt}
\term{Tip:} Upward parabolas give $+\,-\,+$ across both roots. Downward give $-\,+\,-$.

\filbreak \subsection{u-substitution}
Reverses the chain rule. Pick the "inside" function as $u$; its derivative should appear (up to a constant) elsewhere in the integrand.

\filbreak \subsubsection{Indefinite integral steps}
\begin{enumerate}
\item \term{Pick} $u = g(x)$ (usually the inside of a composition, or whatever has its derivative present).
\item \term{Differentiate}: $\frac{du}{dx} = g'(x)$, so $du = g'(x)\,dx$.
\item \term{Solve for $dx$}: $dx = \frac{du}{g'(x)}$ (or rearrange to substitute directly).
\item \term{Substitute}: replace every $x$-piece with a $u$-piece. The integral should be entirely in $u$.
\item \term{Integrate} in $u$.
\item \term{Back-substitute}: replace $u$ with $g(x)$. Add $+C$.
\end{enumerate}

\filbreak \subsubsection{General form}
$\int f(g(x)) \cdot g'(x)\,dx = \int f(u)\,du = F(u) + C = F(g(x)) + C$

\filbreak \subsubsection{Definite integral: change the bounds}
\begin{enumerate}
\item Pick $u = g(x)$, find $du$.
\item \term{Convert bounds}: new lower $= g(a)$, new upper $= g(b)$.
\item Integrate in $u$ and evaluate at new bounds — \emph{no back-substitution needed}.
\end{enumerate}
$\int_a^b f(g(x)) \cdot g'(x)\,dx = \int_{g(a)}^{g(b)} f(u)\,du$

\term{Color key:} \ubox{u}~$=$ the $u$-piece (cyan), \quad \dubox{du}~$=$ the $du$-piece (orange). Find both in the original, then swap them across.

\filbreak \subsubsection{Example (indefinite): $\int 2x\cos(x^2)\,dx$}
Spot the \ubox{inside} and its \dubox{derivative}, then walk each step down its own box:
\par\vspace{2pt}
$\displaystyle\int \dubox{2x}\,\cos(\ubox{x^2})\,\dubox{dx}$
\par\vspace{2pt}
\stepbox{1. PICK u}{$\ubox{u}=\ubox{x^2}$ \; \emph{\scriptsize(the inside of $\cos$)}}
\stepdown
\stepbox{2. DIFFERENTIATE}{$\dubox{du}=\dubox{2x\,dx}$ \; \emph{\scriptsize(already sitting in the integrand)}}
\stepdown
\stepbox{3. SUBSTITUTE}{\ubox{x^2}$\,\to\,$\ubox{u},\;\; \dubox{2x\,dx}$\,\to\,$\dubox{du}:\quad $\displaystyle\int \cos(\ubox{u})\,\dubox{du}$}
\stepdown
\stepbox{4. INTEGRATE in u}{$\displaystyle\int \cos(\ubox{u})\,\dubox{du}=\sin(\ubox{u})+C$}
\stepdown
\stepbox{5. BACK-SUB}{$\ubox{u}\,\to\,\ubox{x^2}:\quad \keyres{\sin(x^2)+C}$}

\filbreak \subsubsection{Example (definite): $\int_0^2 x\,e^{x^2}\,dx$}
Same swap, but \emph{convert the bounds} instead of back-substituting:
\par\vspace{2pt}
$\displaystyle\int_{0}^{2} \dubox{x}\,e^{\ubox{x^2}}\,\dubox{dx}$
\par\vspace{2pt}
\stepbox{1. PICK u}{$\ubox{u}=\ubox{x^2}$}
\stepdown
\stepbox{2. DIFFERENTIATE}{$\dubox{du}=\dubox{2x\,dx}\;\Rightarrow\; \dubox{x\,dx}=\tfrac12\dubox{du}$ \; \emph{\scriptsize(off by a constant)}}
\stepdown
\stepbox{3. CONVERT BOUNDS}{$x{=}0\,\to\,\ubox{u}{=}0,\quad x{=}2\,\to\,\ubox{u}{=}4$}
\stepdown
\stepbox{4. INTEGRATE \& EVALUATE}{$\displaystyle\tfrac12\!\int_{0}^{4}\! e^{\ubox{u}}\,\dubox{du}=\tfrac12 e^{\ubox{u}}\Big|_{0}^{4}=\keyres{\tfrac12(e^4-1)}$}

\par\vspace{2pt}\emph{No back-substitution} once bounds are converted — evaluate straight in $u$ at the new bounds.

\filbreak \subsubsection{Worked (ln flavor): $\int\frac{2x}{x^2+1}\,dx$}
\stepbox{1. SPOT THE PAIR}{the denominator's derivative sits in the numerator: $\ubox{u}=\ubox{x^2+1}$, \; $\dubox{du}=\dubox{2x\,dx}$}
\stepdown
\stepbox{2. SUBSTITUTE}{$\displaystyle\int\frac{\dubox{du}}{\ubox{u}}$ — the power $-1$ case: \keyres{$\ln$, never the power rule}}
\stepdown
\stepbox{3. INTEGRATE \& BACK-SUB}{$\ln|u|+C=\keyres{\ln(x^2+1)+C}$}

\filbreak \subsubsection{Worked (leftover $x$): $\int x\sqrt{x-1}\,dx$}
\stepbox{1. PICK u}{$\ubox{u}=\ubox{x-1}$, $\dubox{du}=\dubox{dx}$ — but a naked $x$ remains}
\stepdown
\stepbox{2. REWRITE THE LEFTOVER IN $u$}{$x=u+1$: \quad $\displaystyle\int(u+1)\sqrt u\,du=\int\big(u^{3/2}+u^{1/2}\big)\,du$}
\stepdown
\stepbox{3. INTEGRATE \& BACK-SUB}{$\tfrac25u^{5/2}+\tfrac23u^{3/2}+C=\keyres{\tfrac25(x-1)^{5/2}+\tfrac23(x-1)^{3/2}+C}$}

\filbreak \subsubsection{Picking $u$ — quick checklist}
\begin{itemize}
\item Inside of a composition (under a root, in an exponent, in a trig function).
\item Inside of parentheses raised to a power.
\item Denominator (when its derivative is in the numerator).
\item Whichever piece's derivative is "lying around" (up to a constant multiple — pull it out via step 3).
\end{itemize}

\filbreak \subsubsection{Constant multiple trick}
If $du$ is off by a constant, solve for what you need:

$du = 6x\,dx \Rightarrow x\,dx = \tfrac{1}{6}du$

Pull the $\tfrac{1}{6}$ out front of the integral.

\filbreak \subsubsection{When u-sub fails}
Try integration by parts, trig identities to simplify first, partial fractions, or trig substitution — all worked below. If $u$ doesn't eliminate \emph{all} $x$'s, the choice was wrong.

\filbreak \subsection{integration by parts (IBP)}
For a \emph{product} of two unrelated functions where no inside-derivative is lying around (so u-sub won't work):
$$\int u\,dv = uv - \int v\,du$$

\filbreak \subsubsection{Pick $u$ by LIATE}
Choose $u$ as the type that comes \emph{first} in this list (it gets simpler when differentiated); the rest is $dv$.
\begin{center}
\begin{tabular}{@{}c l l@{}}
\textbf{L} & Logarithm & $\ln x$ \\
\textbf{I} & Inverse trig & $\arctan x,\ \arcsin x$ \\
\textbf{A} & Algebraic & $x,\ x^2$ \\
\textbf{T} & Trig & $\sin x,\ \cos x$ \\
\textbf{E} & Exponential & $e^x$ \\
\end{tabular}
\end{center}

\filbreak \subsubsection{4-step process}
\begin{enumerate}
\item \term{Pick} $u$ (LIATE) and $dv$ (everything else, including $dx$).
\item \term{Build} $du$ (differentiate $u$) and $v$ (\keyres{antiderivative} of $dv$).
\item \term{Plug in}: $uv - \int v\,du$.
\item \term{Solve the NEW integral} $\int v\,du$ — it's a \emph{separate} antiderivative, not "done" just by substituting.
\end{enumerate}
IBP trades a hard integral for an easier one. If the new integral is worse, swap your $u$/$dv$ choice.

\filbreak \subsubsection{Worked: $\int x\,e^x\,dx$}
\stepbox{1. PICK BY LIATE, BUILD THE PARTNERS}{\begin{tabular}{@{}l@{\;}|@{\;}l@{}}
\multicolumn{1}{c|}{\scriptsize\textsc{pick}} & \multicolumn{1}{c}{\scriptsize\textsc{build}} \\
\hline
$\ubox{u}=\ubox{x}$ & $\dubox{du}=\dubox{dx}$ \\
$dv = e^x\,dx$ & $v = e^x$ \\
\end{tabular} \quad \emph{\scriptsize($A$ before $E$ $\Rightarrow$ $u=x$)}}
\stepdown
\stepbox{2. PLUG INTO $uv-\int v\,du$}{$\ubox{x}\,e^x-\displaystyle\int e^x\,\dubox{dx}$}
\stepdown
\stepbox{3. SOLVE THE NEW INTEGRAL}{$xe^x-e^x=\keyres{e^x(x-1)+C}$ \; \emph{\scriptsize(differentiating $x$ down to $1$ is what made it easy)}}

\filbreak \subsubsection{Worked: the L case — $\int\ln x\,dx$}
\stepbox{1. THE $dv=dx$ TRICK}{no visible product? manufacture one: $u=\ln x$, \; $dv=dx$ $\Rightarrow$ $du=\tfrac1x\,dx$, \; $v=x$}
\stepdown
\stepbox{2. PLUG IN}{$x\ln x-\displaystyle\int x\cdot\tfrac1x\,dx=x\ln x-\int 1\,dx$}
\stepdown
\stepbox{3. FINISH}{$\keyres{x\ln x-x+C}$}
\par\vspace{2pt}
The I case is identical: $\int\arctan x\,dx$ with $u=\arctan x$, $dv=dx$: \; $x\arctan x-\int\frac{x}{1+x^2}dx$; the new integral is the ln-flavor u-sub, off by a constant: $\int\frac{x}{1+x^2}dx=\tfrac12\int\frac{2x}{1+x^2}dx=\tfrac12\ln(1+x^2)$ \;$\Rightarrow$\; $\keyres{x\arctan x-\tfrac12\ln(1+x^2)+C}$.

\filbreak \subsubsection{Worked: repeated IBP — $\int x^2e^x\,dx$}
\stepbox{1. IBP \#1 — BUILD, PLUG, PULL THE 2}{$u=x^2$, $du=2x\,dx$; \; $dv=e^xdx$, $v=e^x$: \quad $x^2e^x-\displaystyle\int e^x\cdot2x\,dx=x^2e^x-2\displaystyle\int xe^x\,dx$}
\stepdown
\stepbox{2. THE NEW INTEGRAL IS THE FIRST WORKED}{$\int xe^x\,dx=e^x(x-1)$}
\stepdown
\stepbox{3. ASSEMBLE}{$x^2e^x-2e^x(x-1)=\keyres{e^x(x^2-2x+2)+C}$ \; \emph{\scriptsize(each A-round drops the power by one — repeat until it dies)}}

\filbreak \subsubsection{Loop trick ($e^x\sin x$, $\sin(\ln x)$, $e^x\cos x$\ldots)}
When IBP twice brings the \emph{original} integral back on the right:
\begin{enumerate}
\item Apply IBP twice (\warn{stop} — don't do a third).
\item The original integral $I$ reappears: you get $I = (\text{stuff}) - I$.
\item Collect: $2I = \text{stuff}$, then divide by 2.
\end{enumerate}
\filbreak \subsubsection{Worked: loop — $I=\int e^x\sin x\,dx$}
\stepbox{1. IBP \#1}{$u=\sin x$, $dv=e^x dx$: \quad $I=e^x\sin x-\displaystyle\int e^x\cos x\,dx$}
\stepdown
\stepbox{2. IBP \#2 — SAME PATTERN, WATCH THE SIGN}{$u=\cos x$, $du=\warn{-}\sin x\,dx$, $v=e^x$:
$$\int e^x\cos x\,dx=e^x\cos x-\int e^x(-\sin x)dx=e^x\cos x+\int e^x\sin x\,dx$$
$$\Rightarrow\; I=e^x\sin x-\big[e^x\cos x+\textstyle\int e^x\sin x\,dx\big]$$ \emph{\scriptsize(\warn{stop} — the original $I$ just walked back in)}}
\stepdown
\stepbox{3. COLLECT THE LOOP}{$I=e^x\sin x-e^x\cos x-I \;\Rightarrow\; 2I=e^x(\sin x-\cos x)$}
\stepdown
\stepbox{4. DIVIDE BY 2}{$I=\keyres{\dfrac{e^x(\sin x-\cos x)}{2}+C}$}
\par\vspace{2pt}
The same loop (with $dv=dx$ both rounds) closes $I=\int\sin(\ln 2x)\,dx$: round 1 gives $I=x\sin(\ln 2x)-\int\cos(\ln 2x)\,dx$; round 2 turns the new integral into $x\cos(\ln 2x)+I$, so $I=x\sin(\ln2x)-x\cos(\ln2x)-I$ \;$\Rightarrow$\; $2I=x[\sin(\ln 2x)-\cos(\ln 2x)]$ \;$\Rightarrow$\; $\keyres{I=\frac{x[\sin(\ln 2x)-\cos(\ln 2x)]}{2}+C}$.
\\[2pt]
Helper antiderivatives: $\int\cos(kx)dx = \tfrac1k\sin(kx)$, \; $\int\sin(kx)dx = -\tfrac1k\cos(kx)$.

\filbreak \subsubsection{IBP vs u-sub — which one?}
\begin{itemize}
\item \keyres{u-sub}: a composition \emph{and} its derivative is present elsewhere.
\item \keyres{IBP}: a product of unrelated functions, no inside-derivative.
\end{itemize}

\filbreak \subsection{trig integrals}
\term{Identities you'll need:}
\begin{itemize}
\item $\sin^2 x + \cos^2 x = 1$, \; $1+\tan^2 x = \sec^2 x$, \; $1+\cot^2 x = \csc^2 x$
\item $\sin 2x = 2\sin x\cos x$, \; $\cos 2x = \cos^2 x - \sin^2 x$
\item $\sin^2 x = \frac{1-\cos 2x}{2}$, \; $\cos^2 x = \frac{1+\cos 2x}{2}$
\end{itemize}

\filbreak \subsubsection{Odd power of $\sin$ or $\cos$}
Peel \emph{one} factor off the odd power, convert the rest with $\cos^2 = 1-\sin^2$ (or $\sin^2 = 1-\cos^2$), then u-sub.

\filbreak \subsubsection{Worked (odd cos): $\int\sqrt{\sin x}\,\cos^3x\,dx$}
\stepbox{1. PEEL ONE OFF THE ODD POWER}{$\cos^3x=(1-\sin^2x)\cos x$}
\stepdown
\stepbox{2. U-SUB}{$\ubox{u}=\ubox{\sin x}$, \; $\dubox{du}=\dubox{\cos x\,dx}$ — the peeled factor \emph{is} the $du$}
\stepdown
\stepbox{3. INTEGRATE IN $u$}{$\displaystyle\int u^{1/2}(1-u^2)\,du=\int u^{1/2}-u^{5/2}\,du=\tfrac23u^{3/2}-\tfrac27u^{7/2}$}
\stepdown
\stepbox{4. BACK-SUB}{$\keyres{\tfrac23(\sin x)^{3/2}-\tfrac27(\sin x)^{7/2}+C}$}

\filbreak \subsubsection{Worked (odd sin — the minus-sign case): $\int\sin^3x\cos^2x\,dx$}
\stepbox{1. PEEL}{$\sin^3x=(1-\cos^2x)\sin x$}
\stepdown
\stepbox{2. U-SUB — WATCH THE SIGN}{$u=\cos x$, \; $du=\warn{-}\sin x\,dx$ \; \emph{\scriptsize(the classic error lives here)}}
\stepdown
\stepbox{3. INTEGRATE}{$-\displaystyle\int(1-u^2)u^2\,du=-\int(u^2-u^4)\,du=-\Big(\tfrac{u^3}{3}-\tfrac{u^5}{5}\Big)=-\tfrac{u^3}{3}+\tfrac{u^5}{5}$}
\stepdown
\stepbox{4. BACK-SUB}{$\keyres{\tfrac{\cos^5x}{5}-\tfrac{\cos^3x}{3}+C}$}

\filbreak \subsubsection{Even powers — power reduction}
No factor to peel, so drop the power with:
$$\sin^2 x = \frac{1-\cos 2x}{2} \qquad \cos^2 x = \frac{1+\cos 2x}{2}$$

\filbreak \subsubsection{Worked: $\int\sin^2x\,dx$, then $\int\sin^4x\,dx$}
\stepbox{1. REDUCE}{$\displaystyle\int\frac{1-\cos2x}{2}\,dx=\frac12\int1\,dx-\frac12\int\cos2x\,dx=\frac x2-\frac12\cdot\frac{\sin2x}{2}=\keyres{\frac x2-\frac{\sin2x}{4}+C}$}
\stepdown
\stepbox{2. FOURTH POWER — SQUARE THE REDUCTION}{$\sin^4x=\Big(\frac{1-\cos2x}{2}\Big)^2=\frac{1-2\cos2x+\cos^22x}{4}$ \; \emph{\scriptsize(\warn{FOIL first} — $(1-\cos2x)^2$ can't be integrated whole)}}
\stepdown
\stepbox{3. REDUCE THE LEFTOVER SQUARE}{$\cos^22x=\frac{1+\cos4x}{2}$:
$$\sin^4x=\frac{1-2\cos2x+\frac{1+\cos4x}{2}}{4}=\frac{\frac32-2\cos2x+\frac{\cos4x}{2}}{4}=\frac38-\frac{\cos2x}{2}+\frac{\cos4x}{8}$$}
\stepdown
\stepbox{4. INTEGRATE TERMWISE}{$\keyres{\tfrac{3x}{8}-\tfrac{\sin2x}{4}+\tfrac{\sin4x}{32}+C}$}

\filbreak \subsubsection{sec/tan family}
$\int\tan x\,dx=\int\frac{\sin x}{\cos x}dx$ — ln-flavor u-sub ($u=\cos x$): $\keyres{-\ln|\cos x|+C=\ln|\sec x|+C}$.
\begin{itemize}
\item \term{Even $\sec$ power}: peel $\sec^2x$, convert the rest via $\sec^2=1+\tan^2$, \; $u=\tan x$.
\item \term{Odd $\tan$ power (with $\sec$)}: peel $\sec x\tan x$, convert via $\tan^2=\sec^2-1$, \; $u=\sec x$.
\item $\int\sec^3x\,dx$: IBP loop trick $\Rightarrow$ $\tfrac12\big[\sec x\tan x+\ln|\sec x+\tan x|\big]+C$.
\end{itemize}

\filbreak \subsubsection{Product-to-sum: $\int\sin(3x)\cos(x)\,dx$}
\stepbox{1. CONVERT THE PRODUCT}{$\sin A\cos B=\tfrac12[\sin(A{+}B)+\sin(A{-}B)]$: \quad $\tfrac12[\sin4x+\sin2x]$}
\stepdown
\stepbox{2. INTEGRATE TERMWISE}{$\keyres{-\tfrac{\cos4x}{8}-\tfrac{\cos2x}{4}+C}$}

\filbreak \subsection{partial fractions}
For rational integrands where u-sub fails: \keyres{split into small pieces that are each a $\ln$ or a power}. Requires $\deg(\text{top})<\deg(\text{bottom})$ — \warn{long-divide first if not}. Setup by denominator factor type:
\begin{itemize}
\item \term{Distinct linear} $(x{-}a)(x{-}b)$: \; $\frac{A}{x-a}+\frac{B}{x-b}$
\item \term{Repeated} $(x{-}a)^2$: \; $\frac{A}{x-a}+\frac{B}{(x-a)^2}$ — \keyres{one term per power}
\item \term{Irreducible quadratic}: \; $\frac{Ax+B}{x^2+px+q}$
\end{itemize}

\filbreak \subsubsection{Worked: $\int\frac{x+7}{(x-1)(x+3)}\,dx$}
\stepbox{1. BUILD THE SPLIT}{$\dfrac{x+7}{(x-1)(x+3)}=\dfrac{A}{x-1}+\dfrac{B}{x+3}$ \;$\Rightarrow$\; $x+7=A(x+3)+B(x-1)$}
\stepdown
\stepbox{2. KILL EACH UNKNOWN WITH A ROOT}{$x=1$: $8=4A\Rightarrow A=2$. \quad $x=-3$: $4=-4B\Rightarrow B=-1$ \; \emph{\scriptsize(plug each root — the other term vanishes)}}
\stepdown
\stepbox{3. INTEGRATE THE PIECES}{$\displaystyle\int\frac{2}{x-1}-\frac{1}{x+3}\,dx=\keyres{2\ln|x-1|-\ln|x+3|+C}$}

\filbreak \subsubsection{Worked (repeated factor): $\int\frac{3x+5}{(x+1)^2}\,dx$}
\stepbox{1. ONE TERM PER POWER}{$\dfrac{3x+5}{(x+1)^2}=\dfrac{A}{x+1}+\dfrac{B}{(x+1)^2}$ \;$\Rightarrow$\; $3x+5=A(x+1)+B$}
\stepdown
\stepbox{2. SOLVE}{$x=-1$: $B=2$; \; match $x$-coefficients: $A=3$}
\stepdown
\stepbox{3. INTEGRATE}{$\displaystyle\int\frac{3}{x+1}+\frac{2}{(x+1)^2}\,dx=\keyres{3\ln|x+1|-\frac{2}{x+1}+C}$ \; \emph{\scriptsize(second piece is the power rule, not a $\ln$)}}

\filbreak \subsection{trig substitution}
For \keyres{roots of quadratics} that u-sub can't crack — substitute a trig function so the Pythagorean identity collapses the root:
\begin{center}
\begin{tabular}{@{}lll@{}}
\term{sees} & \term{substitute} & \term{root becomes}\\
$\sqrt{a^2-x^2}$ & $x=a\sin\theta$ & $a\cos\theta$\\
$\sqrt{a^2+x^2}$ & $x=a\tan\theta$ & $a\sec\theta$\\
$\sqrt{x^2-a^2}$ & $x=a\sec\theta$ & $a\tan\theta$\\
\end{tabular}
\end{center}

\filbreak \subsubsection{Worked: $\int\frac{dx}{x^2\sqrt{x^2+4}}$}
\stepbox{1. PICK FROM THE TABLE}{$a^2+x^2$ shape, $a=2$: \; $x=2\tan\theta$, \; $dx=2\sec^2\theta\,d\theta$, \; $\sqrt{x^2+4}=2\sec\theta$}
\stepdown
\stepbox{2. SUBSTITUTE EVERYTHING}{$\displaystyle\int\frac{2\sec^2\theta\,d\theta}{4\tan^2\theta\cdot2\sec\theta}=\frac14\int\frac{\sec\theta}{\tan^2\theta}\,d\theta=\frac14\int\frac{\cos\theta}{\sin^2\theta}\,d\theta$}
\stepdown
\stepbox{3. EASY TRIG INTEGRAL}{$u=\sin\theta$, $du=\cos\theta\,d\theta$: \; $\dfrac14\displaystyle\int\frac{du}{u^2}=\frac14\int u^{-2}du=\frac14\Big({-}\frac1u\Big)=-\frac{1}{4\sin\theta}$}
\stepdown
\stepbox{4. TRIANGLE BACK-CONVERT}{$\tan\theta=\tfrac x2$ $\Rightarrow$ draw the right triangle: opp $x$, adj $2$, hyp $\sqrt{x^2+4}$ $\Rightarrow$ $\sin\theta=\tfrac{x}{\sqrt{x^2+4}}$: \quad $\keyres{-\dfrac{\sqrt{x^2+4}}{4x}+C}$}

\filbreak \subsection{net change theorem}
The integral of a rate of change is the total change:
$$\int_a^b f'(x)\,dx = f(b) - f(a)$$
\term{Position from velocity:} integrate $v(t)$ to get $s(t) + C$, then use a given condition (for example, $s(0)=s_0$) to solve for $C$.

\filbreak \subsubsection{Worked: displacement vs total distance — $v=(t-1)(t-3)$ on $[0,4]$}
\stepbox{1. DISPLACEMENT — JUST INTEGRATE}{$\displaystyle\int_0^4(t^2-4t+3)\,dt=\Big[\tfrac{t^3}{3}-2t^2+3t\Big]_0^4=\big(\tfrac{64}{3}-32+12\big)-0=\tfrac{64}{3}-20=\keyres{\tfrac43}$}
\stepdown
\stepbox{2. DISTANCE — INTEGRATE $|v|$}{$v<0$ on $(1,3)$: split there. With $F=\tfrac{t^3}{3}-2t^2+3t$: \; $F(0)=0$, $F(1)=\tfrac43$, $F(3)=9-18+9=0$, $F(4)=\tfrac43$}
\stepdown
\stepbox{3. PIECES — $F(b)-F(a)$ EACH}{$\int_0^1 v=\tfrac43-0=\tfrac43; \quad \int_1^3 v=0-\tfrac43=-\tfrac43\xrightarrow{|\cdot|}\tfrac43; \quad \int_3^4 v=\tfrac43-0=\tfrac43$ \;$\Rightarrow$\; distance $=\keyres{4}$}
\par\vspace{2pt}
Backing up subtracts from \keyres{displacement} ($\tfrac43$) but adds to \keyres{distance} ($4$) — two different questions, one $|\cdot|$ apart.

\filbreak \subsection{average value}
$f_{avg} = \frac{1}{b-a}\int_a^b f(x)\,dx$

\term{MVT for Integrals}: $f$ cont. on $[a,b]$ $\Rightarrow \exists c \in [a,b]$ with $f(c) = f_{avg}$.

\filbreak \subsubsection{Worked: $f=x^2$ on $[0,3]$ — average, then the $c$ that attains it}
\stepbox{1. AVERAGE VALUE}{$\displaystyle\int_0^3x^2\,dx=\Big[\tfrac{x^3}{3}\Big]_0^3=\tfrac{27}{3}-0=9$: \quad $f_{avg}=\tfrac{1}{3-0}\cdot9=\keyres{3}$}
\stepdown
\stepbox{2. MVT-FOR-INTEGRALS FOLLOW-UP}{solve $f(c)=f_{avg}$: \; $c^2=3$ $\Rightarrow$ $c=\keyres{\sqrt3}$ \; \emph{\scriptsize(keep only roots inside $[0,3]$ — discard $-\sqrt3$)}}

\filbreak \subsection{area between curves}
$$A = \int_a^b [\,\underbrace{\text{top}}_{f} - \underbrace{\text{bottom}}_{g}\,]\,dx \qquad A = \int_c^d [\,\underbrace{\text{right}}_{} - \underbrace{\text{left}}_{}\,]\,dy$$
Left form uses \keyres{vertical} slices ($dx$); right form uses \keyres{horizontal} slices ($dy$).

\stepbox{THE PROCESS}{
\textbf{1.} \term{Sketch} both curves.\\
\textbf{2.} \term{Find every intersection.} Solve $f(x)=g(x)$.\\
\textbf{3.} \term{Choose the slice direction} — vertical ($dx$) or horizontal ($dy$).\\
\textbf{4.} \term{Integrate the gap}: $(\text{top}-\text{bottom})\,dx$, or $(\text{right}-\text{left})\,dy$.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 3 decoded — three region shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{$dx$} — one curve stays on top across the whole interval. $\displaystyle\int_a^b\left(\text{top}-\text{bottom}\right)dx$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{$dy$} — the region reads better left-to-right. \keyres{Solve both curves for $x$ first}, then $\displaystyle\int_c^d\left(\text{right}-\text{left}\right)dy$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{curves cross inside} the interval $\Rightarrow$ \warn{split at each crossing}. The top curve changes there. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{Intersections} — set $f(x)=g(x)$ and solve. These are the limits, or the split points.\\
\textbf{2.} \term{Which curve is on top} — test one interior point. \warn{Do not guess from the formulas.}\\
\textbf{3.} \term{Solve for $x$} when you slice horizontally: $y=x^2 \Rightarrow x=\sqrt{y}$.}
\par\vspace{2pt}
\filbreak \subsubsection{4-step process}
\begin{enumerate}
\item \term{Bounds}: set curves equal, solve for intersections (FOIL-check your factoring).
\item \term{Test a point}: which curve is top/bottom (or right/left)?
\item \term{Set up}: bigger $-$ smaller.
\item \term{Evaluate} (or stop if "setup only").
\end{enumerate}

\filbreak \subsubsection{Vertical ($dx$) vs horizontal ($dy$)?}
Ask: \emph{"Does any boundary switch partway through the region?"}
\begin{itemize}
\item Bottom switches at some $x$ $\Rightarrow$ $dx$ needs \keyres{2 integrals} $\Rightarrow$ switch to $dy$.
\item A smooth curve like $y=x^2$ does \emph{not} force a switch. Two lines meeting at a corner does.
\end{itemize}

\filbreak \subsubsection{Integrating along $y$ — solve for $x$}
Bounds are \keyres{$y$-values}, integrand is right$-$left, both as functions of $y$, end with $dy$.
\begin{itemize}
\item $y=x^2 \Rightarrow x = \pm\sqrt{y}$ (take the side in your region)
\item $y=\sqrt{x} \Rightarrow x = y^2$, \quad $y=x+2 \Rightarrow x = y-2$
\end{itemize}

\filbreak \subsubsection{Worked: $y=x+2$ and $y=x^2$}
\stepbox{1. BOUNDS — SET EQUAL}{$x+2=x^2 \Rightarrow x^2-x-2=(x-2)(x+1)=0 \Rightarrow x=-1,\,2$}
\stepdown
\stepbox{2. TEST A POINT}{$x=0$: line $2$ vs parabola $0$ — \keyres{line on top}}
\stepdown
\stepbox{3. BUILD THE INTEGRAL, TOP $-$ BOTTOM}{$A=\displaystyle\int_{-1}^{2}\big[(x+2)-x^2\big]dx$ \; \emph{\scriptsize(\warn{the minus hits every term})}}
\stepdown
\stepbox{4. EVALUATE}{$\Big[\tfrac{x^2}{2}+2x-\tfrac{x^3}{3}\Big]_{-1}^{2}=\tfrac{10}{3}-\big({-}\tfrac76\big)=\keyres{\tfrac92}$}

\begin{center}
\begin{tikzpicture}
\begin{axis}[
axis lines=middle, axis line style={white!45},
xmin=-2.1, xmax=2.7, ymin=-0.6, ymax=4.8,
xtick={-1,1,2}, ytick={2,4},
tick style={white!45}, tick label style={text=white!70, font=\tiny},
width=6.4cm, height=4.6cm, samples=80, clip=false,
]
\addplot[name path=t, draw=none, domain=-1:2]{x+2};
\addplot[name path=b, draw=none, domain=-1:2]{x^2};
\addplot[keyHi, fill opacity=0.22] fill between[of=t and b];
\addplot[duHi, very thick, domain=-1.7:2.4]{x+2};
\addplot[uHi, very thick, domain=-1.55:2.1]{x^2};
\node[duHi, font=\tiny, fill=black, inner sep=1.2pt, anchor=south] at (axis cs:1.0,3.45){$y=x{+}2$};
\node[uHi, font=\tiny, fill=black, inner sep=1.2pt, anchor=east] at (axis cs:-1.78,2.7){$y=x^2$};
\fill[white] (axis cs:-1,1) circle (1.4pt);
\fill[white] (axis cs:2,4) circle (1.4pt);
\end{axis}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked ($dy$): $x=y^2$ and $x=y+2$}
The mirror-image region — and here $dx$ would need \warn{two} integrals (the bottom boundary switches from parabola to line at $x=1$), while $dy$ needs one:
\par\vspace{2pt}
\stepbox{1. INTERSECT IN $y$}{$y^2=y+2 \Rightarrow (y-2)(y+1)=0 \Rightarrow y=-1,\,2$}
\stepdown
\stepbox{2. RIGHT MINUS LEFT}{$y=0$: line $x=2$ vs parabola $x=0$ — line is \keyres{right}: $(y+2)-y^2$}
\stepdown
\stepbox{3. BUILD THE INTEGRAL, THEN INTEGRATE IN $y$}{$A=\displaystyle\int_{-1}^{2}\big[(y+2)-y^2\big]dy=\Big[\tfrac{y^2}{2}+2y-\tfrac{y^3}{3}\Big]_{-1}^{2}=\tfrac{10}{3}-\big({-}\tfrac76\big)=\keyres{\tfrac92}$ \; \emph{\scriptsize(same $\tfrac92$ as above — the same problem with $x\leftrightarrow y$)}}

\filbreak \subsubsection{Worked (curves that cross): $y=x$ and $y=x^3$ on $[-1,1]$}
\stepbox{1. FIND ALL CROSSINGS}{$x^3=x \Rightarrow x(x^2-1)=0 \Rightarrow x=-1,\,0,\,1$ — \warn{a crossing inside means one integral is wrong}}
\stepdown
\stepbox{2. TOP PER PIECE}{$x=-\tfrac12$: $x^3=-\tfrac18>-\tfrac12$ — cubic on top; \quad $x=\tfrac12$: line on top}
\stepdown
\stepbox{3. ONE INTEGRAL PER PIECE}{$\displaystyle\int_{-1}^{0}(x^3-x)dx=\Big[\tfrac{x^4}{4}-\tfrac{x^2}{2}\Big]_{-1}^{0}=0-\big(\tfrac14-\tfrac12\big)=\tfrac14$
$$\int_{0}^{1}(x-x^3)dx=\Big[\tfrac{x^2}{2}-\tfrac{x^4}{4}\Big]_0^1=\tfrac12-\tfrac14=\tfrac14; \qquad \text{total } \keyres{\tfrac12}$$}

\filbreak \subsection{geometry as integrals}
\begin{itemize}
\item Rectangle ($f = c$): $A = c(b-a)$
\item Triangle (linear $f$): $A = \frac{1}{2}bh$
\item Semicircle $\sqrt{r^2 - (x-h)^2}$: $A = \frac{1}{2}\pi r^2$
\item Quarter circle: $A = \frac{1}{4}\pi r^2$
\end{itemize}
Radius from $\sqrt{A - Bx^2}$: factor $B$ to get $\sqrt{B}\sqrt{A/B - x^2}$, so $r = \sqrt{A/B}$.

\filbreak \subsection{volumes of revolution}
Spin a region around an axis $\to$ solid. Pick the method by what the slice looks like.
\begin{center}
\begin{tabular}{@{}l l l@{}}
\textbf{Method} & \textbf{Slice} & \textbf{Volume} \\
\hline
Disc & solid circle & $\pi\!\int_a^b [R]^2\,dx$ \\
Washer & circle w/ hole & $\pi\!\int_a^b ([R]^2-[r]^2)\,dx$ \\
Shell & cylinder peel & $2\pi\!\int_a^b (\text{rad})(\text{ht})\,dx$ \\
\end{tabular}
\end{center}
\keyres{Disc vs washer}: region touches the axis $\Rightarrow$ disc ($r=0$); gap between region and axis $\Rightarrow$ washer. Square \emph{each} radius separately, \emph{then} subtract.

\stepbox{THE PROCESS}{
\textbf{1.} \term{Sketch} the region and draw the axis.\\
\textbf{2.} \term{Choose the slice} — perpendicular to the axis (disc or washer), or parallel to it (shell).\\
\textbf{3.} \term{Write each radius} as a \keyres{distance from the axis}.\\
\textbf{4.} \term{Integrate.}}
\par\vspace{2pt}
\filbreak \subsubsection{Step 2 decoded — disc, washer or shell?}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{disc} — slice $\perp$ axis, and the region \keyres{touches} the axis: \; $V=\pi\displaystyle\int R^2$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{washer} — slice $\perp$ axis, but a \keyres{gap} sits between region and axis: \; $V=\pi\displaystyle\int\left(R_{\text{out}}^2-R_{\text{in}}^2\right)$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{shell} — slice $\parallel$ axis: \; $V=2\pi\displaystyle\int(\text{radius})(\text{height})$ \\
\end{tabular}}
\par\vspace{2pt}
Discs and washers integrate in the \keyres{axis variable}; shells integrate in the \keyres{other one}. If solving the curve for the other variable is ugly, switch method rather than fight it.
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{Intersections} — where the region starts and stops.\\
\textbf{2.} \term{The radius.} About $y=k$ the radius is \keyres{$|k-y|$}, \warn{not $y$}. Draw the arrow from axis to curve.\\
\textbf{3.} \term{Solve for the other variable} when the slice direction needs it: $y=\sqrt{x} \Rightarrow x=y^2$.}
\par\vspace{2pt}
\filbreak \subsubsection{Axis $\to$ variable $\to$ radius}
\begin{center}
\begin{tabular}{@{}l l l@{}}
\textbf{Rotate about} & \textbf{Integrate} & \textbf{Radius} \\
\hline
$x$-axis & $dx$ & $y$-value of curve \\
$y$-axis & $dy$ & $x$-value of curve \\
$y=k$ & $dx$ & $|k - y|$ \\
$x=k$ & $dy$ & $|k - x|$ \\
\end{tabular}
\end{center}
\term{Shell} (rotating about $y$-axis): radius $=x$, height $= f(x)$ (top curve $-$ bottom curve). Shifted axis $x=k$: radius $=|k-x|$. Shell and disc always give the \keyres{same total volume}.

\begin{center}
\begin{tikzpicture}[scale=0.78, font=\scriptsize,
  dimline/.style={{Latex[length=1.3mm]}-{Latex[length=1.3mm]}, line width=0.4pt}]
% ---- DISC ----
\begin{scope}[shift={(0,0)}]
\node[termHi] at (1.1,1.7){\textsc{disc}};
\draw[white!45,->] (-0.15,0)--(2.35,0) node[right]{$x$};
\draw[termHi,thick] (0.15,1.28) .. controls (1.0,1.08) and (1.4,1.02) .. (2.1,0.82);
\fill[keyHi,fill opacity=0.20] (1.1,0) ellipse (0.22 and 1.05);
\draw[keyHi,thick] (1.1,0) ellipse (0.22 and 1.05);
\draw[dimline,keyHi] (1.1,0)--(1.1,1.05);
\node[keyHi,fill=black,inner sep=0.6pt] at (1.1,0.52){$R$};
\end{scope}
% ---- WASHER ----
\begin{scope}[shift={(3.3,0)}]
\node[termHi] at (1.2,1.7){\textsc{washer}};
\draw[white!45,->] (-0.15,0)--(2.35,0) node[right]{$x$};
\fill[keyHi,fill opacity=0.20] (1.2,0) ellipse (0.26 and 1.2);
\draw[keyHi,thick] (1.2,0) ellipse (0.26 and 1.2);
\fill[black] (1.2,0) ellipse (0.12 and 0.5);
\draw[duHi,thick] (1.2,0) ellipse (0.12 and 0.5);
\draw[dimline,keyHi] (1.2,0)--(1.2,1.2);
\node[keyHi,fill=black,inner sep=0.6pt] at (1.36,0.92){$R$};
\draw[dimline,duHi] (1.2,0)--(1.2,0.5);
\node[duHi,fill=black,inner sep=0.6pt] at (1.04,0.28){$r$};
\end{scope}
% ---- SHELL (full solid cylinder) ----
\begin{scope}[shift={(6.6,0)}]
\node[termHi] at (1.25,1.7){\textsc{shell}};
\draw[white!45,->] (0,-0.15)--(0,1.95) node[above]{$y$};
\draw[white!45,->] (-0.1,0)--(2.4,0) node[right]{$x$};
\fill[uHi,fill opacity=0.20] (0.8,1.35) -- (0.8,0) arc (180:360:0.45 and 0.13) -- (1.7,1.35) arc (0:180:0.45 and 0.13) -- cycle;
\fill[uHi,fill opacity=0.28] (1.25,1.35) ellipse (0.45 and 0.13);
\draw[uHi,thick] (1.25,1.35) ellipse (0.45 and 0.13);
\draw[uHi,thick] (0.8,0)--(0.8,1.35);
\draw[uHi,thick] (1.7,0)--(1.7,1.35);
\draw[uHi,thick] (0.8,0) arc (180:360:0.45 and 0.13);
\draw[uHi,thick,dashed] (0.8,0) arc (180:0:0.45 and 0.13);
\draw[dimline,keyHi] (0,0.17)--(1.25,0.17);
\node[keyHi,fill=black,inner sep=0.6pt] at (0.62,0.17){rad};
\draw[dimline,duHi] (1.92,0)--(1.92,1.35);
\node[duHi,fill=black,inner sep=0.6pt] at (1.92,0.67){ht};
\end{scope}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked (disc): $y=\sqrt{x}$ about the $x$-axis on $[0,4]$}
\stepbox{1. TOUCHES THE AXIS $\Rightarrow$ DISC}{radius $=$ the $y$-value: $R=\sqrt x$}
\stepdown
\stepbox{2. SQUARE \& INTEGRATE}{$V=\pi\displaystyle\int_0^4(\sqrt x)^2dx=\pi\int_0^4x\,dx=\pi\Big[\tfrac{x^2}{2}\Big]_0^4=\keyres{8\pi}$}

\filbreak \subsubsection{Worked (washer): $y=x$ and $y=x^2$ about the $x$-axis}
\stepbox{1. GAP TO THE AXIS $\Rightarrow$ WASHER}{on $[0,1]$ the line rides above the parabola: outer $R=x$, inner $r=x^2$}
\stepdown
\stepbox{2. SQUARE EACH SEPARATELY, THEN SUBTRACT}{$[R]^2-[r]^2=x^2-x^4$ \; \emph{\scriptsize(\warn{never} square the difference: $(R-r)^2$ is a different — wrong — number)}}
\stepdown
\stepbox{3. INTEGRATE}{$V=\pi\displaystyle\int_0^1(x^2-x^4)\,dx=\pi\Big[\tfrac{x^3}{3}-\tfrac{x^5}{5}\Big]_0^1=\pi\big(\tfrac13-\tfrac15\big)=\pi\cdot\tfrac{5-3}{15}=\keyres{\tfrac{2\pi}{15}}$}

\filbreak \subsubsection{Worked (shell): same region about the $y$-axis}
\stepbox{1. ABOUT $y$-AXIS, STAYING IN $dx$ $\Rightarrow$ SHELL}{radius $=x$, \; height $=$ top $-$ bottom $=x-x^2$}
\stepdown
\stepbox{2. ASSEMBLE $2\pi\,(\text{rad})(\text{ht})$}{$V=2\pi\displaystyle\int_0^1x(x-x^2)\,dx=2\pi\int_0^1(x^2-x^3)\,dx$}
\stepdown
\stepbox{3. EVALUATE}{$2\pi\Big[\tfrac{x^3}{3}-\tfrac{x^4}{4}\Big]_0^1=2\pi\big(\tfrac13-\tfrac14\big)=2\pi\cdot\tfrac{1}{12}=\keyres{\tfrac{\pi}{6}}$}
\stepdown
\stepbox{4. CHECK BY THE OTHER METHOD}{washers in $dy$ — solve each curve for $x$: parabola $x=\sqrt y$ (farther right $=$ outer), line $x=y$ (inner): $$\pi\!\int_0^1\!\big[(\sqrt y)^2-y^2\big]dy=\pi\Big[\tfrac{y^2}{2}-\tfrac{y^3}{3}\Big]_0^1=\pi\big(\tfrac12-\tfrac13\big)=\tfrac{\pi}{6}\ \checkmark$$ \emph{\scriptsize(shell and washer must agree — free error check)}}

\filbreak \subsubsection{Worked (shifted axis): $y=\sqrt x$ on $[0,4]$ about $y=-1$}
\stepbox{1. RADII FROM $|k-y|$}{axis $y=-1$ sits \emph{below} the region: outer $R=\sqrt x-(-1)=\sqrt x+1$, \; inner $r=0-(-1)=1$ \; \emph{\scriptsize(the gap from axis to region floor)}}
\stepdown
\stepbox{2. WASHER SETUP — FOIL, THEN CANCEL}{$(\sqrt x+1)^2-1=\big(x+2\sqrt x+1\big)-1=x+2\sqrt x$: \quad $V=\pi\displaystyle\int_0^4\big(x+2\sqrt x\big)dx$}
\stepdown
\stepbox{3. EVALUATE}{$\pi\Big[\tfrac{x^2}{2}+\tfrac43x^{3/2}\Big]_0^4=\pi\big(8+\tfrac{32}{3}\big)=\keyres{\tfrac{56\pi}{3}}$}

\filbreak \subsection{arc length}
Length of a curve $y=f(x)$ on $[a,b]$ (Pythagoras on infinitely small pieces $\sqrt{dx^2+dy^2}$):
$$L = \int_a^b \sqrt{1 + \big(\tfrac{dy}{dx}\big)^2}\,dx$$
\term{Steps:} find $f'(x)$ $\to$ square it $\to$ add 1 $\to$ square root $\to$ integrate. Doable problems are \keyres{rigged so $1+(f')^2$ collapses to a perfect square}.

\filbreak \subsubsection{Worked: $y=\frac{x^3}{6}+\frac{1}{2x}$ on $[1,2]$}
\stepbox{1. DIFFERENTIATE}{$y'=\dfrac{x^2}{2}-\dfrac{1}{2x^2}$}
\stepdown
\stepbox{2. SQUARE \& ADD 1 — SPOT THE FLIP}{$1+(y')^2=1+\tfrac{x^4}{4}-\tfrac12+\tfrac{1}{4x^4}=\tfrac{x^4}{4}+\tfrac12+\tfrac{1}{4x^4}=\Big(\dfrac{x^2}{2}+\dfrac{1}{2x^2}\Big)^2$ \; \emph{\scriptsize(adding $1$ flips the middle sign: $(a-b)^2\to(a+b)^2$)}}
\stepdown
\stepbox{3. ROOT DROPS CLEANLY}{$L=\displaystyle\int_1^2\Big(\tfrac{x^2}{2}+\tfrac{1}{2x^2}\Big)dx$}
\stepdown
\stepbox{4. EVALUATE}{$\Big[\tfrac{x^3}{6}-\tfrac{1}{2x}\Big]_1^2=\tfrac{13}{12}-\big({-}\tfrac13\big)=\keyres{\tfrac{17}{12}}$}

\filbreak \subsection{surface area of revolution}
Spin the \emph{curve} (not the region): each arc piece $ds=\sqrt{1+(y')^2}\,dx$ sweeps a hoop of circumference $2\pi(\text{radius})$:
$$SA = \int_a^b 2\pi\,y\,\sqrt{1+(y')^2}\,dx \quad (\text{about the } x\text{-axis})$$
About the $y$-axis the radius becomes $x$, so swap $y$ for $x$ and integrate in $dy$.

\filbreak \subsubsection{Worked: $y=\sqrt x$ on $[0,4]$ about the $x$-axis}
\stepbox{1. THE PIECES}{$y'=\tfrac{1}{2\sqrt x}$: \quad $1+(y')^2=1+\tfrac{1}{4x}$}
\stepdown
\stepbox{2. COMBINE UNDER ONE ROOT}{$\sqrt x\cdot\sqrt{1+\tfrac{1}{4x}}=\sqrt{x+\tfrac14}$ \; \emph{\scriptsize(the radius slides into the root — standard collapse)}}
\stepdown
\stepbox{3. INTEGRATE (linear inside)}{$SA=2\pi\displaystyle\int_0^4\sqrt{x+\tfrac14}\,dx=2\pi\cdot\tfrac23\big(x+\tfrac14\big)^{3/2}\Big|_0^4$}
\stepdown
\stepbox{4. EVALUATE}{$\big(\tfrac{17}{4}\big)^{3/2}=\tfrac{17\sqrt{17}}{8}$, \; $\big(\tfrac14\big)^{3/2}=\tfrac18$: \quad $\tfrac{4\pi}{3}\cdot\tfrac{17\sqrt{17}-1}{8}=\keyres{\tfrac{\pi}{6}\big(17\sqrt{17}-1\big)}\approx36.2$}

\filbreak \subsection{work (springs \& pumping)}
\term{Work} $=$ force through a distance:
$$W = \int_a^b F(x)\,dx$$
\begin{itemize}[itemsep=2pt,topsep=2pt]
\item \keyres{Constant} force $\to$ simply $W = F\cdot d$.
\item \keyres{Varies} with position $\to$ you must integrate.
\item Units: $\mathrm{N}\cdot\mathrm{m}=$ J (metric), or $\mathrm{ft}\cdot\mathrm{lb}$ (US).
\end{itemize}

\stepbox{THE PROCESS — ALL THREE KINDS}{
\textbf{1.} \term{Slice} the object or the fluid.\\
\textbf{2.} \term{Write the force} on one slice.\\
\textbf{3.} \term{Write the distance} that same slice moves. \warn{Different slices move different distances.}\\
\textbf{4.} \term{Integrate} force $\times$ distance.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 1 decoded — three kinds of work}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{spring} — force varies, distance is the same. \keyres{Force $=kx$}, so $W=\displaystyle\int_a^b kx\,dx$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{lifting a cable or chain} — force varies as rope leaves the load. Slice the \keyres{rope}. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{pumping fluid} — every slice has the same force law but a \keyres{different distance to travel}. Slice the \keyres{fluid} horizontally. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{The constant $k$} — from one given force and stretch: $F=kx$.\\
\textbf{2.} \term{The weight of one slice} — density $\times$ volume for fluid, mass per length for rope.\\
\textbf{3.} \term{The distance that slice moves} — measure from the slice to its \keyres{destination}, not to the origin.}
\par\vspace{2pt}
\filbreak \subsubsection{Springs (Hooke's law)}
Force to hold a spring stretched $x$ past its \keyres{natural length}: $F(x) = kx$ ($k=$ spring constant).

Work to stretch from $a$ to $b$:
$$W = \int_a^b kx\,dx = \tfrac{k}{2}\big(b^2 - a^2\big)$$
\begin{itemize}[itemsep=2pt,topsep=2pt]
\item \term{Find $k$ first} from a known force at a known stretch: $k = F/x$.
\item \term{Inverse problems} (force given work, or natural length given work): set the work integral equal to the given value, then solve.
\item \warn{Measure $x$ from the natural length}, never from $0$. A spring $0.1$ m long stretched \emph{to} $0.3$ m has $x = 0.2$.
\end{itemize}

\begin{center}
\begin{tikzpicture}[scale=0.9, font=\scriptsize]
\fill[white!25] (-0.18,-0.55) rectangle (0,0.95);
\draw[white!45] (0,-0.55)--(0,0.95);
\draw[white!30,dashed] (1.6,-0.6)--(1.6,0.95);
\draw[termHi,thick] (0,0.2)--(0.2,0.2)--(0.35,0.5)--(0.65,-0.1)--(0.95,0.5)--(1.25,-0.1)--(1.55,0.5)--(1.85,-0.1)--(2.15,0.5)--(2.3,0.2)--(2.5,0.2);
\fill[uHi,fill opacity=0.3] (2.5,-0.2) rectangle (3.0,0.6);
\draw[uHi,thick] (2.5,-0.2) rectangle (3.0,0.6);
\draw[keyHi,-{Latex[length=1.6mm]},thick] (3.0,0.2)--(3.9,0.2);
\node[keyHi,right] at (3.9,0.2){$F=kx$};
\draw[{Latex[length=1.2mm]}-{Latex[length=1.2mm]},keyHi] (1.6,-0.48)--(2.5,-0.48);
\node[keyHi,below,font=\tiny] at (2.05,-0.48){$x$};
\node[white!55,above,font=\tiny] at (0.8,0.55){natural length};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: $40$ N holds a stretch of $0.2$ m — work to stretch to $0.3$ m}
\stepbox{1. FIND $k$ FROM THE GIVEN FORCE}{$k=\dfrac{F}{x}=\dfrac{40}{0.2}=200\ \mathrm{N/m}$}
\stepdown
\stepbox{2. BOUNDS FROM NATURAL LENGTH}{stretch runs $x=0$ to $x=0.3$}
\stepdown
\stepbox{3. INTEGRATE}{$W=\displaystyle\int_0^{0.3}200x\,dx=100x^2\Big|_0^{0.3}=\keyres{9\ \mathrm{J}}$}

\filbreak \subsubsection{Worked (inverse): $2$ J stretches a spring $0.1$ m — what force held it there?}
\stepbox{1. SET THE WORK INTEGRAL EQUAL TO THE GIVEN}{$\displaystyle\int_0^{0.1}kx\,dx=\tfrac k2(0.1)^2=0.005k=2$}
\stepdown
\stepbox{2. SOLVE FOR $k$}{$k=400\ \mathrm{N/m}$}
\stepdown
\stepbox{3. ANSWER THE ACTUAL QUESTION}{$F=kx=400(0.1)=\keyres{40\ \mathrm{N}}$ \; \emph{\scriptsize(same machine, run backwards — work given, parameter wanted)}}

\filbreak \subsubsection{Variable force / lifting}
General rule: add up each slice's \keyres{weight} times the \keyres{distance it rises}.

For a hanging \keyres{cable / rope} of length $L$, weight density $\rho$ (lb/ft): a slice of length $dx$ at depth $x$ weighs $\rho\,dx$ and rises a distance $x$, so
$$W = \int_0^L \rho\,x\,dx = \tfrac{\rho L^2}{2}$$
A constant load (bucket, weight) on the end adds $(\text{load})\times L$ by \term{superposition}.

\begin{center}
\begin{tikzpicture}[scale=1.15, font=\scriptsize]
\fill[white!25] (-0.6,2.2) rectangle (0.6,2.35);
\draw[white!45] (-0.7,2.2)--(0.7,2.2);
\draw[termHi,very thick] (0,2.2)--(0,0);
\fill[uHi,fill opacity=0.5] (-0.08,0.9) rectangle (0.08,1.1);
\draw[uHi] (-0.08,0.9) rectangle (0.08,1.1);
\node[uHi,right,font=\tiny] at (0.1,1.0){$dx$};
\draw[{Latex[length=1.2mm]}-{Latex[length=1.2mm]},keyHi] (0.5,2.2)--(0.5,1.0);
\node[keyHi,right,font=\tiny] at (0.5,1.6){$x$};
\draw[keyHi,-{Latex[length=1.6mm]},thick] (-0.32,1.0)--(-0.32,2.15);
\node[keyHi,left,font=\tiny] at (-0.34,1.55){lift};
\draw[{Latex[length=1.2mm]}-{Latex[length=1.2mm]},white!45] (-0.75,2.2)--(-0.75,0);
\node[white!55,left,font=\tiny] at (-0.75,1.1){$L$};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: $50$ ft cable, $2$ lb/ft, wound to the top}
\stepbox{1. SLICE}{piece at depth $x$: weight $2\,dx$, rises $x$}
\stepdown
\stepbox{2. INTEGRATE}{$W=\displaystyle\int_0^{50}2x\,dx=x^2\Big|_0^{50}=\keyres{2500\ \mathrm{ft\cdot lb}}$}
\stepdown
\stepbox{3. SUPERPOSE THE END LOAD}{$100$ lb bucket on the end: $+100(50)=5000$ \;$\Rightarrow$\; total $\keyres{7500\ \mathrm{ft\cdot lb}}$}
\par\vspace{2pt}
\term{Partial pull} — wind up only the top $20$ ft: slices above $20$ rise their own depth, slices below all rise exactly $20$: $W=\int_0^{20}2x\,dx+\int_{20}^{50}2(20)\,dx=400+1200=\keyres{1600}$ ft·lb — \warn{the deep slices' lift stops growing}.

\term{Leaky bucket} — $5$ lb bucket $+\,40$ lb water lifted $20$ ft, leaking to empty at the top: weight at height $x$ is $5+40\big(1-\tfrac{x}{20}\big)=45-2x$: $W=\int_0^{20}(45-2x)\,dx=900-400=\keyres{500}$ ft·lb — a \keyres{variable weight}, same machinery.

\filbreak \subsubsection{Pumping fluid out of a tank}
Slice the fluid into horizontal layers at height $y$, thickness $dy$. Each slice has volume $A(y)\,dy$ and weight $\gamma\,A(y)\,dy$, and must rise a distance $D(y)$ (the \keyres{lift distance}) to reach the spout:
$$W = \int \gamma\,A(y)\,D(y)\,dy$$
\term{Weight density} $\gamma$ of water: $9800\ \mathrm{N/m^3}$ (metric), or $62.4\ \mathrm{lb/ft^3}$ (US).

\term{3 steps:}
\begin{enumerate}[itemsep=2pt,topsep=2pt]
\item Cross-sectional area $A(y)$ of the slice (use \keyres{similar triangles} or circle geometry).
\item Lift distance $D(y)$ up to the rim / spout.
\item Multiply and integrate over the \warn{fluid depth only}.
\end{enumerate}

\begin{center}
\begin{tabular}{@{}l l l@{}}
\textbf{Shape} & \textbf{Slice $A(y)$} & \textbf{from} \\
\hline
Cylinder (rad $r$) & $\pi r^2$ & constant \\
Inverted cone ($h$, top $R$) & $\pi\big(\tfrac{R}{h}y\big)^2$ & similar $\triangle$ \\
Hemisphere bowl (rad $R$) & $\pi(R^2-y^2)$ & circle \\
Triangular trough (len $L$) & $L\,w(y)$, $w$ linear & similar $\triangle$ \\
Trapezoid trough (len $L$) & $L\big(w_0+my\big)$ & linear sides \\
Semicircular trough (len $L$) & $L\cdot 2\sqrt{R^2-y^2}$ & circle \\
\end{tabular}
\end{center}
\warn{Two traps:}
\begin{itemize}[itemsep=2pt,topsep=2pt]
\item Integrate only over the actual \emph{fluid} --- not the empty top of a partly-full tank.
\item If the spout sits \emph{above} the rim, $D(y)$ includes that extra height.
\end{itemize}

\begin{center}
\begin{tikzpicture}[scale=0.82, font=\scriptsize]
% --- cylinder ---
\begin{scope}[shift={(0,0)}]
\node[termHi] at (1,2.35){\textsc{cylinder}};
\draw[termHi,thick] (0,2)--(0,0)--(2,0)--(2,2);
\fill[uHi,fill opacity=0.16] (0,0) rectangle (2,1.6);
\fill[uHi,fill opacity=0.5] (0,0.8) rectangle (2,0.92);
\draw[uHi] (0,0.86)--(2,0.86);
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},keyHi] (1,1.6)--(2,1.6);
\node[keyHi,above,font=\tiny] at (1.5,1.58){$r$};
\draw[keyHi,-{Latex[length=1.4mm]},thick] (0.5,0.9)--(0.5,2.05);
\node[keyHi,left,font=\tiny] at (0.5,1.5){$D$};
\node[termHi,above,font=\tiny] at (1,1.95){spout};
\end{scope}
% --- inverted cone ---
\begin{scope}[shift={(3.4,0)}]
\node[termHi] at (0,2.35){\textsc{cone}};
\draw[termHi,thick] (-1,2)--(0,0)--(1,2);
\draw[termHi,thick,dashed] (-1,2)--(1,2);
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},white!45] (0,2.12)--(1,2.12);
\node[white!55,above,font=\tiny] at (0.5,2.1){$R$};
\fill[uHi,fill opacity=0.16] (0,0)--(-0.7,1.4)--(0.7,1.4)--cycle;
\fill[uHi,fill opacity=0.5] (-0.45,0.88) rectangle (0.45,0.98);
\draw[uHi] (-0.45,0.9)--(0.45,0.9);
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},keyHi] (0,0.9)--(0.47,0.9);
\node[keyHi,right,font=\tiny] at (0.45,0.72){$r=\frac{R}{h}y$};
\draw[keyHi,-{Latex[length=1.4mm]},thick] (-0.18,0.92)--(-0.18,2.05);
\node[keyHi,left,font=\tiny] at (-0.18,1.5){$h-y$};
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},white!45] (-1.2,0)--(-1.2,2);
\node[white!55,left,font=\tiny] at (-1.2,1){$h$};
\end{scope}
% --- hemisphere bowl ---
\begin{scope}[shift={(6.9,0.5)}]
\node[termHi] at (0,1.95){\textsc{bowl}};
\draw[termHi,thick,dashed] (-1.4,0)--(1.4,0);
\draw[termHi,thick] (-1.4,0) arc (180:360:1.4);
\fill[uHi,fill opacity=0.5] (-1.072,-0.95) rectangle (1.072,-0.85);
\draw[uHi] (-1.072,-0.9)--(1.072,-0.9);
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},keyHi] (0,-0.9)--(1.072,-0.9);
\node[keyHi,above,font=\tiny] at (0.6,-0.92){$\sqrt{R^2-y^2}$};
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},white!45] (0,0)--(0,-0.9);
\node[white!55,left,font=\tiny] at (0,-0.45){$y$};
\draw[{Latex[length=1mm]}-{Latex[length=1mm]},termHi] (0,0)--(-1.4,0);
\node[termHi,above,font=\tiny] at (-0.7,0){$R$};
\end{scope}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: full cone (apex down, $h=10$ ft, top radius $4$ ft) over the rim}
\stepbox{1. SLICE AREA — SIMILAR TRIANGLES}{radius grows with height: $r=\tfrac{4}{10}y=0.4y$ \;$\Rightarrow$\; $A(y)=\pi(0.4y)^2=0.16\pi y^2$ \; \emph{\scriptsize(square the whole $0.4y$ — the classic slip)}}
\stepdown
\stepbox{2. LIFT DISTANCE}{slice at height $y$ rises to the rim: $D(y)=10-y$}
\stepdown
\stepbox{3. ASSEMBLE \& INTEGRATE OVER THE FLUID}{$W=\displaystyle\int_0^{10}62.4\,(0.16\pi y^2)(10-y)\,dy=9.984\pi\!\int_0^{10}(10y^2-y^3)\,dy$}
\stepdown
\stepbox{4. EVALUATE}{$9.984\pi\Big[\tfrac{10y^3}{3}-\tfrac{y^4}{4}\Big]_0^{10}=9.984\pi\Big(\tfrac{10000}{3}-2500\Big)$
$$=9.984\pi\cdot\tfrac{10000-7500}{3}=9.984\pi\cdot\tfrac{2500}{3}=\keyres{8320\pi\approx26{,}100\ \mathrm{ft\cdot lb}}$$}

\filbreak \subsubsection{The two traps, worked}
\term{Partly full} — same cone, water only to depth $8$: \keyres{only the bounds change} (the fluid is $y\in[0,8]$; lift is still to the rim):
$$W=9.984\pi\!\int_0^{8}(10y^2-y^3)\,dy=9.984\pi\Big[\tfrac{10y^3}{3}-\tfrac{y^4}{4}\Big]_0^{8}$$
$$=9.984\pi\Big(\tfrac{5120}{3}-1024\Big)=9.984\pi\cdot\tfrac{2048}{3}\approx\keyres{21{,}400\ \mathrm{ft\cdot lb}}$$
\term{Spout above the rim} — full cone, spout $2$ ft up: \keyres{only $D$ changes}: $D=12-y$:
$$W=9.984\pi\!\int_0^{10}(12y^2-y^3)\,dy=9.984\pi\Big[4y^3-\tfrac{y^4}{4}\Big]_0^{10}$$
$$=9.984\pi(4000-2500)=\keyres{14{,}976\pi\approx47{,}000\ \mathrm{ft\cdot lb}}$$
\term{Cylinder} (constant $A$) — radius $2$ m, height $3$ m, full, metric: $A=4\pi$ always:
$$W=9800\cdot4\pi\!\int_0^{3}(3-y)\,dy=39{,}200\pi\Big[3y-\tfrac{y^2}{2}\Big]_0^3$$
$$=39{,}200\pi\big(9-\tfrac92\big)=39{,}200\pi\cdot\tfrac92=\keyres{176{,}400\pi\approx5.5\times10^5\ \mathrm{J}}$$

\filbreak \subsection{hydrostatic force}
\term{Pressure} grows with depth: $P = \gamma\,d$ (depth $d$, weight density $\gamma$).

\term{Horizontal plate} --- constant depth, so no integral:
$$F = P\cdot A = \gamma\,d\,A$$
\term{Vertical plate} --- depth varies down the plate, so slice it into horizontal strips. A strip at depth $d(y)$ has width $w(y)$ and height $dy$, so the force on it is $dF = \gamma\,d(y)\,w(y)\,dy$. Add them up:
$$F = \gamma\int d(y)\,w(y)\,dy$$

\stepbox{THE PROCESS}{
\textbf{1.} \term{Draw the plate} and choose a depth variable.\\
\textbf{2.} \term{Take a horizontal strip} at depth $h$.\\
\textbf{3.} \term{Write the strip width} as a function of that depth.\\
\textbf{4.} \term{Integrate} $\rho g\,\times$ depth $\times$ width.}
\par\vspace{2pt}
\keyres{The only hard part is step 3}: the width comes from the plate's geometry — constant for a rectangle, a similar-triangle ratio for a triangle, and $2\sqrt{r^2-y^2}$ for a circle. \warn{Depth is measured downward from the surface}, so check which way your variable runs before you integrate.
\par\vspace{2pt}
\filbreak \subsubsection{Vertical plate — strip method}
\term{3 steps:} pick a variable, then
\begin{enumerate}[itemsep=2pt,topsep=2pt]
\item strip width $w(y)$ from geometry,
\item strip depth $d(y)$ below the \keyres{fluid surface},
\item integrate $\gamma\int d(y)\,w(y)\,dy$ over the plate.
\end{enumerate}

\begin{center}
\begin{tabular}{@{}l l@{}}
\textbf{Shape} & \textbf{Strip width $w(y)$} \\
\hline
Rectangle (width $w$) & $w$ (constant) \\
Isosceles triangle & linear in $y$ (similar $\triangle$) \\
Semicircular window (rad $R$) & $2\sqrt{R^2-y^2}$ \\
\end{tabular}
\end{center}
\warn{Depth is measured down from the fluid surface} --- not always the plate's top edge:
\begin{itemize}[itemsep=2pt,topsep=2pt]
\item \keyres{Fully submerged} window sits below the surface, so $d(y)$ carries a constant offset.
\item Surface at the window's top: $d(y)$ is just the strip's position.
\end{itemize}

\begin{center}
\begin{tikzpicture}[scale=0.9, font=\scriptsize]
\draw[uHi,thick] (-1.7,2)--(1.7,2);
\node[uHi,right,font=\tiny] at (1.7,2){surface};
\fill[uHi,fill opacity=0.1] (-1.7,2) rectangle (1.7,0);
\fill[termHi,fill opacity=0.15] (-0.9,0.3) rectangle (0.9,1.5);
\draw[termHi,thick] (-0.9,0.3) rectangle (0.9,1.5);
\fill[keyHi,fill opacity=0.45] (-0.9,0.9) rectangle (0.9,1.0);
\draw[keyHi] (-0.9,0.95)--(0.9,0.95);
\draw[{Latex[length=1.2mm]}-{Latex[length=1.2mm]},keyHi] (-1.3,2)--(-1.3,0.95);
\node[keyHi,left,font=\tiny] at (-1.3,1.45){$d(y)$};
\draw[{Latex[length=1.2mm]}-{Latex[length=1.2mm]},warnHi] (-0.9,0.95)--(0.9,0.95);
\node[warnHi,below,font=\tiny] at (0,0.9){$w(y)$};
\node[keyHi,right,font=\tiny] at (0.9,0.95){$dy$};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: rectangular gate, $3$ m wide $\times$ $2$ m tall, top edge $1$ m down}
\stepbox{1. STRIP WIDTH}{rectangle: $w(y)=3$, constant}
\stepdown
\stepbox{2. DEPTH \& BOUNDS — FROM THE SURFACE}{$y=$ depth below the \keyres{surface}: the plate occupies $y=1$ to $3$ \; \emph{\scriptsize(\warn{not} $0$ to $2$ — the $1$ m offset lives in the bounds)}}
\stepdown
\stepbox{3. INTEGRATE $\gamma\!\int\! d\,w\,dy$}{$F=9800\displaystyle\int_1^3 3y\,dy=29{,}400\cdot\tfrac{y^2}{2}\Big|_1^3=29{,}400\big(\tfrac92-\tfrac12\big)=29{,}400(4)=\keyres{117.6\ \mathrm{kN}}$}

\filbreak \subsubsection{Worked (triangle): vertex-down plate, base $4$ m at the surface, height $3$ m}
\stepbox{1. WIDTH BY SIMILAR TRIANGLES}{at depth $y$: $w(y)=4\big(1-\tfrac y3\big)$ \; \emph{\scriptsize(full width at the surface, zero at the vertex)}}
\stepdown
\stepbox{2. ASSEMBLE}{$F=9800\displaystyle\int_0^3 y\cdot4\big(1-\tfrac y3\big)dy=9800\int_0^3\big(4y-\tfrac{4y^2}{3}\big)dy$}
\stepdown
\stepbox{3. EVALUATE}{$9800\Big[2y^2-\tfrac{4y^3}{9}\Big]_0^3=9800(18-12)=\keyres{58.8\ \mathrm{kN}}$}

\filbreak \subsubsection{Worked (semicircle): radius $2$ m, flat edge at the surface}
\stepbox{1. WIDTH FROM THE CIRCLE}{$w(y)=2\sqrt{4-y^2}$ at depth $y$}
\stepdown
\stepbox{2. ASSEMBLE — SPOT THE U-SUB}{$F=9800\displaystyle\int_0^2 y\cdot2\sqrt{4-y^2}\,dy$ \; \emph{\scriptsize($u=4-y^2$: the $y\,dy$ is sitting right there)}}
\stepdown
\stepbox{3. RUN THE U-SUB}{$u=4-y^2$, \; $du=-2y\,dy\Rightarrow y\,dy=-\tfrac12du$:
$$\int y\sqrt{4-y^2}\,dy=-\tfrac12\int u^{1/2}du=-\tfrac12\cdot\tfrac23u^{3/2}=-\tfrac13(4-y^2)^{3/2}$$}
\stepdown
\stepbox{4. EVALUATE — THE LOWER LIMIT CARRIES IT}{$19{,}600\Big[{-}\tfrac13(4-y^2)^{3/2}\Big]_0^2=19{,}600\Big(0-\big({-}\tfrac13\cdot4^{3/2}\big)\Big)=19{,}600\cdot\tfrac83=\keyres{\approx52.3\ \mathrm{kN}}$ \; \emph{\scriptsize($y=2$ gives $0$ — the whole value rides on $y=0$)}}
\par\vspace{2pt}
\term{Horizontal plate — no integral}: circular drain plate, radius $1$ m, flat on the floor of a $4$ m deep pool: constant depth, so $F=\gamma\,d\,A=9800\cdot4\cdot\pi(1)^2=\keyres{\approx123\ \mathrm{kN}}$.

\filbreak \subsection{improper integrals}
Integrals with an \keyres{infinite bound} or an \keyres{infinite discontinuity}. Rewrite as a limit, integrate, then take the limit.

\stepbox{THE PROCESS}{
\textbf{1.} \term{Find the bad point} — an infinite bound, or where the integrand blows up.\\
\textbf{2.} \term{Replace it} with a limit variable.\\
\textbf{3.} \term{Integrate} normally.\\
\textbf{4.} \term{Take the limit.} If it is finite, the integral \keyres{converges}. If not, it \warn{diverges}.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 1 decoded — three kinds}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{Type 1} — an \keyres{infinite bound}: $\displaystyle\int_1^{\infty}$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{Type 2, endpoint} — the integrand blows up \keyres{at $a$ or $b$}: $\displaystyle\int_0^1\frac{dx}{\sqrt{x}}$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{Type 2, interior} — the blow-up sits \warn{inside} the interval. \keyres{Split there first}, and \warn{both halves must converge}. \\
\end{tabular}}
\par\vspace{2pt}
\warn{C is the trap}: $\int_{-1}^{1}\frac{dx}{x^2}$ looks routine and is divergent. \keyres{Check the integrand for a zero denominator before you integrate anything.}
\par\vspace{2pt}
\filbreak \subsubsection{Type 1 — infinite bound}
$$\int_a^{\infty} f\,dx = \lim_{t\to\infty}\int_a^{t} f\,dx \qquad \int_{-\infty}^{\infty} f\,dx = \int_{-\infty}^{c} + \int_{c}^{\infty}$$
A two-sided $\infty$ must be split. It converges only if \emph{both} halves do.

\filbreak \subsubsection{Worked: the canonical pair — $\int_1^\infty\frac{dx}{x^2}$ vs $\int_1^\infty\frac{dx}{x}$}
\stepbox{1. REWRITE AS LIMITS}{$\displaystyle\lim_{t\to\infty}\int_1^t x^{-2}dx \qquad \text{vs} \qquad \lim_{t\to\infty}\int_1^t \frac{dx}{x}$}
\stepdown
\stepbox{2. INTEGRATE}{$\Big[-\tfrac1x\Big]_1^t=1-\tfrac1t \qquad \text{vs} \qquad \Big[\ln x\Big]_1^t=\ln t$}
\stepdown
\stepbox{3. TAKE THE LIMITS}{$1-\tfrac1t\to\keyres{1}$ \; \keyres{converges}; \qquad $\ln t\to\infty$ \; \warn{diverges}}
\par\vspace{2pt}
Same tails, opposite fates — $\frac{1}{x^2}$ dies fast enough, $\frac1x$ doesn't. That knife-edge is exactly the $p$-test below.

\filbreak \subsubsection{Type 2 — discontinuity in $[a,b]$}
If $f$ blows up at an endpoint (say $b$): $\displaystyle\int_a^b f\,dx = \lim_{t\to b^-}\int_a^t f\,dx$. If the blow-up is \emph{interior} at $c$, split at $c$ first.

\filbreak \subsubsection{Worked: endpoint blow-up — $\int_0^1\frac{dx}{\sqrt x}$}
\stepbox{1. LIMIT AT THE BAD ENDPOINT}{$\displaystyle\lim_{t\to0^+}\int_t^1x^{-1/2}dx$}
\stepdown
\stepbox{2. INTEGRATE \& EVALUATE}{$\big[2\sqrt x\big]_t^1=2-2\sqrt t$}
\stepdown
\stepbox{3. LIMIT}{$t\to0^+$: \; $\keyres{2}$ — converges \; \emph{\scriptsize(infinite height, finite area)}}

\filbreak \subsubsection{Worked: the interior trap — $\int_{-1}^{1}\frac{dx}{x^2}$}
\stepbox{1. THE NAIVE (WRONG) ROUTE}{$\big[-\tfrac1x\big]_{-1}^{1}=-1-1=\warn{-2}$ — negative area from a positive function: \warn{impossible}}
\stepdown
\stepbox{2. SPOT THE INTERIOR BLOW-UP}{$f\to\infty$ at $x=0$, \emph{inside} the interval $\Rightarrow$ must split: $\int_{-1}^0+\int_0^1$}
\stepdown
\stepbox{3. TEST ONE HALF}{$\displaystyle\lim_{t\to0^+}\int_t^1x^{-2}dx=\lim\big(\tfrac1t-1\big)=\infty$ $\Rightarrow$ \keyres{diverges} \; \emph{\scriptsize(one bad half sinks the whole integral)}}

\filbreak \subsubsection{Converge or diverge?}
\begin{itemize}
\item Limit is a finite number $\Rightarrow$ \keyres{converges} (to that number).
\item Limit is $\pm\infty$ or doesn't exist $\Rightarrow$ \keyres{diverges}.
\item \term{$p$-test}: $\displaystyle\int_1^{\infty}\frac{1}{x^p}\,dx$ converges iff $p>1$; \; $\displaystyle\int_0^{1}\frac{1}{x^p}\,dx$ converges iff $p<1$.
\item \term{Comparison}: $0\le f\le g$. If $\int g$ converges so does $\int f$; if $\int f$ diverges so does $\int g$.
\end{itemize}
\keyres{The two $p$-test flavors flip} — big powers win at $\infty$, small powers win near $0$. The worked pair above is the $p$-test at $p=2$ (converges) and $p=1$ (diverges); the $\sqrt x$ example is the $0$-to-$1$ flavor at $p=\tfrac12<1$. \; \term{Comparison example}: $\int_1^\infty e^{-x^2}dx$ — no elementary antiderivative, but $e^{-x^2}\leq e^{-x}$ for $x\geq1$ and $\int_1^\infty e^{-x}dx=e^{-1}$ converges $\Rightarrow$ \keyres{converges by comparison}.

\filbreak \subsection{integration pitfalls}
\begin{itemize}
\item The minus in $[\text{top}-(\text{bottom})]$ distributes to \warn{all} terms.
\item Power rule on a negative exponent moves it \emph{toward} zero: $-3+1=-2$ (not $-4$).
\item $\int x^{-1}\,dx = \ln|x|$ — \warn{not} the power rule (would divide by 0).
\item $(ab)^n = a^n b^n$ — \emph{both} factors get the power.
\item Always $F(b)-F(a)$, upper minus lower — never reversed.
\end{itemize}

\end{multicols}

\Needspace*{24\baselineskip}
\vspace*{\fill}
\noindent\rule{\linewidth}{0.5pt}
\begin{center}\small\textbf{Legend}\end{center}
\vspace{-3pt}
\begin{multicols}{4}
\small
\textbf{Color \& notes}\\
\textcolor{funcHi}{functions $f,g,\sin$}\\
\textcolor{varHi}{variables $x,y,n$}\\
\textcolor{numHi}{numbers $0$--$9$}\\
\textcolor{opHi}{operators $+\,-\,=$}\\
\textcolor{delimHi}{delimiters $(\,)\,[\,]$}\\
titles in white\\
\term{labels} $\cdot$ \keyres{results} $\cdot$ \warn{pitfalls}\\
\ubox{u}\,/\,\dubox{du} substitution
\columnbreak

\textbf{Greek}\\
\emph{constants (fixed values):}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\pi$ & $\approx 3.14159$\\
$\gamma$ & fluid wt density\\
$\rho$ & weight per length\\
\end{tabular}\\[2pt]
\emph{variable \& operators:}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\theta$ & angle (varies)\\
$\Delta$ & ``change in''\\
$\Sigma$ & sum of terms\\
\end{tabular}\\[2pt]
\emph{notation, not values:}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\Theta\,\Omega\,\omega$ & growth rate, like $O$\\
\end{tabular}
\columnbreak

\textbf{Calculus \& relations}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\int$ & integral\\
$\textstyle\sum$ & sum\\
$\lim$ & limit\\
$\infty$ & infinity\\
$\to$ & approaches\\
$\Rightarrow$ & implies\\
$\Leftrightarrow$ & iff\\
$\sqrt{\ }$ & root\\
$\approx$ & approx\\
$\neq\,\leq\,\geq$ & compare\\
$\pm\,\mp$ & plus / minus\\
$\cdot\,\times\,\div$ & mult / div\\
$\circ$ & compose\\
\end{tabular}\\[2pt]
\textbf{Vectors}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\langle\,\rangle$ & components\\
$\|\vec v\|$ & magnitude\\
$\vec v,\ \hat v$ & vector, unit\\
$\mathbf{i\,j\,k}$ & basis\\
$\vec u\cdot\vec v$ & dot product\\
$\mathrm{proj}$ & projection\\
\end{tabular}
\columnbreak

\textbf{Logic \& sets}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\forall$ & for all\\
$\exists$ & exists\\
$\neg$ & not\\
$\wedge\,\vee$ & and / or\\
$\oplus$ & xor / sym.\,diff\\
$\in\,\notin$ & in / not in\\
$\subseteq\,\subset$ & subset\\
$\cup\,\cap$ & union / inter.\\
$\setminus$ & set minus\\
$\equiv$ & equiv / congruent\\
$\mid$ & divides / $|x|$ / s.t.\\
$\lceil\ \rceil$ & ceiling\\
$\binom{n}{k}$ & choose\\
$\deg$ & degree\\
$\bmod$ & modulo\\
\end{tabular}
\end{multicols}
