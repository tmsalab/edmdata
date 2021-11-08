# `pks` Author Response to Missing Data Inquiry

We reached out to the authors of the pks package and received clarification
regarding missing values in the data. We've included the response from the
authors here to document why we have incorporated two distinct data sets.

----

From ?pks::probability:

"Of the 1127 participants eligible in the online study, 649 were
excluded because they did not complete the first set of problems
(p101, ..., p112) or they responded too quickly or too slowly."

The data set includes 1127 - 649 = 478 cases from the online study
plus 26 cases from the lab study (where none had to be excluded). That
makes 504 cases in total:

addmargins(table(probability$mode))

    lab online    Sum
     26    478    504

We considered every case as valid who (1) reached Page 4 of the
questionnaire (including the learning object), (2) did not have NA for
all items, and (3) did not answer too quickly or too slowly. For these
valid cases, remaining NA responses in the first part (p1xx) were
coded as error in b1xx. For example:

addmargins(xtabs(~ is.na(p101) + b101, probability))
            b101
is.na(p101)   0   1 Sum
       FALSE  60 409 469
       TRUE   35   0  35
       Sum    95 409 504
