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

\filbreak \subsection{how to read this}
Every page uses the same colours. Learn them once and the rest of the document explains itself.
\par\vspace{2pt}
Colours come in \keyres{two layers}. One layer is us talking to you. The other is the maths colouring itself, so you can see an expression's parts at a glance.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.20\linewidth}@{}p{0.80\linewidth}@{}}
\multicolumn{2}{@{}l@{}}{\textcolor{termHi}{\textbf{what we tell you}}} \\[2pt]
\term{orange} & a new word, defined where it first appears \\[2pt]
\keyres{teal} & the answer, or the idea that matters most \\[2pt]
\warn{red} & a mistake people make here. Read these twice. \\[2pt]
white & ordinary explanation \\[4pt]
\multicolumn{2}{@{}l@{}}{\textcolor{termHi}{\textbf{inside the maths}}} \\[2pt]
\textcolor{varHi}{blue} & a letter standing for a number, such as $x$ \\[2pt]
\textcolor{numHi}{green} & a plain number \\[2pt]
\textcolor{funcHi}{yellow} & a function name, such as $f$ or $\sin$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{The two layers never share a colour.} An orange word is always vocabulary. A blue letter is always a variable.
\par\vspace{2pt}
\term{Step boxes} carry the work. Each box is \keyres{one step}. The arrow below a box means "now do this next". Read them from top to bottom.
\par\vspace{2pt}
\stepbox{1. THIS IS A STEP BOX}{The label says what the step does. The body shows the work.}
\stepdown
\stepbox{2. THE ARROW MEANS "NEXT"}{Nothing is skipped between two boxes.}
\par\vspace{2pt}
\keyres{Use worked examples actively.} Cover everything below the first box, try the step yourself, then uncover one box and compare. Reading a solved problem teaches far less than attempting it.

\filbreak \subsection{why algebra works}
Four ideas carry all of algebra. Everything later is a consequence of them.
\par\vspace{2pt}
\stepbox{1. A LETTER IS A NUMBER YOU DO NOT KNOW YET}{A \term{variable} is a name for an unknown number. In $x+3=7$, the letter $x$ stands for one specific number. Algebra finds it.
\par\vspace{1pt}
\emph{\scriptsize(A variable is not a mystery. It is a number wearing a name tag.)}}
\stepdown
\stepbox{2. AN EQUATION IS A CLAIM}{The sign $=$ claims that both sides name the \keyres{same number}. \; $2+3=5$ claims that "$2+3$" and "$5$" are two names for one number.
\par\vspace{1pt}
\warn{The $=$ sign does not mean "here comes the answer".} It means "these two are equal".}
\stepdown
\stepbox{3. THE BALANCE RULE}{Picture a balance scale that is level. Add the same weight to both pans and it stays level. An equation behaves the same way.
$$\text{Do the same thing to \keyres{both sides}, and the equation stays true.}$$
This one rule licenses every step you will ever take when solving.}
\stepdown
\stepbox{4. A FUNCTION IS A MACHINE}{A \term{function} takes a number in and gives \keyres{exactly one} number out. Write $f(x)=2x+1$. Put in $3$, get out $7$.
\par\vspace{1pt}
\warn{"Exactly one" is the whole rule.} A machine that sometimes gives $7$ and sometimes gives $9$ for the same input is not a function.}
\par\vspace{2pt}
\keyres{Why solving works}: you use the balance rule to peel operations off the variable, one at a time, until the variable stands alone. Nothing more mysterious than that is happening.

\filbreak \subsection{the rules everything assumes}
Later topics use these without stopping to explain them. They are collected here once, in full.

