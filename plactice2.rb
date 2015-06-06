class Plactice2
  def clever_print(*args)
    converted = []
    args.each { |arg| converted << Array(arg) }
    puts converted.join(" ")
  end
end

plactice2 = Plactice2.new
plactice2.clever_print(["Ruby"], "the", ["Programming", "Language"])
plactice2.clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })

