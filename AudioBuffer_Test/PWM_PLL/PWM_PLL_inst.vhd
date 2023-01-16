	component PWM_PLL is
		port (
			clk_clk       : in  std_logic := 'X'; -- clk
			reset_reset_n : in  std_logic := 'X'; -- reset_n
			pwm_clk_clk   : out std_logic         -- clk
		);
	end component PWM_PLL;

	u0 : component PWM_PLL
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --     clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, --   reset.reset_n
			pwm_clk_clk   => CONNECTED_TO_pwm_clk_clk    -- pwm_clk.clk
		);