\filbreak \subsubsection{Order of operations}
When an expression mixes operations, everyone must read it the same way. The agreed order:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.06\linewidth}@{}p{0.94\linewidth}@{}}
\keyres{1} & \term{Parentheses} — do anything inside grouping symbols first \\[2pt]
\keyres{2} & \term{Exponents} — powers and roots \\[2pt]
\keyres{3} & \term{Multiply and divide} — left to right, as they appear \\[2pt]
\keyres{4} & \term{Add and subtract} — left to right, as they appear \\
\end{tabular}}
\par\vspace{2pt}
\warn{Steps 3 and 4 are each one step, not two.} Multiplication does not outrank division. In $12\div3\times2$, work left to right: $4\times2=8$. It is \warn{not} $12\div6=2$.
\par\vspace{2pt}
\stepbox{WORKED: $\;2+3\times(8-6)^2$}{parentheses: $8-6=2$ \; $\Rightarrow$ \; $2+3\times2^2$
\par\vspace{1pt}
exponent: $2^2=4$ \; $\Rightarrow$ \; $2+3\times4$
\par\vspace{1pt}
multiply: $3\times4=12$ \; $\Rightarrow$ \; $2+12$
\par\vspace{1pt}
add: \; $\keyres{14}$}

\filbreak \subsubsection{Signed numbers}
{\small
\begin{tabular}{@{}p{0.46\linewidth}@{}p{0.54\linewidth}@{}}
\term{adding, same sign} & add, keep the sign: $-3+(-4)=-7$ \\[2pt]
\term{adding, different signs} & subtract, keep the \keyres{bigger} sign: $-7+3=-4$ \\[2pt]
\term{subtracting} & add the opposite: $5-(-3)=5+3=8$ \\[2pt]
\term{multiply or divide} & same signs $\to$ positive, different $\to$ negative \\
\end{tabular}}
\par\vspace{2pt}
\warn{$-x$ does not mean "a negative number".} It means "the opposite of $x$". If $x=-4$, then $-x=4$, which is positive.

\filbreak \subsubsection{Fractions}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{multiply} & across the top, across the bottom: $\dfrac{2}{3}\cdot\dfrac{4}{5}=\dfrac{8}{15}$ \\[5pt]
\term{divide} & flip the second, then multiply: $\dfrac{2}{3}\div\dfrac{4}{5}=\dfrac{2}{3}\cdot\dfrac{5}{4}=\dfrac{10}{12}=\dfrac{5}{6}$ \\[5pt]
\term{add or subtract} & \keyres{same bottom first}: $\dfrac{1}{4}+\dfrac{1}{6}=\dfrac{3}{12}+\dfrac{2}{12}=\dfrac{5}{12}$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{You may cancel factors, never terms.} In $\dfrac{2x}{2}$ the $2$ is a factor of the whole top, so it cancels. In $\dfrac{2x+3}{2}$ it is not, so it does \warn{not}.

\filbreak \subsection{when you are stuck}
Being stuck is almost always one of two things. Either you do not know what kind of problem this is, or you know but skipped a step. This process addresses both.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Read the question again.} Write down what it asks for.\\
\textbf{2.} \term{Name the type.} Is this a linear equation, a factoring problem, a system?\\
\textbf{3.} \term{Pick the method} that matches that type.\\
\textbf{4.} \term{Work one step per line.} Never do two moves in one line.\\
\textbf{5.} \term{Check the answer.} Put it back into the original problem.}
\par\vspace{2pt}
\keyres{Step 5 is the one people skip, and it is the most valuable.} Checking turns a guess into a certainty, and it catches arithmetic slips that no amount of re-reading will.
\par\vspace{2pt}
\stepbox{HOW TO CHECK — SUBSTITUTE AND COMPARE}{Solve $3x-4=11$ and get $x=5$. \; Now put $5$ back into the \keyres{original} equation:
$$3(5)-4=15-4=11 \quad\text{and the right side is } 11 \;\checkmark$$
Both sides give the same number, so $x=5$ is correct.}
\par\vspace{2pt}
\warn{Check against the original problem, not your own second line.} If you copied a sign wrongly in step one, checking against that line will happily confirm the mistake.
\par\vspace{2pt}
\term{Still stuck after that?} Work a \keyres{simpler version} of the same problem. Replace hard numbers with easy ones, solve that, then repeat your steps on the real numbers.

\end{multicols}

\section{Pre-Algebra}

\begin{multicols}{2}

\filbreak \subsection{integers and the number line}
The \term{integers} are the whole numbers and their opposites: $\dots,-2,-1,0,1,2,\dots$ Picture them on a line, with $0$ in the middle and negatives to the left.
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}[scale=0.85, font=\scriptsize]
\draw[white!45,<->] (-3.6,0) -- (3.6,0);
\foreach \x in {-3,-2,-1,0,1,2,3}{
  \draw[white!45] (\x,0.09) -- (\x,-0.09);
  \node[text=white!80, anchor=north] at (\x,-0.12) {$\x$};}
\fill[keyHi] (2,0) circle (2.2pt);
\fill[warnHi] (-2,0) circle (2.2pt);
\draw[duHi,<->] (-2,0.42) -- (2,0.42);
\node[text=duHi, anchor=south] at (0,0.44) {opposites — same distance from $0$};
\end{tikzpicture}
\end{center}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{bigger} & further \keyres{right}. So $-2>-7$, because $-2$ sits to the right. \\[2pt]
\term{opposite} & same distance from $0$, other side: the opposite of $5$ is $-5$ \\[2pt]
\term{absolute value} & distance from $0$, so never negative: $|-7|=7$ and $|7|=7$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{Negative numbers reverse your intuition about size.} A debt of \$$7$ is a bigger debt than a debt of \$$2$, but $-7$ is the \keyres{smaller} number. Compare positions on the line, not the digits.

\filbreak \subsection{fractions}
A \term{fraction} $\dfrac{a}{b}$ means "cut a whole into $b$ equal parts, then take $a$ of them". The top is the \term{numerator}, the bottom the \term{denominator}.
\par\vspace{2pt}
\keyres{The one fact behind every fraction rule}: multiplying the top and bottom by the same number does not change the value, because you are cutting into more pieces and taking proportionally more.
$$\frac{3}{4}=\frac{3\cdot2}{4\cdot2}=\frac{6}{8}=\frac{3\cdot5}{4\cdot5}=\frac{15}{20}$$

\filbreak \subsubsection{Simplifying}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Factor} the top and the bottom.\\
\textbf{2.} \term{Cancel} every factor they share.\\
\textbf{3.} \term{Multiply} what remains.}
\par\vspace{2pt}
\stepbox{WORKED: SIMPLIFY $\;\dfrac{18}{24}$}{$18=2\cdot3\cdot3$ \quad and \quad $24=2\cdot2\cdot2\cdot3$
\par\vspace{1pt}
shared factors: one $2$ and one $3$, so cancel $6$ from each:
$$\frac{18}{24}=\frac{6\cdot3}{6\cdot4}=\keyres{\frac{3}{4}}$$}

\filbreak \subsubsection{Mixed numbers}
A \term{mixed number} like $2\frac{3}{5}$ means $2+\frac{3}{5}$. To calculate with it, turn it into a single fraction first.
\par\vspace{1pt}
\stepbox{WORKED: $\;2\tfrac{3}{5}$ TO A SINGLE FRACTION}{the $2$ wholes are $2\cdot5=10$ fifths, plus the $3$ fifths already there:
$$2\tfrac{3}{5}=\frac{10+3}{5}=\keyres{\frac{13}{5}}$$}

\filbreak \subsubsection{The four operations}
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.74\linewidth}@{}}
\term{multiply} & straight across: $\dfrac{2}{3}\cdot\dfrac{4}{5}=\dfrac{8}{15}$ \\[5pt]
\term{divide} & flip the second, then multiply: $\dfrac{2}{3}\div\dfrac{4}{5}=\dfrac{2}{3}\cdot\dfrac{5}{4}=\dfrac{10}{12}=\dfrac{5}{6}$ \\[5pt]
\term{add} & \keyres{common denominator first} \\[2pt]
\term{subtract} & \keyres{common denominator first} \\
\end{tabular}}
\par\vspace{2pt}
\warn{Only adding and subtracting need a common denominator.} Multiplying and dividing do not. This is the most common mix-up in this section.
\par\vspace{2pt}
\stepbox{1. FIND THE COMMON DENOMINATOR}{$\dfrac{3}{4}-\dfrac{2}{5}$: \; the smallest number both $4$ and $5$ divide into is $\keyres{20}$}
\stepdown
\stepbox{2. REWRITE BOTH FRACTIONS}{$\dfrac{3}{4}=\dfrac{3\cdot5}{4\cdot5}=\dfrac{15}{20}$ \qquad $\dfrac{2}{5}=\dfrac{2\cdot4}{5\cdot4}=\dfrac{8}{20}$}
\stepdown
\stepbox{3. SUBTRACT THE TOPS, KEEP THE BOTTOM}{$$\frac{15}{20}-\frac{8}{20}=\frac{15-8}{20}=\keyres{\frac{7}{20}}$$
\warn{The denominator does not change.} You are counting twentieths, and $15$ of them minus $8$ of them is $7$ of them.}

