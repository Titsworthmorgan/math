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


\section{Discrete I — Logic, Sets \& Proofs}
 
\begin{multicols}{2}
 
\filbreak \subsection{algebra refreshers}
Primary-school tools you'll need in every proof. Referenced throughout this section.
 
\filbreak \subsubsection{Exponent rules}
\begin{itemize}
\item $x^0 = 1$ \; ($x \neq 0$), \; $x^1 = x$
\item $x^{-n} = \dfrac{1}{x^n}$, \; $\left(\dfrac{a}{b}\right)^{-n} = \left(\dfrac{b}{a}\right)^n$
\item $x^{m+n} = x^m \cdot x^n$, \; $x^{m-n} = \dfrac{x^m}{x^n}$
\item $(x^m)^n = x^{mn}$, \; $(xy)^n = x^n y^n$, \; $(x/y)^n = x^n/y^n$
\item $x^{m/n} = \sqrt[n]{x^m} = (\sqrt[n]{x})^m$
\item $b^{k+1} = b \cdot b^k$ (useful for induction)
\item $(-1)^{\text{even}} = 1$, \; $(-1)^{\text{odd}} = -1$, \; $(-1)^{k+1} = -(-1)^k$
\end{itemize}
 
\filbreak \subsubsection{Polynomial multiplication}
\begin{itemize}
\item \term{FOIL} $(a+b)(c+d) = ac + ad + bc + bd$
\item $(a+b)^2 = a^2 + 2ab + b^2$
\item $(a-b)^2 = a^2 - 2ab + b^2$
\item $(a+b)(a-b) = a^2 - b^2$ (diff. of squares)
\item $(a+b)^3 = a^3 + 3a^2b + 3ab^2 + b^3$
\item $(a-b)^3 = a^3 - 3a^2b + 3ab^2 - b^3$
\item $(a+b+c)^2 = a^2+b^2+c^2+2(ab+ac+bc)$
\end{itemize}
Distribute to \emph{every} term: $a(b+c+d)$ has 3 outputs, not 2.
 
\filbreak \subsubsection{Factoring patterns}
\begin{itemize}
\item \term{GCF} first: $6x^3 + 9x^2 = 3x^2(2x + 3)$
\item \term{Diff. of squares}: $a^2 - b^2 = (a+b)(a-b)$
\item \term{Perfect sq. trinomial}: $a^2 \pm 2ab + b^2 = (a \pm b)^2$
\item \term{Sum of cubes}: $a^3 + b^3 = (a+b)(a^2 - ab + b^2)$
\item \term{Diff. of cubes}: $a^3 - b^3 = (a-b)(a^2 + ab + b^2)$
\item \term{Quadratic} $x^2+bx+c$: find $p,q$ with $p+q=b$, $pq=c$ $\Rightarrow (x+p)(x+q)$
\item \term{Grouping}: $ax+ay+bx+by = a(x+y)+b(x+y) = (a+b)(x+y)$
\end{itemize}

\filbreak \subsubsection{Which method? — decide by counting terms}
\begin{enumerate}
\item \term{GCF first, always.} Pull out the biggest factor every term shares. Check: multiply back to confirm.
\item \term{Count the terms:}
\begin{itemize}
\item \keyres{2 terms} $\to$ diff. of squares $a^2-b^2$, or sum/diff. of cubes.
\item \keyres{3 terms} $\to$ trinomial. Perfect square? Else do the $p,q$ search below.
\item \keyres{4 terms} $\to$ grouping.
\end{itemize}
\end{enumerate}

\filbreak \subsubsection{Worked: quadratic $x^2+5x+6$}
Goal: two numbers $p,q$ that \keyres{multiply to $c$} and \keyres{add to $b$}.
\par\vspace{2pt}
\stepbox{1. LIST FACTOR PAIRS OF $c=6$}{$1\cdot6, \quad 2\cdot3$}
\stepdown
\stepbox{2. WHICH PAIR ADDS TO $b=5$?}{$2+3=5$ \checkmark $\Rightarrow$ $p=2$, $q=3$}
\stepdown
\stepbox{3. WRITE IT}{$(x+2)(x+3)$}
\stepdown
\stepbox{4. FOIL BACK TO VERIFY}{$x^2+3x+2x+6=x^2+5x+6$ \checkmark}
\par\vspace{2pt}
\term{Sign rules} (read off $c$ then $b$): $c>0$: $p,q$ \keyres{same sign} (matching $b$); $c<0$: \keyres{opposite signs}, the bigger takes $b$'s sign. \term{Worked, $c<0$}: $x^2-x-12$: pairs of $-12$ summing to $-1$: $-4,+3$ $\Rightarrow$ $\keyres{(x-4)(x+3)}$.

\filbreak \subsubsection{Worked: $a\neq1$ — the AC method on $6x^2+11x+3$}
\stepbox{1. MULTIPLY $a\cdot c$}{$6\cdot3=18$; need a pair with product $18$, sum $b=11$: \; $2$ and $9$}
\stepdown
\stepbox{2. SPLIT THE MIDDLE TERM}{$6x^2+2x+9x+3$}
\stepdown
\stepbox{3. GROUP}{pair off: $(6x^2+2x)+(9x+3)$; GCF each pair: $2x(3x+1)+3(3x+1)$}
\stepdown
\stepbox{4. FACTOR THE SHARED BINOMIAL}{$\keyres{(2x+3)(3x+1)}$; FOIL back \checkmark \; \emph{\scriptsize(sitting next to the $a=1$ walkthrough: same $p,q$ hunt, against $ac$ instead of $c$)}}

\filbreak \subsubsection{Worked examples, the remaining patterns}
\begin{itemize}
\item \term{GCF}: $8x^3-12x^2 = 4x^2(2x-3)$. (shared: $4x^2$)
\item \term{Diff. squares}: $9x^2-25 = (3x)^2-(5)^2 = (3x+5)(3x-5)$.
\item \term{Perfect sq.\ trinomial}: $x^2-10x+25$: middle $=2\cdot5\cdot x$ \checkmark $\Rightarrow (x-5)^2$.
\item \term{Sum of cubes}: $8x^3+27=(2x)^3+3^3=(2x+3)(4x^2-6x+9)$.
\item \term{Diff. of cubes}: $x^3-64=x^3-4^3=(x-4)(x^2+4x+16)$. \emph{\scriptsize(SOAP: Same sign, Opposite, Always Plus)}
\end{itemize}

\filbreak \subsubsection{Worked: grouping — $x^3+2x^2+3x+6$}
\stepbox{1. SPLIT INTO PAIRS}{$(x^3+2x^2)+(3x+6)$}
\stepdown
\stepbox{2. GCF EACH PAIR}{$x^2(x+2)+3(x+2)$ — the binomials \keyres{must match}, or regroup}
\stepdown
\stepbox{3. FACTOR THE SHARED BINOMIAL}{$\keyres{(x^2+3)(x+2)}$}
\par\vspace{2pt}
\warn{Common mistakes:} dropping a sign when distributing the minus. Only canceling \emph{factors}, never \emph{terms} (see \term{Simplifying fractions} below); forgetting to pull the GCF before pattern-matching.
 
\filbreak \subsubsection{Fraction operations}
\begin{itemize}
\item $\dfrac{a}{b} + \dfrac{c}{d} = \dfrac{ad + bc}{bd}$ (common denom.)
\item $\dfrac{a}{b} \cdot \dfrac{c}{d} = \dfrac{ac}{bd}$
\item $\dfrac{a}{b} \div \dfrac{c}{d} = \dfrac{a}{b} \cdot \dfrac{d}{c} = \dfrac{ad}{bc}$
\item Non-fraction $+$ fraction: $\dfrac{A}{B} + C = \dfrac{A + CB}{B}$
\item Complex fraction: $\dfrac{a/b}{c/d} = \dfrac{a}{b} \cdot \dfrac{d}{c} = \dfrac{ad}{bc}$
\end{itemize}
 
