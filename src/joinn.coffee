module.exports = (originalArray, glue = ', ', lastGlue = ' and ') ->
    array = originalArray.slice(0)
    switch array.length
        when 0 then return ''
        when 1 then return array.pop()
        else
            last = array.pop()
            return array.join(glue) + lastGlue + last
