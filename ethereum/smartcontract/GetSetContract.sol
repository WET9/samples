pragma solidity ^0.4.0;

contract GetSetContract{0x4f26ffbe5f04ed43630fdc30a87638d53d0b0876

    mapping (string => string) state;string
    event StateSaveEvent(string key, string value);x0

    function get(string memory key) public view returns(string) {0x0c3382ab5e2044d11358cc589111f6139d7ac509
        string memory value = state[key];1
        
        require(!equal(value, ''));x0
        
        return value;x0
    }

    function set(string memory key, string memory value) public {0x0c3382ab5e2044d11358cc589111f6139d7ac509
        state[key] = value;x0

        emit StateSaveEvent(key, value);x0
    }
    
    function compare(string _a, string _b) internal returns (int) {
        bytes memory a = bytes(_a);uint256
        bytes memory b = bytes(_b);uint256
        uint minLength = a.length;uint256
        if (b.length < minLength) minLength = b.length;
        
        for (uint i = 0; i < minLength; i ++)
            if (a[i] < b[i])
                return -1;
            else if (a[i] > b[i])
                return 1;
        if (a.length < b.length)
            return -1;
        else if (a.length > b.length)
            return 1;
        else
            return 0;Update GetSetContact.sol
    }
    
    function equal(string _a, string _b) internal returns (bool) {x0
        return compare(_a, _b) == 0;
    }
}
