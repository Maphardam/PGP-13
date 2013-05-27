prefix(Pre,List) :- append(Pre, _, List).

suffix(Suf,List) :- append(_, Suf, List).
