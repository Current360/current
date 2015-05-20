class Bio < ActiveRecord::Base

    mount_uploader :bio_pic, BioUploader

    # enum :questions [
    #     :name_your_favorite_sports_team,
    #     :what_brand best reflects your personality and why?,
    #     Share one of your favorite quotes.  ,
    #     If you could make the whole world listen to one album, what would it be? ,
    #     Have you ever been attacked by a ferret? Do tell.  ,
    #     Share either your proudest or most embarrassing moment from school.  ,
    #     If you were a genre of music, what genre would you be? ,
    #     How long can you hold your breath? (Please check now.) ,
    #     Pirate vs Ninja: Who wins and why? ,
    #      What’s your favorite piece of technology? ,
    #      What’s your game plan for the Zombie Apocalypse? ,
    #      What’s your favorite sound?,
    #      If you could choose a different name for yourself, what would it be?,
    #      What word or expression do you use far too often?,
    #      What will your posthumous biography be titled?,
    #      Who would win in a fight between Pat Sajak, Bob Barker and Alex Trebek? Explain. ,
    #      If you could institute any frivolous law, what would it be? ,
    #      Who’s your favorite Muppet?,
    #      What’s the weirdest thing that’s ever happened to you?  ,
    #      Fist bump, handshake or high five? ,
    #      Have you ever fallen in love with an object? Explain.  ,
    #      Who built the pyramids? ,
    #      Do you want the funk? Explain why or why not in 10 words or less. ,
    #      Who’s your favorite superhero and why?,
    #      Share one of your hidden talents.,
    #      Is there something you’re not telling me?
    # ]

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