\filbreak \subsubsection{The rules in general form}
The worked examples above use numbers. Here are the same four rules with letters, which is what you apply when the fractions contain variables.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.20\linewidth}@{}p{0.80\linewidth}@{}}
\term{add} & $\dfrac{a}{b}+\dfrac{c}{d}=\keyres{\dfrac{ad+bc}{bd}}$ \\[6pt]
\term{subtract} & $\dfrac{a}{b}-\dfrac{c}{d}=\keyres{\dfrac{ad-bc}{bd}}$ \\[6pt]
\term{multiply} & $\dfrac{a}{b}\cdot\dfrac{c}{d}=\keyres{\dfrac{ac}{bd}}$ \\[6pt]
\term{divide} & $\dfrac{a}{b}\div\dfrac{c}{d}=\keyres{\dfrac{ad}{bc}}$ \\[6pt]
\term{cross multiply} & $\dfrac{a}{b}=\dfrac{c}{d}$ \; is the same as \; $\keyres{ad=bc}$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Why $bd$ works as the bottom}: multiplying the two denominators always produces a common denominator. It is not always the \keyres{smallest} one, so the answer may still need simplifying.
\par\vspace{1pt}
\stepbox{THE SAME SUM, BOTH WAYS}{$\dfrac14+\dfrac16$ \; by the general rule: \; $\dfrac{(1)(6)+(1)(4)}{(4)(6)}=\dfrac{10}{24}=\keyres{\dfrac{5}{12}}$
\par\vspace{1pt}
by the smallest common denominator, $12$: \; $\dfrac{3}{12}+\dfrac{2}{12}=\keyres{\dfrac{5}{12}}$
\par\vspace{1pt}
\keyres{Same answer.} The general rule needs no thinking and may need simplifying. The smallest denominator needs thinking and usually does not.}
\par\vspace{2pt}
\warn{The add and subtract rules are the only ones with a $+$ or $-$ on top.} Multiplying and dividing never build a sum, which is why they never need a common denominator.

\filbreak \subsection{decimals and percents}
A \term{percent} means "per hundred". So $37\%$ is $\dfrac{37}{100}$, which is $0.37$. All three are the same number written three ways.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.40\linewidth}@{}p{0.60\linewidth}@{}}
\term{percent $\to$ decimal} & move the point \keyres{two left}: $37\%\to0.37$ \\[2pt]
\term{decimal $\to$ percent} & move the point \keyres{two right}: $0.05\to5\%$ \\[2pt]
\term{decimal $\to$ fraction} & write the place value, then simplify: $0.375=\dfrac{375}{1000}=\dfrac{3}{8}$ \\[4pt]
\term{fraction $\to$ decimal} & divide top by bottom: $\dfrac{3}{8}=3\div8=0.375$ \\
\end{tabular}}

\filbreak \subsubsection{The two percent questions}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{percent of a number} $\Rightarrow$ turn the percent into a decimal and \keyres{multiply} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{percent change} $\Rightarrow$ $\dfrac{\text{new}-\text{old}}{\keyres{\text{old}}}\times100\%$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED (A): WHAT IS $15\%$ OF $80$?}{$15\%=0.15$, so $\;0.15\times80=\keyres{12}$}
\stepdown
\stepbox{WORKED (B): A PRICE RISES FROM $40$ TO $50$}{$$\frac{50-40}{40}\times100\%=\frac{10}{40}\times100\%=0.25\times100\%=\keyres{25\%}\text{ increase}$$}
\par\vspace{2pt}
\warn{Always divide by the \emph{old} value.} Going $40\to50$ is a $25\%$ rise, but going $50\to40$ is a $20\%$ fall. The same $10$ difference gives two different percents, because the starting points differ.

