using FixedPointDecimals, ScanByte, Parsers, BenchmarkTools, Test
using Parsers: Result

function _shift(n::T, decpos) where {T<:Int128}
    if     decpos ==   0 && return n
    elseif decpos ==   1 && return T(10) * n
    elseif decpos ==   2 && return T(100) * n
    elseif decpos ==   3 && return T(1000) * n
    elseif decpos ==   4 && return T(10000) * n
    elseif decpos ==   5 && return T(100000) * n
    elseif decpos ==   6 && return T(1000000) * n
    elseif decpos ==   7 && return T(10000000) * n
    elseif decpos ==   8 && return T(100000000) * n
    elseif decpos ==   9 && return T(1000000000) * n
    elseif decpos ==  10 && return T(10000000000) * n
    elseif decpos ==  11 && return T(100000000000) * n
    elseif decpos ==  12 && return T(1000000000000) * n
    elseif decpos ==  13 && return T(10000000000000) * n
    elseif decpos ==  14 && return T(100000000000000) * n
    elseif decpos ==  15 && return T(1000000000000000) * n
    elseif decpos ==  16 && return T(10000000000000000) * n
    elseif decpos ==  17 && return T(100000000000000000) * n
    elseif decpos ==  18 && return T(1000000000000000000) * n
    elseif decpos ==  19 && return T(10000000000000000000) * n
    elseif decpos ==  20 && return T(100000000000000000000) * n
    elseif decpos ==  21 && return T(1000000000000000000000) * n
    elseif decpos ==  22 && return T(10000000000000000000000) * n
    elseif decpos ==  23 && return T(100000000000000000000000) * n
    elseif decpos ==  24 && return T(1000000000000000000000000) * n
    elseif decpos ==  25 && return T(10000000000000000000000000) * n
    elseif decpos ==  26 && return T(100000000000000000000000000) * n
    elseif decpos ==  27 && return T(1000000000000000000000000000) * n
    elseif decpos ==  28 && return T(10000000000000000000000000000) * n
    elseif decpos ==  29 && return T(100000000000000000000000000000) * n
    elseif decpos ==  30 && return T(1000000000000000000000000000000) * n
    elseif decpos ==  31 && return T(10000000000000000000000000000000) * n
    elseif decpos ==  32 && return T(100000000000000000000000000000000) * n
    elseif decpos ==  33 && return T(1000000000000000000000000000000000) * n
    elseif decpos ==  34 && return T(10000000000000000000000000000000000) * n
    elseif decpos ==  35 && return T(100000000000000000000000000000000000) * n
    elseif decpos ==  36 && return T(1000000000000000000000000000000000000) * n
    elseif decpos ==  37 && return T(10000000000000000000000000000000000000) * n
    elseif decpos ==  38 && return T(100000000000000000000000000000000000000) * n
    elseif decpos ==  39 && return T(1000000000000000000000000000000000000000) * n
    else
        @assert false "unreachable"
    end
end

function _shift(n::T, decpos) where {T<:Int64}
    if     decpos ==   0 && return n
    elseif decpos ==   1 && return T(10) * n
    elseif decpos ==   2 && return T(100) * n
    elseif decpos ==   3 && return T(1000) * n
    elseif decpos ==   4 && return T(10000) * n
    elseif decpos ==   5 && return T(100000) * n
    elseif decpos ==   6 && return T(1000000) * n
    elseif decpos ==   7 && return T(10000000) * n
    elseif decpos ==   8 && return T(100000000) * n
    elseif decpos ==   9 && return T(1000000000) * n
    elseif decpos ==  10 && return T(10000000000) * n
    elseif decpos ==  11 && return T(100000000000) * n
    elseif decpos ==  12 && return T(1000000000000) * n
    elseif decpos ==  13 && return T(10000000000000) * n
    elseif decpos ==  14 && return T(100000000000000) * n
    elseif decpos ==  15 && return T(1000000000000000) * n
    elseif decpos ==  16 && return T(10000000000000000) * n
    elseif decpos ==  17 && return T(100000000000000000) * n
    elseif decpos ==  18 && return T(1000000000000000000) * n
    elseif decpos ==  19 && return T(10000000000000000000) * n
    else
        @assert false "unreachable"
    end
