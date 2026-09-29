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


\section{Calculus I — Limits \& Derivatives}

\begin{multicols}{2}

\filbreak \subsection{domain blockers}
Ban exactly what breaks: \term{denominators} $\neq0$, \; \term{even roots} need $(\cdot)\geq0$, \; \term{logs} need $(\cdot)>0$. Every domain question from here through multivariable is these three checks.

\filbreak \subsection{slope}
$m = \frac{y_2 - y_1}{x_2 - x_1}$ \quad $y - y_1 = m(x - x_1)$ \quad $y = mx + b$

\filbreak \subsection{avg / instantaneous rate of change}
$AV_{[a,b]} = \frac{f(b) - f(a)}{b - a}$ \quad $\lim_{h \to 0} \frac{f(a+h) - f(a)}{h}$

\filbreak \subsection{limits}
$\lim_{x \to a} f(x) = L$ \quad $\lim_{x \to a^-} f(x) = L$ \quad $\lim_{x \to a^+} f(x) = L$

\term{Infinite limit}: if $f(x) \to \pm\infty$ as $x \to a$, write $\lim_{x \to a} f(x) = \pm\infty$ (vertical asymptote at $x=a$) — no finite limit. The two-sided limit exists only if both one-sided limits agree.

\filbreak \subsubsection{Which technique? — try them in this order}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{1}} & \term{Substitute.} If you get a number, that is the limit. \keyres{Always try this first.} \\[2pt]
\textcolor{keyHi}{\textbf{2}} & Got $\frac00$ $\Rightarrow$ \term{algebraic techniques}: factor and cancel, multiply by the conjugate, or clear a complex fraction. \\[2pt]
\textcolor{keyHi}{\textbf{3}} & Still $\frac00$ or $\frac{\infty}{\infty}$ $\Rightarrow$ \term{L'H\^opital's rule}. Differentiate top and bottom \keyres{separately}. \\[2pt]
\textcolor{keyHi}{\textbf{4}} & Trapped between two bounds, or a $\sin\frac1x$ factor $\Rightarrow$ \term{squeeze theorem}. \\[2pt]
\textcolor{keyHi}{\textbf{5}} & $x\to\pm\infty$ on a rational function $\Rightarrow$ \term{compare leading exponents}. \\[2pt]
\textcolor{keyHi}{\textbf{6}} & A piecewise split, or $|x|$ at its zero $\Rightarrow$ \term{one-sided limits}. They must agree. \\
\end{tabular}}
\par\vspace{2pt}
\warn{A number over zero is not $\frac00$} — that is an infinite limit or a vertical asymptote, and no technique above applies.
\filbreak \subsubsection{Worked: one-sided limits on a piecewise function}
$f(x)=\begin{cases}x^2 & x<1\\ 3x+1 & x\geq1\end{cases}$ \; at $x=1$:
\par\vspace{2pt}
\stepbox{1. LEFT — USE THE $x<1$ PIECE}{$\lim_{x\to1^-}f=1^2=1$}
\stepdown
\stepbox{2. RIGHT — USE THE $x\geq1$ PIECE}{$\lim_{x\to1^+}f=3(1)+1=4$}
\stepdown
\stepbox{3. COMPARE}{$1\neq4$ $\Rightarrow$ $\lim_{x\to1}f(x)$ \warn{does not exist} (jump)}

\filbreak \subsection{limits from leading exponents}
$\lim_{x \to \infty} \frac{cx^a}{dx^b} = \begin{cases} +\infty & a > b,\; c/d > 0 \\ -\infty & a > b,\; c/d < 0 \\ 0 & a < b \\ \frac{c}{d} & a = b \end{cases}$

One per case: $\lim_{x\to\infty}\frac{3x^2+1}{x^2-5}=\keyres{3}$ ($a{=}b$); \; $\lim_{x\to\infty}\frac{x+1}{x^2}=\keyres{0}$ ($a{<}b$); \; $\lim_{x\to\infty}\frac{x^3}{x^2}=\keyres{+\infty}$ ($a{>}b$).

\warn{At $-\infty$ watch odd powers}: $\lim_{x\to-\infty}\frac{x^3}{x^2}=\lim_{x\to-\infty}x=-\infty$ — re-derive the sign, don't copy the $+\infty$ case.

\filbreak \subsection{asymptotes — the finding procedure}
\begin{itemize}
\item \term{Vertical}: zeros of the denominator \warn{that survive cancelling} — a cancelled zero is a \keyres{hole}, not a VA.
\item \term{Horizontal}: $y=\lim_{x\to\pm\infty}f$, via leading exponents (above).
\item \term{Slant}: when $\deg(\text{top})=\deg(\text{bottom})+1$ — long-divide. The quotient line is the asymptote.
\end{itemize}

\filbreak \subsubsection{Worked: all asymptotes of $f=\frac{2x^2+3x-1}{x^2-4}$}
\stepbox{1. VERTICAL}{$x^2-4=0$, nothing cancels with the top: $x=\keyres{\pm2}$}
\stepdown
\stepbox{2. HORIZONTAL}{degrees equal $\Rightarrow$ ratio of leading coefficients: $y=\keyres{2}$}

\filbreak \subsubsection{Worked: slant asymptote of $f=\frac{x^2+1}{x-1}$}
\stepbox{1. DEGREE CHECK}{$2=1+1$ $\Rightarrow$ slant exists (and no HA)}
\stepdown
\stepbox{2. LONG DIVIDE}{$x^2\div x=x$; \; $x\cdot(x-1)=x^2-x$; subtract: remainder $x+1$. Then $x\div x=1$; \; $1\cdot(x-1)=x-1$; subtract: remainder $2$: $$\dfrac{x^2+1}{x-1}=x+1+\dfrac{2}{x-1}$$ \emph{\scriptsize(check: $(x-1)(x+1)+2=x^2-1+2=x^2+1$ \checkmark)}}
\stepdown
\stepbox{3. DROP THE REMAINDER}{$y=\keyres{x+1}$ \; \emph{\scriptsize(the $\frac{2}{x-1}$ piece $\to0$ at $\pm\infty$)}}
\par\vspace{2pt}
\warn{Root trap at $-\infty$}: $\sqrt{x^2}=|x|=-x$ for $x<0$: \; $\frac{\sqrt{x^2+1}}{x}=\frac{|x|\sqrt{1+1/x^2}}{x}=-\sqrt{1+1/x^2}$, so $\lim_{x\to-\infty}\frac{\sqrt{x^2+1}}{x}=\keyres{-1}$, not $+1$.

