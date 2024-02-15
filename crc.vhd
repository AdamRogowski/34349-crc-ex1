library ieee;
use ieee.std_logic_1164.all;

entity crc is
  port ( data_in : in std_logic_vector (0 downto 0);
    crc_en , rst, clk : in std_logic;
    --start_of_frame: in std_logic;
    --end_of_frame: in std_logic;
    fcs_error : out std_logic_vector (31 downto 0));
end crc;

architecture imp_crc of crc is
  signal lfsr_q: std_logic_vector (31 downto 0);
  signal lfsr_c: std_logic_vector (31 downto 0);
begin
    fcs_error <= lfsr_q;

    lfsr_c(0) <= lfsr_q(31) xor data_in(0);
    lfsr_c(1) <= lfsr_q(0) xor lfsr_q(31) xor data_in(0);
    lfsr_c(2) <= lfsr_q(1) xor lfsr_q(31) xor data_in(0);
    lfsr_c(3) <= lfsr_q(2);
    lfsr_c(4) <= lfsr_q(3) xor lfsr_q(31) xor data_in(0);
    lfsr_c(5) <= lfsr_q(4) xor lfsr_q(31) xor data_in(0);
    lfsr_c(6) <= lfsr_q(5);
    lfsr_c(7) <= lfsr_q(6) xor lfsr_q(31) xor data_in(0);
    lfsr_c(8) <= lfsr_q(7) xor lfsr_q(31) xor data_in(0);
    lfsr_c(9) <= lfsr_q(8);
    lfsr_c(10) <= lfsr_q(9) xor lfsr_q(31) xor data_in(0);
    lfsr_c(11) <= lfsr_q(10) xor lfsr_q(31) xor data_in(0);
    lfsr_c(12) <= lfsr_q(11) xor lfsr_q(31) xor data_in(0);
    lfsr_c(13) <= lfsr_q(12);
    lfsr_c(14) <= lfsr_q(13);
    lfsr_c(15) <= lfsr_q(14);
    lfsr_c(16) <= lfsr_q(15) xor lfsr_q(31) xor data_in(0);
    lfsr_c(17) <= lfsr_q(16);
    lfsr_c(18) <= lfsr_q(17);
    lfsr_c(19) <= lfsr_q(18);
    lfsr_c(20) <= lfsr_q(19);
    lfsr_c(21) <= lfsr_q(20);
    lfsr_c(22) <= lfsr_q(21) xor lfsr_q(31) xor data_in(0);
    lfsr_c(23) <= lfsr_q(22) xor lfsr_q(31) xor data_in(0);
    lfsr_c(24) <= lfsr_q(23);
    lfsr_c(25) <= lfsr_q(24);
    lfsr_c(26) <= lfsr_q(25) xor lfsr_q(31) xor data_in(0);
    lfsr_c(27) <= lfsr_q(26);
    lfsr_c(28) <= lfsr_q(27);
    lfsr_c(29) <= lfsr_q(28);
    lfsr_c(30) <= lfsr_q(29);
    lfsr_c(31) <= lfsr_q(30);


    process (clk,rst) begin
      if (rst = '1') then
        lfsr_q <= b"00000000000000000000000000000000";
      elsif (clk'EVENT and clk = '1') then
        if (crc_en = '1') then
          lfsr_q <= lfsr_c;
        end if;
      end if;
    end process;
end architecture imp_crc;