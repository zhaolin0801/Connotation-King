get '/test' do
	# page = Nokogiri::HTML(open(URI.encode("http://www.2345.com/jzw/1.htm")))
	# # node_jzw_count = page.css('div.jzw_container ul li').size
	# # "#{node_jzw_count}"


	# node_jzw = page.css('div.jzw_container ul li')[49];
	# #抓取急转弯问题
	# node_qustion = node_jzw.css('span')[0].text.to_s
	# qustion = node_qustion.encode("UTF-8")
	

	# #抓取急转弯答案
	# node_answer = node_jzw.css('span')[1].to_s
	# node_answer = node_answer.encode("UTF-8")
	# parser = Nokogiri.parse(node_answer)
	# answer = parser.xpath('//a[@onclick]').first.attributes['onclick'].content.match(/'([^']+)/)[1]
	

	# "#{qustion}  :#{answer}"
	# song = "冰雨"
	# singer = "刘德华"
	# url = "http://box.zhangmen.baidu.com/x?op=12&count=1&title=#{song}$$#{singer}$$$$"
	# page = Nokogiri::XML(open(URI.encode(url)))
	# node_encode_text = page.xpath('/result/url/encode').text
	# node_decode_text = page.xpath('/result/url/decode').text
	# reg_str = /http:\/\/([\w+\.]+)(\/(\w+\/)+)/
	# encode_result = reg_str.match(node_encode_text)
	# decode_result = node_decode_text.split('&')[0]

	# count = page.xpath("/result/p2p/type").text
	# "#{count.class}"

 jump_url = "#{HEROKU_URL}/cartoon/"
"#{jump_url}"
  # song = "冰雨"
  # singer = "刘德华"
  # music = BaiduMusic.get_music(singer,song)
  # "#{music.url}\n\n\n\n\n#{music.durl}"

end


get '/index' do
"你好，我是内含王！"
#haml :postgres_test
end

get '/cartoon/:id' do
  cartoon_id = params[:id].to_i
  cartoon = Cartoon.find(cartoon_id)
  haml :cartoon,:locals => { :title =>cartoon.title, :picture_url =>cartoon.picture_url}


end