\filbreak \subsection{fundamental limits}
$\lim_{h \to 0} \frac{\sin(h)}{h} = 1$ \quad $\lim_{h \to 0} \frac{\cos(h) - 1}{h} = 0$

$\lim_{h \to 0} \frac{e^h - 1}{h} = 1$ \quad $\lim_{h \to 0} \frac{\ln(1+h)}{h} = 1$

$\lim_{h \to 0} (1 + h)^{1/h} = e$

\term{Rescaling}: the formulas demand \emph{matching} insides. $\lim_{x\to0}\frac{\sin(3x)}{x}$: force the match — $\frac{\sin(3x)}{x}=3\cdot\frac{\sin(3x)}{3x}\to3\cdot1=\keyres{3}$.

\filbreak \subsection{limit laws}
If $\lim_{x \to a} f$ and $\lim_{x \to a} g$ both exist:
\begin{itemize}
\item $\lim [f \pm g] = \lim f \pm \lim g$
\item $\lim [c \cdot f] = c \cdot \lim f$
\item $\lim [f \cdot g] = \lim f \cdot \lim g$
\item $\lim \frac{f}{g} = \frac{\lim f}{\lim g}$, if $\lim g \neq 0$
\item $\lim [f]^n = \left[\lim f\right]^n$
\end{itemize}

\filbreak \subsection{algebraic limit techniques — killing a $0/0$ by hand}
Substitution gave $\frac00$? That's \warn{indeterminate, not an answer} — one of three algebra moves usually rescues it, no L'H\^opital required.

\filbreak \subsubsection{Worked: factor \& cancel — $\lim_{x\to3}\frac{x^2-9}{x-3}$}
\stepbox{1. SUBSTITUTE}{$\frac{9-9}{3-3}=\frac00$ — indeterminate, keep going}
\stepdown
\stepbox{2. FACTOR \& CANCEL}{$\dfrac{(x-3)(x+3)}{x-3}=x+3$}
\stepdown
\stepbox{3. SUBSTITUTE AGAIN}{$\lim_{x\to3}(x+3)=\keyres{6}$}

\filbreak \subsubsection{Worked: conjugate — $\lim_{x\to0}\frac{\sqrt{x+4}-2}{x}$}
\stepbox{1. MULTIPLY BY THE CONJUGATE}{$\cdot\,\dfrac{\sqrt{x+4}+2}{\sqrt{x+4}+2}$: the top becomes $(x+4)-4=x$}
\stepdown
\stepbox{2. CANCEL THE $x$}{$\dfrac{x}{x(\sqrt{x+4}+2)}=\dfrac{1}{\sqrt{x+4}+2}$}
\stepdown
\stepbox{3. SUBSTITUTE}{$\dfrac{1}{\sqrt4+2}=\keyres{\tfrac14}$}

