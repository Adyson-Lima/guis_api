puts 'Gerando guis...'

5.times do |i|
  Gui.create(
    project: ["xfce", "gnome", "kde"].sample ,
    description: "ambiente grafico"
    )
end

puts 'guis gerados com sucesso!'