end

function _shift(n::T, decpos) where {T<:Int32}
    if     decpos ==   1 && return T(10) * n
    elseif decpos ==   2 && return T(100) * n
    elseif decpos ==   3 && return T(1000) * n
    elseif decpos ==   4 && return T(10000) * n
    elseif decpos ==   5 && return T(100000) * n
    elseif decpos ==   6 && return T(1000000) * n
    elseif decpos ==   7 && return T(10000000) * n
    elseif decpos ==   8 && return T(100000000) * n
    elseif decpos ==   9 && return T(1000000000) * n
    elseif decpos ==  10 && return T(10000000000) * n
    else
        @assert false "unreachable"
    end
end

function _shift(n::T, decpos) where {T<:Int16}
    if     decpos ==  0 && return n
    elseif decpos ==  1 && return T(10) * n
    elseif decpos ==  2 && return T(100) * n
    elseif decpos ==  3 && return T(1000) * n
    elseif decpos ==  4 && return T(10000) * n
    elseif decpos ==  5 && return T(100000) * n
    else
        @assert false "unreachable"
    end
end

function _shift(n::T, decpos, mode::RoundingMode=Base.RoundNearest) where {T<:Int8}
    if     decpos ==  1 && return T(10) * n
    elseif decpos ==  2 && return T(100) * n
    elseif decpos ==  3 && return T(1000) * n
    else
        @assert false "unreachable"
    end
end

maxdigits(::Type{Int8}) = 3
maxdigits(::Type{Int16}) = 5
maxdigits(::Type{Int32}) = 10
maxdigits(::Type{Int64}) = 18
maxdigits(::Type{Int128}) = 39

_typemaxbytes(::Type{Int8}, i) = @inbounds NTuple{3,UInt8}((0x31, 0x32, 0x37))[i]
_typemaxbytes(::Type{Int16}, i) = @inbounds NTuple{5,UInt8}((0x33, 0x32, 0x37, 0x36, 0x37))[i]
_typemaxbytes(::Type{Int32}, i) = @inbounds NTuple{10,UInt8}((0x32, 0x31, 0x34, 0x37, 0x34, 0x38, 0x33, 0x36, 0x34, 0x37))[i]
_typemaxbytes(::Type{Int64}, i) = @inbounds NTuple{18,UInt8}((0x39, 0x32, 0x32, 0x33, 0x33, 0x37, 0x32, 0x30, 0x33, 0x36, 0x38, 0x35, 0x34, 0x37, 0x37, 0x35, 0x38, 0x30, 0x37))[i]
_typemaxbytes(::Type{Int128}, i) = @inbounds NTuple{39,UInt8}((0x31, 0x37, 0x30, 0x31, 0x34, 0x31, 0x31, 0x38, 0x33, 0x34, 0x36, 0x30, 0x34, 0x36, 0x39, 0x32, 0x33, 0x31, 0x37, 0x33, 0x31, 0x36, 0x38, 0x37, 0x33, 0x30, 0x33, 0x37, 0x31, 0x35, 0x38, 0x38, 0x34, 0x31, 0x30, 0x35, 0x37, 0x32, 0x37))[i]

