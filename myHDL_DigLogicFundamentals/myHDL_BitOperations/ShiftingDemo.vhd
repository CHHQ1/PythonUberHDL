-- File: ShiftingDemo.vhd
-- Generated by MyHDL 0.10
-- Date: Wed Aug 29 14:28:01 2018


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

use work.pck_myhdl_010.all;

entity ShiftingDemo is
    port (
        ShiftVal: in unsigned(3 downto 0);
        RSRes: out signed (7 downto 0);
        LSRes: out signed (14 downto 0)
    );
end entity ShiftingDemo;
-- Module to Demo Shifting Behavior in myHDL refrance value
-- -55 8Bit
-- 
-- Input:
--     ShiftVal(4BitVec): shift amount, for this demo to not
--         use values greater then 7
-- Output:
--     RSRes(8BitVec Signed): output of Right Shifting 
--     LSRes (15BitVec Signed): output of Left Shifting

architecture MyHDL of ShiftingDemo is


signal RefVal: signed (7 downto 0);

begin


RefVal <= to_signed(-55, 8);



RSRes <= shift_right(RefVal, to_integer(ShiftVal));
LSRes <= shift_left(resize(RefVal, 15), to_integer(ShiftVal));

end architecture MyHDL;
