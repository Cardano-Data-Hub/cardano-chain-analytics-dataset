------------------------------------
-- V_BLOCK_SUMMARY
------------------------------------
create or replace view v_block_summary
as
select
	b.block_no,
	b.epoch_no,
	case 
		when ep.protocol_major is null then 'byron'
		when ep.protocol_major = 2 then 'shelley'
		when ep.protocol_major = 3 then 'allegra'
		when ep.protocol_major = 4 then 'mary'
		when ep.protocol_major = 5 or ep.protocol_major = 6 then 'alonzo'
		when ep.protocol_major = 5 or ep.protocol_major = 7 then 'vasil'
		else 'unknown'
		end as era,
	b.slot_no,
	b.epoch_slot_no,
	b.time,
	ph.view as pool_hash,
	od.ticker_name as pool_ticker,
	b.tx_count,
	b.size,
	ep.max_block_size,
	(b.size * 1.0) / ep.max_block_size as pct_full
-- 	,t.fees as total_fees
-- 	,t.script_size
from block b
	left join slot_leader sl on sl.id = b.slot_leader_id
	left join pool_hash ph on ph.id = sl.pool_hash_id
	left join pool_offline_data od on ph.id = od.pool_id
	left join epoch_param ep on b.epoch_no = ep.epoch_no
-- 	left join (
-- 		select block_id, sum(fee) as fees, sum(script_size) as script_size
-- 		from tx
-- 		group by block_id
-- 	) t on t.block_id = b.id
;
