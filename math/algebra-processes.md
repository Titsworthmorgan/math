---
geometry:
  - top=0.4in
  - bottom=0.4in
  - left=0.4in
  - right=0.4in
fontsize: 10pt
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
  \definecolor{wordHi}{HTML}{E8A55A}
  \definecolor{ansHi}{HTML}{4EC9B0}
  \newcommand{\ubox}[1]{\fcolorbox{uHi}{black}{\textcolor{uHi}{$#1$}}}
  \newcommand{\dubox}[1]{\fcolorbox{duHi}{black}{\textcolor{duHi}{$#1$}}}
  \newcommand{\stepbox}[2]{{\setlength{\fboxsep}{2.5pt}\noindent\fcolorbox{termHi}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{\scriptsize\textcolor{termHi}{\textbf{#1}}}\\[1pt]\small #2\end{minipage}}\par}}
  \newcommand{\stepdown}{\par\vspace{-1pt}{\centering\textcolor{termHi}{$\downarrow$}\par}\nopagebreak\vspace{-1pt}\nopagebreak}
  \renewcommand{\filbreak}{\needspace{4\baselineskip}}
  \newcommand{\keyres}[1]{\textcolor{ansHi}{#1}}
  \newcommand{\warn}[1]{\textcolor{warnHi}{#1}}
  \newcommand{\term}[1]{\textcolor{wordHi}{\textbf{#1}}}
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


\section{Start Here}

\begin{multicols}{2}


\filbreak \subsection{when you are stuck}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Read the question again.} Write down what it asks for.\\
\textbf{2.} \term{Name the type.} Is this a linear equation, a factoring problem, a system?\\
\textbf{3.} \term{Pick the method} that matches that type.\\
\textbf{4.} \term{Work one step per line.} Never do two moves in one line.\\
\textbf{5.} \term{Check the answer.} Put it back into the original problem.}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Pre-Algebra}

\begin{multicols}{2}


\filbreak \subsection{fractions}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Factor} the top and the bottom.\\
\textbf{2.} \term{Cancel} every factor they share.\\
\textbf{3.} \term{Multiply} what remains.}
\par\vspace{2pt}
\stepbox{THE SAME SUM, BOTH WAYS}{$\dfrac14+\dfrac16$ \; by the general rule: \; $\dfrac{(1)(6)+(1)(4)}{(4)(6)}=\dfrac{10}{24}=\keyres{\dfrac{5}{12}}$
\par\vspace{1pt}
by the smallest common denominator, $12$: \; $\dfrac{3}{12}+\dfrac{2}{12}=\keyres{\dfrac{5}{12}}$
\par\vspace{1pt}
\keyres{Same answer.} The general rule needs no thinking and may need simplifying. The smallest denominator needs thinking and usually does not.}
\par\vspace{2pt}

\filbreak \subsection{ratios and proportions}
\stepbox{THE PROCESS — SOLVE A PROPORTION}{
\textbf{1.} \term{Write} the proportion, keeping matching units in matching positions.\\
\textbf{2.} \term{Cross multiply} — top left times bottom right, and the other pair.\\
\textbf{3.} \term{Solve} the resulting simple equation.}
\par\vspace{2pt}

\filbreak \subsection{exponents and square roots}
\stepbox{THE RULE}{
\textbf{1.} \term{Move the point} until exactly one non-zero digit sits in front of it.\\
\textbf{2.} \term{Count the moves.} That count is the exponent.\\
\textbf{3.} \term{Moved left} gives a \keyres{positive} exponent. \term{Moved right} gives a \keyres{negative} one.}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Algebra I}

\begin{multicols}{2}


\filbreak \subsection{solving linear equations}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Clear brackets} with the distributive rule.\\
\textbf{2.} \term{Combine like terms} on each side.\\
\textbf{3.} \term{Move all variable terms} to one side, using the balance rule.\\
\textbf{4.} \term{Move all plain numbers} to the other side.\\
\textbf{5.} \term{Divide} by the number multiplying the variable.\\
\textbf{6.} \term{Check} by substituting into the original equation.}
\par\vspace{2pt}

\filbreak \subsection{turning words into algebra}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Read it once} without writing anything.\\
\textbf{2.} \term{Name the unknown.} Write "let $x=$" and then the thing in words.\\
\textbf{3.} \term{Translate one phrase at a time} into symbols.\\
\textbf{4.} \term{Solve} the equation.\\
\textbf{5.} \term{Answer the question asked}, with units.}
\par\vspace{2pt}

\filbreak \subsection{inequalities}
\stepbox{THE FLIP RULE}{If you \term{multiply or divide both sides by a negative number}, reverse the inequality sign.
$$-2x>8 \quad\Longrightarrow\quad x\keyres{<}-4$$
\warn{Adding or subtracting a negative does not flip it.} Only multiplying or dividing does.}
\par\vspace{2pt}
\stepbox{THE TEST}{
\textbf{1.} \term{Pick} any easy number inside your answer, usually $0$.\\
\textbf{2.} \term{Put it into the original} inequality.\\
\textbf{3.} \term{It must be true.} Then pick a number outside, which must be false.}
\par\vspace{2pt}

\filbreak \subsection{absolute value}
\stepbox{THE TWO-CASE RULE}{$|A|=b$ with $b>0$ splits into \keyres{two} equations:
$$A=b \qquad\text{or}\qquad A=-b$$
\warn{Isolate the absolute value first.} Split only when the bars stand alone on one side.}
\par\vspace{2pt}

\filbreak \subsection{systems of equations}
\filbreak \subsubsection{Which method? — look at the equations}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{substitution} — one equation already has a variable \keyres{alone} ($y=\dots$), or is easy to make so \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{elimination} — matching terms line up, so adding or subtracting \keyres{cancels} one variable \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED (A): $\;y=2x-1$ \; AND \; $3x+y=9$}{$y$ is already alone, so replace $y$ in the second equation:
\par\vspace{1pt}
$3x+(2x-1)=9$ \; $\Rightarrow$ \; $5x-1=9$ \; $\Rightarrow$ \; $5x=10$ \; $\Rightarrow$ \; $x=2$
\par\vspace{1pt}
put $x=2$ back into $y=2x-1$: \; $y=4-1=3$
$$\text{solution } \keyres{(2,\,3)}$$}
\stepdown
\stepbox{WORKED (B): $\;2x+3y=12$ \; AND \; $2x-y=4$}{both have $2x$, so \keyres{subtract} the second from the first and the $x$ terms cancel:
$$(2x-2x)+(3y-(-y))=12-4 \;\Rightarrow\; 4y=8 \;\Rightarrow\; y=2$$
put $y=2$ into $2x-y=4$: \; $2x-2=4$ \; $\Rightarrow$ \; $x=3$
$$\text{solution } \keyres{(3,\,2)}$$}
\par\vspace{2pt}
\stepbox{CHECK BOTH EQUATIONS, NOT ONE}{$2(3)+3(2)=6+6=12$ \checkmark \qquad $2(3)-2=4$ \checkmark
\par\vspace{1pt}
\warn{A point can satisfy one equation and fail the other.} Checking only one proves nothing.}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.36\linewidth}@{}p{0.64\linewidth}@{}}
\term{one solution} & the lines cross once \\[2pt]
\term{no solution} & parallel lines. You reach a false statement such as $0=5$. \\[2pt]
\term{infinitely many} & the same line twice. You reach $0=0$. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Pick} one variable to remove.\\
\textbf{2.} \term{Eliminate} it from one pair of equations.\\
\textbf{3.} \term{Eliminate} the same variable from a different pair.\\
\textbf{4.} \term{Solve} the two-variable system you now have.\\
\textbf{5.} \term{Back-substitute} to find the third variable.}
\par\vspace{2pt}

\filbreak \subsection{factoring}
\filbreak \subsubsection{Which method? — count the terms}
{\small
\begin{tabular}{@{}p{0.14\linewidth}@{}p{0.44\linewidth}@{}p{0.42\linewidth}@{}}
\textcolor{termHi}{\textbf{terms}} & \textcolor{termHi}{\textbf{shape}} & \textcolor{termHi}{\textbf{method}} \\[1pt]
\keyres{2} & $a^2-b^2$ & difference of squares \\[2pt]
\keyres{2} & $a^3\pm b^3$ & sum or difference of cubes \\[2pt]
\keyres{3} & $x^2+bx+c$ & find two numbers \\[2pt]
\keyres{3} & $ax^2+bx+c$, $a\neq1$ & the AC method \\[2pt]
\keyres{4} & anything & grouping \\
\end{tabular}}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.42\linewidth}@{}p{0.58\linewidth}@{}}
\term{difference of squares} & $a^2-b^2=(a+b)(a-b)$ \\[2pt]
\term{perfect square} & $a^2\pm2ab+b^2=(a\pm b)^2$ \\[2pt]
\term{sum of cubes} & $a^3+b^3=(a+b)(a^2-ab+b^2)$ \\[2pt]
\term{difference of cubes} & $a^3-b^3=(a-b)(a^2+ab+b^2)$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{A sum of squares $a^2+b^2$ does not factor.} Only the difference does.
\par\vspace{2pt}
\stepbox{WORKED (2 TERMS): $\;4x^2-25$}{both parts are perfect squares: $4x^2=(2x)^2$ and $25=5^2$
$$4x^2-25=\keyres{(2x+5)(2x-5)}$$}
\stepdown
\stepbox{WORKED (3 TERMS, $a=1$): $\;x^2+5x+6$}{find two numbers that \keyres{multiply to $6$} and \keyres{add to $5$}
\par\vspace{1pt}
pairs for $6$: $1$ and $6$ give $7$. \; $2$ and $3$ give $\keyres{5}$ \checkmark
$$x^2+5x+6=\keyres{(x+2)(x+3)}$$}
\stepdown
\stepbox{WORKED (3 TERMS, $a\neq1$): $\;6x^2+11x+3$ — THE AC METHOD}{\textbf{1.} multiply $a$ and $c$: \; $6\cdot3=18$
\par\vspace{1pt}
\textbf{2.} find two numbers that multiply to $18$ and add to $11$: \; $\keyres{9}$ and $\keyres{2}$
\par\vspace{1pt}
\textbf{3.} split the middle term using them: \; $6x^2+9x+2x+3$
\par\vspace{1pt}
\textbf{4.} group in pairs and factor each: \; $3x(2x+3)+1(2x+3)$
\par\vspace{1pt}
\textbf{5.} the bracket now repeats, so pull it out:
$$\keyres{(3x+1)(2x+3)}$$}
\par\vspace{2pt}
\keyres{Check any factoring by multiplying back out.} It takes ten seconds and catches every sign error.
\par\vspace{2pt}

\filbreak \subsection{quadratic equations}
\filbreak \subsubsection{Which method? — look at the equation}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{factoring} — the quadratic factors easily. \keyres{Fastest when it works.} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{square root property} — there is \keyres{no plain $x$ term}, or one side is already a perfect square \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{completing the square} — asked for it, or you need \term{vertex form} \\[2pt]
\textcolor{keyHi}{\textbf{D}} & \term{quadratic formula} — \keyres{always works}. Use it when nothing factors. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Try A first, fall back to D.} B and C are for the shapes that ask for them.
\par\vspace{2pt}
\stepbox{THE ZERO PRODUCT RULE — WHY FACTORING SOLVES}{If two numbers multiply to $0$, at least one of them \keyres{is} $0$. Nothing else can happen.
\par\vspace{1pt}
So once $(x-2)(x-3)=0$, either $x-2=0$ or $x-3=0$.
\par\vspace{1pt}
\warn{This works for zero only.} If $(x-2)(x-3)=6$, you may \warn{not} say $x-2=6$. Move everything to one side first.}
\par\vspace{2pt}
\stepbox{WORKED (A) FACTORING: $\;x^2-5x+6=0$}{two numbers multiplying to $6$, adding to $-5$: \; $-2$ and $-3$
\par\vspace{1pt}
$(x-2)(x-3)=0$, so $x-2=0$ or $x-3=0$
$$x=\keyres{2} \quad\text{or}\quad x=\keyres{3}$$}
\stepdown
\stepbox{WORKED (B) SQUARE ROOT PROPERTY: $\;(x-3)^2=16$}{take the square root of both sides, and \warn{keep both signs}:
$$x-3=\pm4$$
$x-3=4$ gives $x=7$. \quad $x-3=-4$ gives $x=-1$.
$$x=\keyres{7} \quad\text{or}\quad x=\keyres{-1}$$
\warn{Forgetting the negative root loses half the answer.} A square erases the sign, so undoing it must restore both.}
\stepdown
\stepbox{WORKED (C) COMPLETING THE SQUARE: $\;x^2+6x-7=0$}{\textbf{1.} move the plain number across: \; $x^2+6x=7$
\par\vspace{1pt}
\textbf{2.} halve the $x$ coefficient and square it: \; $\left(\tfrac62\right)^2=3^2=\keyres{9}$
\par\vspace{1pt}
\textbf{3.} add it to \keyres{both sides}: \; $x^2+6x+9=16$
\par\vspace{1pt}
\textbf{4.} the left side is now a perfect square: \; $(x+3)^2=16$
\par\vspace{1pt}
\textbf{5.} square root both sides: \; $x+3=\pm4$, so $x=\keyres{1}$ or $x=\keyres{-7}$}
\stepdown
\stepbox{WORKED (D) THE FORMULA: $\;2x^2+3x-5=0$}{$$x=\frac{-b\pm\sqrt{b^2-4ac}}{2a} \qquad a=2,\; b=3,\; c=-5$$
\textbf{1.} the part under the root: \; $b^2-4ac=3^2-4(2)(-5)=9+40=\keyres{49}$
\par\vspace{1pt}
\textbf{2.} substitute: \; $x=\dfrac{-3\pm\sqrt{49}}{2(2)}=\dfrac{-3\pm7}{4}$
\par\vspace{1pt}
\textbf{3.} split the $\pm$: \; $x=\dfrac{4}{4}=\keyres{1}$ \quad or \quad $x=\dfrac{-10}{4}=\keyres{-\dfrac52}$
\par\vspace{1pt}
\warn{$-4ac$ with a negative $c$ becomes addition.} Two negatives made $+40$ here.}
\par\vspace{2pt}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Algebra II}

