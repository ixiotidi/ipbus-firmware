-- Address decode logic for ipbus fabric
-- 
-- This file has been AUTOGENERATED from the address table - do not hand edit
-- 
-- We assume the synthesis tool is clever enough to recognise exclusive conditions
-- in the if statement.
-- 
-- Dave Newbold, February 2011

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package ipbus_decode_ipbus_example_xilinx_usp is

  constant IPBUS_SEL_WIDTH: positive := 3;
  subtype ipbus_sel_t is std_logic_vector(IPBUS_SEL_WIDTH - 1 downto 0);
  function ipbus_sel_ipbus_example_xilinx_usp(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t;

-- START automatically  generated VHDL the Thu Feb 13 21:06:33 2020 
  constant N_SLV_SYSMON: integer := 0;
  constant N_SLV_ICAP: integer := 1;
  constant N_SLV_IPROG: integer := 2;
  constant N_SLV_DEVICE_DNA: integer := 3;
  constant N_SLAVES: integer := 4;
-- END automatically generated VHDL

    
end ipbus_decode_ipbus_example_xilinx_usp;

package body ipbus_decode_ipbus_example_xilinx_usp is

  function ipbus_sel_ipbus_example_xilinx_usp(addr : in std_logic_vector(31 downto 0)) return ipbus_sel_t is
    variable sel: ipbus_sel_t;
  begin

-- START automatically  generated VHDL the Thu Feb 13 21:06:33 2020 
    if    std_match(addr, "-------------001----------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_SYSMON, IPBUS_SEL_WIDTH)); -- sysmon / base 0x00010000 / mask 0x00070000
    elsif std_match(addr, "-------------010----------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_ICAP, IPBUS_SEL_WIDTH)); -- icap / base 0x00020000 / mask 0x00070000
    elsif std_match(addr, "-------------011----------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_IPROG, IPBUS_SEL_WIDTH)); -- iprog / base 0x00030000 / mask 0x00070000
    elsif std_match(addr, "-------------100----------------") then
      sel := ipbus_sel_t(to_unsigned(N_SLV_DEVICE_DNA, IPBUS_SEL_WIDTH)); -- device_dna / base 0x00040000 / mask 0x00070000
-- END automatically generated VHDL

    else
        sel := ipbus_sel_t(to_unsigned(N_SLAVES, IPBUS_SEL_WIDTH));
    end if;

    return sel;

  end function ipbus_sel_ipbus_example_xilinx_usp;

end ipbus_decode_ipbus_example_xilinx_usp;

