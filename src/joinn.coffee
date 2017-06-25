module.exports = (array, glue = ', ', lastGlue = ' and ') ->
    switch array.length
        when 0 then return ''
        when 1 then return array.pop()
        else
            array2 = array.slice(0)
            last = array2.pop()
            return array2.join(glue) + lastGlue + last
