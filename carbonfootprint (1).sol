// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <=0.9.0;



  contract thecarbonproofprint{

  
 //store all the data in the struct 
  struct WheatData {

   string _Wheat;

   string production;

   string transporation;

   string packaging;

   string total;

   string explication;
 
  

    }
    
    mapping(string=>WheatData) setData;

    //this function for store the data to proofprint variable 
    function addData(string memory _Wheat) public  {

    WheatData memory  proofprint = WheatData(

    "Wheat",
    "in production proccess : 2.5 Kg CO2e/kg",
    "in transporation proccess : 0.5 Kg CO2e/kg" ,
    "in packaging proccess : 0.2 Kg CO2e/kg" , 
    "total of the CO2 is : 3.2 Kg CO2e/kg" ,
    "that is mean the safety of this food is LOW because the process production of this food leads to emissions 3.2 kg of carboon dioxod to the atmosphere "

    );
  
    setData[_Wheat] = proofprint;

    
    } 
   
   //create array for store all the possible names that the user can add it
   string  [6]  add = ["Wheat","wheat" , "the wheat" ,"The wheat","the Wheat", "The Wheat"] ;
  //function for give the user accesse to enter the name of food 
   function getData(string memory _Wheat) public view returns(WheatData memory) {

   
   for(uint i = 0;i<6;i++){

   

  // check if the food is found inside the array i returned all the data
   if((keccak256(abi.encodePacked(add[i])) == keccak256(abi.encodePacked(_Wheat)))){

    return  setData[_Wheat];
   }
  }  
  
  //else i revert tis message
  revert("enter the valide name ");
  
  

   }
   
   
  struct PotatoesData {

   string Potatoes2;

   string production2;

   string transporation2;

   string packaging2;

   string total2;

   string explication2;
 
  

    }

    mapping(string=>PotatoesData) setData2;


    function addData2(string memory Potatoes2 ) public  {

    PotatoesData memory  proofprint2 = PotatoesData(

    "potatoes",
    "in production proccess : 1.5 Kg CO2e/kg",  
    "in transporation proccess : 0.3 Kg CO2e/kg" ,
    "in packaging proccess : 0.1 Kg CO2e/kg" ,
    "total of the CO2 is : 1.9 Kg CO2e/kg"  ,
    "that is mean the safety of this food is LOW because the process production of this food leads to emissions 1.9 kg of carboon dioxod to the atmosphere "

    );
  
    setData2[Potatoes2] = proofprint2;

  
     
   }

   string [] add2 = ["potatoes"," Potatoes", "the potatoes", "The potatoes", "The Potatoes", "the Potatoes" ];

   function getData2(string memory Potatoes2) public view returns(PotatoesData memory) {

    for( uint a=0; a<6 ; a++){

      if((keccak256(abi.encodePacked(add2[a]))==keccak256(abi.encodePacked( Potatoes2)))){


      return setData2[Potatoes2];
    }
    }
    
      revert("enter the valide name");


   }

    
   struct tomatoesData {

   string Wheat3;

   string production3;

   string transporation3;

   string packaging3;

   string total3;

   string explication3;
 
  

    }

    mapping(string=>tomatoesData) setData3;


    function addData3(string memory tomatoes) public  {

    tomatoesData memory  proofprint3 = tomatoesData(

    "tomatoes",
    "in production proccess : 1.2 Kg CO2e/kg",
    "in transporation proccess : 0.3 Kg CO2e/kg" ,
    "in packaging proccess : 0.1 Kg CO2e/kg" ,
    "total of the CO2 is : 1.6 Kg CO2e/kg" ,
    "that is mean the safety of this food is LOW because the process production of this food leads to emissions 1.6 kg of carboon dioxod to the atmosphere "

    );
  
    setData3[tomatoes] = proofprint3;

  
     
   }

   string [6] add3 = ["tomatoes", "Tomatoes" ,"the tomatoes" , "The tomatoes" , "The Tomatoes" , "the Tomatoes"];

   function getData3(string memory tomatoes) public view returns(tomatoesData memory) {

   for(uint b ; b<6 ; b++){

    if(keccak256(abi.encodePacked(add3[b]))==(keccak256(abi.encodePacked(tomatoes)))){

     return setData3[tomatoes];

    }
   }

   revert("enter the valide number");
   
   }
   
    

    

   }

   