\filbreak \subsubsection{Simplifying fractions: factors  against terms}
\term{Only cancel factors, never terms.} A factor multiplies the whole numerator or denominator. A term is added/subtracted.
\begin{itemize}
\item \term{OK}: $\dfrac{x(x+1)}{x(x+2)} = \dfrac{x+1}{x+2}$ (cancel factor $x$)
\item \term{NOT OK}: $\dfrac{x+1}{x+2} \neq \dfrac{1}{2}$ (can't cancel term $x$)
\end{itemize}
Always factor numerator and denominator fully before canceling.
 
\filbreak \subsubsection{Common denominators for induction}
Same base, different exponents: pick the larger exponent.
$$\frac{A}{b^k} + \frac{B}{b^{k+1}} = \frac{Ab + B}{b^{k+1}}$$
Shared factor in denominator: pick the one with more factors.
$$\frac{A}{(k+1)} + \frac{B}{(k+1)(k+2)} = \frac{A(k+2) + B}{(k+1)(k+2)}$$
\term{The concrete case induction actually needs} (telescoping-sum inductive step, worked below):
$$\frac{k}{k+1}+\frac{1}{(k+1)(k+2)}=\frac{k(k+2)+1}{(k+1)(k+2)}=\frac{k^2+2k+1}{(k+1)(k+2)}$$
$$=\frac{(k+1)^2}{(k+1)(k+2)}=\keyres{\frac{k+1}{k+2}}$$
The expanded top \keyres{must} factor with a $(k+1)$ — if it doesn't, the algebra slipped.
 
\filbreak \subsubsection{Solving equations}
\begin{itemize}
\item \term{Linear} $ax+b=c$: isolate $x$.
\item \term{Quadratic formula} $ax^2+bx+c=0$: $x = \dfrac{-b \pm \sqrt{b^2 - 4ac}}{2a}$
\item \term{Discriminant} $\Delta = b^2-4ac$: $>0$ two real roots; $=0$ one; $<0$ two complex.
\item \term{Completing the square}: $x^2+bx = (x+\tfrac{b}{2})^2 - (\tfrac{b}{2})^2$
\item \term{Radical}: isolate root, square both sides, check for extraneous solutions.
\end{itemize}
\term{One quadratic, both routes} — $x^2-6x+2=0$. Formula:
$$x=\frac{6\pm\sqrt{36-8}}{2}=\frac{6\pm\sqrt{28}}{2}=\frac{6\pm2\sqrt7}{2}=3\pm\sqrt7$$
Completing the square: $x^2-6x=-2\Rightarrow(x-3)^2-9=-2\Rightarrow(x-3)^2=7\Rightarrow x=3\pm\sqrt7$ — \keyres{same roots, and the second route also hands over the vertex}.

\filbreak \subsubsection{Worked: radical equation — the extraneous root, live}
$\sqrt{x+7}=x-5$:
\par\vspace{2pt}
\stepbox{1. SQUARE BOTH SIDES}{$x+7=x^2-10x+25$}
\stepdown
\stepbox{2. SOLVE THE QUADRATIC}{$x^2-11x+18=0=(x-9)(x-2)$ $\Rightarrow$ $x=9,\,2$}
\stepdown
\stepbox{3. CHECK BOTH — MANDATORY}{$x=9$: $\sqrt{16}=4=9-5$ \checkmark; \quad $x=2$: $\sqrt9=3$ vs $2-5=-3$ \warn{fails} $\Rightarrow$ extraneous. Answer: $\keyres{x=9}$ only \; \emph{\scriptsize(squaring created the ghost — the check is part of the solve)}}
 
\filbreak \subsubsection{Absolute value}
$|x| = \begin{cases} x & x \geq 0 \\ -x & x < 0 \end{cases}$
\begin{itemize}
\item $|ab| = |a||b|$, \; $|a/b| = |a|/|b|$
\item $|a+b| \leq |a|+|b|$ (triangle inequality)
\item $|x| < c \iff -c < x < c$
\item $|x| > c \iff x > c$ or $x < -c$
\item $|x| = c \iff x = \pm c$
\end{itemize}
\term{The $<$/$>$ pair, worked}: $|2x-3|<5$: \; $-5<2x-3<5$; add $3$ across: $-2<2x<8$; divide by $2$: $\keyres{-1<x<4}$ (one \keyres{band}). \quad $|2x-3|>5$: \; $2x-3>5\Rightarrow2x>8\Rightarrow x>4$, \emph{or} $2x-3<-5\Rightarrow2x<-2\Rightarrow x<-1$: $\keyres{x>4\ \text{or}\ x<-1}$ (two \keyres{tails}). \warn{Less-than $=$ between. Greater-than $=$ or} — never chain the $>$ case into one inequality.
 
\filbreak \subsubsection{Inequalities}
\begin{itemize}
\item Add/subtract same value: preserves direction.
\item Multiply/divide by positive: preserves direction.
\item \term{Multiply/divide by negative: FLIP direction.}
\item Transitivity: $a < b$ and $b < c \Rightarrow a < c$.
\item Compound $a < x < b$: treat as two inequalities simultaneously.
\item Squaring: preserves if both sides nonneg. Otherwise dangerous.
\end{itemize}
\term{The flip, live}: $-2x<6$: divide by $-2$: $x\keyres{>}-3$. Sanity: $x=0$ satisfies both \checkmark — forgetting the flip gives $x<-3$, which $0$ instantly refutes: \keyres{test one number, always}.
 
\filbreak \subsubsection{Logarithms}
$\log_b(x) = y \iff b^y = x$. Bases: $\log = \log_{10}$, $\ln = \log_e$.
\begin{itemize}
\item $\log_b(xy) = \log_b x + \log_b y$
\item $\log_b(x/y) = \log_b x - \log_b y$
\item $\log_b(x^n) = n\log_b x$
\item $\log_b(1) = 0$, \; $\log_b(b) = 1$
\item \term{Change of base}: $\log_b x = \dfrac{\log_c x}{\log_c b}$
\item $b^{\log_b x} = x$, \; $\log_b(b^x) = x$
\end{itemize}
\term{Example}: $\log_2 9=\frac{\ln 9}{\ln 2}\approx\frac{2.197}{0.693}\approx\keyres{3.17}$ — sanity: $2^3=8<9<16=2^4$, so between $3$ and $4$ \checkmark.
 
\filbreak \subsubsection{Sigma notation}
$\sum_{i=m}^{n} a_i = a_m + a_{m+1} + \cdots + a_n$. Gives \term{partial sum}, not individual terms.
\begin{itemize}
\item \term{Constant}: $\sum_{i=1}^{n} c = cn$
\item \term{Pull constant}: $\sum c \cdot a_i = c \sum a_i$
\item \term{Split}: $\sum (a_i \pm b_i) = \sum a_i \pm \sum b_i$
\item \term{Shift index}: $\sum_{i=m}^{n} a_i = \sum_{j=0}^{n-m} a_{j+m}$
\item \term{Separate last term}: $\sum_{i=1}^{n+1} a_i = \sum_{i=1}^{n} a_i + a_{n+1}$
\end{itemize}
\term{Classic sums}:
\begin{itemize}
\item $\sum_{i=1}^{n} i = \dfrac{n(n+1)}{2}$
\item $\sum_{i=1}^{n} i^2 = \dfrac{n(n+1)(2n+1)}{6}$
\item $\sum_{i=1}^{n} i^3 = \left(\dfrac{n(n+1)}{2}\right)^2$
\item $\sum_{i=1}^{n} (2i-1) = n^2$ (odds)
\item $\sum_{i=0}^{n} r^i = \dfrac{r^{n+1}-1}{r-1}$ ($r \neq 1$, geometric)
\item $\sum_{i=1}^{n} \dfrac{1}{i(i+1)} = \dfrac{n}{n+1}$ (telescoping)
\end{itemize}
\term{Manipulation worked}: $\sum_{i=1}^{n}(2i+3)=2\sum i+\sum 3=2\cdot\frac{n(n+1)}{2}+3n=n(n+1)+3n=n^2+n+3n=\keyres{n^2+4n}$ (check $n=2$: $5+7=12=4+8$ \checkmark). \; \term{Index shift}: $\sum_{i=3}^{7}i^2=\sum_{j=0}^{4}(j+3)^2$ — substitute $j=i-3$ and \keyres{shift both bounds and the body}.
 
\filbreak \subsection{propositional logic}
 
\subsubsection{Propositions \& connectives}
Statement that is either true ($T$) or false ($F$), never both. Variables: $p, q, r, \ldots$
\begin{itemize}
\item \term{negation} $\neg p$: "not $p$"; true when $p$ false.
\item \term{conjunction} $p \wedge q$: "and" (but, however, yet); true iff both true.
\item \term{disjunction} $p \vee q$: "or" (inclusive); true iff at least one true.
\item \term{conditional} $p \to q$: "if $p$ then $q$"; false only when $p$ true and $q$ false.
\item \term{biconditional} $p \leftrightarrow q$: "iff"; true iff same truth value.
\item \term{xor} $p \oplus q$: true iff exactly one true.
\end{itemize}
\term{Translation example}: "If it rains but I have an umbrella, I stay dry." $p=$ rain, $q=$ umbrella, $r=$ dry: $\keyres{(p\wedge q)\to r}$ — "but" is an $\wedge$ in disguise.
 
\filbreak \subsubsection{Truth table}
\begin{center}
\begin{tabular}{cc|cccc}
$p$ & $q$ & $p \wedge q$ & $p \vee q$ & $p \to q$ & $p \leftrightarrow q$ \\
\hline
$T$ & $T$ & $T$ & $T$ & $T$ & $T$ \\
$T$ & $F$ & $F$ & $T$ & $F$ & $F$ \\
$F$ & $T$ & $F$ & $T$ & $T$ & $F$ \\
$F$ & $F$ & $F$ & $F$ & $T$ & $T$ \\
\end{tabular}
\end{center}

\filbreak \subsubsection{Worked: build a compound table — $(p\wedge q)\to\neg r$}
\stepbox{1. COUNT ROWS}{$3$ variables $\Rightarrow$ $2^3=8$ rows. Alternate $r$ fastest, $p$ slowest}
\stepdown
\stepbox{2. ONE COLUMN PER SUBFORMULA}{build $p\wedge q$, then $\neg r$, then the arrow — never the whole thing in one pass. The decisive rows:
\begin{center}\begin{tabular}{ccc|cc|c}
$p$&$q$&$r$&$p\wedge q$&$\neg r$&$(p\wedge q)\to\neg r$\\\hline
$T$&$T$&$T$&$T$&$F$&$\warn{F}$\\
$T$&$T$&$F$&$T$&$T$&$T$\\
$F$&$\cdot$&$\cdot$&$F$&$\cdot$&$T$\\
\end{tabular}\end{center}
\emph{\scriptsize(any row with $p\wedge q=F$ is vacuously $T$ — the arrow only breaks on a kept promise)}}
\stepdown
\stepbox{3. FILL \& CLASSIFY}{$F$ needs $p\wedge q=T$ (forces $p=q=T$) \emph{and} $\neg r=F$ (forces $r=T$): \keyres{the single row $TTT$}. Row $TTF$ gives $T$: both values occur $\Rightarrow$ \keyres{contingency} (not a tautology, not a contradiction)}
 
\filbreak \subsubsection{Conditional variants}
Given $p \to q$:
\begin{itemize}
\item \term{converse}: $q \to p$
\item \term{inverse}: $\neg p \to \neg q$
\item \term{contrapositive}: $\neg q \to \neg p$ \quad ($\equiv p \to q$)
\end{itemize}
\term{Worked — one sentence, four forms}: "If $n$ is divisible by $4$, then $n$ is even" (\keyres{true}):
\begin{itemize}
\item converse: "if even, then divisible by $4$" — \warn{false} ($n=6$)
\item inverse: "if not divisible by $4$, then odd" — \warn{false} ($n=6$ again: converse and inverse are each other's contrapositives)
\item contrapositive: "if odd, then not divisible by $4$" — \keyres{true}, always matches the original
\end{itemize}
 
\filbreak \subsubsection{Necessary vs.\ sufficient}
\begin{itemize}
\item $p$ \term{sufficient} for $q$: $p \to q$
\item $p$ \term{necessary} for $q$: $q \to p$
\item $p$ iff $q$: necessary \emph{and} sufficient
\end{itemize}
\term{Example}: divisible-by-$4$ is \keyres{sufficient} for even (it guarantees it) but \warn{not necessary} (6 is even without it). Even is \keyres{necessary} for divisible-by-$4$.
 
\filbreak \subsubsection{Logical equivalences}
\begin{itemize}
\item \term{Tautology} (always $T$): $p \vee \neg p$
\item \term{Contradiction} (always $F$): $p \wedge \neg p$
\item \term{Identity}: $p \wedge T \equiv p$, \; $p \vee F \equiv p$
\item \term{Domination}: $p \vee T \equiv T$, \; $p \wedge F \equiv F$
\item \term{Idempotent}: $p \wedge p \equiv p$, \; $p \vee p \equiv p$
\item \term{Double neg.}: $\neg(\neg p) \equiv p$
\item \term{Commutative}: $p \wedge q \equiv q \wedge p$
\item \term{Associative}: $(p \wedge q) \wedge r \equiv p \wedge (q \wedge r)$
\item \term{Distributive}: $p \wedge (q \vee r) \equiv (p \wedge q) \vee (p \wedge r)$
\item \term{De Morgan's}: $\neg(p \wedge q) \equiv \neg p \vee \neg q$; \; $\neg(p \vee q) \equiv \neg p \wedge \neg q$
\item \term{Absorption}: $p \vee (p \wedge q) \equiv p$
\item \term{Implication}: $p \to q \equiv \neg p \vee q$
\item \term{Contrapositive}: $p \to q \equiv \neg q \to \neg p$
\end{itemize}

\filbreak \subsubsection{Worked: prove $\neg(p\to q)\equiv p\wedge\neg q$ by chaining laws}
\stepbox{1. KILL THE ARROW FIRST}{$\neg(p\to q)\equiv\neg(\neg p\vee q)$ \; \emph{\scriptsize(Implication law — arrows can't be pushed through directly)}}
\stepdown
\stepbox{2. DE MORGAN}{$\equiv\neg\neg p\wedge\neg q$}
\stepdown
\stepbox{3. DOUBLE NEGATION}{$\equiv\keyres{p\wedge\neg q}$ \; \emph{\scriptsize(name each law per line — that's the graded part)}}
\stepdown
\stepbox{4. CROSSCHECK BY TRUTH TABLE}{both sides are $T$ only on the row $p=T,q=F$ \checkmark — \keyres{two independent proofs, either accepted}}
\par\vspace{2pt}
Read the result: a conditional fails only when \keyres{the promise was made and broken} — $p$ happened, $q$ didn't.
 
\filbreak \subsection{predicate logic \& quantifiers}
 
\begin{itemize}
\item \term{universal} $\forall x\, P(x)$: "for all $x$, $P(x)$"; true iff $P$ holds for every $x$.
\item \term{existential} $\exists x\, P(x)$: true iff at least one $x$ satisfies $P$.
\item \term{uniqueness} $\exists! x\, P(x)$: exactly one $x$ satisfies $P$.
\end{itemize}
 
\filbreak \subsubsection{Negation}
\begin{itemize}
\item $\neg \forall x\, P(x) \equiv \exists x\, \neg P(x)$
\item $\neg \exists x\, P(x) \equiv \forall x\, \neg P(x)$
\item \keyres{Through a conditional}: $\neg\forall x\,(P(x)\to Q(x)) \equiv \exists x\,(P(x)\wedge\neg Q(x))$ — the counterexample shape: \warn{not} $\exists x(P\to\neg Q)$
\end{itemize}

\filbreak \subsubsection{Worked: negate $\forall x\,\exists y\,(x+y=0)$ step by step}
\stepbox{1. PUSH PAST THE $\forall$}{$\exists x\,\neg\exists y\,(x+y=0)$ \; \emph{\scriptsize(each quantifier flips as $\neg$ passes it)}}
\stepdown
\stepbox{2. PUSH PAST THE $\exists$}{$\exists x\,\forall y\,\neg(x+y=0)$}
\stepdown
\stepbox{3. LAND ON THE PREDICATE}{$\keyres{\exists x\,\forall y\,(x+y\neq0)}$ — "some $x$ has no additive inverse" \; \emph{\scriptsize(false over $\mathbb R$, so the original was true)}}
 
\filbreak \subsubsection{Nested quantifiers}
\begin{itemize}
\item $\forall x\, \exists y\, P(x,y)$: each $x$ has some $y$
\item $\exists y\, \forall x\, P(x,y)$: one $y$ works for all $x$ (stronger)
\item $\forall x \forall y \equiv \forall y \forall x$, \; $\exists x \exists y \equiv \exists y \exists x$
\item $\forall x \exists y \not\equiv \exists y \forall x$ (order matters)
\end{itemize}
\term{The canonical witness} over $\mathbb R$, $P(x,y)$: $x+y=0$: \; $\forall x\exists y$ — \keyres{true} (take $y=-x$, a $y$ \emph{per} $x$); \; $\exists y\forall x$ — \warn{false} (no single $y$ zeroes every $x$). Same predicate, swapped order, opposite verdicts.

\term{Finite-domain evaluation}: domain $\{1,2,3\}$, $P(x)$: $x^2>x$: \; $\forall x\,P(x)$ — false ($x=1$: $1\not>1$); \; $\exists x\,P(x)$ — true ($x=2$). \keyres{Check every element. One failure kills $\forall$, one witness saves $\exists$}.
 
\filbreak \subsection{sets}
Unordered collection of distinct \term{elements}. Order and repetition don't matter: $\{1,2,3\} = \{3,1,2,2\}$.
 
\filbreak \subsubsection{Common number sets}
\begin{itemize}
\item $\varnothing = \{\,\}$: empty set
\item $\mathbb{N}$: naturals $\{0, 1, 2, 3, \ldots\}$
\item $\mathbb{Z}$: integers $\{\ldots, -1, 0, 1, \ldots\}$
\item $\mathbb{Z}^+$: positive integers
\item $\mathbb{Q}$: rationals $\{p/q \mid p,q \in \mathbb{Z}, q \neq 0\}$
\item $\mathbb{R}$: real numbers
\item $\mathbb{C}$: complex $\{a + bi \mid a,b \in \mathbb{R}\}$
\end{itemize}
 
\filbreak \subsubsection{Set-builder notation}
$\{x \in S \mid P(x)\}$: "set of $x$ in $S$ such that $P(x)$."
\begin{itemize}
\item $\{x \in \mathbb{Z} \mid x > 0\} = \mathbb{Z}^+$
\item $\{2k \mid k \in \mathbb{Z}\}$ = even integers
\item $\{x \in \mathbb{R} \mid x^2 < 4\} = (-2, 2)$
\end{itemize}
Reverse direction — describe, then build: "positive multiples of $3$ under $20$" $\to$ $\keyres{\{3k\mid k\in\mathbb Z^+,\ 3k<20\}}$ $=\{3,6,\ldots,18\}$ — pick the pattern variable first, then bolt on the conditions.
 
\filbreak \subsubsection{Membership and subsets}
\begin{itemize}
\item $x \in A$, \; $x \notin A$
\item $A \subseteq B$: every element of $A$ is in $B$
\item $A \subset B$ or $A \subsetneq B$: $A \subseteq B$ and $A \neq B$
\item $A = B$ iff $A \subseteq B$ and $B \subseteq A$
\item $\varnothing \subseteq A$ for every $A$ \; \emph{\scriptsize(vacuously: it has no element that could fail the test)}
\end{itemize}
\warn{The $\in$ vs $\subseteq$ trap}, on $A=\{a,b\}$: \; $a\in A$ but $a\not\subseteq A$ (not a set); \; $\{a\}\subseteq A$ but also $\{a\}\in\mathcal P(A)$ — \keyres{elements of a power set are subsets of $A$}. Ask "is the left thing an \emph{element} of the right, or a \emph{set of elements} from it?"
 
\filbreak \subsubsection{Cardinality}
$|A|$ = number of elements in $A$.
\begin{itemize}
\item $|\varnothing| = 0$, \; $|\{a,b,c\}| = 3$
\item \term{finite} if $|A| = n$ for some $n \in \mathbb{N}$
\item \term{infinite} if not finite
\item $|A| = |B|$ iff bijection $A \to B$ exists
\end{itemize}
 
\filbreak \subsubsection{Set operations}
\begin{itemize}
\item \term{union}: $A \cup B = \{x \mid x \in A \vee x \in B\}$
\item \term{intersection}: $A \cap B = \{x \mid x \in A \wedge x \in B\}$
\item \term{difference}: $A \setminus B = \{x \mid x \in A \wedge x \notin B\}$
\item \term{complement}: $\overline{A} = A^c = U \setminus A$
\item \term{symmetric diff.}: $A \oplus B = (A \setminus B) \cup (B \setminus A)$
\item \term{disjoint}: $A \cap B = \varnothing$
\end{itemize}

\filbreak \subsubsection{Worked: every operation on one pair}
$U=\{1,\ldots,8\}$, \; $A=\{1,2,3,4\}$, \; $B=\{3,4,5,6\}$:
\par\vspace{2pt}
\stepbox{1. UNION \& INTERSECTION}{$A\cup B=\{1,2,3,4,5,6\} \qquad A\cap B=\{3,4\}$}
\stepdown
\stepbox{2. DIFFERENCES — ORDER MATTERS}{$A\setminus B=\{1,2\} \qquad B\setminus A=\{5,6\}$}
\stepdown
\stepbox{3. COMPLEMENT \& SYMMETRIC DIFF}{$\overline A=\{5,6,7,8\} \qquad A\oplus B=\{1,2\}\cup\{5,6\}=\{1,2,5,6\}$ \; \emph{\scriptsize($\oplus$ $=$ union minus the overlap)}}
\stepdown
\stepbox{4. SANITY COUNT}{$|A\cup B|=|A|+|B|-|A\cap B|=4+4-2=6$ \checkmark — inclusion-exclusion already at work}
 
\filbreak \subsubsection{Cartesian product}
$A \times B = \{(a, b) \mid a \in A \wedge b \in B\}$
\begin{itemize}
\item $(a,b) \neq (b,a)$ in general
\item $|A \times B| = |A| \cdot |B|$
\end{itemize}
\term{Roster example}: $\{1,2\}\times\{a,b,c\}=\{(1,a),(1,b),(1,c),(2,a),(2,b),(2,c)\}$ — $2\cdot3=\keyres{6}$ pairs, first coordinate from the first set, always. ($\{a,b,c\}\times\{1,2\}$ is a \emph{different} set.)
 
\filbreak \subsubsection{Power set}
$\mathcal{P}(A)$ = all subsets of $A$ (incl. $\varnothing$ and $A$). \; $|\mathcal{P}(A)| = 2^{|A|}$
 
Ex: $\mathcal{P}(\{a,b\}) = \{\varnothing, \{a\}, \{b\}, \{a,b\}\}$

Three elements, $2^3=8$ subsets — list by size so none hide: $\mathcal P(\{a,b,c\})=\{\varnothing,\ \{a\},\{b\},\{c\},\ \{a,b\},\{a,c\},\{b,c\},\ \{a,b,c\}\}$. \warn{The two usually forgotten}: $\varnothing$ and the whole set.
 
\begin{center}
\begin{tikzpicture}[scale=0.75]
\draw[white!45,thick] (-3.2,-1.8) rectangle (3.2,1.8);
\node[white!70,font=\scriptsize] at (-2.85,1.5) {$U$};
\fill[uHi,fill opacity=0.20] (-0.9,0) circle (1.3);
\fill[keyHi,fill opacity=0.20] (0.9,0) circle (1.3);
\draw[uHi,thick] (-0.9,0) circle (1.3);
\draw[keyHi,thick] (0.9,0) circle (1.3);
\node[uHi,font=\scriptsize] at (-1.85,0) {$A$};
\node[keyHi,font=\scriptsize] at (1.85,0) {$B$};
\node[white,font=\tiny] at (0,0) {$A \cap B$};
\end{tikzpicture}
\end{center}
 
\filbreak \subsubsection{Set identities}
\begin{itemize}
\item \term{Identity}: $A \cup \varnothing = A$, \; $A \cap U = A$
\item \term{Domination}: $A \cup U = U$, \; $A \cap \varnothing = \varnothing$
\item \term{Idempotent}: $A \cup A = A$, \; $A \cap A = A$
\item \term{Double comp.}: $\overline{\overline{A}} = A$
\item \term{Commutative}: $A \cup B = B \cup A$
\item \term{Associative}: $(A \cup B) \cup C = A \cup (B \cup C)$
\item \term{Distributive}: $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$
\item \term{De Morgan's}: $\overline{A \cup B} = \overline{A} \cap \overline{B}$
\item \term{Absorption}: $A \cup (A \cap B) = A$
\item \term{Complement}: $A \cup \overline{A} = U$, \; $A \cap \overline{A} = \varnothing$
\item \term{Difference}: $A \setminus B = A \cap \overline{B}$
\end{itemize}

\filbreak \subsubsection{Worked: De Morgan proven both ways}
\term{Way 1 — element chasing (double containment in one iff-chain)}:
\par\vspace{2pt}
\stepbox{1. TAKE AN ARBITRARY ELEMENT}{$x\in\overline{A\cup B}$}
\stepdown
\stepbox{2. UNPACK TWO DEFINITIONS}{complement first: $\iff x\notin A\cup B$; then union: $\iff \neg(x\in A\vee x\in B)$}
\stepdown
\stepbox{3. LOGIC DE MORGAN DOES THE WORK}{$\iff x\notin A\wedge x\notin B$ \; \emph{\scriptsize(every set law is a logic law wearing braces)}}
\stepdown
\stepbox{4. REPACK}{$\iff x\in\overline A\cap\overline B$ \; — every step an $\iff$, so both containments at once \; $\blacksquare$}
\par\vspace{2pt}
\term{Way 2 — set algebra}: chain known identities, one per step, exactly like the logic-law proof earlier — for example, $\overline{A\cup(B\cap C)}=\overline A\cap\overline{B\cap C}=\overline A\cap(\overline B\cup\overline C)$ (De Morgan twice). \keyres{Either style is a full proof. Element-chasing is the fallback when no identity fits.}
 
\filbreak \subsubsection{Inclusion-exclusion}
\begin{itemize}
\item $|A \cup B| = |A| + |B| - |A \cap B|$
\item $|A \cup B \cup C| = |A|+|B|+|C| - |A \cap B| - |A \cap C| - |B \cap C| + |A \cap B \cap C|$
\item $|A \setminus B| = |A| - |A \cap B|$
\item $|\overline{A}| = |U| - |A|$
\item Disjoint: $|A \cup B| = |A| + |B|$
\end{itemize}

\filbreak \subsubsection{Worked: the 3-set survey}
Of $60$ students: $30$ take Java, $25$ Python, $20$ C; $12$ Java$\wedge$Python, $8$ Java$\wedge$C, $6$ Python$\wedge$C; $3$ all three.
\par\vspace{2pt}
\stepbox{1. AT LEAST ONE — RUN THE FORMULA}{$|J\cup P\cup C|=30+25+20-12-8-6+3=\keyres{52}$}
\stepdown
\stepbox{2. NONE — COMPLEMENT}{$60-52=\keyres{8}$}
\stepdown
\stepbox{3. EXACTLY ONE — PEEL THE OVERLAPS PER SET}{Java only: $30-12-8+3=13$; \; Python only: $25-12-6+3=10$; \; C only: $20-8-6+3=9$ \;$\Rightarrow$\; $\keyres{32}$ \; \emph{\scriptsize(add the triple back — it was subtracted twice)}}
 
\filbreak \subsection{functions}
$f: A \to B$ assigns each $a \in A$ a unique $f(a) \in B$.
\begin{itemize}
\item \term{domain} $A$: inputs
\item \term{codomain} $B$: possible outputs
\item \term{range/image} $f(A) = \{f(a) \mid a \in A\} \subseteq B$: actual outputs
\end{itemize}
 
\filbreak \subsubsection{Types}
\begin{itemize}
\item \term{injective (1-to-1)}: $f(a_1) = f(a_2) \Rightarrow a_1 = a_2$. No two inputs share an output.
\item \term{surjective (onto)}: $\forall b \in B,\, \exists a$ with $f(a) = b$. Range $=$ codomain.
\item \term{bijective}: both injective and surjective. Has inverse.
\end{itemize}

\filbreak \subsubsection{Worked: prove $f:\mathbb R\to\mathbb R$, $f(x)=3x+2$ is a bijection}
\stepbox{1. INJECTIVE — ASSUME EQUAL OUTPUTS}{$3a+2=3b+2 \Rightarrow 3a=3b \Rightarrow a=b$ \; \emph{\scriptsize(outputs equal forces inputs equal — the definition, verbatim)}}
\stepdown
\stepbox{2. SURJECTIVE — CATCH AN ARBITRARY $b$}{given any $b$, exhibit the input: $a=\tfrac{b-2}{3}$, and $f(a)=3\cdot\tfrac{b-2}{3}+2=b$ \checkmark}
\stepdown
\stepbox{3. CONCLUDE}{both hold $\Rightarrow$ \keyres{bijective}, so $f^{-1}$ exists \; $\blacksquare$}
\par\vspace{2pt}
\term{Disproof by counterexample} — $g(x)=x^2$ on $\mathbb R\to\mathbb R$: not injective ($g(-1)=g(1)=1$, two inputs one output); not surjective (no $a$ with $a^2=-1$). \keyres{Codomain surgery fixes surjectivity}: the same rule as $g:\mathbb R\to[0,\infty)$ \emph{is} onto — inj/surj are properties of the \warn{whole signature}, not the formula.
 
\filbreak \subsubsection{Composition \& inverse}
\begin{itemize}
\item $(f \circ g)(x) = f(g(x))$
\item Associative: $(f \circ g) \circ h = f \circ (g \circ h)$
\item Not commutative: $f \circ g \neq g \circ f$ in general
\item \term{Inverse} $f^{-1}$: exists iff $f$ bijective; $f^{-1}(f(x)) = x$
\item $(f \circ g)^{-1} = g^{-1} \circ f^{-1}$
\item \term{Identity} $\text{id}_A(x) = x$
\end{itemize}
\term{Worked}: $f(x)=2x+1$, $g(x)=x^2$: \; $(f\circ g)(x)=2x^2+1$ but $(g\circ f)(x)=(2x+1)^2$ — \keyres{different functions}: non-commutativity on display. \; \term{Finding $f^{-1}$ — swap and solve}: $y=3x+2$ $\to$ swap: $x=3y+2$ $\to$ solve: $f^{-1}(x)=\keyres{\frac{x-2}{3}}$; check $f^{-1}(f(x))=x$ \checkmark.
 
\filbreak \subsubsection{Cardinality comparisons}
\begin{itemize}
\item Injection $A \to B$: $|A| \leq |B|$
\item Surjection $A \to B$: $|A| \geq |B|$
\item Bijection $A \to B$: $|A| = |B|$
\item \term{Pigeonhole}: if $|A| > |B|$, no injection $A \to B$; \emph{some} output is hit $\geq 2$ times.
\item \term{Generalized pigeonhole}: $N$ objects in $k$ boxes $\Rightarrow$ some box holds $\geq\lceil N/k\rceil$.
\end{itemize}

\filbreak \subsubsection{Worked: pigeonhole, plain and generalized}
\stepbox{1. PLAIN — NAME PIGEONS AND HOLES}{$13$ people, $12$ birth months: $13>12$ $\Rightarrow$ \keyres{two share a month} \; \emph{\scriptsize(existence only — no telling which month)}}
\stepdown
\stepbox{2. GENERALIZED — INVERT THE CEILING}{cards to guarantee $3$ of one suit: want $\lceil N/4\rceil\geq3$. The ceiling exceeds $2$ exactly when $N/4>2$, that is, $N>8$; smallest integer: $N=\keyres{9}$}
\stepdown
\stepbox{3. THE WORST-CASE READ}{$8$ cards can dodge ($2$ per suit); the $9$th card breaks some suit to $3$ — \keyres{"guarantee" always means beat the worst case}}

\filbreak \subsection{relations}
A \term{relation} on $A$ is any set $R\subseteq A\times A$; write $aRb$ for $(a,b)\in R$. Three properties to check, each a quantified statement:
\begin{itemize}
\item \term{reflexive}: $\forall a$: $aRa$ — every element loops to itself
\item \term{symmetric}: $aRb\Rightarrow bRa$ — arrows come in pairs
\item \term{transitive}: $aRb\wedge bRc\Rightarrow aRc$ — paths shortcut
\end{itemize}
All three $\Rightarrow$ \term{equivalence relation}, which \keyres{partitions $A$ into equivalence classes}.

\filbreak \subsubsection{Worked: classify two relations}
\stepbox{1. $\leq$ ON $\mathbb Z$}{reflexive ($a\leq a$) \checkmark; \; symmetric? $2\leq3$ but $3\not\leq2$ \warn{fails}; \; transitive \checkmark — \keyres{not an equivalence} (it's a partial order)}
\stepdown
\stepbox{2. $a\equiv b\pmod 3$ ON $\mathbb Z$}{reflexive ($3\mid a-a=0$) \checkmark; \; symmetric ($b-a=-(a-b)$, so $3\mid a-b\Rightarrow3\mid b-a$) \checkmark; \; transitive ($3\mid a-b,\ 3\mid b-c\Rightarrow3\mid(a-b)+(b-c)$, and $(a-b)+(b-c)=a-c$, so $3\mid a-c$) \checkmark — \keyres{equivalence}}
\stepdown
\stepbox{3. READ OFF THE CLASSES}{$[0]=\{\ldots,-3,0,3,\ldots\}$, \; $[1]$, \; $[2]$ — three classes, \keyres{disjoint, covering all of $\mathbb Z$}: a partition \; \emph{\scriptsize(one class per remainder — mod arithmetic below runs on these)}}
 
\filbreak \subsection{number theory}
 
\subsubsection{Divisibility}
$a \mid b$ ("$a$ divides $b$"): $\exists k \in \mathbb{Z}$ with $b = ak$.
\begin{itemize}
\item $a \mid a$, \; $a \mid 0$, \; $1 \mid a$
\item $a \mid b$ and $a \mid c$ $\Rightarrow a \mid (b+c)$ and $a \mid (bc)$
\item $a \mid b$ and $a \mid c$ $\Rightarrow a \mid (mb + nc)$ for any $m, n \in \mathbb{Z}$
\item $a \mid b$ and $b \mid c$ $\Rightarrow a \mid c$ (transitive)
\item $a \mid b$ and $b \mid a$ $\Rightarrow a = \pm b$
\end{itemize}
\term{The workhorse, proved} (a direct proof in miniature): $a\mid b$, $a\mid c$ $\Rightarrow$ $b=ak$, $c=al$ $\Rightarrow$ $mb+nc=m(ak)+n(al)=a(mk+nl)=a\cdot(\text{integer})$ $\Rightarrow$ $a\mid(mb+nc)$ $\blacksquare$ — \keyres{unpack, substitute, factor the $a$ out, repack}. Every divisibility proof is this move.
 
\filbreak \subsubsection{Division algorithm}
$\forall a \in \mathbb{Z}, d \in \mathbb{Z}^+$: $\exists!\, q, r \in \mathbb{Z}$ with $a = dq + r$, $0 \leq r < d$.
\begin{itemize}
\item $q = a \textbf{ div } d$: quotient
\item $r = a \textbf{ mod } d$: remainder
\end{itemize}
\term{Both signs, worked}: $47=5\cdot9+2$: div $=9$, mod $=2$. \quad \warn{Negative dividend}: $-11=3\cdot(\keyres{-4})+\keyres{1}$ — \warn{not} $3\cdot(-3)-2$: the remainder is \keyres{never negative}; push $q$ down one more.

\filbreak \subsubsection{Base conversion (via div/mod)}
Decimal $\to$ binary: \keyres{repeatedly divide by 2, collect remainders, read upward}.

\filbreak \subsubsection{Worked: $45\to$ binary $\to$ back}
\stepbox{1. DIVIDE DOWN}{$45=2\cdot22+\mathbf1,\; 22=2\cdot11+\mathbf0,\; 11=2\cdot5+\mathbf1,\; 5=2\cdot2+\mathbf1,\; 2=2\cdot1+\mathbf0,\; 1=2\cdot0+\mathbf1$}
\stepdown
\stepbox{2. READ REMAINDERS UPWARD}{$45=\keyres{101101_2}$ \; \emph{\scriptsize(bottom remainder is the top bit)}}
\stepdown
\stepbox{3. REVERSE DIRECTION — POWERS BACK}{$101101_2=32+8+4+1=\keyres{45}$ \checkmark \; \emph{\scriptsize(hex: group bits in 4s from the right: $0010\,1101\to \mathrm{2D}_{16}$)}}
 
\filbreak \subsubsection{Modular arithmetic}
$a \equiv b \pmod{n}$ iff $n \mid (a - b)$ iff $a, b$ have same remainder mod $n$.
\begin{itemize}
\item \term{Reflexive}: $a \equiv a \pmod n$
\item \term{Symmetric}: $a \equiv b \Rightarrow b \equiv a$
\item \term{Transitive}: $a \equiv b, b \equiv c \Rightarrow a \equiv c$
\item \term{Addition}: $a \equiv b, c \equiv d \Rightarrow a+c \equiv b+d \pmod n$
\item \term{Multiplication}: $\Rightarrow ac \equiv bd \pmod n$
\item \term{Powers}: $a \equiv b \Rightarrow a^k \equiv b^k \pmod n$
\end{itemize}
\term{Both definitions, one check}: $17\equiv5\pmod{12}$: \; $12\mid(17-5)=12$ \checkmark, and both leave remainder $5$ \checkmark.

\filbreak \subsubsection{Worked: the last digit of $7^{100}$}
Last digit $=$ value mod $10$ — the Powers rule's whole job:
\par\vspace{2pt}
\stepbox{1. FIND THE CYCLE}{$7^1\!\to\!7,\ 7^2\!\to\!9,\ 7^3\!\to\!3,\ 7^4\!\to\!1$, then repeats — \keyres{cycle length 4}}
\stepdown
\stepbox{2. REDUCE THE EXPONENT MOD THE CYCLE}{$100\bmod4=0$ $\Rightarrow$ $7^{100}$ sits at the \emph{end} of a cycle, like $7^4$}
\stepdown
\stepbox{3. READ OFF}{last digit $=\keyres{1}$ \; \emph{\scriptsize(exponent $\equiv0$ means the cycle's last entry, not the first)}}
 
\filbreak \subsubsection{GCD and LCM}
\begin{itemize}
\item $\gcd(a, b)$: largest $d$ with $d \mid a$ and $d \mid b$
\item $\text{lcm}(a, b)$: smallest $m > 0$ with $a \mid m$ and $b \mid m$
\item \term{Identity}: $\gcd(a,b) \cdot \text{lcm}(a,b) = |ab|$
\item \term{Coprime}: $\gcd(a, b) = 1$
\item \term{Euclidean algorithm}: $\gcd(a, b) = \gcd(b, a \bmod b)$, stop when second is 0.
\item \term{Bezout}: $\exists s, t \in \mathbb{Z}$ with $sa + tb = \gcd(a, b)$.
\end{itemize}

\filbreak \subsubsection{Worked: Euclid forward — $\gcd(252,198)$}
\stepbox{1. DIVIDE, KEEP THE REMAINDER}{$252=1\cdot198+\mathbf{54}$}
\stepdown
\stepbox{2. SLIDE LEFT, REPEAT}{$198=3\cdot54+\mathbf{36}, \qquad 54=1\cdot36+\mathbf{18}, \qquad 36=2\cdot18+\mathbf{0}$}
\stepdown
\stepbox{3. LAST NONZERO REMAINDER}{$\gcd=\keyres{18}$; \; bonus: $\mathrm{lcm}=\frac{252\cdot198}{18}=\keyres{2772}$ \; \emph{\scriptsize(the identity earns its keep)}}

\filbreak \subsubsection{Worked: Bézout backward — $18=s\cdot252+t\cdot198$}
Run the \emph{same} equations bottom-up, substituting each remainder:
\par\vspace{2pt}
\stepbox{1. START AT THE GCD LINE}{$18=54-1\cdot36$}
\stepdown
\stepbox{2. REPLACE THE NEWEST REMAINDER}{$36=198-3\cdot54$: \quad $18=54-(198-3\cdot54)=4\cdot54-198$}
\stepdown
\stepbox{3. REPLACE AGAIN}{$54=252-198$: \quad $18=4(252-198)-198=\keyres{4\cdot252-5\cdot198}$}
\stepdown
\stepbox{4. CHECK}{$1008-990=18$ \checkmark \; \emph{\scriptsize($s=4$, $t=-5$ — always verify. Sign slips are the norm here)}}
 
\filbreak \subsubsection{Primes}
$p > 1$ prime iff only divisors are $1$ and $p$.
\begin{itemize}
\item \term{Fundamental theorem of arithmetic}: every integer $>1$ has a unique prime factorization.
\item Infinitely many primes.
\item $p$ prime, $p \mid ab \Rightarrow p \mid a$ or $p \mid b$.
\end{itemize}
\term{Factorization worked}: $600=6\cdot100=2\cdot3\cdot4\cdot25=\keyres{2^3\cdot3\cdot5^2}$ — peel small primes until everything is prime. \; \term{Primality by trial division}: test $89$: only need primes $\leq\sqrt{89}\approx9.4$, that is, $2,3,5,7$ — none divide $\Rightarrow$ \keyres{$89$ is prime} \emph{\scriptsize(a factor pair straddles $\sqrt n$ — one side is always $\leq\sqrt n$)}.

\filbreak \subsubsection{Worked: infinitely many primes (by contradiction)}
\stepbox{1. ASSUME THE OPPOSITE}{finitely many: $p_1,p_2,\ldots,p_n$ is \emph{all} of them}
\stepdown
\stepbox{2. BUILD THE BREAKER}{$N=p_1p_2\cdots p_n+1$}
\stepdown
\stepbox{3. INTERROGATE $N$}{$N>1$, so by the fundamental theorem of arithmetic it has a prime factor $q$. But each $p_i$ divides $p_1\cdots p_n$, so $N=p_i\cdot(\text{integer})+1$ leaves remainder $\keyres{1}$ — $p_i\nmid N$: $q$ is \warn{not on the list}}
\stepdown
\stepbox{4. CONTRADICTION}{the list wasn't complete $\Rightarrow$ \keyres{infinitely many primes} $\blacksquare$ \; \emph{\scriptsize(companion to the $\sqrt2$ proof below — same skeleton, different breaker)}}
 
\filbreak \subsection{proof strategies}
Every proof has the same skeleton: state assumptions, work step-by-step using definitions and prior results, end with the conclusion.

\stepbox{THE PROCESS}{
\textbf{1.} \term{Read the shape} of the claim — $p\to q$, "for all", "there exists", or a set equality.\\
\textbf{2.} \term{Try to break it first.} One counterexample ends the job. \warn{Do this before proving anything.}\\
\textbf{3.} \term{Pick the technique} from the table below.\\
\textbf{4.} \term{Write the first and last lines} before the middle — what you assume, and what you must reach.\\
\textbf{5.} \term{Close the gap} between them.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 3 decoded — which technique?}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\textcolor{termHi}{\textbf{technique}} & \textcolor{termHi}{\textbf{reach for it when}} \\[1pt]
\term{Direct} & $p$ unpacks cleanly into $q$ \\
\term{Contrapositive} & $\neg q$ is easier to handle than $p$ — often when $q$ says "not", or denies existence \\
\term{Contradiction} & irrationality, infinitude, uniqueness \\
\term{Cases} & a definition \keyres{splits}: absolute value, parity, sign \\
\term{Induction} & the claim is indexed by $\mathbb{N}$ and the pattern propagates \\
\term{Strong induction} & recurrences, or splitting into smaller pieces \\
\term{Counterexample} & you suspect the claim is \keyres{false} \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE TWO LINES THAT DO THE WORK}{
\textbf{Opening} — unpack the hypothesis into algebra: \; "$n$ is even, so $\keyres{n=2k}$ for some integer $k$."\\
\textbf{Closing} — state the goal in the same algebra: \; "so $n^2=2m$ for some integer $m$, and $n^2$ is even."\\
Write both \keyres{before} the middle. \warn{Most stuck proofs are stuck because the goal was never written down.}}
\par\vspace{2pt}
\filbreak \subsubsection{Direct proof (for $p \to q$)}
\begin{enumerate}
\item \term{Assume} $p$ is true.
\item \term{Apply definitions}: unpack what $p$ means (for example, "$n$ is even" $\Rightarrow n = 2k$ for some $k \in \mathbb{Z}$).
\item \term{Manipulate} algebraically toward the form of $q$.
\item \term{Conclude} $q$ is true. Therefore $p \to q$.
\end{enumerate}
\filbreak \subsubsection{Worked: if $n$ is even, then $n^2$ is even}
\stepbox{1. ASSUME $p$ — UNPACK THE DEFINITION}{$n$ even: $n=2k$ for some $k\in\mathbb Z$}
\stepdown
\stepbox{2. MANIPULATE}{$n^2=(2k)^2=4k^2$}
\stepdown
\stepbox{3. REPACK INTO $q$'S SHAPE}{$=2(2k^2)=2\cdot(\text{integer})$}
\stepdown
\stepbox{4. CONCLUDE}{$n^2$ is even $\blacksquare$ \; \emph{\scriptsize(the template proof — every direct proof is unpack $\to$ algebra $\to$ repack)}}

\filbreak \subsubsection{Contrapositive (for $p \to q$)}
Use when assuming $p$ directly is awkward but $\neg q$ gives a clean handle. Valid since $p \to q \equiv \neg q \to \neg p$.
\begin{enumerate}
\item \term{Assume} $\neg q$.
\item Derive $\neg p$ via direct proof.
\item Conclude $p \to q$.
\end{enumerate}
\term{Quick}: If $n^2$ is odd, then $n$ is odd — contrapositive: if $n$ even, $n^2$ even, \keyres{proved above}, done $\blacksquare$.

\filbreak \subsubsection{Worked: if $x^3$ is irrational, then $x$ is irrational}
\stepbox{1. FLIP TO THE CONTRAPOSITIVE}{prove instead: $x$ rational $\Rightarrow$ $x^3$ rational \; \emph{\scriptsize("irrational" has no algebra handle; "rational" does)}}
\stepdown
\stepbox{2. UNPACK}{$x=\dfrac ab$, \; $a,b\in\mathbb Z$, $b\neq0$}
\stepdown
\stepbox{3. CUBE}{$x^3=\dfrac{a^3}{b^3}$ — integers over a nonzero integer: rational}
\stepdown
\stepbox{4. CONCLUDE THE ORIGINAL}{contrapositive proved $\Rightarrow$ original holds $\blacksquare$}

\filbreak \subsubsection{Contradiction (for $p$)}
\begin{enumerate}
\item \term{Assume} $\neg p$. \; (For a \emph{conditional} $p\to q$, assume \keyres{$p \wedge \neg q$}, since $\neg(p\to q)\equiv p\wedge\neg q$.)
\item Derive a contradiction $q \wedge \neg q$ (something impossible).
\item Conclude $\neg p$ is false, so $p$ is true.
\end{enumerate}
\filbreak \subsubsection{Worked: $\sqrt2$ is irrational — the canonical contradiction}
\stepbox{1. ASSUME THE OPPOSITE, IN LOWEST TERMS}{$\sqrt2=\dfrac ab$ with $\gcd(a,b)=1$ \; \emph{\scriptsize(the "lowest terms" clause is load-bearing — it's what breaks)}}
\stepdown
\stepbox{2. SQUARE \& CLEAR}{square both sides: $2=\dfrac{a^2}{b^2}$; multiply by $b^2$: $2b^2=a^2$}
\stepdown
\stepbox{3. SO $a^2$ IS EVEN, HENCE $a$ IS EVEN}{$a^2=2b^2=2\cdot(\text{integer})$ — even. And \keyres{odd numbers have odd squares}: $a=2m+1\Rightarrow a^2=4m^2+4m+1=2(2m^2+2m)+1$, odd — so $a^2$ even forces $a$ even: $a=2k$}
\stepdown
\stepbox{4. SUBSTITUTE — SO $b$ IS EVEN TOO}{$a=2k$: \; $2b^2=(2k)^2=4k^2\Rightarrow b^2=2k^2$ — even, and by the same lemma $b$ is even}
\stepdown
\stepbox{5. CONTRADICTION}{both even $\Rightarrow$ $\gcd(a,b)\geq2$ — but we said lowest terms. Assumption dies: \keyres{$\sqrt2$ irrational} $\blacksquare$ \; \emph{\scriptsize(same skeleton proves $\sqrt3$)}}
\par\vspace{2pt}
\term{Conditional flavor} (assume $p\wedge\neg q$): claim: if $3n+2$ is odd then $n$ is odd. Assume $3n+2$ odd \emph{and} $n$ even: $n=2k\Rightarrow3n+2=6k+2=2(3k+1)$ — even, contradicting the assumption $\blacksquare$.

\filbreak \subsubsection{True/false — try to break it first}
\begin{itemize}
\item Throw specific numbers at it (especially $\sqrt{2}$). Breaks $\Rightarrow$ \keyres{false}, give that counterexample.
\item Can't break it $\Rightarrow$ likely \keyres{true}, write the proof.
\item $\sqrt{2}$ as a tool: $(\sqrt{2})^2 = 2$ (rational!) kills any "irrational $\Rightarrow$ irrational after squaring" claim.
\end{itemize}

\filbreak \subsubsection{Worked: a disproof, written up properly}
Claim: "$n^2+n+41$ is prime for every $n\in\mathbb N$."
\par\vspace{2pt}
\stepbox{1. HUNT A BREAKER}{primes for $n=0,1,2,\ldots$ — suspiciously good. Rewrite: $n^2+n+41=n(n+1)+41$ — \keyres{a $41$ will factor out whenever $41\mid n(n+1)$}, for example, $n=40$ or $n=41$}
\stepdown
\stepbox{2. EXHIBIT THE COUNTEREXAMPLE}{$n=40$: $40\cdot41+41=41(40+1)=41^2=1681$ — \warn{not prime} \; \emph{\scriptsize($n=41$ works too: $41\cdot42+41=41\cdot43$)}}
\stepdown
\stepbox{3. CONCLUDE}{the claim is \keyres{false}; the counterexample \emph{is} the complete answer $\blacksquare$ \; \emph{\scriptsize(one failure kills a $\forall$ — no further explanation owed)}}

\filbreak \subsubsection{Proof by cases}
Used when the domain naturally splits.
\begin{enumerate}
\item Identify cases that exhaust all possibilities (every input falls into at least one).
\item Prove the statement for each case independently.
\item Conclude it holds in general.
\end{enumerate}
\filbreak \subsubsection{Worked: $|x|\geq0$ for all real $x$ — and the parity classic}
\stepbox{1. SPLIT WHERE THE DEFINITION SPLITS}{$|x|$ is piecewise at $0$: cases $x\geq0$ and $x<0$ \keyres{exhaust} $\mathbb R$}
\stepdown
\stepbox{2. CASE 1}{$x\geq0$: $|x|=x\geq0$ \checkmark}
\stepdown
\stepbox{3. CASE 2}{$x<0$: $|x|=-x>0$ \checkmark}
\stepdown
\stepbox{4. BOTH ROADS ARRIVE}{$|x|\geq0$ always $\blacksquare$}
\par\vspace{2pt}
\term{Parity flavor} (the usual exam split): $n^2+n$ is even for every $n$: \; $n^2+n=n(n+1)$ — \keyres{consecutive integers, one is always even} $\blacksquare$ \emph{\scriptsize(or: case $n$ even, case $n$ odd — both give even)}.

\filbreak \subsubsection{Universal $\forall x\, P(x)$}
Let $x$ be \term{arbitrary} (don't pick a specific value); show $P(x)$ holds. Conclude it holds for all $x$. \emph{One counterexample disproves a universal claim.}

\term{Worked}: "the average of any two distinct reals lies strictly between them": let $a<b$ be \keyres{arbitrary}; then $a=\frac{a+a}{2}<\frac{a+b}{2}<\frac{b+b}{2}=b$ $\blacksquare$ — no specific numbers ever appeared. That's what makes it universal.

\filbreak \subsubsection{Existential $\exists x\, P(x)$}
\term{Constructive}: exhibit a specific $x$ that works.
\term{Non-constructive}: prove $x$ must exist without finding it (for example, pigeonhole, intermediate value).

\term{Worked (constructive)}: "some perfect square is a sum of two positive perfect squares": $\keyres{25=9+16}$ $\blacksquare$ — the witness is the whole proof. \; \term{Non-constructive}: the $13$-birthdays pigeonhole above proves two people share a month \keyres{without naming the month}.

\filbreak \subsubsection{Set proofs}
\begin{itemize}
\item \term{Subset $A \subseteq B$}: let $x \in A$ arbitrary. Show $x \in B$.
\item \term{Equality $A = B$}: double containment — prove $A \subseteq B$ \emph{and} $B \subseteq A$.
\item \term{Identity} (for example, De Morgan's for sets): prove $x \in \text{LHS} \iff x \in \text{RHS}$ via logical equivalences — \keyres{fully worked in the De Morgan chain back in the sets section} (element-chasing $+$ law-algebra, both directions in one $\iff$ chain).
\end{itemize}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item Assuming what you're trying to prove (circular).
\item Working from the conclusion backward without justifying each step is reversible.
\item Using a specific value when $\forall$ requires arbitrary.
\item Forgetting to check both directions in iff or set equality.
\item Skipping the "by definition" unpacking step.
\end{itemize}

\filbreak \subsection{mathematical induction}
Proves $P(n)$ for all integers $n \geq n_0$ via a chain reaction: if it holds at one value, it holds at the next. Like dominos — knock the first, ensure each falls onto the one after it.

\filbreak \subsubsection{Proof structure (template)}
\begin{enumerate}
\item \term{State $P(n)$}: write the claim being proved as a function of $n$.
\item \term{Base case}: verify $P(n_0)$ directly (usually $n_0 = 0$ or $1$). Plug in, show LHS $=$ RHS.
\item \term{Inductive hypothesis (IH)}: \emph{assume} $P(k)$ holds for arbitrary $k \geq n_0$. Write the full equation explicitly.
\item \term{State the goal}: write $P(k+1)$ by substituting $k+1$ for every $n$ in the formula.
\item \term{Inductive step}: start from LHS of $P(k+1)$, apply the IH, simplify to RHS of $P(k+1)$.
\item \term{Conclude}: "By the principle of mathematical induction, $P(n)$ holds for all integers $n \geq n_0$." \;$\blacksquare$
\end{enumerate}

\filbreak \subsubsection{The key move: applying the IH}
LHS of $P(k+1) = [\text{entire sum up to } k] + [\text{new } (k+1)\text{-th term}]$.
The IH replaces the \emph{entire sum}, not just the last term:
$$\underbrace{a_1 + a_2 + \cdots + a_k}_{\text{replaced via IH}} + a_{k+1} \;\;\to\;\; [\text{formula at } k] + a_{k+1}$$
Then it's algebra: combine, factor, and aim for the RHS of $P(k+1)$. Always work LHS $\to$ RHS — never the reverse, since you can't assume the conclusion.

\filbreak \subsubsection{Substituting $n \to k+1$}
Replace \emph{every} $n$ in the formula. Wrap in parentheses to avoid sign errors:
\begin{itemize}
\item $n \to (k+1)$
\item $n+1 \to (k+1)+1 = k+2$
\item $2n+1 \to 2(k+1)+1 = 2k+3$
\item $\frac{n(n+1)}{2} \to \frac{(k+1)(k+2)}{2}$
\item $2^n \to 2^{k+1}$, \; $(-1)^n \to (-1)^{k+1}$
\end{itemize}
Keep the result factored where possible — don't expand unless you're matching it to a specific polynomial form.

\filbreak \subsubsection{Algebra toolkit for the inductive step}
Almost every induction step reduces to one of these moves:
\begin{itemize}
\item \term{Common denominator}: $\frac{A}{b^k} + B = \frac{A + B b^k}{b^k}$
\item \term{Factor out shared term}: $\frac{k(k+1)}{2} + (k+1) = (k+1)\left[\frac{k}{2} + 1\right] = \frac{(k+1)(k+2)}{2}$
\item \term{Combine same-base exponents}: $2 \cdot 2^k = 2^{k+1}$
\item \term{Recognize the target}: keep an eye on RHS of $P(k+1)$ — your steps should be aiming there.
\end{itemize}

\filbreak \subsubsection{Worked: sum formula — $\sum_{i=1}^{n}i=\frac{n(n+1)}{2}$}
\stepbox{1. STATE $P(n)$}{$\sum_{i=1}^{n} i = \frac{n(n+1)}{2}$, \; claim for all $n\geq1$}
\stepdown
\stepbox{2. BASE CASE $P(1)$}{LHS $=1$; RHS $=\frac{1\cdot2}{2}=1$ \checkmark}
\stepdown
\stepbox{3. IH — ASSUME $P(k)$}{$\sum_{i=1}^{k} i = \frac{k(k+1)}{2}$ \; \emph{\scriptsize(write the full equation — it's the tool you'll swing)}}
\stepdown
\stepbox{4. GOAL — WRITE $P(k+1)$}{$\sum_{i=1}^{k+1} i \overset{?}{=} \frac{(k+1)(k+2)}{2}$}
\stepdown
\stepbox{5. STEP — PEEL, APPLY IH}{$\sum_{i=1}^{k+1}i=\underbrace{\sum_{i=1}^{k}i}_{\text{IH}}+(k+1)=\frac{k(k+1)}{2}+(k+1)$}
\stepdown
\stepbox{6. FACTOR TO THE TARGET}{$=(k+1)\big[\tfrac k2+1\big]=(k+1)\cdot\tfrac{k+2}{2}=\keyres{\frac{(k+1)(k+2)}{2}}$ \checkmark — by induction, $P(n)$ holds for all $n\geq1$ $\blacksquare$}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item Replacing only the last term, not the whole sum up to $k$.
\item Treating "$\ldots$" as if those terms don't exist — they do.
\item Confusing $\sum$ with individual terms (sigma gives \emph{partial sums}).
\item Wrong base case: $P(0)$ for "all nonnegative integers", $P(1)$ for "all positive integers".
\item Working RHS backward to LHS (circular).
\item Forgetting to wrap $k+1$ in parentheses when substituting.
\end{itemize}

\filbreak \subsubsection{Worked: the other three flavors}
Same six moves. Only step 5's algebra changes. One chain per flavor:

\term{Divisibility — $6\mid n^3-n$}:
\par\vspace{2pt}
\stepbox{1. BASE $P(1)$}{$1-1=0$, and $6\mid0$ \checkmark}
\stepdown
\stepbox{2. STEP — EXPAND, THEN REGROUP AROUND THE IH}{$(k+1)^3-(k+1)=k^3+3k^2+3k+1-k-1=(k^3-k)+3k^2+3k=\underbrace{(k^3-k)}_{\text{IH: }6\mid}+\,3k(k+1)$}
\stepdown
\stepbox{3. HANDLE THE LEFTOVER}{$k(k+1)$ is consecutive $\Rightarrow$ even: $k(k+1)=2m$, so $3k(k+1)=6m$: \; sum of two multiples of $6$ $\blacksquare$ \; \emph{\scriptsize(the move: \keyres{expand, then regroup until the IH's expression appears})}}
\par\vspace{2pt}
\term{Inequality — $2^n>n^2$ for $n\geq5$}:
\par\vspace{2pt}
\stepbox{1. BASE $P(5)$ — NOT $P(1)$!}{$32>25$ \checkmark \; \emph{\scriptsize(true at $n=1$ but false at $n=2,3,4$ — base at the first $n$ where it's true \warn{and stays true}, that is, where the step below can carry it)}}
\stepdown
\stepbox{2. STEP — DOUBLE THE IH}{$2^{k+1}=2\cdot2^k>2k^2=k^2+k^2$}
\stepdown
\stepbox{3. BOUND THE SPARE $k^2$}{$k\geq5$: $k^2\geq5k=2k+3k$, and $3k\geq15\geq1$, so $k^2\geq2k+1$. Feed it back into step 2: $2^{k+1}>k^2+k^2\geq k^2+2k+1=(k+1)^2$ $\blacksquare$ \; \emph{\scriptsize(inequalities chain \emph{loosely} — you only need $\geq$, not $=$)}}
\par\vspace{2pt}
\term{Geometric — $\sum_{i=0}^{n}2^i=2^{n+1}-1$}:
\par\vspace{2pt}
\stepbox{1. BASE $P(0)$}{$2^0=1=2^1-1$ \checkmark}
\stepdown
\stepbox{2. STEP — PEEL THE LAST TERM, APPLY THE IH}{$\displaystyle\sum_{i=0}^{k+1}2^i=\Big(\sum_{i=0}^{k}2^i\Big)+2^{k+1}\overset{\text{IH}}{=}(2^{k+1}-1)+2^{k+1}$}
\stepdown
\stepbox{3. COMBINE BASES}{$=2^{k+1}+2^{k+1}-1=2\cdot2^{k+1}-1=\keyres{2^{k+2}-1}$ $\blacksquare$ \; \emph{\scriptsize($b\cdot b^k=b^{k+1}$ finally earns its keep)}}
\par\vspace{2pt}
\term{Fractions — $\sum_{i=1}^{n}\frac{1}{i(i+1)}=\frac{n}{n+1}$}: base $\tfrac{1}{1\cdot2}=\tfrac12$ \checkmark. Step: peel and apply the IH, then it's \keyres{exactly the common-denominator case worked in the algebra refresher}:
$$\sum_{i=1}^{k+1}\frac{1}{i(i+1)}\overset{\text{IH}}{=}\frac{k}{k+1}+\frac{1}{(k+1)(k+2)}=\frac{k(k+2)+1}{(k+1)(k+2)}$$
$$=\frac{k^2+2k+1}{(k+1)(k+2)}=\frac{(k+1)^2}{(k+1)(k+2)}=\frac{k+1}{k+2}\ \blacksquare$$

\filbreak \subsubsection{Conjecturing a formula}
When you have to find the formula yourself before proving it:
\begin{enumerate}
\item Compute \term{partial sums} for $n = 1, 2, 3, 4$ — running totals, not individual terms.
\item Look at what the sums \emph{equal} — that's where the pattern lives.
\item Try simplified \emph{and} unsimplified forms ($\tfrac{1}{2}, \tfrac{2}{3}, \tfrac{3}{4}$ vs $\tfrac{1}{2}, \tfrac{4}{6}, \tfrac{18}{24}$).
\item Break numerator and denominator patterns apart.
\item Test conjecture at an unused $n$ before committing to the proof.
\end{enumerate}

\filbreak \subsubsection{Worked: conjecture, then prove}
For $\sum_{i=1}^n\frac{1}{i(i+1)}$:
\par\vspace{2pt}
\stepbox{1. PARTIAL SUMS}{$\tfrac12, \quad \tfrac12+\tfrac16=\tfrac23, \quad +\tfrac1{12}=\tfrac34, \quad +\tfrac1{20}=\tfrac45$}
\stepdown
\stepbox{2. SPOT THE PATTERN}{$\tfrac12,\tfrac23,\tfrac34,\tfrac45$: conjecture $\keyres{\frac{n}{n+1}}$}
\stepdown
\stepbox{3. TEST AN UNUSED $n$}{$n=5$: $\tfrac45+\tfrac1{30}=\tfrac{25}{30}=\tfrac56$ \checkmark}
\stepdown
\stepbox{4. NOW PROVE IT}{the fraction-flavor induction above \; \emph{\scriptsize(conjecture $\to$ spot-check $\to$ induct: the full workflow)}}

\filbreak \subsubsection{Strong induction}
Same skeleton, but the IH assumes $P(n_0), P(n_0+1), \ldots, P(k)$ \emph{all} hold (not just $P(k)$). Use when $P(k+1)$ depends on multiple earlier values:
\begin{itemize}
\item Recurrences like Fibonacci ($F_{k+1}$ depends on $F_k$ and $F_{k-1}$).
\item Prime factorization (each factor is smaller, but not necessarily $k$).
\item "Every integer $> 1$ has property $X$" when the inductive step splits the integer.
\end{itemize}
The base case may need multiple values verified (for example, , both $P(0)$ and $P(1)$ for Fibonacci).

\filbreak \subsubsection{Worked: postage stamps — every $n\geq8$ from 3's and 5's}
\stepbox{1. BASES — ONE PER REACH-BACK}{$8=3+5$, \; $9=3+3+3$, \; $10=5+5$ \checkmark \; \emph{\scriptsize(the step reaches back $3$, so three consecutive bases are needed)}}
\stepdown
\stepbox{2. STRONG IH}{assume \emph{every} value from $8$ through $k$ is makeable ($k\geq10$)}
\stepdown
\stepbox{3. STEP — REACH BACK}{$(k+1)-3=k-2\geq8$, so $k-2$ is covered by the IH}
\stepdown
\stepbox{4. ADD ONE STAMP}{its combination $+$ one $3$-stamp makes $k+1$ $\blacksquare$ \; \emph{\scriptsize(ordinary induction can't do this — $k-2$ isn't $k$)}}

\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Discrete II — Counting, Recurrences \& Graphs}

\begin{multicols}{2}

\filbreak \subsection{sequences \& recurrences}
 
\subsubsection{Sequence types}
\begin{itemize}
\item \term{Arithmetic}: constant difference $d$. \; $a_n = a_1 + (n-1)d$. Sum: $S_n = \dfrac{n(a_1 + a_n)}{2}$.
\item \term{Geometric}: constant ratio $r$. \; $a_n = a_1 \cdot r^{n-1}$. Sum: $S_n = a_1\dfrac{r^n - 1}{r - 1}$ ($r \neq 1$).
\item \term{Infinite geometric} $|r| < 1$: $\sum_{n=0}^{\infty} ar^n = \dfrac{a}{1-r}$.
\end{itemize}
\term{Worked}: arithmetic $a_1=7$, $d=4$: $a_{20}=7+19(4)=\keyres{83}$, \; $S_{20}=\frac{20(7+83)}{2}=\keyres{900}$. \; \term{From two terms}: $a_3=11$, $a_8=26$: five steps apart, so $a_8-a_3=5d$: $26-11=15\Rightarrow d=3$; back up two steps: $a_1=a_3-2d=11-6=\keyres{5}$. \; \term{Infinite}: $\sum_{n=0}^\infty 3(\tfrac14)^n=\frac{3}{1-1/4}=\keyres{4}$ \emph{\scriptsize(converges only because $|r|<1$)}.
 
\filbreak \subsubsection{Recurrence relations}
Define $a_n$ in terms of earlier terms plus initial conditions.
\begin{itemize}
\item \term{Linear}: $a_n = c_1 a_{n-1} + c_2 a_{n-2} + \cdots$
\item \term{Homogeneous}: no constant/input term.
\item Ex: Fibonacci $F_n = F_{n-1} + F_{n-2}$, $F_0=0, F_1=1$.
\end{itemize}

\filbreak \subsubsection{Worked: unroll $\to$ guess $\to$ prove}
$a_n=2a_{n-1}+1$, \; $a_0=1$:
\par\vspace{2pt}
\stepbox{1. UNROLL A FEW}{$1,\ 3,\ 7,\ 15,\ 31$}
\stepdown
\stepbox{2. GUESS}{each is one below a power of two: $\keyres{a_n=2^{n+1}-1}$}
\stepdown
\stepbox{3. PROVE BY INDUCTION}{base: $a_0=1=2^1-1$ \checkmark; IH: $a_k=2^{k+1}-1$; step: $a_{k+1}=2a_k+1\overset{\text{IH}}{=}2(2^{k+1}-1)+1=2^{k+2}-2+1=2^{k+2}-1$ \checkmark \; \emph{\scriptsize(unrolling conjectures. Induction certifies — the workflow from Discrete I)}}
 
\filbreak \subsubsection{Solving linear homogeneous (2nd order)}
$a_n = c_1 a_{n-1} + c_2 a_{n-2}$:
\begin{enumerate}
\item Characteristic equation: $r^2 - c_1 r - c_2 = 0$. Solve for roots $r_1, r_2$.
\item Distinct roots: $a_n = A r_1^n + B r_2^n$.
\item Repeated root $r$: $a_n = (A + Bn) r^n$.
\item Use initial conditions to solve for $A, B$.
\end{enumerate}

\filbreak \subsubsection{Worked (distinct roots): $a_n=a_{n-1}+6a_{n-2}$, \; $a_0=3$, $a_1=4$}
\stepbox{1. CHARACTERISTIC EQUATION}{$r^2-r-6=0$ \; \emph{\scriptsize(coefficients cross with signs flipped)}}
\stepdown
\stepbox{2. ROOTS}{$(r-3)(r+2)=0$: $r=3,\,-2$ — distinct}
\stepdown
\stepbox{3. GENERAL FORM $+$ INITIAL CONDITIONS}{$a_n=A\,3^n+B(-2)^n$: \; $n=0$: $A+B=3$; \; $n=1$: $3A-2B=4$}
\stepdown
\stepbox{4. SOLVE THE $2\times2$}{from the first: $B=3-A$; substitute: $3A-2(3-A)=4\Rightarrow5A-6=4\Rightarrow A=2$, so $B=1$: \; $\keyres{a_n=2\cdot3^n+(-2)^n}$}
\stepdown
\stepbox{5. CHECK $a_2$ BOTH WAYS}{recurrence: $4+18=22$; formula: $18+4=22$ \checkmark}

\filbreak \subsubsection{Worked (repeated root): $a_n=4a_{n-1}-4a_{n-2}$, \; $a_0=1$, $a_1=4$}
\stepbox{1. CHARACTERISTIC}{$r^2-4r+4=(r-2)^2$: \; $r=2$ \warn{doubled}}
\stepdown
\stepbox{2. REPEATED-ROOT FORM}{$a_n=(A+Bn)2^n$ \; \emph{\scriptsize(the extra $n$ is what a double root buys — $A\,2^n+B\,2^n$ alone can't fit two conditions)}}
\stepdown
\stepbox{3. INITIAL CONDITIONS}{$n=0$: $A=1$; \; $n=1$: $(1+B)2=4\Rightarrow B=1$: \; $\keyres{a_n=(1+n)2^n}$}
\stepdown
\stepbox{4. CHECK}{$a_2$: recurrence $16-4=12$; formula $3\cdot4=12$ \checkmark}
\par\vspace{2pt}
Fibonacci runs the distinct-roots case with $r=\frac{1\pm\sqrt5}{2}$ — same machine, uglier numbers (Binet's formula).
 
\filbreak \subsection{combinatorics}
 
\subsubsection{Counting rules}
\begin{itemize}
\item \term{Sum rule} (\keyres{OR}, disjoint): $A$ or $B$: $|A| + |B|$ ways. Triggers: "or," "either."
\item \term{Product rule} (\keyres{AND}, sequential): $A$ then $B$: $|A| \cdot |B|$ ways. Triggers: "and," "then."
\item \term{Complement}: $|A| = |U| - |\overline{A}|$. Use for \keyres{"at least one"} $\to$ count the opposite "none." If each of $n$ slots has $k$ non-$X$ options, the complement is $k^n$.
\end{itemize}

\stepbox{THE PROCESS — TWO QUESTIONS DECIDE EVERYTHING}{
\textbf{1.} \term{Does order matter?} Swap two chosen items — does the result change?\\
\textbf{2.} \term{Is repetition allowed?} May an item be picked twice?\\
\textbf{3.} \term{Read the count} off the table.\\
\textbf{4.} \term{Check for overlap or symmetry} — then correct with inclusion-exclusion or the division rule.}
\par\vspace{2pt}
\filbreak \subsubsection{Steps 1--2 decoded — the counting table}
\begin{center}
{\small
\begin{tabular}{@{}l@{\hspace{8pt}}c@{\hspace{8pt}}c@{}}
& \textcolor{termHi}{\textbf{no repetition}} & \textcolor{termHi}{\textbf{repetition allowed}} \\[1pt]
\hline
\textcolor{termHi}{\textbf{order matters}} & $P(n,k)=\dfrac{n!}{(n-k)!}$ & $n^k$ \\[6pt]
\textcolor{termHi}{\textbf{order does not}} & $C(n,k)=\dbinom{n}{k}$ & $\dbinom{n+k-1}{k}$ \\[2pt]
\end{tabular}}
\end{center}
The bottom-right cell is \term{stars and bars}. \; Link: $P(n,k)=C(n,k)\cdot k!$ — a permutation is a combination times its orderings.
\par\vspace{2pt}
\filbreak \subsubsection{Step 4 decoded — three corrections}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{"at least one"} $\Rightarrow$ count the \keyres{complement} and subtract from the total. Counting it directly means counting every case. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{overlapping sets} $\Rightarrow$ \keyres{inclusion-exclusion}: $|A\cup B|=|A|+|B|-|A\cap B|$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{identical items or a symmetry} $\Rightarrow$ \keyres{division rule}: count as if distinct, then divide by the duplicates. \\
\end{tabular}}
\par\vspace{2pt}
\filbreak \subsubsection{Worked: "at least one" — 8-bit strings with at least one 0}
\stepbox{1. COUNT EVERYTHING}{$2^8=256$ strings}
\stepdown
\stepbox{2. COUNT THE OPPOSITE — "NO ZEROS"}{all ones: exactly $1$ string}
\stepdown
\stepbox{3. SUBTRACT}{$256-1=\keyres{255}$ \; \emph{\scriptsize(counting "at least one" directly means summing 8 overlapping cases — the complement is one subtraction)}}

\filbreak \subsubsection{Inclusion-exclusion (overlapping sets)}
$$|A \cup B| = |A| + |B| - |A \cap B|$$
$$|A \cup B \cup C| = |A|+|B|+|C| - |A{\cap}B| - |A{\cap}C| - |B{\cap}C| + |A{\cap}B{\cap}C|$$
Pattern: $+$ singles $-$ pairs $+$ triples $- \cdots$ \; \keyres{Fully worked (3-set survey: 52/8/32) in the Discrete I sets section} — same formula, don't relearn it.

\filbreak \subsubsection{Division rule (kill duplicates)}
$$\text{true count} = \frac{\text{overcount}}{\text{duplicates per item}}$$
\begin{itemize}
\item \term{Circular} arrangements: $\dfrac{n!}{n} = (n-1)!$ (rotations are the same).
\item \term{Indistinguishable} objects: $\dfrac{n!}{n_1!\,n_2!\cdots}$ (swapping identical items doesn't count).
\end{itemize}

\filbreak \subsubsection{Worked: both division flavors}
\stepbox{1. ROUND TABLE, 6 PEOPLE}{line them up: $6!=720$; every seating counted $6$ times (rotations): $\dfrac{720}{6}=5!=\keyres{120}$}
\stepdown
\stepbox{2. MISSISSIPPI}{$11$ letters: $11!$; identical letters over-count: I$\times4$, S$\times4$, P$\times2$: $\dfrac{11!}{4!\,4!\,2!}=\keyres{34{,}650}$ \; \emph{\scriptsize(one factorial in the denominator per repeated letter)}}
 
\filbreak \subsubsection{Permutations (order matters)}
Ordered arrangements of $k$ from $n$:
$$P(n, k) = \frac{n!}{(n-k)!} = n(n-1)(n-2)\cdots(n-k+1)$$
Full permutation: $P(n, n) = n!$. \quad $0! = 1$.
 
\filbreak \subsubsection{Combinations (order doesn't matter)}
$k$-subsets of an $n$-set:
$$C(n, k) = \binom{n}{k} = \frac{n!}{k!(n-k)!}$$
\begin{itemize}
\item $\binom{n}{0} = \binom{n}{n} = 1$, \; $\binom{n}{1} = n$
\item \term{Symmetry}: $\binom{n}{k} = \binom{n}{n-k}$
\item \term{Pascal}: $\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}$
\end{itemize}

\filbreak \subsubsection{Worked: choose 5 from 10 — both ways at once}
\stepbox{1. ORDER MATTERS (ranked top-5)}{$P(10,5)=10\cdot9\cdot8\cdot7\cdot6=\keyres{30{,}240}$}
\stepdown
\stepbox{2. ORDER DOESN'T (a team of 5)}{$C(10,5)=\dfrac{10!}{5!\,5!}=\keyres{252}$}
\stepdown
\stepbox{3. THE LINK}{$\dfrac{30{,}240}{252}=120=5!$ \checkmark — \keyres{a permutation is a combination times its orderings}, $P=C\cdot k!$}
 
\filbreak \subsubsection{Binomial theorem}
$$(x + y)^n = \sum_{k=0}^{n} \binom{n}{k} x^{n-k} y^k$$
\begin{itemize}
\item $\sum_{k=0}^{n} \binom{n}{k} = 2^n$ (all subsets) — \emph{\scriptsize(substitute $x=y=1$)}
\item $\sum_{k=0}^{n} (-1)^k \binom{n}{k} = 0$ ($n \geq 1$) — \emph{\scriptsize(substitute $x=1$, $y=-1$)}
\end{itemize}

\filbreak \subsubsection{Worked: extract one coefficient}
Coefficient of $x^5y^3$ in $(x+y)^8$: the $y^k$ exponent names the term: $k=3$: $\binom83=\keyres{56}$.

Coefficient of $x^3$ in $(2x-3)^5$:
\par\vspace{2pt}
\stepbox{1. NAME THE TERM}{$x^3$ needs $k=2$: \; $\binom52(2x)^3(-3)^2$}
\stepdown
\stepbox{2. MULTIPLY \emph{ALL} THE CONSTANTS}{$10\cdot8\cdot9=\keyres{720}$ \; \emph{\scriptsize(\warn{the $2^3$ and $(-3)^2$ are part of the coefficient} — quoting $\binom52=10$ alone is the classic loss)}}
 
\filbreak \subsubsection{Repetition allowed}
\begin{itemize}
\item \term{Sequences w/ repetition}: $n^k$ (each of $k$ slots from $n$ options)
\item \term{Multisets of size $k$ from $n$}: $\binom{n + k - 1}{k}$ (stars-and-bars)
\end{itemize}

\filbreak \subsubsection{Worked: stars and bars — 6 donuts, 4 types}
\stepbox{1. MODEL}{order irrelevant, repetition allowed: a \keyres{multiset} of size $k=6$ from $n=4$}
\stepdown
\stepbox{2. THE PICTURE}{6 stars split by $n-1=3$ bars: $\star\star\,|\,\star\,|\,\star\star\star\,|$ \; means $2,1,3,0$ of each type}
\stepdown
\stepbox{3. COUNT THE ARRANGEMENTS}{$9$ symbol slots. Choose the $3$ bar positions (equivalently the $6$ star positions — symmetry): $\binom93=\binom96=\binom{6+4-1}{6}=\keyres{84}$}
\par\vspace{2pt}
The full $2\times2$ grid: order+no-rep $\to P(n,k)$; \; no-order+no-rep $\to C(n,k)$; \; order+rep $\to n^k$; \; no-order+rep $\to$ \keyres{stars and bars}.

\filbreak \subsubsection{Permutation vs combination?}
Ask: \emph{"If I swap two chosen items, does the result change?"} \keyres{Yes $\to$ permutation} (order matters); \keyres{No $\to$ combination}.
\begin{center}
\begin{tabular}{@{}l c@{}}
\textbf{Scenario} & \textbf{Type} \\
\hline
Race ranks, 1st/2nd/3rd & $P$ \\
Named roles (Pres/VP) & $P$ \\
Left-to-right arrangement & $P$ \\
Committee / team (no roles) & $C$ \\
Poker hand, subset & $C$ \\
\end{tabular}
\end{center}
Link: $P(n,k) = C(n,k)\cdot k!$ — a permutation is a combination times its orderings. \warn{Calc tip:} parenthesize the \emph{whole} denominator, else left-to-right gives wrong answers.

\filbreak \subsection{asymptotic notation}
Describes long-term growth of functions. For $f, g: \mathbb{N} \to \mathbb{R}^+$:
\begin{itemize}
\item $f = O(g)$: $f$ grows \emph{no faster than} $g$. \; $\exists c, n_0$: $f(n) \leq cg(n)\, \forall n \geq n_0$.
\item $f = \Omega(g)$: $f$ grows \emph{no slower than} $g$. \; $\exists c, n_0$: $f(n) \geq cg(n)\ \forall n \geq n_0$.
\item $f = \Theta(g)$: $f$ grows \emph{at same rate as} $g$. Both $O$ and $\Omega$.
\item $f = o(g)$: $f$ grows \emph{strictly slower} than $g$. $\lim f/g = 0$.
\item $f = \omega(g)$: $f$ grows \emph{strictly faster}. $\lim f/g = \infty$.
\end{itemize}
 
\filbreak \subsubsection{Growth hierarchy (slow $\to$ fast)}
$1 \ll \log\log n \ll \log n \ll \sqrt{n} \ll n \ll n\log n \ll n^2 \ll n^3 \ll 2^n \ll n! \ll n^n$
 
\filbreak \subsubsection{Rules of thumb}
\begin{itemize}
\item Drop constants: $O(3n^2) = O(n^2)$.
\item Keep dominant term: $O(n^2 + n) = O(n^2)$.
\item $\log_a n = \Theta(\log_b n)$ (base doesn't matter in $O$).
\item Polynomial $\ll$ exponential: $n^k = o(c^n)$ for $c > 1$.
\item $O(f) + O(g) = O(\max(f, g))$.
\item $O(f) \cdot O(g) = O(fg)$.
\end{itemize}

\filbreak \subsubsection{Worked: prove $3n^2+5n+2=O(n^2)$ from the definition}
\stepbox{1. BOUND EVERY TERM BY THE BIGGEST}{for $n\geq1$: $5n\leq5n^2$ and $2\leq2n^2$, so $3n^2+5n+2\leq10n^2$}
\stepdown
\stepbox{2. EXHIBIT THE WITNESSES}{$c=10$, \; $n_0=1$: definition satisfied $\blacksquare$ \; \emph{\scriptsize(witnesses aren't unique — $c=4,n_0=6$ also works. Any pair closes the proof)}}
\stepdown
\stepbox{3. THE LOWER BOUND IS FREE}{$3n^2+5n+2\geq3n^2$ always: $\Omega(n^2)$ with $c=3$ $\Rightarrow$ both bounds $\Rightarrow$ $\keyres{\Theta(n^2)}$}
\par\vspace{2pt}
\term{Disproof}: $n^2\neq O(n)$ — given \emph{any} $c,n_0$, take $n>\max(c,n_0)$: then $n^2=n\cdot n>cn$ — no witnesses can exist $\blacksquare$.

\filbreak \subsubsection{Worked: classify code}
Nested loops, each running to $n$, constant body: $n\cdot n=\keyres{\Theta(n^2)}$. \quad Halving loop (\texttt{while n>1: n=n/2}): $\keyres{\Theta(\log n)}$ steps. \quad Loop to $n$ containing a halving loop: $\keyres{\Theta(n\log n)}$ — \keyres{multiply nested, add sequential}.
 
\filbreak \subsection{graph theory basics}
Graph $G = (V, E)$: vertices $V$, edges $E \subseteq V \times V$.
\begin{itemize}
\item \term{Undirected}: edges unordered pairs $\{u, v\}$.
\item \term{Directed (digraph)}: edges ordered $(u, v)$.
\item \term{Simple}: no loops, no multi-edges.
\item \term{Weighted}: edges carry numbers.
\end{itemize}
 
\filbreak \subsubsection{Degree}
\begin{itemize}
\item $\deg(v)$: number of edges incident to $v$ (undirected).
\item \term{In-deg, out-deg} for directed.
\item \term{Handshake}: $\sum_{v \in V} \deg(v) = 2|E|$.
\item Corollary: number of odd-degree vertices is even.
\end{itemize}

\filbreak \subsubsection{Worked: handshake, all three directions}
\stepbox{1. DEGREES $\to$ EDGES}{$10$ vertices, each degree $3$: $|E|=\frac{10\cdot3}{2}=\keyres{15}$}
\stepdown
\stepbox{2. EDGES $\to$ A MISSING DEGREE}{$|E|=7$ and five vertices have degrees $2,2,3,4,?$: \; $\sum\deg=2(7)=14$; known sum $2+2+3+4=11$; missing $=14-11=\keyres{3}$}
\stepdown
\stepbox{3. FEASIBILITY VETO}{"a graph with degrees $3,3,3,3,3$"? sum $=15$, \warn{odd} — impossible: \keyres{odd-degree vertices must come in pairs}}
 
\filbreak \subsubsection{Paths \& connectivity}
\begin{itemize}
\item \term{Walk}: vertex/edge sequence, repetition allowed.
\item \term{Path}: walk with distinct vertices.
\item \term{Cycle}: closed path (start $=$ end), length $\geq 3$.
\item \term{Connected}: path between every pair of vertices.
\item \term{Component}: maximal connected subgraph.
\end{itemize}
 
\filbreak \subsubsection{Special graphs}
\begin{itemize}
\item $K_n$: \term{complete}, every pair adjacent. $|E| = \binom{n}{2}$.
\item $C_n$: \term{cycle} on $n$ vertices.
\item $P_n$: \term{path} on $n$ vertices.
\item $K_{m,n}$: \term{complete bipartite}, two parts of sizes $m, n$.
\item \term{Bipartite}: $V = V_1 \cup V_2$ disjoint, edges only across. Iff no odd cycles.
\end{itemize}
\term{Examples}: $|E(K_5)|=\binom52=\keyres{10}$ — combinatorics cashing in. \; \term{Bipartite check}: $C_6$ — alternate 2-color around the even cycle, no clash $\Rightarrow$ \keyres{bipartite}; $C_5$ — the fifth vertex must match its neighbor $\Rightarrow$ odd cycle $\Rightarrow$ \warn{not bipartite}. Two-color greedily. A forced clash \emph{is} your odd cycle.
 
\filbreak \subsubsection{Trees}
Connected graph with no cycles.
\begin{itemize}
\item Tree on $n$ vertices has exactly $n - 1$ edges.
\item Unique path between any two vertices.
\item \term{Rooted tree}: one vertex designated as root.
\item \term{Leaf}: vertex of degree 1 (non-root).
\item \term{Binary tree}: each node has $\leq 2$ children.
\item Adding any edge creates exactly one cycle.
\end{itemize}
\term{Count check}: a connected graph on $7$ vertices with $6$ edges and no cycle \emph{is} a tree. With $7$ edges it has \keyres{exactly one} cycle — edges $=n-1$ is the tree signature.

\filbreak \subsubsection{Adjacency matrix \& list}
Two standard graph representations — square matrix $A$ with $A_{ij}=1$ iff edge $\{i,j\}$, or a per-vertex neighbor list.
\term{Worked} — the triangle-plus-tail $1\text{--}2$, $2\text{--}3$, $3\text{--}1$, $3\text{--}4$:
$$A=\begin{pmatrix}0&1&1&0\\1&0&1&0\\1&1&0&1\\0&0&1&0\end{pmatrix} \qquad \begin{aligned}1&:2,3\\2&:1,3\\3&:1,2,4\\4&:3\end{aligned}$$
\keyres{Row sums $=$ degrees} ($2,2,3,1$ — handshake: sum $8=2|E|$, $|E|=4$ \checkmark); undirected $\Rightarrow$ symmetric matrix, zero diagonal (no loops).

\filbreak \subsubsection{$m$-ary tree math}
($m$-ary = every node has $\leq m$ children.) These counts need a \term{full} $m$-ary tree (every internal node has \emph{exactly} $m$ children). With $i$ internal nodes, $l$ leaves, $v$ vertices, $e$ edges:
\begin{itemize}
\item Leaves: $l = (m-1)i + 1$
\item Vertices: $v = mi + 1$, \; and $v = l + i$
\item Edges: $e = v - 1 = mi$
\end{itemize}
\term{Perfect} tree (full \emph{and} every level filled):
\begin{itemize}
\item Nodes at level $k$: $m^k$; \; total through height $h$: $\dfrac{m^{h+1}-1}{m-1}$
\item Height from $l$ leaves: $h = \lceil \log_m l \rceil$
\end{itemize}

\filbreak \subsubsection{Worked: $m$-ary counts, both directions}
\stepbox{1. GIVEN INTERNAL, FIND LEAVES}{full $3$-ary, $i=100$ internal: $l=(3-1)100+1=\keyres{201}$ leaves; \; $v=3(100)+1=301$ \; \emph{\scriptsize(check: $301=201+100$ \checkmark)}}
\stepdown
\stepbox{2. GIVEN LEAVES, FIND INTERNAL — SOLVE BACKWARD}{full $3$-ary with $l=100$: \; $100=2i+1\Rightarrow i=\keyres{49.5}$ — \warn{not an integer $\Rightarrow$ impossible}; $l$ must be odd for $m=3$. With $l=101$: $i=50$}
\stepdown
\stepbox{3. HEIGHT BOUND}{perfect binary with $l=64$ leaves: $h=\log_2 64=\keyres{6}$ \; \emph{\scriptsize(the formulas run in every direction — treat each as an equation, not a recipe)}}

\filbreak \subsubsection{Expression trees}
\begin{itemize}
\item \term{Internal nodes} $=$ operators; \term{leaves} $=$ numbers/variables.
\item The \keyres{root} is the \emph{last} operation done (reverse PEMDAS).
\item Low-priority operators sit \keyres{high}; high-priority sit \keyres{deep}.
\end{itemize}
\begin{center}
\begin{tikzpicture}[scale=0.9, font=\small, level distance=10mm,
  level 1/.style={sibling distance=22mm},
  level 2/.style={sibling distance=11mm},
  every node/.style={white}]
\node[keyHi]{$+$}
  child {node[uHi]{$\times$}
    child {node{$a$}}
    child {node{$b$}}}
  child {node{$c$}};
\end{tikzpicture}
\\ \footnotesize tree for $a\times b + c$
\end{center}

\filbreak \subsubsection{Worked: build the tree from $(a+b)\times c - d$}
\stepbox{1. LAST OPERATION $=$ ROOT}{reverse PEMDAS: the $-$ happens last $\Rightarrow$ root $-$}
\stepdown
\stepbox{2. RECURSE ON EACH SIDE}{left subtree: $(a+b)\times c$ — its last op is $\times$; right subtree: leaf $d$}
\stepdown
\stepbox{3. KEEP SPLITTING}{$\times$'s children: the parenthesized $+$ (with leaves $a,b$) and leaf $c$ — parentheses force $+$ \keyres{deeper} than its usual priority}
\stepdown
\stepbox{4. READ OFF THE NOTATIONS}{postorder: $a\,b\,+\,c\,\times\,d\,-$; \; preorder: $-\,\times\,+\,a\,b\,c\,d$}

\filbreak \subsubsection{Tree traversals $=$ notation}
\begin{itemize}
\item \term{Preorder} (Root, Left, Right) $\to$ \keyres{prefix}: $+\,\times\,a\,b\,c$
\item \term{Inorder} (Left, Root, Right) $\to$ \keyres{infix} (normal math): $a\times b + c$
\item \term{Postorder} (Left, Right, Root) $\to$ \keyres{postfix}: $a\,b\,\times\,c\,+$
\end{itemize}
\term{Reverse direction}: given prefix $+\,\times\,a\,b\,c$, rebuild the tree — first symbol is the \keyres{root}; each operator claims the next two complete subtrees: $+(\times(a,b),\,c)$ — the same tree, recovered.

\filbreak \subsubsection{Prefix / postfix evaluation (stack)}
\begin{itemize}
\item \term{Postfix}: read \keyres{left$\to$right}. Push numbers. On an operator, pop two, apply, push the result.
\item \term{Prefix}: read \keyres{right$\to$left}, same rules.
\item \keyres{Order matters} for $-$ and $\div$: in \term{postfix} the \emph{second} value popped is the left operand. In \term{prefix} (read right$\to$left) the \emph{first} value popped is the left operand.
\end{itemize}

\filbreak \subsubsection{Worked: stack trace — postfix $5\ 1\ 2\ +\ 4\ \times\ +\ 3\ -$}
\stepbox{1. PUSH NUMBERS}{$5,\,1,\,2$ \; stack: $[5,1,2]$}
\stepdown
\stepbox{2. $+$: POP $2,1$ $\to$ $1+2$}{push $3$ \; stack: $[5,3]$ \; \emph{\scriptsize(second pop is the \emph{left} operand)}}
\stepdown
\stepbox{3. $4$, THEN $\times$: POP $4,3$ $\to$ $3\times4$}{push $12$ \; stack: $[5,12]$}
\stepdown
\stepbox{4. $+$: $5+12$}{push $17$ \; stack: $[17]$}
\stepdown
\stepbox{5. $3$, THEN $-$: POP $3,17$ $\to$ $17-3$}{$=\keyres{14}$ \; \emph{\scriptsize(the $-$ is where the operand-order trap bites: $17-3$, never $3-17$)}}

\filbreak \subsubsection{Euler \& Hamilton}
\begin{itemize}
\item \term{Euler circuit}: uses every edge exactly once, returns to start. Exists iff connected and all degrees even.
\item \term{Euler path}: every edge once, start $\neq$ end. Exists iff exactly 2 odd-degree vertices.
\item \term{Hamilton circuit}: visits every vertex exactly once. NP-hard in general.
\end{itemize}

\filbreak \subsubsection{Worked: run the tests on the MST-section graph}
\stepbox{1. LIST THE DEGREES}{$A{:}3$ ($B,C,D$), \; $B{:}3$, \; $C{:}4$, \; $D{:}3$, \; $E{:}3$}
\stepdown
\stepbox{2. EULER CIRCUIT TEST}{needs \emph{all} degrees even — four odd vertices $\Rightarrow$ \warn{no circuit}; Euler \emph{path} needs exactly $2$ odd — four $\Rightarrow$ \warn{no path either}}
\stepdown
\stepbox{3. HAMILTON — BY INSPECTION}{$A\to D\to C\to E\to B\to A$ uses edges $AD,DC,CE,EB,BA$ — all exist \checkmark: \keyres{Hamilton circuit found} \; \emph{\scriptsize(every vertex once — unused edges are fine. No clean criterion exists, so exhibit one)}}

\filbreak \subsubsection{Spanning trees \& MST}
A \term{spanning tree} is a tree (no cycles, $n-1$ edges) that touches \emph{all} vertices. A \term{minimum spanning tree (MST)} is the cheapest such tree by total edge weight. Two greedy builders:
\begin{itemize}
\item \term{Prim's}: start at any vertex. Repeatedly add the \keyres{cheapest edge} joining the tree to an \emph{unvisited} vertex. Grows one connected blob outward.
\item \term{Kruskal's}: sort \emph{all} edges by weight. Add the cheapest edge that \keyres{doesn't make a cycle}; stop at $n-1$ edges.
\end{itemize}
Both always reach the \keyres{same total weight}.

\begin{center}
\begin{tikzpicture}[scale=1.0, font=\scriptsize,
  v/.style={circle, draw=white!65, fill=black, inner sep=1.3pt, font=\scriptsize, text=white},
  wt/.style={font=\scriptsize, fill=black, inner sep=0.8pt, text=white!90}]
\node[v] (A) at (0,1.9) {A};
\node[v] (B) at (2.6,1.9) {B};
\node[v] (C) at (1.3,1.0) {C};
\node[v] (D) at (0,0) {D};
\node[v] (E) at (2.6,0) {E};
% non-tree edges (faint)
\draw[white!45] (A)--(B) node[wt,midway]{4};
\draw[white!45] (B)--(E) node[wt,midway]{5};
\draw[white!45] (D)--(C) node[wt,pos=0.35]{4};
\draw[white!45] (D)--(E) node[wt,pos=0.5]{6};
% MST edges (green)
\draw[keyHi,very thick] (A)--(D) node[wt,midway]{1};
\draw[keyHi,very thick] (A)--(C) node[wt,midway]{3};
\draw[keyHi,very thick] (B)--(C) node[wt,midway]{2};
\draw[keyHi,very thick] (C)--(E) node[wt,midway]{2};
\end{tikzpicture}
\end{center}
MST in \keyres{green} $=\{AD,BC,CE,AC\}$, total weight $1{+}2{+}2{+}3=\keyres{8}$.

\filbreak \subsubsection{Worked: Kruskal's trace (global — cheapest edge anywhere)}
\stepbox{1. SORT ALL EDGES}{$AD(1),\ BC(2),\ CE(2),\ AC(3),\ AB(4),\ DC(4),\ BE(5),\ DE(6)$}
\stepdown
\stepbox{2. TAKE UNLESS IT CLOSES A CYCLE}{$AD$ \checkmark, \; $BC$ \checkmark, \; $CE$ \checkmark, \; $AC$ \checkmark}
\stepdown
\stepbox{3. STOP AT $n-1$ EDGES}{$4$ edges for $5$ vertices \checkmark: weight $1+2+2+3=\keyres{8}$ — the run ends here; $AB(4)$ is never even examined}
\stepdown
\stepbox{4. WHAT A REJECTION WOULD LOOK LIKE}{had the count not closed, next up is $AB(4)$: $A$ and $B$ are already connected (via $C$) — \warn{cycle, skip} \; \emph{\scriptsize(the skip test, shown for when a run does hit it)}}

\filbreak \subsubsection{Worked: Prim's trace (local — grow the blob from $A$)}
\stepbox{1. CHEAPEST EDGE LEAVING $\{A\}$}{$AD(1)$ \; blob $\{A,D\}$}
\stepdown
\stepbox{2. CHEAPEST LEAVING THE BLOB}{options $AC(3),AB(4),DC(4),DE(6)$: take $AC(3)$ \; blob $\{A,D,C\}$}
\stepdown
\stepbox{3. KEEP GROWING — LIST THE FRONTIER EACH TIME}{from $\{A,D,C\}$: options $CB(2),\,CE(2),\,AB(4),\,DE(6)$ $\Rightarrow$ take $CB(2)$; \; from $\{A,D,C,B\}$: options $CE(2),\,BE(5),\,DE(6)$ $\Rightarrow$ take $CE(2)$ — all $5$ vertices spanned}
\stepdown
\stepbox{4. COMPARE}{same four edges, weight $\keyres{8}$ — \keyres{different discovery order, same MST}: the "both always agree" claim, demonstrated}

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
