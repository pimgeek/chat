require 'yaml'
yml_file = YAML::load_file('origin.yml')

str = "[Matt 教授]
假设人类所有的知识，就是一个圆。圆的内部代表已知，圆的外部代表未知。

[Matt 教授]
读完小学，你有了一些最基本的知识。

[Matt 教授]
读完中学，你的知识又多了一点。

[Matt 教授]
读完本科，你不仅有了更多的知识，而且还有了一个专业方向。

[Matt 教授]
读完硕士，你在专业上又前进了一大步。

[Matt 教授]
进入博士生阶段，你大量阅读文献，接触到本专业的最前沿。

[Matt 教授]
你选择边界上的一个点，也就是一个非常专门的问题，作为自己的主攻方向。

[Matt 教授]
你在这个点上苦苦思索，也许需要好几年。

[Matt 教授]
终于有一天，你突破了这个点。

[Matt 教授]
你把人类的知识向前推进了一步，这时你就成为博士了。

[Matt 教授]
现在你就是最前沿，其他人都在你身后。

[Matt 教授]
但是，不要陶醉在这个点上，不要把整张图的样子忘了。

[Matt 教授]
继续努力向前推进吧！"

str = str.gsub(/\n/,'').gsub(/@/, '').gsub(/:/, '')
items = str.scan(/\[(.*?)\]([^\[]*)/)

items.each_with_index do |item, index|
  # p index
  # p item[0]
  # p item[1]

  item[1] = item[1].gsub(/^#{item[0]}/, '').gsub(/\d{2}\:\d{2}/, '')
  yml_file['scripts'][index]['npc'] = item[0]
  yml_file['scripts'][index]['sentences'][0]['text'] = item[1]

  p File.open('origin.yml', 'w') {|f| f.write yml_file.to_yaml }

  p '==============='
end
