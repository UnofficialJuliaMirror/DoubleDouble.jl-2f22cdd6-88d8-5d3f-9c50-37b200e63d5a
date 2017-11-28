function Base.:(+)(::Type{E}, a::T, b::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = two_sum(a, b)
   return Double{T,E}(hi, lo)
end

function Base.:(-)(::Type{E}, a::T, b::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = two_diff(a, b)
   return Double{T,E}(hi, lo)
end

function Base.:(*)(::Type{E}, a::T, b::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = two_prod(a, b)
   return Double{T,E}(hi, lo)
end

function (square)(::Type{E}, a::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = one_square(a)
   return Double{T,E}(hi, lo)
end

function Base.inv(::Type{E}, a::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = one_inv(a)
   return Double{T,E}(hi, lo)
end

function Base.:(/)(::Type{E}, a::T, b::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = two_div(a, b)
   return Double{T,E}(hi, lo)
end

function Base.sqrt(::Type{E}, a::T) where {T<:SysFloat, E<:Emphasis}
   hi, lo = one_sqrt(a)
   return Double{T,E}(hi, lo)
end

