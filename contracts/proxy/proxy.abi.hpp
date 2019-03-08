const char* const proxy_abi = R"=====(
{
  "version": "kcwio::abi/1.0",
  "types": [{
      "new_type_name": "account_name",
      "type": "name"
    }
  ],
  "structs": [{
      "name": "config",
      "base": "",
      "fields": [
        { "name": "key", "type": "name" },
        { "name": "owner", "type": "name" },
        { "name": "next_id", "type": "uint32" }
      ]
    },{
      "name": "setowner",
      "base": "",
      "fields": [
        { "name": "owner", "type": "name" },
        { "name": "delay", "type": "uint32" }
      ]
    }
  ],
  "actions": [{
      "name": "setowner",
      "type": "setowner",
      "ricardian_contract": ""
    }
  ],
  "tables": [{
      "name": "configs",
      "type": "config",
      "index_type": "i64",
      "key_names" : ["key"],
      "key_types" : ["name"]
    }
  ],
  "ricardian_clauses": [],
  "abi_extensions": []
}
)=====";
