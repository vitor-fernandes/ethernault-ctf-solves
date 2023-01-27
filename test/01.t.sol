pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "forge-std/console2.sol";

import "src/01.sol";

contract Test01 is Test {

    Instance instance;

    function setUp() public {
        // Change the 0x1 to your contract address
        instance = Instance(address(0x1));
    }

    function testSolve() public {
        string memory password = instance.password();
        console.log("The password is: ", password);
        
        instance.authenticate(password);
        
        bool cleared = instance.getCleared();
        assertEq(cleared, true);
    }


}