\begin{multicols}{2}


\filbreak \subsection{rational expressions}
\stepbox{THE PROCESS — SIMPLIFY}{
\textbf{1.} \term{Factor} the top and the bottom completely.\\
\textbf{2.} \term{Note the excluded values} — whatever makes the original bottom zero.\\
\textbf{3.} \term{Cancel} factors the top and bottom share.}
\par\vspace{2pt}

\filbreak \subsection{exponential and logarithmic functions}
\filbreak \subsubsection{Which method? — solving these two shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{variable in the exponent} $\Rightarrow$ take a \keyres{logarithm} of both sides \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{variable inside a log} $\Rightarrow$ combine into one log, then \keyres{rewrite as an exponential} \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED (A), THE EASY CASE: $\;2^x=32$}{write $32$ as a power of the same base: \; $32=2^5$
\par\vspace{1pt}
same base means the exponents match: \; $x=\keyres{5}$
\par\vspace{1pt}
\emph{\scriptsize(Always look for a common base first. It avoids the calculator entirely.)}}
\stepdown
\stepbox{WORKED (A), THE GENERAL CASE: $\;3^x=20$}{$20$ is not a power of $3$, so take a log of both sides:
$$\log(3^x)=\log20 \;\Rightarrow\; x\log3=\log20 \;\Rightarrow\; x=\frac{\log20}{\log3}\approx\keyres{2.727}$$
\keyres{The power rule is what frees the $x$}: it moves the exponent down in front.}
\stepdown
\stepbox{WORKED (B): $\;\log_2 x+\log_2(x-2)=3$}{\textbf{1.} combine with the product rule: \; $\log_2\big(x(x-2)\big)=3$
\par\vspace{1pt}
\textbf{2.} rewrite as an exponential: \; $x(x-2)=2^3=8$
\par\vspace{1pt}
\textbf{3.} solve: \; $x^2-2x-8=0$ \; $\Rightarrow$ \; $(x-4)(x+2)=0$ \; $\Rightarrow$ \; $x=4$ or $x=-2$
\par\vspace{1pt}
\textbf{4.} \warn{check both.} $x=-2$ gives $\log_2(-2)$, and a logarithm of a negative number does not exist.
$$x=\keyres{4} \text{ only}$$}
\par\vspace{2pt}
\warn{Log equations almost always produce a rejected answer.} Checking is part of the method, not an optional extra.
\par\vspace{2pt}

