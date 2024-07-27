#===== problem of break and next iteration ===#

class Notmultipleofthree
def initialize
  for i in 1..20
    if i%3==0
      next
    end
    puts i

  if i>=14
    break
  end
  end
end
end

obj=Notmultipleofthree.new()