\filbreak \subsection{ratios and proportions}
A \term{ratio} compares two amounts, written $3:4$ or $\dfrac{3}{4}$. A \term{proportion} sets two ratios equal.
\par\vspace{2pt}
\stepbox{THE PROCESS — SOLVE A PROPORTION}{
\textbf{1.} \term{Write} the proportion, keeping matching units in matching positions.\\
\textbf{2.} \term{Cross multiply} — top left times bottom right, and the other pair.\\
\textbf{3.} \term{Solve} the resulting simple equation.}
\par\vspace{2pt}
\stepbox{WORKED: $\;\dfrac{3}{4}=\dfrac{x}{20}$}{cross multiply: $\;3\cdot20=4\cdot x$ \; $\Rightarrow$ \; $60=4x$
\par\vspace{1pt}
divide both sides by $4$: \; $x=\keyres{15}$
\par\vspace{1pt}
check: $\dfrac{15}{20}=\dfrac{3}{4}$ \checkmark}
\par\vspace{2pt}
\keyres{Why cross multiplication is legal}: it is the balance rule twice. Multiply both sides by $4$, then by $20$. Cross multiplying just does both at once.
\par\vspace{2pt}
A \term{unit rate} is a ratio with $1$ on the bottom. Divide to find it: $150$ miles in $3$ hours is $\dfrac{150}{3}=\keyres{50}$ miles per hour.

\filbreak \subsection{exponents and square roots}
An \term{exponent} counts repeated multiplication: $2^5=2\cdot2\cdot2\cdot2\cdot2=32$. Read $2^5$ as "two to the fifth".
\par\vspace{2pt}
\warn{An exponent is not multiplication.} $2^5$ is $32$, not $10$. The exponent says \keyres{how many times to multiply}, not what to multiply by.
\par\vspace{2pt}
A \term{square root} asks the reverse question: $\sqrt{49}=7$ because $7^2=49$. Memorize these, because they appear constantly:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}l@{\hspace{4pt}}l@{\hspace{4pt}}l@{\hspace{4pt}}l@{\hspace{4pt}}l@{\hspace{4pt}}l@{}}
$1^2{=}1$ & $2^2{=}4$ & $3^2{=}9$ & $4^2{=}16$ & $5^2{=}25$ & $6^2{=}36$ \\
$7^2{=}49$ & $8^2{=}64$ & $9^2{=}81$ & $10^2{=}100$ & $11^2{=}121$ & $12^2{=}144$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Estimating a root}: trap it between two perfect squares. $\sqrt{50}$ sits between $\sqrt{49}=7$ and $\sqrt{64}=8$, and much nearer $7$, so about $7.1$.

\filbreak \subsubsection{Scientific notation}
\term{Scientific notation} writes any number as \keyres{one digit, a decimal point, then a power of ten}. It keeps very large and very small numbers readable.
$$4{,}500{,}000=\keyres{4.5\times10^{6}} \qquad\qquad 0.00032=\keyres{3.2\times10^{-4}}$$
\stepbox{THE RULE}{
\textbf{1.} \term{Move the point} until exactly one non-zero digit sits in front of it.\\
\textbf{2.} \term{Count the moves.} That count is the exponent.\\
\textbf{3.} \term{Moved left} gives a \keyres{positive} exponent. \term{Moved right} gives a \keyres{negative} one.}
\par\vspace{2pt}
\warn{A negative exponent does not mean a negative number.} $3.2\times10^{-4}$ is small and positive. The sign describes the size, not the direction from zero.
\par\vspace{2pt}
To multiply, handle the two parts separately: \; $(2\times10^{3})(4\times10^{5})=(2\cdot4)\times10^{3+5}=\keyres{8\times10^{8}}$

