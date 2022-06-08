pragma solidity ^0.8.1;

contact Main {
  company[] public companies;
  user[] public employees;
  certificate[] public certifications;
  endorsment[] public endorsments;
  skill[] public skills;
  experience[] public experiences;

  // mapping of account's mail id with account's wallet address
  mapping(string => address) public email_to_address;
  // mapping of wallet address with account id
  mapping(address => uint256) public address_to_id;
  // mapping of wallet address with bool representing account status(Company/User)
  mapping(address => bool) public is_company;

  stuct company {
    uint256 id; // company id which is the index of id in the global company array
    string name; // company name
    address: wallet_address;
    uint256[] current_employees; // array of current employees
    uint256[] previous_employees; // array of previous employees
    uint256[] requested_employees; // array of requested employees
  }

  struct user {
    uint256 id;
    uint256 company_id;
    string name;
    address: wallet_address;;
    bool is_employed;
    bool is_manager;
    uint256 num_skill;
    uint256[] user_skills;
    uint256[] user_work_experience;
  }

  struct experience {
    string starting_date;
    string ending_date;
    string role;
    bool currently_working;
    uint256 company_id;
    bool is_approved;
  }
}