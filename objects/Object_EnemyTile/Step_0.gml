/// @description: Location/Sprite Control

#region // player 2's turn (Completed)
if(GameTracker.PlayerPhase == 1 or GameTracker.PlayerPhase == 3)	// check if it is player 2's turn
{
	if(occupied == 0)	// if there are no ships on the tile
	{
		if(hit == false)		// if the tile has not been hit (shot at)
		{
			sprite_index = Sprite_Marker_Empty; // set the tile to the empty sprite
		}
		else					//otherwise
		{
			sprite_index = Sprite_Miss;			// set the sprite to the miss sprite
		}
	}
	else					// otherwise (there are ships set to this tile)
	{
		if(sunk == true)		// if the ship isn't sunk
		{
			sprite_index = Sprite_Hit_no_ship_showing; //show a hit mark without showing what type of ship or direction
		}
		else					// the ship is sunk
		{
			if(occupied == 1)	// if it single space ship
			{
				sprite_index = Sprite_Ship_Single; //show the sprite for the ship and the hit
			}
			if(occupied == 2)  // if it is the leftmost part of a larger ship
			{
				sprite_index = Sprite_Ship_Left;  //show the sprite for the ship and the hit
			}
			if(occupied == 3) // if it is the middle part of a larger ship
			{
				sprite_index = Sprite_Ship_Middle;  //show the sprite for the ship and the hit
			}
			if(occupied == 4) // if it is the rightmost part of a larger ship
			{
				sprite_index = Sprite_Ship_Right;  //show the sprite for the ship and the hit
			}
		}
	}
}
#endregion

#region // Player 1's turn (Completed)
else if (GameTracker.PlayerPhase == 2 or GameTracker.PlayerPhase == 4) // check if it is player 1's turn
{
	if (occupied == 0)
	{
			sprite_index = Sprite_Marker_Empty;
	}
	else
	{
		if (occupied == 1)
		{
			if (hit == 0)
			{
				sprite_index = Sprite_Ship_Single;
			}
			else
			{
				sprite_index = Sprite_Ship_Single_Hit;
			}
		}
		else 
		{
			if (occupied == 2) 
			{
				if (hit == 0)
				{
					sprite_index = Sprite_Ship_Left;
				}
				else
				{
					sprite_index = Sprite_Ship_Left_Hit;
				}
			}
			if (occupied == 3) 
			{
				if (hit == 0)
				{
					sprite_index = Sprite_Ship_Middle;
				}
				else
				{
					sprite_index = Sprite_Ship_Middle_Hit;
				}
			}
			if (occupied == 4) 
			{
				if (hit == 0)
				{
					sprite_index = Sprite_Ship_Right;
				}
				else
				{
					sprite_index = Sprite_Ship_Right_Hit;
				}
			}
		}
	}
}	
#endregion

#region // Player 1's Place Ships screen (needs completion)

#endregion

#region // Player 2's Place Ships Screen (needs completion)

#endregion

#region // all other phases (Choose Game Size, Pause Menu?, Phase Cards for player turns)
else 
{
sprite_index = Sprite_Marker_Empty; // set all tiles to empty for all other phases
}


#endregion
if(vertical == true)
{
	image_angle = 270;
}
else
{
	image_angle = 0;
}