\filbreak \subsection{basic geometry}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{perimeter} & distance around the outside — \keyres{add the sides} \\[2pt]
\term{area} & flat space covered — measured in \keyres{square} units \\[2pt]
\term{volume} & space filled — measured in \keyres{cubic} units \\
\end{tabular}}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.34\linewidth}@{}p{0.32\linewidth}@{}p{0.34\linewidth}@{}}
\textcolor{termHi}{\textbf{shape}} & \textcolor{termHi}{\textbf{area}} & \textcolor{termHi}{\textbf{perimeter}} \\[1pt]
rectangle & $A=lw$ & $P=2l+2w$ \\
triangle & $A=\tfrac12bh$ & add the three sides \\
circle & $A=\pi r^2$ & $C=2\pi r$ \\
\end{tabular}}
\par\vspace{2pt}
\term{Box volume}: $V=lwh$. \; A box $4$ by $3$ by $2$ holds $4\cdot3\cdot2=\keyres{24}$ cubic units.
\par\vspace{2pt}
\warn{A circle has a circumference, not a perimeter}, and $\pi r^2$ is the \keyres{area} while $2\pi r$ is the distance around. Mixing these two is the classic circle mistake.

\filbreak \subsubsection{The Pythagorean theorem}
In a \keyres{right triangle} only, the two short sides (the \term{legs}) and the longest side (the \term{hypotenuse}) satisfy
$$a^2+b^2=c^2 \qquad \text{where } c \text{ is \keyres{always} the hypotenuse}$$
\par\vspace{2pt}
\stepbox{WORKED: LEGS $3$ AND $4$, FIND THE HYPOTENUSE}{$3^2+4^2=9+16=25$, \; so $c=\sqrt{25}=\keyres{5}$}
\stepdown
\stepbox{WORKED (BACKWARD): HYPOTENUSE $13$, ONE LEG $5$}{the missing side is a \keyres{leg}, so it belongs on the left:
$$5^2+b^2=13^2 \;\Rightarrow\; 25+b^2=169 \;\Rightarrow\; b^2=144 \;\Rightarrow\; b=\keyres{12}$$}
\par\vspace{2pt}
\warn{Put the hypotenuse alone on the right.} If you place a leg where $c$ belongs, you will get a larger answer than the hypotenuse, which is impossible.

\end{multicols}

\Needspace*{20\baselineskip}
\vspace*{\fill}
\noindent\rule{\linewidth}{0.5pt}
\begin{center}\small\textbf{Legend}\end{center}
\vspace{-3pt}
\begin{multicols}{4}
\small
\textbf{Colours: what we tell you}\\
\term{orange — a new word}\\
\keyres{teal — the answer}\\
\warn{red — a common mistake}\\
white — explanation\\
boxes stack top to bottom\\
$\downarrow$ means "next step"\\

\textbf{Colours: inside the maths}\\
\textcolor{varHi}{blue — a letter} $x,y$\\
\textcolor{numHi}{green — a number} $3,7$\\
\textcolor{funcHi}{yellow — a function} $f,g$\\
\textcolor{delimHi}{pink — brackets} $(\;)$\\
\textcolor{opHi}{grey — signs} $+\,-\,=$\\

\textbf{Comparing}\\
$=$ \; is equal to\\
$\neq$ \; is not equal to\\
$<$ \; is less than\\
$>$ \; is greater than\\
$\leq$ \; less than or equal\\
$\geq$ \; greater than or equal\\
$\approx$ \; is about\\

\textbf{Operations}\\
$\cdot$ \; times\\
$\pm$ \; plus or minus\\
$\sqrt{\;}$ \; square root\\
$\sqrt[n]{\;}$ \; $n$th root\\
$|x|$ \; absolute value\\
$x^{-1}$ \; one over $x$\\
$f^{-1}$ \; inverse function\\

\textbf{Names}\\
$\pi$ \; about $3.14159$\\
$\theta$ \; an angle\\
$i$ \; $\sqrt{-1}$\\
$m$ \; slope\\
$a_n$ \; the $n$th term\\
$\Rightarrow$ \; therefore\\
\end{multicols}
