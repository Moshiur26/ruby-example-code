def build_cN_arr(input)
    arr = []
    input.each do |x|
        key = x.keys[1]
        inner_hash = x[key]
        inner_hash_key = inner_hash.keys[0]
        
        arr.push(inner_hash[inner_hash_key])
    end
    return arr
end


cN_array = build_cN_arr([
        {a1: 42, b1: { c1: 'foo' }},
        {a2: 43, b2: { c2: 'bar' }},
        {a3: 44, b3: { c3: 'baz' }},
    ])

p cN_array