def clever_print(*args)
  converted = []
  args.each { |arg| converted << Array(arg) }
  puts converted.join(" ")
end

clever_print(["Ruby"], "the", ["Programming", "Language"])
clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