\filbreak \subsection{sigma notation and the binomial theorem}
\stepbox{THE PROCESS — EXPAND $(a+b)^n$}{
\textbf{1.} \term{Take} row $n$ of the triangle as the coefficients.\\
\textbf{2.} \term{Start} at $a^n b^0$ and step down: the power of $a$ falls, the power of $b$ rises.\\
\textbf{3.} \term{Check} that every term's powers add to $n$.}
\par\vspace{2pt}

\filbreak \subsection{direct and inverse variation}
\stepbox{THE PROCESS — THE SAME THREE STEPS EITHER WAY}{
\textbf{1.} \term{Write} the correct form, $y=kx$ or $y=\frac{k}{x}$.\\
\textbf{2.} \term{Find $k$} by substituting the pair you were given.\\
\textbf{3.} \term{Rewrite} with $k$ filled in, then answer the question.}
\par\vspace{2pt}

\filbreak \subsection{polynomial division}
\stepbox{THE REMAINDER THEOREM}{To find the remainder when $P(x)$ is divided by $(x-c)$, \keyres{just evaluate $P(c)$}. No division needed.
\par\vspace{1pt}
\term{Consequence}: if $P(c)=0$, the remainder is zero, so $(x-c)$ \keyres{is a factor}. This is how you find roots of a cubic.}
\par\vspace{2pt}

\filbreak \subsection{finding polynomial roots}
\stepbox{THE RATIONAL ROOT THEOREM}{Every rational root of a polynomial has the form
$$\keyres{\pm\frac{\text{a factor of the constant term}}{\text{a factor of the leading coefficient}}}$$
That list is finite, so you can test it. \warn{It lists candidates, not answers} — most of them fail.}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{List} the candidates from the theorem.\\
\textbf{2.} \term{Test} them with the remainder theorem until one gives $0$.\\
\textbf{3.} \term{Divide} the polynomial by that factor.\\
\textbf{4.} \term{Factor} what is left, which is now one degree lower.}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Pre-Calculus}

\begin{multicols}{2}


\filbreak \subsection{functions}
\stepbox{THE TEST — SUBSTITUTE $-x$ AND COMPARE}{$f(x)=x^2-4$: \; $f(-x)=(-x)^2-4=x^2-4$. \; That equals $f(x)$, so \keyres{even}.
\par\vspace{1pt}
$f(x)=x^3-x$: \; $f(-x)=-x^3+x=-(x^3-x)$. \; That equals $-f(x)$, so \keyres{odd}.
\par\vspace{1pt}
\warn{Compare against both $f(x)$ and $-f(x)$ before concluding "neither".}}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Replace} $f(x)$ with $y$.\\
\textbf{2.} \term{Swap} $x$ and $y$.\\
\textbf{3.} \term{Solve} for $y$.\\
\textbf{4.} \term{Rename} it $f^{-1}(x)$.}
\par\vspace{2pt}

\filbreak \subsection{polynomial and rational behaviour}
\filbreak \subsubsection{Asymptotes — three kinds}
An \term{asymptote} is a line the graph approaches but never reaches.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{V}} & \term{vertical} $\Rightarrow$ where the denominator is zero \keyres{after cancelling}. A factor that cancels gives a \term{hole}, not an asymptote. \\[4pt]
\textcolor{keyHi}{\textbf{H}} & \term{horizontal} $\Rightarrow$ compare degrees. Top smaller: $y=0$. Equal: the ratio of leading coefficients. Top larger: none. \\[4pt]
\textcolor{keyHi}{\textbf{S}} & \term{slant} $\Rightarrow$ when the top degree is \keyres{exactly one more} than the bottom. Divide to find the line. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED: $\;\dfrac{2x^2+3x-1}{x^2-4}$}{\term{vertical}: $x^2-4=0$ gives $x=\keyres{2}$ and $x=\keyres{-2}$, and neither cancels
\par\vspace{1pt}
\term{horizontal}: degrees are equal, both $2$, so take the leading coefficients:
$$y=\frac{2}{1}=\keyres{2}$$
\term{slant}: none, because the degrees are equal rather than differing by one}
\par\vspace{2pt}
\warn{A graph may cross a horizontal asymptote.} The rule is about behaviour far out, not a barrier.
\par\vspace{2pt}

