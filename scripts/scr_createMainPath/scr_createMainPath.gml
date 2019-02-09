///@description Select Starting Room
var currentY = 0;
var currentX = choose(0, 1, 2, 3);
var newDirection = 0;

sections[currentX, currentY] = 1;	//start with room type of exit left and right
while (currentY < (ySections - 1))
	{
		if (newDirection == 0)
			{
				newDirection = choose(1, 1, 2, 2, 3); //1 == left, 2 == right, 3 == down, (4 == up?)
			}
		
		//Move left if direction = 1
		if (newDirection == 1)
			{
				if (currentX > 0)
					{
						sections[--currentX, currentY] = 1; //set room to typoe with left and right exit
						//newDriection = 0; //too random
						newDirection = choose(1, 1, 1, 3);
					}
				else
					{
						//Can't move left need to move down. Need to change current rom to a "2" and next room to a "3"
						if (currentY < (ySections - 1))
							{
								sections[currentX, currentY] = 2;	//2 == bottom exit
								sections[currentX, ++currentY] = 3;	//3 == top entrance/exit
								newDirection = 2;
							}
						else
							{
								++currentY;	//exit out of the loop
							}
					}
			}
		//move us right f direction = 2
		else if (newDirection == 2)
			{
				if (currentX < (xSections - 1))
					{
						sections[++currentX, currentY] = 1;	//set room type to entrance left and right
						//newDirection = 0; //too random
						newDirection = choose(2, 2, 2, 3);
					}
				else
					{
						//Can't move right, need to move down. Need to change current room to a "2" and next room to a "3"
						if (currentY < (ySections - 1))
							{
								sections[currentX, currentY] = 2;
								sections[currentX, ++currentY] = 3;
								newDirection = 1;
							}
						else
							{
								++currentY;	//exit out of the lop
							}
					}
			}
		//move us down if diirection = 3
		else if (newDirection == 3)
			{
				if (currentY < (ySections - 1))
					{
						sections[currentX, currentY] = 2;
						sections[currentX, ++currentY] = 3;
						newDirection = 0;
						
						if (currentX == 3)
							{
								newDirection = choose(1, 1, 3);
							}
						else if (currentX == 0)
							{
								newDirection = choose(2, 2, 3);
							}
					}
				else
					{
						++currentY;
					}
			}
	}