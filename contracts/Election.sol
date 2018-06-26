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
    //Note: When you add a candidate to the mapping, you are changing
    //the state of the contract and writing it to the blockchain


    //Store Candidates Count
    uint public candidatesCount;  //state variable
    						//we'll increment each time we add

	//Constructor
	function Election() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string _name) private {    //private function
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
}