\filbreak \subsection{finding the zeros}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Set the function equal to zero.}\\
\textbf{2.} \term{Solve} by whichever method fits the type.\\
\textbf{3.} \term{Discard} any answer outside the domain.\\
\textbf{4.} \term{Check} each survivor in the original function.}
\par\vspace{2pt}
\filbreak \subsubsection{Which method? — read the function type}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{linear} $\Rightarrow$ solve directly. \keyres{Exactly one zero}, unless the line is horizontal. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{quadratic} $\Rightarrow$ factor, or use the formula. The \keyres{discriminant} says how many before you start. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{polynomial, degree $\geq3$} $\Rightarrow$ rational root theorem, then divide and factor what is left. \\[2pt]
\textcolor{keyHi}{\textbf{D}} & \term{rational} $\Rightarrow$ set the \keyres{numerator} to zero, then \warn{discard anything that also zeroes the denominator}. \\[2pt]
\textcolor{keyHi}{\textbf{E}} & \term{exponential} $\Rightarrow$ \keyres{no zeros ever}. $b^x$ is always positive, which is why $y=0$ is its asymptote. \\[2pt]
\textcolor{keyHi}{\textbf{F}} & \term{logarithm} $\Rightarrow$ set the inside equal to \keyres{$1$}, because $\log1=0$. \\[2pt]
\textcolor{keyHi}{\textbf{G}} & \term{trigonometric} $\Rightarrow$ \keyres{infinitely many}, spaced one period apart. Give the ones in the interval asked for. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{ONE EXAMPLE OF EACH}{\textbf{A} \; $3x-12=0$ \; $\Rightarrow$ \; $x=\keyres{4}$
\par\vspace{1pt}
\textbf{B} \; $x^2-6x+5=0$ \; $\Rightarrow$ \; $(x-1)(x-5)=0$ \; $\Rightarrow$ \; $x=\keyres{1},\,\keyres{5}$
\par\vspace{1pt}
\textbf{C} \; $x^3-4x=0$ \; $\Rightarrow$ \; $x(x-2)(x+2)=0$ \; $\Rightarrow$ \; $x=\keyres{0},\,\keyres{2},\,\keyres{-2}$
\par\vspace{1pt}
\textbf{F} \; $\log(x-3)=0$ \; $\Rightarrow$ \; $x-3=1$ \; $\Rightarrow$ \; $x=\keyres{4}$
\par\vspace{1pt}
\textbf{G} \; $\sin x=0$ on $[0,2\pi)$ \; $\Rightarrow$ \; $x=\keyres{0},\,\keyres{\pi}$}
\par\vspace{2pt}
\stepbox{CASE D IS THE TRAP — $\;f(x)=\dfrac{x^2-4}{x-2}$}{numerator zero at $x=2$ and $x=-2$. \; But $x=2$ also makes the \keyres{denominator} zero.
\par\vspace{1pt}
$x=2$ is a \term{hole}, not a zero — the function has no value there at all.
$$\text{the only zero is } \keyres{x=-2}$$
\warn{Always check a candidate against the denominator before accepting it.}}
\par\vspace{2pt}
\keyres{Always factor first.} A factored function shows its zeros directly: each factor set to zero gives one, by the zero product rule.
\par\vspace{2pt}

