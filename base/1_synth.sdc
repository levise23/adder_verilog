# adder.sdc
 
# 1. 时钟定义: 周期为2ns (500MHz)
create_clock -name CLK -period 2.0 [get_ports clk]
 
# 2. 时钟不确定性
set_clock_uncertainty 0.1 [get_clocks CLK]
 
# 3. 输入/输出延迟约束 (假设外部电路延迟占周期的40%)
set_input_delay  0.8 -clock CLK [all_inputs]
set_output_delay 0.8 -clock CLK [all_outputs]
 
# 4. 设计规则约束
set_max_fanout 8 [current_design]
set_max_transition 0.2 [current_design]
 
# 5. 环境约束
set_load 0.05 [all_outputs]
