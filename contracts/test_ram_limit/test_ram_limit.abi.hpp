const char* const test_ram_limit_abi = R"=====(
{
  "____comment": "This file was generated by kcwio-abigen. DO NOT EDIT - 2018-03-29T02:09:11",
  "version": "kcwio::abi/1.0",
  "types": [{
      "new_type_name": "account_name",
      "type": "name"
   }],
  "structs": [{
      "name": "setentry",
      "base": "",
      "fields": [{
          "name": "payer",
          "type": "account_name"
        },{
          "name": "from",
          "type": "uint64"
        },{
          "name": "to",
          "type": "uint64"
        },{
          "name": "size",
          "type": "uint64"
        }
      ]
    },{
      "name": "rmentry",
      "base": "",
      "fields": [{
          "name": "from",
          "type": "uint64"
        },{
          "name": "to",
          "type": "uint64"
        }
      ]
    },{
      "name": "printentry",
      "base": "",
      "fields": [{
          "name": "from",
          "type": "uint64"
        },{
          "name": "to",
          "type": "uint64"
        }
      ]
    },{
      "name": "test",
      "base": "",
      "fields": [{
          "name": "key",
          "type": "uint64"
        },{
          "name": "data",
          "type": "int8[]"
        }
      ]
    }
  ],
  "actions": [{
      "name": "setentry",
      "type": "setentry",
      "ricardian_contract": ""
    },{
      "name": "rmentry",
      "type": "rmentry",
      "ricardian_contract": ""
    },{
      "name": "printentry",
      "type": "printentry",
      "ricardian_contract": ""
    }
  ],
  "tables": [{
      "name": "test.table",
      "index_type": "i64",
      "key_names": [
        "key"
      ],
      "key_types": [
        "uint64"
      ],
      "type": "test"
    }
  ],
  "ricardian_clauses": []
}
)=====";