const Ees = Val(ByteSet((UInt8('E'), UInt8('e'))))
Base.@propagate_inbounds function _parse_decimal_int(::Type{T}, f, buf::AbstractVector{UInt8}, options::Parsers.Options, mode::Base.RoundingMode=Base.RoundNearest) where {T<:Union{Int8,Int16,Int32,Int64,Int128}}
    code = Parsers.OK

    is_neg = buf[1] == UInt8('-')
    int_start_offset = (is_neg || buf[1] == '+') ? 1 : 0
    int_sign = T(is_neg ? -1 : 1)

    len = length(buf)
    e_position = Int(something(memchr(buf, Ees), 0))
    last_byte_to_parse = e_position == 0 ? len : e_position

    if e_position != 0
        e_result = Parsers.xparse(Int, buf, e_position+Int32(1), len, options)
        e_val = e_result.val
        code |= e_result.code
        !Parsers.ok(code) && return Result{T}(code, len, T(0))
        last_byte_to_parse -= 1
    else
        e_val = 0
    end

    decimal_position = Int(something(memchr(buf, options.decimal), 0))::Int
    parse_through_decimal = decimal_position != 0
    has_digits_past_decimal = parse_through_decimal
    number_of_fractional_digits = 0
    if has_digits_past_decimal
        # Remove trailing zeros after decimal
        while buf[last_byte_to_parse] == 0x30
            last_byte_to_parse -= 1
        end
        if last_byte_to_parse == decimal_position
            parse_through_decimal = false
            has_digits_past_decimal = false
            last_byte_to_parse -= 1
        end
    end

    # Remove leading zeros in 0.00..x
    if buf[1+int_start_offset] == 0x30
        if len > 1 + int_start_offset
            if buf[2+int_start_offset] == options.decimal
                int_start_offset += 1
                while true
                    1+int_start_offset > last_byte_to_parse && return Result{T}(code, len, T(0)) # This was something like "0.00"
                    b = buf[1+int_start_offset]
                    if b == 0x30
                        int_start_offset += 1
                    elseif b == options.decimal
                        int_start_offset += 1
                        parse_through_decimal = false
                    else
                        break
                    end
                end
            else
                #parse error leading zero 00.x...
                return Result{T}(code | Parsers.INVALID, len, T(0))
            end
        else
            return Result{T}(code, len, T(0)) # ok
        end
    end

    number_of_fractional_digits -= e_val
    number_of_digits = last_byte_to_parse - int_start_offset - parse_through_decimal
    if has_digits_past_decimal
        number_of_fractional_digits += last_byte_to_parse - decimal_position
    end

    decimal_shift = f - number_of_fractional_digits

    backing_integer_digits = number_of_digits - number_of_fractional_digits + f
    digits_to_iter = min(backing_integer_digits, number_of_digits)


    if backing_integer_digits < 0 # All digits are past our precision, no overflow possible
        return Result{T}(code, len, T(0))
    elseif backing_integer_digits == 0 # All digits are past our precision but we may get a 1 from rounding, no overflow possible
        out = T(0)
        if number_of_fractional_digits != f
            round_val, code = _parse_round(T, buf, int_start_offset + 1 + parse_through_decimal, last_byte_to_parse, decimal_position, code, mode)
            out += int_sign * round_val
        end
    elseif backing_integer_digits < maxdigits(T) # The number of digits to accumulate is smaller than the capacity of T, no overflow possible
        out = zero(T)
        for i in (1+int_start_offset:int_start_offset + digits_to_iter + parse_through_decimal)
            (i == decimal_position) && continue
            b = buf[i] - 0x30
            b > 0x09 && (return Result{T}(code | Parsers.INVALID, len, out))
            out = T(10) * out + T(b)
        end
        out *= int_sign

        if number_of_fractional_digits < f
            out = _shift(out, decimal_shift)
        elseif number_of_fractional_digits != f
            round_val, code = _parse_round(T, buf, int_start_offset + digits_to_iter + parse_through_decimal, last_byte_to_parse, decimal_position, code, mode)
            out += int_sign * round_val
        end
    elseif backing_integer_digits == maxdigits(T) # The number of digits to accumulate is the same as the capacity of T, overflow may happen
        out = zero(T)
        j = 0
        check_next = true
        for i in (1+int_start_offset:int_start_offset + digits_to_iter + parse_through_decimal)
            (i == decimal_position) && continue
            j += 1
            b = buf[i]
            b > 0x39 && (return Result{T}(code | Parsers.INVALID, len, out))
            if check_next
                maxbyte = _typemaxbytes(T, j)
                if b == maxbyte
                    check_next = true
                elseif b < maxbyte
                    check_next = false
                else
                    return Result{T}(code | Parsers.OVERFLOW, len, out)
                end
            end
            out = T(10) * out + T(b)
        end
        out *= int_sign

        if number_of_fractional_digits < f
            out = _shift(out, decimal_shift)
        elseif number_of_fractional_digits != f
            round_val, code = _parse_round(T, buf, int_start_offset + digits_to_iter + parse_through_decimal, last_byte_to_parse, decimal_position, code, mode)
            out += int_sign * round_val
        end
    else # Always overflows
        return Result{T}(code | Parsers.OVERFLOW, len, T(0))
    end

    return Result{T}(code, len, out)
