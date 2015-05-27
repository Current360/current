class Bio < ActiveRecord::Base
    extend FriendlyId
    friendly_id :first_name, use: [:slugged, :history]

    mount_uploader :bio_pic, BioUploader
    mount_uploader :large_bio_pic, LargeBioPicUploader
    mount_uploader :mobile_bg, MobileBgUploader

    # enum questions: [
    #     :name_your_favorite_sports_team,
    #     :what_brand best reflects your personality and why?,
    #     :Share_one_of_your_favorite_quotes.  ,
    #     :If_you_could_make_the_whole_world_listen_to_one_album,_what_would_it_be?_,
    #     :Have_you_ever_been_attacked_by_a_ferret?_Do_tell.__,
    #     :Share_either_your_proudest_or_most_embarrassing_moment_from_school.__,
    #     :If_you_were_a_genre_of_music,_what_genre_would_you_be?_,
    #     :How_long_can_you_hold_your_breath?_(Please_check_now.)_,
    #     :Pirate_vs_Ninja:_Who_wins_and_why?_,
    #     :What_is_your_favorite_piece_of_technology?_,
    #     :What_is_your_game_plan_for_the_Zombie_Apocalypse?_,
    #     :What_is_your_favorite_sound?,
    #     :If_you_could_choose_a_different_name_for_yourself,_what_would_it_be?,
    #     :What_word_or_expression_do_you_use_far_too_often?,
    #     :What_will_your_posthumous_biography_be_titled?,
    #     :Who_would_win_in_a_fight_between_Pat_Sajak,_Bob_Barker_and_Alex_Trebek?_Explain._,
    #     :If_you_could_institute_any_frivolous_law,_what_would_it_be?_,
    #     :Who_is_your_favorite_Muppet?,
    #     :What_is_the_weirdest_thing_that_has_ever_happened_to_you?,
    #     :Fist_bump_handshake_or_high_five?,
    #     :Have_you_ever_fallen_in_love_with_an_object_Explain.,
    #     :Who_built_the_pyramids?,
    #     :Do_you_want_the_funk?_Explain_why_or_why_not_in_10_words_or_less.,
    #     :Who’s_your_favorite_superhero_and_why?,
    #     :Share_one_of_your_hidden_talents.,
    #     :Is_there_something_you’re_not_telling_me?
    # ]

    # USED TO TOGGLE DRIBBBLE SHOTS / INSTAGRAM ON THE INDIVIDUAL BIOS PAGES
    enum artist: [
        :no,
        :yes
    ]

    def self.homePageBios
        ids = Bio.pluck(:id).shuffle.sample(8)
        # max = ids.count

        # ids.map { |id| @bios = Bio.where(:id => id) }
        bio1 = Bio.where(:id => ids[0])
        bio2 = Bio.where(:id => ids[1])
        bio3 = Bio.where(:id => ids[2])
        bio4 = Bio.where(:id => ids[3])
        bio5 = Bio.where(:id => ids[4])
        bio6 = Bio.where(:id => ids[5])
        bio7 = Bio.where(:id => ids[6])
        bio8 = Bio.where(:id => ids[7])

        @bios = bio1 + bio2 + bio3 + bio4 + bio5 + bio6 + bio7 + bio8
    end
end
