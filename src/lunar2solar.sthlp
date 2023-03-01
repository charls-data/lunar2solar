{smcl}
{* *! version 1.0 02jun2014}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "lunar2solar##syntax"}{...}
{viewerjumpto "Description" "lunar2solar##description"}{...}
{viewerjumpto "Options" "lunar2solar##options"}{...}
{viewerjumpto "Remarks" "lunar2solar##remarks"}{...}
{viewerjumpto "Examples" "lunar2solar##examples"}{...}
{viewerjumpto "Author" "lunar2solar##author"}{...}
{title:Title}

{phang}
{bf:lunar2solar} {hline 2} Chinese lunar to solar date transformation


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:lunar2solar}
varname
{ifin}
[{cmd:,} {it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt leap}}Specify that the lunar month is leap, default is no{p_end}
{synopt:{opth generate(newvar)}}Create {it:newvar} containing the solar transformation of {it:varname}, default is {bf:varname_solar}{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}
{it:varname} should be a string variable with 8 digits which contains the lunar date, such as "19980821", which means year 1998, month 08, and day 21.

{p 4 6 2}
{it:varname} only covers lunar date in the range 19000101 to 20401128

{marker description}{...}
{title:Description}

{pstd}
{cmd:lunar2solar} transforms the Chinese lunar date into solar date based on the python project lunardate, see {browse "https://github.com/lidaobing/python-lunardate"}.

{marker remarks}{...}
{title:Remarks}

{pstd}
For detailed information on the Chinese lunar date and especially, the issue of leap month, see {browse "http://en.wikipedia.org/wiki/Chinese_calendar"}.

{marker examples}{...}
{title:Examples}

    {hline}
{pstd}Transform lunar date {it:xvar} to solar without leap, and save transformed result as {it:xvar_solar}{p_end}
{phang2}{cmd:. lunar2solar xvar}{p_end}

{pstd}Transform lunar date {it:xvar} to solar without leap, and save transformed result as {it:yvar}{p_end}
{phang2}{cmd:. lunar2solar xvar, generate(yvar)}{p_end}

{pstd}Transform lunar date {it:xvar} to solar with leap, and save transformed result as {it:yvar}{p_end}
{phang2}{cmd:. lunar2solar xvar, leap generate(yvar)}{p_end}
    {hline}

{marker author}{...}
{title:Author}

{pstd}Yafeng Wang{p_end}
{pstd}China Health and Retirement Longitudinal Study{p_end}
{pstd}Peking University{p_end}
{pstd}econwang@charlsdata.com{p_end}