end

_parse_round(::Type{T}, buf, s, e, d, code, ::RoundingMode{:ToZero}) where {T} = (T(0), code)
_parse_round(::Type{T}, buf, s, e, d, code, ::RoundingMode{:Throws}) where {T} = s < e && !all(==(0x30), view(buf, s:e)) ? (T(0), code | Parsers.INVALID) : (T(0), code)
function _parse_round(::Type{T}, buf, s, e, d, code, ::RoundingMode{:Nearest}) where {T}
    @assert s <= length(buf)
    @assert 1 < s <= e || 1 <= s < e  "$s $e"
    @inbounds begin
        carries_over = false
        b = buf[e] - 0x30
        b > 0x09 && (return (T(0), code | Parsers.INVALID))
        s >= e && return (T(b > 0x05 || (b == 0x05 && buf[s-1])), code)
        for i in e:-1:s+1
            i == d && continue
            i == d + 1 && (i += 1)
            pb = buf[i-1] - 0x30 + carries_over
            pb > (0x09 + carries_over) && (return (T(0), code | Parsers.INVALID))
            carries_over = false
            if b > 0x05 || (b == 0x05 && isodd(pb))
                if i - 1 == s
                    return (T(1), code)
                else
                    carries_over = true
                end
            end
            b = pb
        end
        return (T(carries_over), code)
    end
end


using Test

for i in typemin(Int8):typemax(Int8)
    bs = UInt8.(collect(string(i)))




@testset "all" begin
options = Parsers.Options()
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.0e0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.0e+0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.0e-0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.0e0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.0e+0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.0e-0")), options).val == 0
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("1")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("1.0")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("1.0e+0")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("1.0e-0")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.1e+1")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.01e+2")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("0.00000000001e+11")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("10.0e-1")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("100.0e-2")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("100000000000.0e-11")), options).val == 10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-1")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-1.0")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-1.0e+0")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-1.0e-0")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.1e+1")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.01e+2")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-0.00000000001e+11")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-10.0e-1")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-100.0e-2")), options).val == -10000
@test _parse_decimal_int(Int32, Int8(4), UInt8.(collect("-100000000000.0e-11")), options).val == -10000


# @testset "decimal position" begin
@test _parse_decimal_int(Int64, 2, UInt8.(collect("123")), options).val   == 123_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.123")), options).val == 0_12
@test _parse_decimal_int(Int64, 2, UInt8.(collect(".123")), options).val  == 0_12
@test _parse_decimal_int(Int64, 2, UInt8.(collect("1.23")), options).val  == 1_23
@test _parse_decimal_int(Int64, 2, UInt8.(collect("12.3")), options).val  == 12_30
@test _parse_decimal_int(Int64, 2, UInt8.(collect("123.")), options).val  == 123_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("123.0")), options).val == 123_00

@test _parse_decimal_int(Int64, 2, UInt8.(collect("-123")), options).val   == -123_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.123")), options).val == -0_12
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-.123")), options).val  == -0_12
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-1.23")), options).val  == -1_23
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-12.3")), options).val  == -12_30
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-123.")), options).val  == -123_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-123.0")), options).val == -123_00
# end

# @testset "scientific notation" begin
@test _parse_decimal_int(Int64, 4, UInt8.(collect("12e0")), options).val   == 00012_0000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("12e3")), options).val   == 12000_0000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("12e-3")), options).val  == 00000_0120
@test _parse_decimal_int(Int64, 4, UInt8.(collect("1.2e0")), options).val  == 00001_2000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("1.2e3")), options).val  == 01200_0000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("1.2e-3")), options).val == 00000_0012
@test _parse_decimal_int(Int64, 4, UInt8.(collect("1.2e-4")), options).val == 00000_0001

