slurp initial html comment from file header and convert it into key value pairs
get the file creation and update dates
put all post data into a hash
render post with hash to template
convert to mark down


































=========================================================================================================================
 functions[n:name, h:hash, s:string]:

    _,.- utility    
        A. file.slurp(n)                                                    => string

    _,.- core
        1. file.header(n)              = hash(contents(comment(slurp(n))))  => {author, subject, date}
        2. file.dates(n)               = hash(dates(slurp(n)))              => {updated, created}
        3. file.hash(n)                = merge(header(n), dates(n))         => {author, subject, date{created, updated}}
        4. template.render(n, h)                                            => string
        5. markdown(s)                 = LIBRARY-CALL(s)                    => string
=========================================================================================================================
 modules
 

=========================================================================================================================    
        