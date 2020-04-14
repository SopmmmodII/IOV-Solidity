pragma solidity ^0.4.23;

contract vdata{
    uint256 count=0;
    string [] hash_list;
    string [] url_list;
    
    struct Record{
    string hash;
    string url;
  }
    
    
    function store(string hash,string url) public {
        hash_list.push(hash);
        url_list.push(url);
        count+=1;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    
    function getrecord(uint256 index) public view returns(string hash,string url){
        return (hash_list[index],url_list[index]);
    }
    
    function getrecord1(uint256 index) public view returns(string){
        return hash_list[index];
    }
    
    function getcount() public view returns (uint256){
        return count;
    }
    
    function getstring() public pure returns (string){
        return "sadasdsdfgbhfgmnfnrwe5234t5edgvdfgdfg";
    }
}