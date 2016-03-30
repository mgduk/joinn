module.exports = (array, glue = ', ', lastGlue = ' and ') ->
    switch array.length
        when 0 then return ''
        when 1 then return array.pop()
        else
            last = array.pop()
            return array.join(glue) + lastGlue + last
