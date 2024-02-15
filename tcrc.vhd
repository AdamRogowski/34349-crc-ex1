library ieee;
use ieee.std_logic_1164.all;

entity crc_tb is
end crc_tb;

architecture testbench of crc_tb is
  -- Component declaration for CRC module
  component crc
    port (
      data_in : in std_logic_vector (0 downto 0);
      crc_en : in std_logic;
      rst, clk : in std_logic;
      fcs_error : out std_logic_vector (31 downto 0)
    );
  end component;

  constant INPUT_FRAME : std_logic_vector := 
    x"0010A47BEA8000123456789008004500002EB3FE000080110540C0A8002CC0A8000404000400001A2DE8000102030405060708090A0B0C0D0E0F1011E6C53DB2";
  constant sequence : string := "00000000000100001010010001111011111010101000000000000000000100100011010001010110011110001001000000001000000000000100010100000000000000000010111010110011111111100000000000000000100000000001000100000101010000001100000010101000000000000010110011000000101010000000000000000100000001000000000000000100000000000000000000011010001011011110100000000000000000010000001000000011000001000000010100000110000001110000100000001001000010100000101100001100000011010000111000001111000100000001000111100110110001010011110110110010";
  constant sequence1 : string := "111110001001101110001111110111110110";

  -- Signals for test bench
  signal data_in_tb : std_logic_vector(0 downto 0);
  signal crc_en_tb, rst_tb, clk_tb : std_logic := '0';
  signal fcs_error_tb : std_logic_vector(31 downto 0);

begin

  -- Instantiate the CRC module
  UUT: crc
    port map (
      data_in => data_in_tb,
      crc_en => crc_en_tb,
      rst => rst_tb,
      clk => clk_tb,
      fcs_error => fcs_error_tb
    );

  -- Clock process
  clk_process: process
  begin
    while now < 5500 ns loop
      clk_tb <= '0';
      wait for 5 ns;
      clk_tb <= '1';
      wait for 5 ns;
    end loop;
    wait;
  end process;

  -- Stimulus process
  stimulus: process
  variable index : integer := 1;
  begin
    rst_tb <= '1'; -- Assert reset
    crc_en_tb <= '0';
    data_in_tb <= (others => '0');
    wait for 10 ns;

    rst_tb <= '0'; -- De-assert reset
    wait for 10 ns;
    crc_en_tb <= '1';

	--data_in_tb <= INPUT_FRAME(0); wait for 10 ns;
	
    --data_in_tb <= "0"; wait for 10 ns; 
	


    --crc_en_tb <= '1'; -- Enable CRC calculation
    --data_in_tb <= "1"; -- Sample input data

    -- Add more stimuli here if needed

	for i in 1 to 512 loop
            case sequence(index) is
                when '0' =>
                    data_in_tb <= "0";
                when '1' =>
                    data_in_tb <= "1";
                when others =>
                    -- Handle invalid characters here
                    -- For simplicity, just assign '0' in case of invalid characters
                    data_in_tb <= "0";
            end case;
            wait for 10 ns;
            index := index + 1;
            if index > 512 then
                index := 1;
            end if;
    end loop;

	crc_en_tb <= '0';

    wait;
  end process;

end testbench;
