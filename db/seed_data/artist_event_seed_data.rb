# Performance data - manual input
def get_event_data
    event_data = [
        # a flood of circle
        {
        :artist_name => "a flood of circle",
        :artist_name_snake => "a_flood_of_circle",
        :artist_description => "AFOC",
        :artist_image => "db/seed_data/artist_images/a_flood_of_circle.jpg",
        :artist_performances => [
            {
            :performance_name => "Tour 伝説の夜を君と",
            :performance_artist => "a flood of circle",
            :performance_address => "デンテツターミナルビル",
            :performance_address_latitude => 133.54318,
            :performance_address_longitude => 33.55967,
            :performance_start_time => DateTime.new(2022, 4, 5, 17, 30, 00),
            :performance_end_time => DateTime.new(2022, 4, 5, 19, 00, 00),
            }
        ]
        },
        # sex machine
        {
        :artist_name => "セックスマシーン",
        :artist_name_snake => "sex_machine",
        :artist_description => "もっと！もっと！あ、も～っと光を！",
        :artist_image => "db/seed_data/artist_images/sex_machine.jpg",
        :artist_performances => [
            {
            :performance_name => "ニューアルバムリリースツアー",
            :performance_artist => "セックスマシーン",
            :performance_address => "デンテツターミナルビル",
            :performance_address_latitude => 133.54318,
            :performance_address_longitude => 33.55967,
            :performance_start_time => DateTime.new(2022, 3, 12, 17, 00, 00),
            :performance_end_time => DateTime.new(2022, 3, 12, 18, 00, 00),
            }
        ]
        },
    ]
end