@test _parse_decimal_int(Int64, 4, UInt8.(collect("-12e0")), options).val   == -00012_0000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("-12e3")), options).val   == -12000_0000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("-12e-3")), options).val  == -00000_0120
@test _parse_decimal_int(Int64, 4, UInt8.(collect("-1.2e0")), options).val  == -00001_2000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("-1.2e3")), options).val  == -01200_0000
@test _parse_decimal_int(Int64, 4, UInt8.(collect("-1.2e-3")), options).val == -00000_0012

@test _parse_decimal_int(Int64, 2, UInt8.(collect("999e-1")), options).val == 99_90
@test _parse_decimal_int(Int64, 2, UInt8.(collect("999e-2")), options).val == 09_99
@test _parse_decimal_int(Int64, 2, UInt8.(collect("999e-3")), options).val == 01_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("999e-4")), options).val == 00_10
@test _parse_decimal_int(Int64, 2, UInt8.(collect("999e-5")), options).val == 00_01
@test _parse_decimal_int(Int64, 2, UInt8.(collect("999e-6")), options).val == 00_00

@test _parse_decimal_int(Int64, 2, UInt8.(collect("-999e-1")), options).val == -99_90
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-999e-2")), options).val == -09_99
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-999e-3")), options).val == -01_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-999e-4")), options).val == -00_10
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-999e-5")), options).val == -00_01
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-999e-6")), options).val == -00_00

@test _parse_decimal_int(Int64, 4, UInt8.(collect("9"^96 * "e-100")), options).val == 0_001
# end

# @testset "round to nearest" begin
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.444")), options).val == 0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.445")), options).val == 0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.446")), options).val == 0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.454")), options).val == 0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.455")), options).val == 0_46
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.456")), options).val == 0_46

@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.444")), options).val == -0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.445")), options).val == -0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.446")), options).val == -0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.454")), options).val == -0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.455")), options).val == -0_46
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.456")), options).val == -0_46

@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.009")), options).val  ==  0_01
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.009")), options).val == -0_01

@test _parse_decimal_int(Int64, 4, UInt8.(collect("1.5e-4")), options).val == 0_0002
# end

# @testset "round to zero" begin
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.444")), options, RoundToZero).val == 0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.445")), options, RoundToZero).val == 0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.446")), options, RoundToZero).val == 0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.454")), options, RoundToZero).val == 0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.455")), options, RoundToZero).val == 0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.456")), options, RoundToZero).val == 0_45

@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.444")), options, RoundToZero).val == -0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.445")), options, RoundToZero).val == -0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.446")), options, RoundToZero).val == -0_44
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.454")), options, RoundToZero).val == -0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.455")), options, RoundToZero).val == -0_45
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.456")), options, RoundToZero).val == -0_45

@test _parse_decimal_int(Int64, 2, UInt8.(collect("0.009")), options, RoundToZero).val  == 0_00
@test _parse_decimal_int(Int64, 2, UInt8.(collect("-0.009")), options, RoundToZero).val == 0_00

@test _parse_decimal_int(Int64, 4, UInt8.(collect("1.5e-4")), options, RoundToZero).val == 0_0001



# @testset "decimal position" begin
@test _parse_decimal_int(Int32, 2, UInt8.(collect("123")), options).val   == 123_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.123")), options).val == 0_12
@test _parse_decimal_int(Int32, 2, UInt8.(collect(".123")), options).val  == 0_12
@test _parse_decimal_int(Int32, 2, UInt8.(collect("1.23")), options).val  == 1_23
@test _parse_decimal_int(Int32, 2, UInt8.(collect("12.3")), options).val  == 12_30
@test _parse_decimal_int(Int32, 2, UInt8.(collect("123.")), options).val  == 123_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("123.0")), options).val == 123_00

