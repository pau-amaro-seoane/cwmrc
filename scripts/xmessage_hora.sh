#!/bin/sh
xmessage -fn "Ubuntu mono" -center -print `date "+%Hh%M' %A, %e %B %Y"` -timeout 2

# %a  The abbreviated weekday name (e.g., Sun).
# %A  The full weekday name (e.g., Sunday).
# %b  The abbreviated month name (e.g., Jan).
# %B  Locale's full month name (e.g., January).
# %c  The date and time (e.g., Thu Mar 3 23:05:25 2005).
# %C  The current century; like %Y, except omit last two digits (e.g., 20).
# %d  Day of month (e.g., 01).
# %D  Date; same as %m/%d/%y.
# %e  Day of month, space padded; same as %_d.
# %F  Full date; same as %Y-%m-%d.
# %g  Last two digits of year of ISO week number (see %G).
# %G  Year of ISO week number (see %V); normally useful only with %V.
# %h  Same as %b.
# %H  Hour (00..23).
# %I  Hour (01..12).
# %j  Day of year (001..366).
# %k  Hour, space padded ( 0..23); same as %_H.
# %l  Hour, space padded ( 1..12); same as %_I.
# %m  Month (01..12).
# %M  Minute (00..59).
# %n  A newline.
# %N  Nanoseconds (000000000..999999999).
# %p  Locale's equivalent of either AM or PM; blank if not known.
# %P  Like %p, but lowercase.
# %r  Locale's 12-hour clock time (e.g., 11:11:04 PM).
# %R  24-hour hour and minute; same as %H:%M.
# %s  Seconds since 1970-01-01 00:00:00 UTC.
# %S  Second (00..60).
# %t  A tab.
# %T  Time; same as %H:%M:%S.
# %u  Day of week (1..7); 1 is Monday.
# %U  Week number of year, with Sunday as first day of week (00..53).
# %V  ISO week number, with Monday as first day of week (01..53).
# %w  Day of week (0..6); 0 is Sunday.
# %W  Week number of year, with Monday as first day of week (00..53).
# %x  Locale's date representation (e.g., 12/31/99).
# %X  Locale's time representation (e.g., 23:13:48).
# %y  Last two digits of year (00..99).
# %Y  Year.
# %z  +hhmm numeric time zone (e.g., -0400).
# %:z  +hh:mm numeric time zone (e.g., -04:00).
# %::z  +hh:mm:ss numeric time zone (e.g., -04:00:00).
# %:::z  Numeric time zone with ":" to necessary precision (e.g., -04, +05:30).
# %Z  Alphabetic time zone abbreviation (e.g., EDT).