\filbreak \subsubsection{Worked: complex fraction — $\lim_{h\to0}\frac{\frac{1}{2+h}-\frac12}{h}$}
\stepbox{1. COMBINE THE TOP}{$\dfrac{2-(2+h)}{2(2+h)}=\dfrac{-h}{2(2+h)}$}
\stepdown
\stepbox{2. DIVIDE BY $h$}{$\dfrac{-1}{2(2+h)}$}
\stepdown
\stepbox{3. SUBSTITUTE}{$\dfrac{-1}{2(2+0)}=\keyres{-\dfrac14}$ \; \emph{\scriptsize(this is exactly $f'(2)$ for $f=1/x$ — the shape shows up in derivative-by-definition problems)}}
\par\vspace{2pt}
\term{Absolute value forces one-sided}: $\lim_{x\to0}\frac{|x|}{x}$ — left: $|x|=-x\Rightarrow-1$; right: $|x|=x\Rightarrow1$; disagree $\Rightarrow$ \warn{DNE}. Any $|\cdot|$ at its zero point is a split-and-compare.

\filbreak \subsection{squeeze theorem}
If $g(x) \leq f(x) \leq h(x)$ near $a$ and $\lim_{x\to a} g = \lim_{x\to a} h = L$, then $\lim_{x\to a} f = L$.

\filbreak \subsubsection{Worked: $\lim_{x\to0}x^2\sin(1/x)$}
\stepbox{1. BOUND THE WILD PART}{$-1\leq\sin(1/x)\leq1$ for all $x\neq0$}
\stepdown
\stepbox{2. MULTIPLY BY $x^2$}{$-x^2\leq x^2\sin(1/x)\leq x^2$ \; \emph{\scriptsize($x^2\geq0$ keeps the inequalities pointed the same way)}}
\stepdown
\stepbox{3. SQUEEZE}{both fences $\to0$ $\Rightarrow$ $\lim=\keyres{0}$ \; \emph{\scriptsize(substitution and L'H are useless here — $\sin(1/x)$ has no limit)}}

\filbreak \subsection{L'H\^opital's rule}
\warn{Only} when the form is indeterminate $\frac{0}{0}$ or $\frac{\pm\infty}{\pm\infty}$ — check first. Then differentiate top and bottom \emph{separately} (\warn{not} the quotient rule):

$\lim_{x \to a} \frac{f(x)}{g(x)} = \lim_{x \to a} \frac{f'(x)}{g'(x)}$

\term{Once}: $\lim_{x\to0}\frac{\sin x}{x}$ — check $\frac00$ \checkmark — $=\lim\frac{\cos x}{1}=\keyres{1}$.

\filbreak \subsubsection{Worked: applied twice — $\lim_{x\to0}\frac{e^x-1-x}{x^2}$}
\stepbox{1. CHECK THE FORM}{$\frac{1-1-0}{0}=\frac00$ \checkmark}
\stepdown
\stepbox{2. L'H ONCE — RE-CHECK}{$\lim\dfrac{e^x-1}{2x}$: \warn{still} $\frac00$ — allowed to go again}
\stepdown
\stepbox{3. L'H AGAIN}{$\lim\dfrac{e^x}{2}=\keyres{\tfrac12}$}
\par\vspace{2pt}
\warn{Non-indeterminate $=$ hands off}: $\lim_{x\to0^+}\frac{\cos x}{x}=\frac{1}{0^+}=+\infty$ already — applying L'H anyway ($\to\frac{-\sin x}{1}\to0$) manufactures a wrong answer.

\filbreak \subsection{indeterminate forms — rearrange, then L'Hôpital}
Seven indeterminate forms: $\frac00$, \; $\frac{\infty}{\infty}$, \; $0\cdot\infty$, \; $\infty-\infty$, \; $1^\infty$, \; $0^0$, \; $\infty^0$. \keyres{Only the first two take L'H directly} — the rest get rearranged into a quotient first. (\warn{Not} indeterminate: $\frac{\text{nonzero}}{0}$ — that just blows up.)

\filbreak \subsubsection{Worked: $0\cdot\infty$ — $\lim_{x\to0^+}x\ln x$}
\stepbox{1. REWRITE AS A QUOTIENT}{$x\ln x=\dfrac{\ln x}{1/x}$ — now $\frac{-\infty}{\infty}$ \checkmark}
\stepdown
\stepbox{2. L'H}{$\lim\dfrac{1/x}{-1/x^2}=\lim\;\tfrac1x\cdot(-x^2)=\lim(-x)$ \; \emph{\scriptsize(dividing by a fraction $=$ multiplying by its flip)}}
\stepdown
\stepbox{3. SUBSTITUTE}{$\keyres{0}$ \; \emph{\scriptsize(the $x$ wins; $\ln x$ loses — powers beat logs)}}

\filbreak \subsubsection{Worked: $1^\infty$ — $\lim_{x\to\infty}\big(1+\frac1x\big)^x$}
\stepbox{1. TAKE ln}{$\ln L=\lim x\ln\big(1+\tfrac1x\big)$ — a $0\cdot\infty$}
\stepdown
\stepbox{2. QUOTIENT $+$ L'H}{$\lim\dfrac{\ln(1+1/x)}{1/x}$: differentiate top and bottom — top needs the chain rule: $$\lim\dfrac{\frac{1}{1+1/x}\cdot\big({-}\frac{1}{x^2}\big)}{-\frac{1}{x^2}}=\lim\dfrac{1}{1+1/x}=1$$ \emph{\scriptsize(the two $-\frac{1}{x^2}$'s cancel — that's why the answer is clean)}}
\stepdown
\stepbox{3. EXPONENTIATE BACK}{$L=e^1=\keyres{e}$ \; \emph{\scriptsize(the fundamental limit above — now derived, not memorized)}}
\par\vspace{2pt}
$\infty-\infty$: combine over a common denominator (or conjugate) first, then treat the resulting $\frac00$.

\filbreak \subsection{continuity}
$f$ is continuous at $x = a$ when:
\begin{enumerate}
\item $f(a)$ is defined
\item $\lim_{x \to a} f(x)$ exists
\item $\lim_{x \to a} f(x) = f(a)$
\end{enumerate}

\filbreak \subsubsection{Worked: find $k$ making $f$ continuous}
$f(x)=\begin{cases}x^2+k & x\leq2\\ 3x & x>2\end{cases}$
\par\vspace{2pt}
\stepbox{1. FIND THE STITCH POINT}{only $x=2$ is at risk — each piece is a polynomial elsewhere}
\stepdown
\stepbox{2. SET LEFT $=$ RIGHT}{$\lim_{x\to2^-}=4+k \qquad \lim_{x\to2^+}=6 \qquad\Rightarrow\qquad 4+k=6$}
\stepdown
\stepbox{3. SOLVE \& CHECK}{$k=\keyres{2}$: \; $f(2)=6=\lim_{x\to2}f$ \checkmark \; \emph{\scriptsize(one equation satisfies all three continuity conditions)}}

\filbreak \subsection{intermediate value theorem (IVT)}
$f$ continuous on $[a,b]$ and $N$ between $f(a)$ and $f(b)$ $\Rightarrow$ $\exists\, c\in(a,b)$ with $f(c)=N$. Exam form: \keyres{opposite signs at the endpoints $\Rightarrow$ a root between them}. IVT proves \warn{existence only} — it never finds $c$ (Newton's method, below, refines it).

\filbreak \subsubsection{Worked: show $x^3-x-1=0$ has a root in $(1,2)$}
\stepbox{1. CONTINUITY}{polynomial $\Rightarrow$ continuous everywhere}
\stepdown
\stepbox{2. SIGNS AT THE ENDPOINTS}{$f(1)=-1<0 \qquad f(2)=5>0$}
\stepdown
\stepbox{3. CONCLUDE}{$0$ lies between $-1$ and $5$ $\Rightarrow$ a root lives in $\keyres{(1,2)}$ \; $\blacksquare$}

\filbreak \subsection{discontinuities}
\begin{itemize}
\item \term{removable}: $\lim_{x \to a} f$ exists, but $\neq f(a)$.
\item \term{infinite}: $\lim_{x \to a^\pm} f = \pm\infty$.
\item \term{jump}: $\lim_{x \to a^-} f \neq \lim_{x \to a^+} f$.
\end{itemize}
One of each: $\frac{x^2-1}{x-1}$ at $x=1$ — cancels to $x+1$, limit $=2$ exists $\Rightarrow$ \keyres{removable} (a hole, fixable by defining $f(1)=2$). \quad $\frac{1}{x^2}$ at $0$ — $\to+\infty$ $\Rightarrow$ \keyres{infinite}. \quad $\frac{|x|}{x}$ at $0$ — left $-1\neq$ right $1$ $\Rightarrow$ \keyres{jump}.

\filbreak \subsubsection{Which kind? — test in this order}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{removable} — the two-sided limit \keyres{exists} but misses $f(c)$, or $f(c)$ is undefined. A \keyres{hole}. Fix it by redefining one point. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{jump} — both one-sided limits exist but \warn{disagree}. Typical of a piecewise split. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{infinite} — a one-sided limit runs to $\pm\infty$. A \keyres{vertical asymptote}. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE TEST}{
\textbf{1.} \term{Compute} both one-sided limits.\\
\textbf{2.} \term{Do they disagree?} That is a \keyres{jump}.\\
\textbf{3.} \term{Is either infinite?} That is an \keyres{infinite} discontinuity.\\
\textbf{4.} \term{Do they agree but miss $f(c)$?} That is \keyres{removable}.}
\filbreak \subsection{derivatives}
$f'(x) = \lim_{h \to 0} \frac{f(x + h) - f(x)}{h}$

At-a-point alternate form: $f'(a)=\lim_{x\to a}\frac{f(x)-f(a)}{x-a}$ — the shape behind "given $\lim_{x\to2}\frac{f(x)-5}{x-2}=3$, find $f'(2)$" trick questions.

\filbreak \subsubsection{Worked: derivative from the definition — $f(x)=x^2$}
\stepbox{1. BUILD THE QUOTIENT}{$\dfrac{(x+h)^2-x^2}{h}$}
\stepdown
\stepbox{2. EXPAND \& CANCEL}{$\dfrac{x^2+2xh+h^2-x^2}{h}=\dfrac{2xh+h^2}{h}=\dfrac{h(2x+h)}{h}=2x+h$ \; \emph{\scriptsize(the lone $h$ must cancel — if it doesn't, the algebra slipped)}}
\stepdown
\stepbox{3. LET $h\to0$}{$f'(x)=\keyres{2x}$}

\filbreak \subsubsection{Worked: root flavor — $f(x)=\sqrt x$}
\stepbox{1. MULTIPLY BY THE CONJUGATE}{$\dfrac{\sqrt{x+h}-\sqrt x}{h}\cdot\dfrac{\sqrt{x+h}+\sqrt x}{\sqrt{x+h}+\sqrt x}$}
\stepdown
\stepbox{2. TOP COLLAPSES}{difference of squares: top $=(x+h)-x=h$: \quad $\dfrac{h}{h(\sqrt{x+h}+\sqrt x)}=\dfrac{1}{\sqrt{x+h}+\sqrt x}$}
\stepdown
\stepbox{3. LET $h\to0$}{$f'(x)=\dfrac{1}{\sqrt{x}+\sqrt x}=\keyres{\dfrac{1}{2\sqrt x}}$}

\filbreak \subsubsection{Derivative Rules}
\begin{itemize}
\item \term{Power}: $\frac{d}{dx}[x^n] = nx^{n-1}$
\item \term{Constant Multiple}: $\frac{d}{dx}[c \cdot f(x)] = c \cdot f'(x)$
\item \term{Sum/Diff}: $\frac{d}{dx}[f \pm g] = f' \pm g'$
\item \term{Product}: $(fg)' = f'g + fg'$
\item \term{Quotient}: $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$
\item \term{Chain}: $\frac{d}{dx}[f(g(x))] = f'(g(x)) \cdot g'(x)$
\end{itemize}
\term{Combined} — the real exam item: $\frac{d}{dx}[x^2\sin(3x)]$ — product rule outside, chain inside: $2x\sin(3x)+x^2\cdot3\cos(3x)=\keyres{2x\sin(3x)+3x^2\cos(3x)}$.

\filbreak \subsubsection{Common Derivatives}
\begin{itemize}
\item $\frac{d}{dx}[c] = 0$, \; $\frac{d}{dx}[x] = 1$
\item $\frac{d}{dx}[x^n] = nx^{n-1}$
\item $\frac{d}{dx}[e^x] = e^x$, \; $\frac{d}{dx}[a^x] = a^x \ln(a)$
\item $\frac{d}{dx}[\ln(x)] = \frac{1}{x}$, \; $\frac{d}{dx}[\log_a(x)] = \frac{1}{x \ln(a)}$
\item $\frac{d}{dx}[\sin(x)] = \cos(x)$
\item $\frac{d}{dx}[\cos(x)] = -\sin(x)$
\item $\frac{d}{dx}[\tan(x)] = \sec^2(x)$
\item $\frac{d}{dx}[\csc(x)] = -\csc(x)\cot(x)$
\item $\frac{d}{dx}[\sec(x)] = \sec(x)\tan(x)$
\item $\frac{d}{dx}[\cot(x)] = -\csc^2(x)$
\item $\frac{d}{dx}[\arcsin(x)] = \frac{1}{\sqrt{1-x^2}}$
\item $\frac{d}{dx}[\arccos(x)] = \frac{-1}{\sqrt{1-x^2}}$
\item $\frac{d}{dx}[\arctan(x)] = \frac{1}{1+x^2}$
\end{itemize}

\filbreak \subsection{tangent line}
At point $(a, f(a))$: \; $y - f(a) = f'(a)(x - a)$

\filbreak \subsubsection{Worked: tangent to $f(x)=x^2$ at $a=3$}
\stepbox{1. HEIGHT}{$f(3)=9$}
\stepdown
\stepbox{2. SLOPE}{$f'(x)=2x \;\to\; f'(3)=6$}
\stepdown
\stepbox{3. POINT–SLOPE}{$y=9+6(x-3)=9+6x-18=\keyres{6x-9}$}

\filbreak \subsection{implicit differentiation}
When $y$ is tangled with $x$, don't solve for $y$ — differentiate both sides in $x$, treating $y$ as a function of $x$: \keyres{every $y$-term picks up a $\frac{dy}{dx}$ by the chain rule}. Then collect and solve.

\filbreak \subsubsection{Worked: folium $x^3+y^3=6xy$ — slope at $(3,3)$}
\stepbox{1. DIFFERENTIATE BOTH SIDES}{$3x^2+3y^2y'=6y+6xy'$ \; \emph{\scriptsize(right side: product rule on $6xy$)}}
\stepdown
\stepbox{2. COLLECT $y'$ TERMS}{$y'(3y^2-6x)=6y-3x^2$}
\stepdown
\stepbox{3. SOLVE}{$y'=\dfrac{6y-3x^2}{3y^2-6x}=\dfrac{2y-x^2}{y^2-2x}$}
\stepdown
\stepbox{4. PLUG THE POINT LAST}{at $(3,3)$: \; $\dfrac{6-9}{9-6}=\keyres{-1}$}
\par\vspace{2pt}
The multivariable shortcut $\frac{dy}{dx}=-F_x/F_y$ (Vector Calculus) compresses exactly this grind — two partials, one ratio, same answer.

\filbreak \subsection{logarithmic differentiation}
Use when the variable sits \keyres{in the exponent} ($x^x$) or the function is a \keyres{big product/quotient of powers}. Take $\ln$ of both sides, expand with log rules, differentiate implicitly, multiply back by $y$.

\filbreak \subsubsection{Worked: $y=x^x$}
\stepbox{1. TAKE ln}{$\ln y=x\ln x$}
\stepdown
\stepbox{2. DIFFERENTIATE}{implicit left, product rule right: \; $\dfrac{y'}{y}=1\cdot\ln x+x\cdot\tfrac1x=\ln x+1$}
\stepdown
\stepbox{3. MULTIPLY BACK BY $y$}{$y'=\keyres{x^x(\ln x+1)}$ \; \emph{\scriptsize(\warn{not} $x\cdot x^{x-1}$ — the power rule needs a constant exponent)}}
\par\vspace{2pt}
Product-of-powers flavor: $y=\frac{(x^2+1)^3(x-4)^5}{\sqrt x}$: \; $\ln y=3\ln(x^2+1)+5\ln(x-4)-\tfrac12\ln x$; differentiate term by term (chain rule inside each $\ln$): $\frac{y'}{y}=3\cdot\frac{2x}{x^2+1}+5\cdot\frac{1}{x-4}-\tfrac12\cdot\frac1x$ \;$\Rightarrow$\; $y'=y\big[\frac{6x}{x^2+1}+\frac{5}{x-4}-\frac{1}{2x}\big]$ — no nested product/quotient rules needed.

\filbreak \subsection{derivative of an inverse function}
$(f^{-1})'(b)=\dfrac{1}{f'(a)}$ where $f(a)=b$: mirrored points have \keyres{reciprocal slopes} — you never need a formula for $f^{-1}$ itself.

\filbreak \subsubsection{Worked: $f(x)=x^3+2x+1$, find $(f^{-1})'(4)$}
\stepbox{1. FIND $a$ WITH $f(a)=4$}{try small values: $f(1)=1+2+1=4$ \checkmark \;$\Rightarrow$\; $a=1$}
\stepdown
\stepbox{2. SLOPE OF $f$ THERE}{$f'(x)=3x^2+2 \;\to\; f'(1)=5$}
\stepdown
\stepbox{3. RECIPROCATE}{$(f^{-1})'(4)=\keyres{\tfrac15}$}

\filbreak \subsection{higher-order derivatives}
$f''=(f')'$, then $f'''$, $f^{(4)}$, \ldots, $f^{(n)}$; Leibniz $\frac{d^n y}{dx^n}$. Meaning ladder: $f'$ rate, $f''$ concavity / acceleration, $f'''$ jerk.

$f=x^4-3x^2$: \; $f'=4x^3-6x$, \; $f''=12x^2-6$, \; $f'''=24x$, \; $f^{(4)}=24$, \; $f^{(5)}=\keyres{0}$ — polynomials differentiate to death.

\term{Patterns}: $\frac{d^n}{dx^n}e^{2x}=2^n e^{2x}$; \; $\sin x$ cycles with period $4$: $\frac{d^{50}}{dx^{50}}\sin x$ — $50\bmod4=2$ $\Rightarrow$ $\keyres{-\sin x}$.

\filbreak \subsection{differentiability vs continuity}
Differentiable $\Rightarrow$ continuous. The converse \warn{fails}. Failure shapes at a point: \term{corner} ($|x|$), \term{cusp} ($x^{2/3}$), \term{vertical tangent} ($x^{1/3}$) — plus any discontinuity.

\filbreak \subsubsection{Worked: $|x|$ at $0$ — continuous, not differentiable}
\stepbox{1. CONTINUOUS}{$\lim_{x\to0}|x|=0=f(0)$ \checkmark}
\stepdown
\stepbox{2. SLOPE FROM THE LEFT}{$\lim_{h\to0^-}\frac{|h|}{h}=-1$}
\stepdown
\stepbox{3. SLOPE FROM THE RIGHT}{$\lim_{h\to0^+}\frac{|h|}{h}=+1$}
\stepdown
\stepbox{4. COMPARE}{$-1\neq1$ $\Rightarrow$ \warn{no derivative}: a corner — the one-sided \emph{slopes} must agree, exactly like one-sided limits}

\filbreak \subsection{critical points and extrema}
A \term{critical point} is a value $c$ in the domain of $f$ where $f'(c) = 0$ or $f'(c)$ is undefined. \warn{Don't forget the undefined branch}: $|x|$ and $x^{2/3}$ both have a critical point at $0$ with no horizontal tangent.

The running example for this whole block: \keyres{$f(x)=x^3-3x^2+1$}, \; $f'=3x^2-6x=3x(x-2)$, \; $f''=6x-6$ — critical points $x=0,2$.

\filbreak \subsubsection{First Derivative Test}
At critical point $c$:
\begin{itemize}
\item $f'$: $+ \to -$: local max at $c$
\item $f'$: $- \to +$: local min at $c$
\item no sign change: neither
\end{itemize}
$f'>0\Rightarrow f$ increasing; $f'<0\Rightarrow$ decreasing. \term{Sign chart mechanic}: mark every critical point (and domain break) on a number line, \keyres{test one point per interval}, read the signs.

\filbreak \subsubsection{Worked: sign chart for $f'=3x(x-2)$}
\stepbox{1. MARK THE CRITICAL POINTS}{number line split at $x=0$ and $x=2$: three intervals}
\stepdown
\stepbox{2. TEST ONE POINT EACH}{$f'(-1)=+9$, \quad $f'(1)=-3$, \quad $f'(3)=+9$ \;$\Rightarrow$\; signs $+\;-\;+$}
\stepdown
\stepbox{3. READ THE CHART}{inc on $(-\infty,0)$, dec on $(0,2)$, inc on $(2,\infty)$; heights from $f$ itself: $f(0)=1$, \; $f(2)=8-12+1=-3$: \keyres{local max $(0,1)$}, \keyres{local min $(2,-3)$}}

\filbreak \subsubsection{Second Derivative Test}
If $f'(c) = 0$:
\begin{itemize}
\item $f''(c) > 0$: local min at $c$
\item $f''(c) < 0$: local max at $c$
\item $f''(c) = 0$: inconclusive
\end{itemize}
Same $f$, faster: $f''=6x-6$: \; $f''(0)=-6<0$ $\Rightarrow$ \keyres{max at $0$}; \; $f''(2)=6>0$ $\Rightarrow$ \keyres{min at $2$} — agrees with the sign chart. \warn{Inconclusive case}: $f=x^4$ at $0$ has $f''(0)=0$ yet is a min — fall back to the First Derivative Test.

\filbreak \subsubsection{Closed Interval Method (abs extrema on $[a,b]$)}
Evaluate $f$ at all critical points in $(a,b)$ and both endpoints. Largest = abs max. Smallest = abs min.

\filbreak \subsubsection{Worked: abs extrema of $f=x^3-3x^2+1$ on $[-1,4]$}
\stepbox{1. CRITICAL POINTS INSIDE}{$x=0,2$ — both in $(-1,4)$ \checkmark}
\stepdown
\stepbox{2. EVALUATE ALL FOUR CANDIDATES}{$f(-1)=-3, \quad f(0)=1, \quad f(2)=-3, \quad f(4)=17$}
\stepdown
\stepbox{3. COMPARE}{\keyres{abs max $17$ at $x=4$} (an endpoint!); \; \keyres{abs min $-3$ at $x=-1$ \emph{and} $x=2$} (a tie)}
\par\vspace{2pt}
Both classic traps in one example: \warn{the max lived at an endpoint} (the local max $f(0)=1$ lost), and \warn{ties are allowed} — report every location.

\filbreak \subsection{concavity and inflection}
\begin{itemize}
\item $f''(x) > 0$: concave up (holds water)
\item $f''(x) < 0$: concave down (sheds water)
\item \term{inflection}: $f''$ changes sign
\end{itemize}
Running example: $f''=6x-6=0$ at $x=1$, sign flips $-\to+$ $\Rightarrow$ \keyres{inflection $(1,-1)$}: concave down before, up after. \warn{$f''=0$ alone is not enough}: $f=x^4$ has $f''(0)=0$ with no sign change — no inflection.

\filbreak \subsection{curve sketching — the synthesis}
The ordered checklist (each step feeds the next):
\begin{enumerate}
\item \term{Domain} (three blockers) \; \term{2. Intercepts} \; \term{3. Symmetry} (even/odd/periodic)
\item[4.] \term{Asymptotes} (VA/HA/slant procedure above)
\item[5.] \term{$f'$ sign chart}: inc/dec + local extrema
\item[6.] \term{$f''$ sign chart}: concavity + inflection
\item[7.] \term{Plot}: extrema, inflections, asymptotes, then connect respecting the two charts
\end{enumerate}

\filbreak \subsubsection{Worked: sketch $f=x^3-3x^2+1$ — assembling the block's results}
Domain $\mathbb R$; $y$-intercept $(0,1)$; no asymptotes (polynomial). $f'$ chart: $+\,-\,+$ $\Rightarrow$ max $(0,1)$, min $(2,-3)$. $f''$ chart: $-\,+$ $\Rightarrow$ inflection $(1,-1)$.
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=middle, axis line style={white!45},
xmin=-1.4, xmax=4.2, ymin=-4.5, ymax=6.5,
xtick={0,2}, ytick={1,-3},
tick style={white!45}, tick label style={text=white!70, font=\tiny},
width=7.4cm, height=5.2cm, samples=60]
\addplot[uHi, very thick, domain=-1.05:3.45] {x^3-3*x^2+1};
\addplot[only marks, mark=*, mark size=1.3pt, color=keyHi] coordinates {(0,1)(2,-3)};
\addplot[only marks, mark=*, mark size=1.3pt, color=duHi] coordinates {(1,-1)};
\node[keyHi, font=\scriptsize, anchor=south west] at (axis cs:0.1,1.3) {max};
\node[keyHi, font=\scriptsize, anchor=north] at (axis cs:2,-3.4) {min};
\node[duHi, font=\scriptsize, anchor=west] at (axis cs:1.25,-1) {inflection};
\end{axis}
\end{tikzpicture}
\end{center}

\vspace{0.1in}
\filbreak \subsection{mean value theorem (MVT)}
If $f$ continuous on $[a,b]$, differentiable on $(a,b)$: $\exists c \in (a,b)$ with

$f'(c) = \frac{f(b) - f(a)}{b - a}$

\term{Rolle's}: if $f(a) = f(b)$, $\exists c$ with $f'(c) = 0$.

\filbreak \subsubsection{Worked: find the MVT's $c$ — $f=x^2$ on $[0,3]$}
\stepbox{1. AVERAGE SLOPE}{$\dfrac{f(3)-f(0)}{3-0}=\dfrac{9-0}{3}=3$}
\stepdown
\stepbox{2. SET $f'(c)$ EQUAL}{$2c=3$}
\stepdown
\stepbox{3. SOLVE \& VERIFY MEMBERSHIP}{$c=\keyres{\tfrac32}$ — and $\tfrac32\in(0,3)$ \checkmark}
\par\vspace{2pt}
\term{Bound flavor} (the other exam use): $f(0)=1$ and $f'(x)\leq2$ everywhere. MVT on $[0,4]$: $\frac{f(4)-f(0)}{4-0}=f'(c)\leq2$ $\Rightarrow$ $f(4)-f(0)\leq8$ $\Rightarrow$ $f(4)\leq1+8=\keyres{9}$ — MVT turns a slope cap into a value cap.

\filbreak \subsection{extreme value theorem (EVT)}
$f$ continuous on $[a,b]$ $\Rightarrow$ $f$ attains abs max and abs min on $[a,b]$.

\warn{Both hypotheses are load-bearing}: $f=x$ on the \emph{open} $(0,1)$ has no max (never reaches $1$); $f(x)=1/x^2$ for $x\neq0$ with $f(0)=0$, on $[-1,1]$ — defined everywhere but discontinuous at $0$ — has no max. This is how EVT is tested — spot the broken hypothesis.

\filbreak \subsection{linear approximation \& differentials}
The tangent line used as a calculator: near $a$, \; $f(x)\approx L(x)=f(a)+f'(a)(x-a)$. \; Differentials: $dy=f'(x)\,dx$ estimates the \keyres{change} in $f$ from a wiggle $dx$. Pick $a=$ \keyres{the nearest nice value}.

\filbreak \subsubsection{Worked: estimate $\sqrt{4.1}$}
\stepbox{1. NAME $f$ AND THE NICE BASE}{$f=\sqrt x$, \; $a=4$: \; $f(4)=2$}
\stepdown
\stepbox{2. SLOPE AT THE BASE}{$f'=\dfrac{1}{2\sqrt x}\to f'(4)=\tfrac14$}
\stepdown
\stepbox{3. RIDE THE TANGENT}{$L(4.1)=2+\tfrac14(0.1)=\keyres{2.025}$ \; \emph{\scriptsize(true $2.02485$; over-estimate because $f''<0$ — tangent sits above a concave-down curve)}}
\par\vspace{2pt}
Same move, two variables: the $\sqrt{3.06^2+3.92^2}$ example in Vector Calculus.

\filbreak \subsection{related rates}
Quantities linked by an equation, all moving in time. \keyres{Differentiate the relation with respect to $t$ first, substitute values last} — a substituted number has derivative $0$ and kills its term.

\stepbox{THE PROCESS}{
\textbf{1.} \term{Draw} the picture and name every changing quantity.\\
\textbf{2.} \term{Write the equation} that ties them together. \warn{Geometry, not calculus.}\\
\textbf{3.} \term{Differentiate both sides with respect to $t$.} Every variable gets a $\frac{d}{dt}$ by the chain rule.\\
\textbf{4.} \term{Substitute the instant} — the given values and rates. \warn{Substitute only now, never in step 2.}\\
\textbf{5.} \term{Solve} for the unknown rate.}
\par\vspace{2pt}
\keyres{Step 4 is where marks are lost.} A quantity that changes must stay a \keyres{variable} through the differentiation. If you plug in its number first, its derivative disappears.
\par\vspace{2pt}
\filbreak \subsubsection{Which equation ties them together?}
{\small
\begin{tabular}{@{}p{0.34\linewidth}@{}p{0.66\linewidth}@{}}
\textcolor{termHi}{\textbf{the picture shows}} & \textcolor{termHi}{\textbf{the equation}} \\[1pt]
a right triangle, ladder, shadow & $a^2+b^2=c^2$ \\
similar triangles & a ratio of matching sides \\
a cone or a cylinder filling & $V$ formula, then eliminate a variable with a ratio \\
an angle changing & $\tan\theta=\frac{\text{opp}}{\text{adj}}$ \\
area or volume growing & the area or volume formula \\
\end{tabular}}
\filbreak \subsubsection{Worked: sliding ladder}
$10$ ft ladder, base slides away at $1$ ft/s. How fast does the top drop when the base is $6$ ft out?
\par\vspace{2pt}
\stepbox{1. RELATION (draw it)}{$x^2+y^2=100$ \; \emph{\scriptsize(Pythagoras — true at every instant)}}
\stepdown
\stepbox{2. DIFFERENTIATE IN $t$}{$2x\dfrac{dx}{dt}+2y\dfrac{dy}{dt}=0$}
\stepdown
\stepbox{3. FILL IN THE SNAPSHOT}{$x=6\Rightarrow y=8$ (Pythagoras again); \; $\dfrac{dx}{dt}=1$}
\stepdown
\stepbox{4. SOLVE FOR THE ASKED RATE}{$\dfrac{dy}{dt}=-\dfrac{x}{y}\dfrac{dx}{dt}=-\dfrac68=\keyres{-0.75\ \text{ft/s}}$ \; \emph{\scriptsize(negative $=$ dropping, as it must)}}
\par\vspace{2pt}
One-liner flavor: circle with $\frac{dr}{dt}=2$ at $r=5$: relation $A=\pi r^2$; differentiate: $\frac{dA}{dt}=2\pi r\frac{dr}{dt}=2\pi(5)(2)=\keyres{20\pi}$.

\filbreak \subsection{optimization (one variable)}
\keyres{Constraint kills a variable, then it's a Closed-Interval / derivative-test problem}: write the objective, substitute the constraint, state the domain, find critical points, confirm max/min, \warn{answer the question asked}.

\stepbox{THE PROCESS}{
\textbf{1.} \term{Name} the quantity to maximize or minimize. Write it as an equation.\\
\textbf{2.} \term{Find the constraint} — the second relationship in the problem.\\
\textbf{3.} \term{Substitute the constraint} to reduce to \keyres{one variable}.\\
\textbf{4.} \term{State the domain.} A length cannot be negative.\\
\textbf{5.} \term{Differentiate, set to zero}, and solve.\\
\textbf{6.} \term{Test the candidates} and the \keyres{endpoints}, then answer the question asked.}
\par\vspace{2pt}
\warn{Read which quantity is given and which is free.} "Fence 400 ft, greatest area" makes the perimeter the constraint and the area the objective. "Area 400, least fence" swaps them. \keyres{The recipe does not change — only the roles.}
\par\vspace{2pt}
\keyres{Step 6 decides the answer's form}: report the \keyres{dimensions} if asked for dimensions, and the \keyres{value} if asked for the maximum.
\filbreak \subsubsection{Worked: river fence — $400$ ft, three sides, max area}
\stepbox{1. OBJECTIVE $+$ CONSTRAINT}{$A=xy$ \quad with \quad $2x+y=400$ \; \emph{\scriptsize($x$ = the two sides, $y$ = the one parallel to the river)}}
\stepdown
\stepbox{2. ELIMINATE}{$y=400-2x$: \; $A(x)=x(400-2x)=400x-2x^2$, \quad domain $0<x<200$}
\stepdown
\stepbox{3. CRITICAL POINT}{$A'=400-4x=0 \;\Rightarrow\; x=100$}
\stepdown
\stepbox{4. CONFIRM \& ANSWER}{$A''=-4<0$ \checkmark max: \; $x=100$, $y=200$, \; $A_{\max}=\keyres{20{,}000\ \text{ft}^2}$}
\par\vspace{2pt}
Same recipe, two variables: the open-top box pair in Vector Calculus (min material / max volume).

\filbreak \subsection{rectilinear motion (1-D)}
$s(t)\xrightarrow{d/dt}v(t)\xrightarrow{d/dt}a(t)$; \; \term{speed} $=|v|$; \term{at rest} $\Leftrightarrow v=0$; \keyres{speeding up $\Leftrightarrow$ $v$ and $a$ share a sign}; total distance $\neq$ displacement.

\filbreak \subsubsection{Worked: $s=t^3-6t^2+9t$, \; $t\geq0$}
\stepbox{1. DIFFERENTIATE TWICE}{$v=3t^2-12t+9=3(t-1)(t-3) \qquad a=6t-12$}
\stepdown
\stepbox{2. AT REST / DIRECTION}{$v=0$ at $t=1,3$; \; sign chart: right on $(0,1)$, left on $(1,3)$, right on $(3,\infty)$}
\stepdown
\stepbox{3. SPEEDING UP — SIGNS AGREE}{$a=0$ at $t=2$: \; $v,a$ both $-$ on $(1,2)$, both $+$ on $(3,\infty)$ $\Rightarrow$ \keyres{speeding up on $(1,2)\cup(3,\infty)$}}
\stepdown
\stepbox{4. EVALUATE $s$ AT THE KEY TIMES}{$s(0)=0, \quad s(1)=1-6+9=4, \quad s(3)=27-54+27=0, \quad s(4)=64-96+36=4$}
\stepdown
\stepbox{5. DISPLACEMENT vs DISTANCE on $[0,4]$}{displacement $=s(4)-s(0)=4-0=4$\\ distance $=|4{-}0|+|0{-}4|+|4{-}0|=4+4+4=\keyres{12}$ \; \emph{\scriptsize(split at the turnarounds $t=1,3$)}}
\par\vspace{2pt}
\term{Antiderivative flavor}: $a=-32$, $v(0)=48$, $s(0)=0$: \; $v=-32t+48$, \; $s=-16t^2+48t$; max height where $v=0$: $-32t+48=0\Rightarrow t=1.5$; \; $s(1.5)=-16(2.25)+48(1.5)=-36+72=\keyres{36}$ ft.

\filbreak \subsection{Newton's method}
Follow the tangent line to its $x$-intercept, repeat: \; $x_{n+1}=x_n-\dfrac{f(x_n)}{f'(x_n)}$. IVT locates the root; Newton refines it. \warn{Fails} if $f'(x_n)=0$ or the seed is far off.

\filbreak \subsubsection{Worked: $\sqrt2$ via $f(x)=x^2-2$, \; $x_0=2$}
\stepbox{1. THE ITERATION}{$x_{n+1}=x_n-\dfrac{x_n^2-2}{2x_n}$}
\stepdown
\stepbox{2. RUN IT}{$x_1=2-\tfrac{4-2}{4}=1.5; \quad x_2=1.5-\tfrac{1.5^2-2}{2(1.5)}=1.5-\tfrac{0.25}{3}=1.41\overline{6}; \quad x_3=1.41\overline{6}-\tfrac{0.00694}{2.8\overline{3}}\approx1.414216$}
\stepdown
\stepbox{3. COMPARE}{$\sqrt2=1.414214$ — \keyres{6 digits in 3 steps} (roughly doubles correct digits per step)}

\filbreak \subsection{Calc I common pitfalls}
\begin{itemize}
\item \warn{$0/0$ is a starting gun, not an answer} — algebra first, L'H second, and \warn{re-check the form before each reapplication}.
\item \warn{L'H differentiates top and bottom separately} — never the quotient rule.
\item \warn{Related rates: differentiate first, substitute last} — a plugged-in number differentiates to $0$.
\item \warn{Implicit: every $y$-term needs $\frac{dy}{dx}$} — forgetting one is the classic slip.
\item \warn{Closed interval method: endpoints are candidates} — the interior test points don't see them.
\item \warn{$\sqrt{x^2}=|x|$} — at $-\infty$ that's $-x$; sign flips.
\item \warn{Speeding up needs $v$ AND $a$} — same sign, not just $a>0$.
\item \warn{$f''(c)=0$ decides nothing} — fall back to the first-derivative sign chart.
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
