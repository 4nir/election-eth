pragma solidity ^0.4.2;

contract Election {
	
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	//Store candidates
	//Fetch Candidates
	mapping(uint => Candidate) public candidates; //if it's public
								//sol with create a candidates()
							   //that will allow us to fetch our candidates
    //Store Candidates Count


	//Constructor
	function Election() public {

	}
}