\filbreak \subsection{the key points of a graph}
\stepbox{THE PROCESS}{
\textbf{1.} \term{$y$-intercept} — set $x=0$. There is \keyres{at most one}, because a function gives one output per input.\\
\textbf{2.} \term{$x$-intercepts} — set $y=0$ and find the zeros. There may be \keyres{many}.\\
\textbf{3.} \term{Turning points} — where the curve changes direction.\\
\textbf{4.} \term{Asymptotes} — lines the curve approaches but never reaches.\\
\textbf{5.} \term{End behaviour} — what happens far left and far right.}
\par\vspace{2pt}

\filbreak \subsection{sketching a polynomial}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Factor} and list the zeros. Those are the only places the curve can cross.\\
\textbf{2.} \term{Check each zero's multiplicity} — does the curve cross there, or touch and turn back?\\
\textbf{3.} \term{Find the $y$-intercept} by setting $x=0$.\\
\textbf{4.} \term{Read the end behaviour} from the leading term.\\
\textbf{5.} \term{Test one point in each interval} between the zeros to get the sign.\\
\textbf{6.} \term{Join the dots.} A turning point sits between each pair of neighbouring zeros.}
\par\vspace{2pt}

\filbreak \subsection{polynomial and rational inequalities}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Move everything to one side}, so the other side is zero.\\
\textbf{2.} \term{Factor} and find the zeros. For a fraction, also find where the \keyres{denominator} is zero.\\
\textbf{3.} \term{Mark all of those} on a number line. They split it into intervals.\\
\textbf{4.} \term{Test one point} in each interval.\\
\textbf{5.} \term{Keep the intervals} whose sign matches what was asked.}
\par\vspace{2pt}

