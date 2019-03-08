const char* const hello_abi = R"=====(
{
  "____comment": "This file was generated by kcwio-abigen. DO NOT EDIT - 2018-05-23T20:27:36",
  "version": "kcwio::abi/1.0",
  "types": [],
  "structs": [{
      "name": "hi",
      "base": "",
      "fields": [{
          "name": "user",
          "type": "name"
        }
      ]
    }
  ],
  "actions": [{
      "name": "hi",
      "type": "hi",
      "ricardian_contract": "# CONTRACT FOR hello::hi## ACTION NAME: hi\n### Parameters### Parameters\nInput parameters:Input parameters:\n\n* `user` (string to include in the output)* `user` (string to include in the output)\n\nImplied parameters: Implied parameters: \n\n* `account_name` (name of the party invoking and signing the contract)* `account_name` (name of the party invoking and signing the contract)\n\n### Intent### Intent\nINTENT. The intention of the author and the invoker of this contract is to print output. It shall have no other effect.INTENT. The intention of the author and the invoker of this contract is to print output. It shall have no other effect.\n\n### Term### Term\nTERM. This Contract expires at the conclusion of code execution.TERM. This Contract expires at the conclusion of code execution.\n"
    }
  ],
  "tables": [],
  "ricardian_clauses": [{
      "id": "Warranty",
      "body": "WARRANTY. The invoker of the contract action shall uphold its Obligations under this Contract in a timely and workmanlike manner, using knowledge and recommendations for performing the services which meet generally acceptable standards set forth by KCW.IO Blockchain Block Producers.\n\n"
    },{
      "id": "Default",
      "body": "DEFAULT. The occurrence of any of the following shall constitute a material default under this Contract: \n\n"
    },{
      "id": "Remedies",
      "body": "REMEDIES. In addition to any and all other rights a party may have available according to law, if a party defaults by failing to substantially perform any provision, term or condition of this Contract, the other party may terminate the Contract by providing written notice to the defaulting party. This notice shall describe with sufficient detail the nature of the default. The party receiving such notice shall promptly be removed from being a Block Producer and this Contract shall be automatically terminated. \n  \n"
    },{
      "id": "Force Majeure",
      "body": "FORCE MAJEURE. If performance of this Contract or any obligation under this Contract is prevented, restricted, or interfered with by causes beyond either party's reasonable control (\"Force Majeure\"), and if the party unable to carry out its obligations gives the other party prompt written notice of such event, then the obligations of the party invoking this provision shall be suspended to the extent necessary by such event. The term Force Majeure shall include, without limitation, acts of God, fire, explosion, vandalism, storm or other similar occurrence, orders or acts of military or civil authority, or by national emergencies, insurrections, riots, or wars, or strikes, lock-outs, work stoppages, or supplier failures. The excused party shall use reasonable efforts under the circumstances to avoid or remove such causes of non-performance and shall proceed to perform with reasonable dispatch whenever such causes are removed or ceased. An act or omission shall be deemed within the reasonable control of a party if committed, omitted, or caused by such party, or its employees, officers, agents, or affiliates. \n  \n"
    },{
      "id": "Dispute Resolution",
      "body": "DISPUTE RESOLUTION. Any controversies or disputes arising out of or relating to this Contract will be resolved by binding arbitration under the default rules set forth by the KCW.IO Blockchain. The arbitrator's award will be final, and judgment may be entered upon it by any court having proper jurisdiction. \n  \n"
    },{
      "id": "Entire Agreement",
      "body": "ENTIRE AGREEMENT. This Contract contains the entire agreement of the parties, and there are no other promises or conditions in any other agreement whether oral or written concerning the subject matter of this Contract. This Contract supersedes any prior written or oral agreements between the parties. \n\n"
    },{
      "id": "Severability",
      "body": "SEVERABILITY. If any provision of this Contract will be held to be invalid or unenforceable for any reason, the remaining provisions will continue to be valid and enforceable. If a court finds that any provision of this Contract is invalid or unenforceable, but that by limiting such provision it would become valid and enforceable, then such provision will be deemed to be written, construed, and enforced as so limited. \n\n"
    },{
      "id": "Amendment",
      "body": "AMENDMENT. This Contract may be modified or amended in writing by mutual agreement between the parties, if the writing is signed by the party obligated under the amendment. \n\n"
    },{
      "id": "Governing Law",
      "body": "GOVERNING LAW. This Contract shall be construed in accordance with the Maxims of Equity. \n\n"
    },{
      "id": "Notice",
      "body": "NOTICE. Any notice or communication required or permitted under this Contract shall be sufficiently given if delivered to a verifiable email address or to such other email address as one party may have publicly furnished in writing, or published on a broadcast contract provided by this blockchain for purposes of providing notices of this type. \n"
    },{
      "id": "Waiver of Contractual Right",
      "body": "WAIVER OF CONTRACTUAL RIGHT. The failure of either party to enforce any provision of this Contract shall not be construed as a waiver or limitation of that party's right to subsequently enforce and compel strict compliance with every provision of this Contract. \n\n"
    },{
      "id": "Arbitrator's Fees to Prevailing Party",
      "body": "ARBITRATOR'S FEES TO PREVAILING PARTY. In any action arising hereunder or any separate action pertaining to the validity of this Agreement, both sides shall pay half the initial cost of arbitration, and the prevailing party shall be awarded reasonable arbitrator's fees and costs.\n  \n"
    },{
      "id": "Construction and Interpretation",
      "body": "CONSTRUCTION AND INTERPRETATION. The rule requiring construction or interpretation against the drafter is waived. The document shall be deemed as if it were drafted by both parties in a mutual effort. \n  \n"
    }
  ],
  "error_messages": [],
  "abi_extensions": []
})=====";
