#############################################################
#
#  switch on tail call optimization with
#
#  RubyVM::InstructionSequence.compile_option = {
#    tailcall_optimization: true,
#    trace_instruction: false
#  }
#

def ebsaux(f,a,b,n)
    return f.call(a) if n == 0
    return f.call(a*b) if n == 1
    a = f.call(a * b) if n % 2 == 1
    b = f.call(b * b)
    return ebsaux(f,a,b,n / 2)
end

def ebs(x,n)
    ebsaux( lambda {|x| return x},1,x,n)
end

def ebsmod(x,n,m)
    ebsaux( lambda {|x| return x % m},1,x,n)
end
