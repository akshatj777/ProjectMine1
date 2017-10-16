Feature: Verification of database test cases under reports

Scenario Outline: User should be able to 
Then User executes query
"""
SELECT * FROM sharedReference.participantBpidCCN
where bpid in ('BPID1','BPID2')
order by ccn ASC;
"""
