module Bug

using DispatchDoctor: @stable

export f, g, h

"""
```jldoctest
julia> f()
```
"""
@stable f() = 1

"""
```jldoctest
julia> g()
```
"""
@stable begin g() = 2 end

@stable begin
"""
```jldoctest
julia> h()
```
"""
h() = 3
end

end
