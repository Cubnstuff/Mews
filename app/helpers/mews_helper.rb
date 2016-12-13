module MewsHelper
    def get_tagged(mew)
         message_arr = mew.message.split
         message_arr.each_with_index do |word, index|
            if word[0] == "#"
                if Tag.pluck(:phrase).include?(word)
                    tag = Tag.find_by(phrase: word)
                else
                    tag = Tag.create(phrase: word)
                end
                mew_tag = MewTag.create(mew_id: mew.id, tag_id: tag.id)
                message_arr.delete(word)
                message_arr[index] = "<a href='/tag_mews?id=#{tag.id}'>#{word}</a>"
            end
        end

        mew.message = message_arr.join(" ")
        return mew
    end

end

