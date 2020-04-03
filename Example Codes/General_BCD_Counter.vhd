LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

ENTITY bcd_cnt_1r0 IS
    GENERIC(num_bit : INTEGER := 3; -- 位数
    norm : INTEGER := 331); -- 模
    
    PORT (clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        cnt_en : IN STD_LOGIC;
        bcd_out : OUT STD_LOGIC_VECTOR(num_bit * 4 - 1 DOWNTO 0));

END bcd_cnt_1r0;


ARCHITECTURE rtl OF bcd_cnt_1r0 IS
    CONSTANT ONES : STD_LOGIC_VECTOR(num_bit DOWNTO 0) := (OTHERS=>'1');
    SIGNAL next_cnt : UNSIGNED(num_bit * 4 - 1 DOWNTO 0) := (OTHERS=>'0');
    SIGNAL curr_cnt : UNSIGNED(num_bit * 4 - 1 DOWNTO 0) := (OTHERS=>'0');
    SIGNAL carray_in : STD_LOGIC_VECTOR(num_bit DOWNTO 0):=(OTHERS=>'0');
    
    FUNCTION dec2unsigned (dec_val: INTEGER; dec_bit : INTEGER) RETURN UNSIGNED IS
        VARIABLE result: UNSIGNED(dec_bit*4 - 1 DOWNTO 0);
        VARIABLE tmp : INTEGER := dec_val;
        VARIABLE tmp2 : INTEGER := 0;

        BEGIN
            FOR i IN 1 TO dec_bit LOOP
                tmp2 := (tmp/10);
                result(i*4-1 DOWNTO (i-1)*4) := TO_UNSIGNED(tmp - tmp2 * 10, 4);
                tmp := tmp2;
            END LOOP;
            RETURN result;
    END dec2unsigned;
    
    CONSTANT unsign_norm : UNSIGNED(num_bit * 4 - 1 DOWNTO 0) := dec2unsigned(norm, num_bit);
    TYPE dec_array_type IS ARRAY(num_bit-1 DOWNTO 0) OF UNSIGNED(3 DOWNTO 0);
    SIGNAL debug_dec_cnt_bit : dec_array_type :=(OTHERS=>(OTHERS=>'0'));

    BEGIN
        reg_proc: PROCESS(clk)
        BEGIN
            IF RISING_EDGE(clk) THEN
                IF rst = '1' THEN
                    curr_cnt <= (OTHERS=>'0');
                ELSE
                    IF cnt_en = '1' THEN
                        IF next_cnt = unsign_norm THEN
                            curr_cnt <= (OTHERS =>'0');
                        ELSE
                            curr_cnt <= next_cnt;
                        END IF;
                    END IF;
                END IF;
            END IF;
        END PROCESS;
        
    bcd_out <= STD_LOGIC_VECTOR(curr_cnt);
    cnt_proc: PROCESS(curr_cnt, next_cnt, carray_in, rst)

    BEGIN
        carray_in(0) <= '1';
        IF rst = '1' THEN
            next_cnt <= (OTHERS=>'0');
            carray_in( num_bit DOWNTO 1) <= (OTHERS=>'0');
            ELSE
                bits_loop: FOR n IN 0 TO num_bit-1 LOOP
                    IF carray_in(n) = '1' THEN
                        IF curr_cnt(4*(n+1)-1 DOWNTO 4*n) = 9 THEN
                            next_cnt(4*(n+1)-1 DOWNTO 4*n) <= (OTHERS=>'0');
                            carray_in(n+1) <= '1';
                        ELSE
                            next_cnt(4*(n+1)-1 DOWNTO 4*n) <= curr_cnt(4*(n+1)-1 DOWNTO 4*n) + 1;
                            carray_in(n+1) <= '0';
                        END IF;
                        ------------------------------
                    ELSE
                        next_cnt(4*(n+1)-1 DOWNTO 4*n) <= curr_cnt(4*(n+1)-1 DOWNTO 4*n);
                        carray_in(n+1) <= '0';
                    END IF;
                END LOOP;
        END IF;
        END PROCESS;
        
        debug_gen: FOR n IN 0 TO num_bit -1 GENERATE
        debug_dec_cnt_bit(n) <= curr_cnt((n+1)*4 -1 DOWNTO n*4);

    END GENERATE;
END rtl;