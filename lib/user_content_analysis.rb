module ContentAnalysis
	def self.analysis_content_type(content)
		
		case content
			when "?","？"
				USER_CONTENT_TYPE_WHY
			when "1"
				USER_CONTENT_TYPE_CARTOON
			when "2"
				USER_CONTENT_TYPE_JOKE
			when "3"
				USER_CONTENT_TYPE_JZW
			when "4"
				USER_CONTENT_TYPE_MUSIC
			when "cx"
				USER_CONTENT_TYPE_CX
			else
				if content.include?('.')
					page_row_array = content.split('.')
					if page_row_array.size == 2
						page_number = page_row_array[0].to_i
						row_number = page_row_array[1].to_i
						if page_number>0&&page_number<75&&row_number>=0&&row_number<50
							USER_CONTENT_TYPE_JZW_ANSWER
						else
							USER_CONTENT_TYPE_ERROR
						end
					else
						USER_CONTENT_TYPE_ERROR
					end

				elsif content.include?('+')
					singer_song_array = content.split('+')
					if singer_song_array.size == 2
						USER_CONTENT_TYPE_MUSIC_SEARCH

					else
						USER_CONTENT_TYPE_ERROR
					end

				end
		end
	end
end