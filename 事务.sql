//查看隔离级别
select @@tx_isolation;
//修改隔离级别
set tx_isolation ="隔离级别";
//修改为第一隔离级别未提交读
set tx_isolation="READ-UNCOMMITTED";
//修改为第二隔离级已提交读
set tx_isolation="READ-COMMITTED";
//修改为第三隔离级别可重复读
set tx_isolation="REPEATABLE-READ";