\filbreak \subsection{trigonometric identities and equations}
\stepbox{THE ONE IDENTITY EVERYTHING ELSE COMES FROM}{$$\keyres{\sin^2\theta+\cos^2\theta=1}$$
This is the Pythagorean theorem on the unit circle: the legs are $x=\cos\theta$ and $y=\sin\theta$, and the hypotenuse is the radius $1$.}
\par\vspace{2pt}
\stepbox{THE PROCESS — SOLVE A TRIG EQUATION}{
\textbf{1.} \term{Isolate} the trig function.\\
\textbf{2.} \term{Find} one angle that works, using a special triangle.\\
\textbf{3.} \term{Find every other angle} in the interval with the same value.\\
\textbf{4.} \term{Check} each against the interval you were given.}
\par\vspace{2pt}

\filbreak \subsection{triangles that are not right-angled}
\filbreak \subsubsection{Which law? — count what you are given}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{Law of Sines} $\Rightarrow$ you have a \keyres{matching angle and opposite side}. Cases \term{AAS}, \term{ASA}, \term{SSA}. \\[4pt]
\textcolor{keyHi}{\textbf{B}} & \term{Law of Cosines} $\Rightarrow$ you do \keyres{not}. Cases \term{SAS} and \term{SSS}. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{The test is one question}: can you see an angle and the side directly across from it, both known? If yes, use Sines. If no, use Cosines.
\par\vspace{2pt}
$$\text{\term{Law of Sines}}\qquad \frac{a}{\sin A}=\frac{b}{\sin B}=\frac{c}{\sin C}$$
$$\text{\term{Law of Cosines}}\qquad c^2=a^2+b^2-2ab\cos C$$
\keyres{Each side pairs with the angle opposite it.} Lower-case $a$ sits across from upper-case $A$.
\par\vspace{2pt}
\keyres{The Law of Cosines is the Pythagorean theorem with a correction term.} When $C=90^\circ$, $\cos C=0$, the last term vanishes, and it becomes $c^2=a^2+b^2$ exactly.
\par\vspace{2pt}
\stepbox{WORKED (A): $A=30^\circ$, \; $B=45^\circ$, \; $a=10$}{$a$ and $A$ are a matching pair, so use Sines:
$$\frac{10}{\sin30^\circ}=\frac{b}{\sin45^\circ} \;\Longrightarrow\; b=\frac{10\sin45^\circ}{\sin30^\circ}=\frac{10\left(\frac{\sqrt2}{2}\right)}{\frac12}$$
$$b=10\sqrt2\approx\keyres{14.14}$$
\keyres{Sanity check}: $B$ is the larger angle, so $b$ must be the longer side. $14.14>10$ \checkmark}
\stepdown
\stepbox{WORKED (B): $a=5$, \; $b=7$, \; $C=60^\circ$}{The known angle sits \keyres{between} the two known sides, so no matching pair exists. Use Cosines:
$$c^2=5^2+7^2-2(5)(7)\cos60^\circ=25+49-70\left(\tfrac12\right)=74-35=39$$
$$c=\sqrt{39}\approx\keyres{6.24}$$
\keyres{Sanity check}: $c$ must sit between $7-5=2$ and $7+5=12$. It does \checkmark}
\par\vspace{2pt}
\warn{SSA can give two triangles, one, or none.} Two different angles share the same sine, so after finding one, check whether its supplement also fits inside $180^\circ$. This is called the \term{ambiguous case}.
\par\vspace{2pt}
\end{multicols}