@test _parse_decimal_int(Int32, 2, UInt8.(collect("-123")), options).val   == -123_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.123")), options).val == -0_12
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-.123")), options).val  == -0_12
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-1.23")), options).val  == -1_23
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-12.3")), options).val  == -12_30
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-123.")), options).val  == -123_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-123.0")), options).val == -123_00
# end

# @testset "scientific notation" begin
@test _parse_decimal_int(Int32, 4, UInt8.(collect("12e0")), options).val   == 00012_0000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("12e3")), options).val   == 12000_0000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("12e-3")), options).val  == 00000_0120
@test _parse_decimal_int(Int32, 4, UInt8.(collect("1.2e0")), options).val  == 00001_2000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("1.2e3")), options).val  == 01200_0000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("1.2e-3")), options).val == 00000_0012
@test _parse_decimal_int(Int32, 4, UInt8.(collect("1.2e-4")), options).val == 00000_0001

@test _parse_decimal_int(Int32, 4, UInt8.(collect("-12e0")), options).val   == -00012_0000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("-12e3")), options).val   == -12000_0000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("-12e-3")), options).val  == -00000_0120
@test _parse_decimal_int(Int32, 4, UInt8.(collect("-1.2e0")), options).val  == -00001_2000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("-1.2e3")), options).val  == -01200_0000
@test _parse_decimal_int(Int32, 4, UInt8.(collect("-1.2e-3")), options).val == -00000_0012

@test _parse_decimal_int(Int32, 2, UInt8.(collect("999e-1")), options).val == 99_90
@test _parse_decimal_int(Int32, 2, UInt8.(collect("999e-2")), options).val == 09_99
@test _parse_decimal_int(Int32, 2, UInt8.(collect("999e-3")), options).val == 01_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("999e-4")), options).val == 00_10
@test _parse_decimal_int(Int32, 2, UInt8.(collect("999e-5")), options).val == 00_01
@test _parse_decimal_int(Int32, 2, UInt8.(collect("999e-6")), options).val == 00_00

@test _parse_decimal_int(Int32, 2, UInt8.(collect("-999e-1")), options).val == -99_90
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-999e-2")), options).val == -09_99
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-999e-3")), options).val == -01_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-999e-4")), options).val == -00_10
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-999e-5")), options).val == -00_01
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-999e-6")), options).val == -00_00

@test _parse_decimal_int(Int32, 4, UInt8.(collect("9"^96 * "e-100")), options).val == 0_001
# end

# @testset "round to nearest" begin
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.444")), options).val == 0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.445")), options).val == 0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.446")), options).val == 0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.454")), options).val == 0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.455")), options).val == 0_46
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.456")), options).val == 0_46

@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.444")), options).val == -0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.445")), options).val == -0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.446")), options).val == -0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.454")), options).val == -0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.455")), options).val == -0_46
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.456")), options).val == -0_46

@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.009")), options).val  ==  0_01
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.009")), options).val == -0_01

@test _parse_decimal_int(Int32, 4, UInt8.(collect("1.5e-4")), options).val == 0_0002
# end

# @testset "round to zero" begin
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.444")), options, RoundToZero).val == 0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.445")), options, RoundToZero).val == 0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.446")), options, RoundToZero).val == 0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.454")), options, RoundToZero).val == 0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.455")), options, RoundToZero).val == 0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.456")), options, RoundToZero).val == 0_45

@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.444")), options, RoundToZero).val == -0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.445")), options, RoundToZero).val == -0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.446")), options, RoundToZero).val == -0_44
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.454")), options, RoundToZero).val == -0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.455")), options, RoundToZero).val == -0_45
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.456")), options, RoundToZero).val == -0_45

@test _parse_decimal_int(Int32, 2, UInt8.(collect("0.009")), options, RoundToZero).val  == 0_00
@test _parse_decimal_int(Int32, 2, UInt8.(collect("-0.009")), options, RoundToZero).val == 0_00

@test _parse_decimal_int(Int32, 4, UInt8.(collect("1.5e-4")), options, RoundToZero).val == 0_0001
end

