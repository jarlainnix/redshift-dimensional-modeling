CREATE TABLE IF NOT EXISTS dwh.dim_account
(
    d_account_sk INT UNIQUE NOT NULL,
    d_talkdesk_account_id varchar(50) NOT NULL,
    d_talkdesk_account_name varchar(256) NOT NULL,
    d_salesforce_account_id varchar(50) NOT NULL,
    d_salesforce_account_name varchar(256) NOT NULL,
    d_salesforce_account_type varchar(50) NOT NULL,
    d_zuora_account_id varchar(50) NOT NULL,
    d_zuora_account_number varchar(50) NOT NULL,
    d_zuora_account_crm_id varchar(100) NOT NULL,
    d_zuora_account_name varchar(256) NOT NULL,
    d_customer_name varchar(256) NOT NULL,
    d_customer_industry varchar(50) NOT NULL,
    d_customer_sub_industry varchar(256) NOT NULL,
    d_sk_account_status INT4 NOT NULL,
    d_flag_current bool NOT NULL,
    d_start_date date NOT NULL,
    d_end_date date NOT NULL,
    d_updated_at timestamp NOT NULL default getdate(),
    PRIMARY KEY(d_account_sk)
)
DISTKEY(d_account_sk)
SORTKEY(d_account_sk)