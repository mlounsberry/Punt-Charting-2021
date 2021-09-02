# Punt-Charting-2021
This is where the CSV files containing all the data I collect on punts from the 2021 NFL Season will be stored.

Glossary:

game_id = nflfastR game id
play_id = nflfastR play id
hash_mark: Hash mark the play started on. Can be 'Left', 'Right', 'Middle'.
distance_from_center: Distance in yards the punter started away from the center.
snap_quality: Quality of the snap by the long snapper. Can be 'Aborted', 'Good', 'Low', 'High'.
snap_to_punter_time: Time it took for the snap to reach the punter.
snap_to_punt_time: Time it took from the snap of the ball to the punt of the ball.
moved_to_catch_snap: Did the punter need to move to catch the snap? Can be '' (if snap_quality == 'Aborted'), 'No', 'Left', 'Right'.
punter_steps: The amount of steps the punter took after receiving the ball to punting the ball. There will be half steps.
punter_distance_covered: The amount of yards the punter traveled forward when taking his steps.
players_in_box: The amount of players inside the box.
number_of_jammers_right: Number of jammers to the right of the punter.
number_of_jammers_left: Number of jammers to the left of the punter.
number_of_rushers: Number of players that rushed the punter.
punter_pressured: Was the punter pressured? 0 = No, 1 = Yes
punter_pressured_by_player_name: Name of the player that applied the pressure. ex. B.Boykin
punter_hit: Was the punter hit? 0 = No, 1 = Yes
punter_knocked_down: Was the punter knocked down? 0 = No, 1 = Yes
punt_deflected: Was the punt deflected? 0 = No, 1 = Yes
punt_blocked: Was the punt blocked? 0 = No, 1 = Yes
punt_drop_type: When the ball contacted the punter's foot, what was the orientation of the ball? Can be 'Flat', 'Angled', 'Vertical'.
punt_direction: Where the punt either hit the ground or was fielded by the returner. Can be 'Left Out Of Bounds', 'Left Outside Numbers', 'Left Middle', 'Middle', 'Right Middle', 'Right Outside Numbers', 'Right Out Of Bounds'.
punt_hangtime: How long the ball was in the air.
punt_distance_from_sideline: If punt_direction == 'Left Outside Numbers' | punt_direction == 'Right Outside Numbers' how far the punt was from the sideline.
punt_hit_ground: Did the punt hit the ground? 0 = No, 1 = Yes
punt_hit_ground_first_contact_yard_line: If the punt hit the ground, the yard line where it first made contact.
punt_hit_ground_first_contact_side_of_field: The side of the field where the punt first made contact. (ex. 'PHI')
punt_bounce_distance: The total distance the punt bounced.
number_of_bounces: The number of bounces the punt took.
bounce_out_of_bounds: Did the punt bounce out of bounds? 0 = No, 1 = Yes
punt_fair_catchable: Was the punt fair catchable? 0 = No, 1 = Yes
fair_catch_signaled_for: Was the a fair catch signaled for? 0 = No, 1 = Yes
returner_bailed_on_fielding_punt: Did the returner bail on fielding the punt? 0 = No, 1 = Yes
punted_to_yard_line: Yard line the ball was punted to.
punted_to_side_of_field: Side of the field the ball was punted to.
punt_fielded_off_bounce: Was the punt fielded off of a bounce? 0 = No, 1 = Yes
punt_downed: Was the punt downed? 0 = No, 1 = Yes (This is tracked by nflfastR already)
touchback_save: Was the punt saved from being a touchback? 0 = No, 1 = Yes
touchback_save_player_name: The name of the player that saved the punt from being a touchback.
failure_to_down_punt: On a punt that is reasonably able to be downed, did the kicking team fail to prevent a touchback? 0 = No, 1 = Yes
failure_to_down_punt_player_name: Name of the player that failed to down the punt.
nearest_defender_when_punt_fielded_yards: Distance the nearest player was from the returner when the ball was fielded.
nearest_defender_when_punt_fielded_player_name: Name of the nearest player when the returner fielded the ball.
missed_tackle_on_return: Was there a missed tackle on the return? 0 = No, 1 = Yes
missed_tackle_on_return_player_name: Name of the first player to miss a tackle on the return.
missed_tackle_yards_gained: Yards gained on the return after the first missed tackle.


