//
// Encoder for 32 bit SEC-DED
//
// Authors: Joseph Crowe and Matt Markwell
//

module enc_top (
    input [255:0] IN,
    output logic [271:0] OUT
);

    logic [15:0] CHK;

    assign OUT = {CHK,IN};

    always_comb begin
        CHK[0] = IN[0] ^ IN[4] ^ IN[5] ^ IN[6] ^ IN[7] ^ IN[8] ^ IN[11] ^ IN[13] ^ IN[14] ^ IN[16] ^ IN[18] ^ IN[21] ^ IN[25] ^ IN[26] ^ IN[27] ^ IN[28] ^ IN[31] ^ IN[32] ^ IN[33] ^ IN[34] ^ IN[36] ^ IN[37] ^ IN[38] ^ IN[39] ^ IN[40] ^ IN[44] ^ IN[45] ^ IN[47] ^ IN[51] ^ IN[55] ^ IN[59] ^ IN[60] ^ IN[61] ^ IN[64] ^ IN[66] ^ IN[69] ^ IN[70] ^ IN[72] ^ IN[73] ^ IN[75] ^ IN[77] ^ IN[81] ^ IN[83] ^ IN[85] ^ IN[87] ^ IN[88] ^ IN[92] ^ IN[96] ^ IN[97] ^ IN[102] ^ IN[103] ^ IN[106] ^ IN[107] ^ IN[108] ^ IN[109] ^ IN[113] ^ IN[114] ^ IN[115] ^ IN[116] ^ IN[121] ^ IN[122] ^ IN[124] ^ IN[127] ^ IN[128] ^ IN[129] ^ IN[130] ^ IN[131] ^ IN[133] ^ IN[135] ^ IN[136] ^ IN[138] ^ IN[140] ^ IN[144] ^ IN[146] ^ IN[147] ^ IN[153] ^ IN[154] ^ IN[156] ^ IN[158] ^ IN[159] ^ IN[164] ^ IN[167] ^ IN[175] ^ IN[177] ^ IN[181] ^ IN[186] ^ IN[187] ^ IN[189] ^ IN[194] ^ IN[200] ^ IN[202] ^ IN[205] ^ IN[211] ^ IN[212] ^ IN[217] ^ IN[220] ^ IN[222] ^ IN[225] ^ IN[231] ^ IN[234] ^ IN[236] ^ IN[241] ^ IN[242] ^ IN[243] ^ IN[244] ^ IN[245] ^ IN[249] ^ IN[253] ^  1'b0 ;
        CHK[1] = IN[1] ^ IN[5] ^ IN[7] ^ IN[9] ^ IN[11] ^ IN[17] ^ IN[18] ^ IN[19] ^ IN[21] ^ IN[23] ^ IN[27] ^ IN[30] ^ IN[31] ^ IN[32] ^ IN[38] ^ IN[39] ^ IN[40] ^ IN[43] ^ IN[44] ^ IN[45] ^ IN[46] ^ IN[47] ^ IN[53] ^ IN[57] ^ IN[58] ^ IN[59] ^ IN[60] ^ IN[62] ^ IN[63] ^ IN[64] ^ IN[65] ^ IN[69] ^ IN[73] ^ IN[74] ^ IN[78] ^ IN[80] ^ IN[83] ^ IN[86] ^ IN[87] ^ IN[89] ^ IN[93] ^ IN[94] ^ IN[95] ^ IN[96] ^ IN[101] ^ IN[104] ^ IN[106] ^ IN[111] ^ IN[112] ^ IN[113] ^ IN[117] ^ IN[119] ^ IN[123] ^ IN[124] ^ IN[125] ^ IN[126] ^ IN[127] ^ IN[128] ^ IN[131] ^ IN[132] ^ IN[135] ^ IN[136] ^ IN[137] ^ IN[139] ^ IN[146] ^ IN[147] ^ IN[151] ^ IN[154] ^ IN[156] ^ IN[161] ^ IN[162] ^ IN[167] ^ IN[171] ^ IN[172] ^ IN[174] ^ IN[179] ^ IN[184] ^ IN[185] ^ IN[186] ^ IN[189] ^ IN[192] ^ IN[194] ^ IN[195] ^ IN[197] ^ IN[199] ^ IN[203] ^ IN[204] ^ IN[205] ^ IN[209] ^ IN[216] ^ IN[220] ^ IN[223] ^ IN[227] ^ IN[235] ^ IN[236] ^ IN[237] ^ IN[244] ^ IN[246] ^ IN[248] ^ IN[252] ^  1'b0 ;
        CHK[2] = IN[1] ^ IN[3] ^ IN[5] ^ IN[9] ^ IN[10] ^ IN[14] ^ IN[16] ^ IN[18] ^ IN[23] ^ IN[27] ^ IN[30] ^ IN[31] ^ IN[38] ^ IN[39] ^ IN[41] ^ IN[42] ^ IN[43] ^ IN[46] ^ IN[48] ^ IN[50] ^ IN[51] ^ IN[52] ^ IN[53] ^ IN[54] ^ IN[55] ^ IN[56] ^ IN[57] ^ IN[60] ^ IN[63] ^ IN[66] ^ IN[70] ^ IN[71] ^ IN[76] ^ IN[77] ^ IN[78] ^ IN[79] ^ IN[85] ^ IN[88] ^ IN[90] ^ IN[92] ^ IN[93] ^ IN[94] ^ IN[101] ^ IN[104] ^ IN[105] ^ IN[108] ^ IN[110] ^ IN[117] ^ IN[121] ^ IN[122] ^ IN[127] ^ IN[128] ^ IN[133] ^ IN[134] ^ IN[137] ^ IN[138] ^ IN[139] ^ IN[143] ^ IN[144] ^ IN[145] ^ IN[146] ^ IN[147] ^ IN[148] ^ IN[152] ^ IN[156] ^ IN[158] ^ IN[159] ^ IN[160] ^ IN[161] ^ IN[163] ^ IN[165] ^ IN[167] ^ IN[168] ^ IN[169] ^ IN[170] ^ IN[174] ^ IN[176] ^ IN[180] ^ IN[181] ^ IN[183] ^ IN[186] ^ IN[189] ^ IN[190] ^ IN[191] ^ IN[193] ^ IN[195] ^ IN[198] ^ IN[199] ^ IN[201] ^ IN[202] ^ IN[203] ^ IN[208] ^ IN[210] ^ IN[216] ^ IN[217] ^ IN[218] ^ IN[228] ^ IN[234] ^ IN[235] ^ IN[238] ^ IN[241] ^ IN[244] ^ IN[245] ^ IN[249] ^ IN[252] ^ IN[253] ^ IN[254] ^  1'b0 ;
        CHK[3] = IN[0] ^ IN[2] ^ IN[4] ^ IN[6] ^ IN[9] ^ IN[10] ^ IN[11] ^ IN[13] ^ IN[14] ^ IN[15] ^ IN[16] ^ IN[19] ^ IN[21] ^ IN[25] ^ IN[26] ^ IN[28] ^ IN[29] ^ IN[32] ^ IN[34] ^ IN[35] ^ IN[37] ^ IN[42] ^ IN[45] ^ IN[46] ^ IN[47] ^ IN[48] ^ IN[49] ^ IN[55] ^ IN[56] ^ IN[63] ^ IN[69] ^ IN[71] ^ IN[78] ^ IN[80] ^ IN[81] ^ IN[82] ^ IN[83] ^ IN[85] ^ IN[86] ^ IN[87] ^ IN[88] ^ IN[95] ^ IN[96] ^ IN[99] ^ IN[102] ^ IN[108] ^ IN[110] ^ IN[111] ^ IN[113] ^ IN[114] ^ IN[115] ^ IN[116] ^ IN[117] ^ IN[118] ^ IN[123] ^ IN[131] ^ IN[133] ^ IN[134] ^ IN[143] ^ IN[146] ^ IN[152] ^ IN[153] ^ IN[154] ^ IN[155] ^ IN[156] ^ IN[157] ^ IN[158] ^ IN[160] ^ IN[161] ^ IN[163] ^ IN[164] ^ IN[166] ^ IN[168] ^ IN[170] ^ IN[172] ^ IN[173] ^ IN[175] ^ IN[178] ^ IN[179] ^ IN[180] ^ IN[182] ^ IN[183] ^ IN[186] ^ IN[190] ^ IN[194] ^ IN[195] ^ IN[201] ^ IN[206] ^ IN[210] ^ IN[213] ^ IN[222] ^ IN[226] ^ IN[227] ^ IN[229] ^ IN[230] ^ IN[231] ^ IN[232] ^ IN[240] ^ IN[241] ^ IN[242] ^ IN[248] ^ IN[249] ^ IN[251] ^ IN[252] ^  1'b0 ;
        CHK[4] = IN[2] ^ IN[3] ^ IN[4] ^ IN[5] ^ IN[6] ^ IN[8] ^ IN[9] ^ IN[11] ^ IN[12] ^ IN[13] ^ IN[16] ^ IN[19] ^ IN[21] ^ IN[22] ^ IN[23] ^ IN[24] ^ IN[27] ^ IN[29] ^ IN[30] ^ IN[32] ^ IN[34] ^ IN[39] ^ IN[41] ^ IN[42] ^ IN[43] ^ IN[44] ^ IN[47] ^ IN[48] ^ IN[51] ^ IN[53] ^ IN[54] ^ IN[56] ^ IN[60] ^ IN[61] ^ IN[62] ^ IN[64] ^ IN[66] ^ IN[68] ^ IN[70] ^ IN[73] ^ IN[74] ^ IN[82] ^ IN[83] ^ IN[84] ^ IN[86] ^ IN[90] ^ IN[91] ^ IN[93] ^ IN[94] ^ IN[95] ^ IN[100] ^ IN[103] ^ IN[108] ^ IN[109] ^ IN[111] ^ IN[113] ^ IN[116] ^ IN[121] ^ IN[122] ^ IN[123] ^ IN[125] ^ IN[126] ^ IN[130] ^ IN[131] ^ IN[132] ^ IN[134] ^ IN[137] ^ IN[139] ^ IN[140] ^ IN[147] ^ IN[149] ^ IN[152] ^ IN[153] ^ IN[155] ^ IN[157] ^ IN[162] ^ IN[163] ^ IN[164] ^ IN[166] ^ IN[168] ^ IN[169] ^ IN[177] ^ IN[178] ^ IN[187] ^ IN[188] ^ IN[189] ^ IN[191] ^ IN[201] ^ IN[202] ^ IN[206] ^ IN[210] ^ IN[211] ^ IN[214] ^ IN[216] ^ IN[218] ^ IN[220] ^ IN[231] ^ IN[233] ^ IN[234] ^ IN[235] ^ IN[237] ^ IN[239] ^ IN[240] ^ IN[243] ^ IN[253] ^  1'b0 ;
        CHK[5] = IN[2] ^ IN[3] ^ IN[7] ^ IN[8] ^ IN[13] ^ IN[14] ^ IN[15] ^ IN[17] ^ IN[20] ^ IN[24] ^ IN[25] ^ IN[27] ^ IN[28] ^ IN[30] ^ IN[31] ^ IN[35] ^ IN[36] ^ IN[37] ^ IN[38] ^ IN[39] ^ IN[40] ^ IN[47] ^ IN[52] ^ IN[53] ^ IN[55] ^ IN[56] ^ IN[57] ^ IN[61] ^ IN[63] ^ IN[69] ^ IN[71] ^ IN[74] ^ IN[75] ^ IN[77] ^ IN[79] ^ IN[88] ^ IN[89] ^ IN[90] ^ IN[95] ^ IN[98] ^ IN[99] ^ IN[100] ^ IN[103] ^ IN[106] ^ IN[107] ^ IN[113] ^ IN[118] ^ IN[119] ^ IN[124] ^ IN[126] ^ IN[127] ^ IN[128] ^ IN[130] ^ IN[131] ^ IN[139] ^ IN[140] ^ IN[141] ^ IN[147] ^ IN[148] ^ IN[150] ^ IN[151] ^ IN[153] ^ IN[154] ^ IN[158] ^ IN[159] ^ IN[161] ^ IN[162] ^ IN[163] ^ IN[166] ^ IN[168] ^ IN[170] ^ IN[172] ^ IN[175] ^ IN[176] ^ IN[183] ^ IN[184] ^ IN[186] ^ IN[189] ^ IN[191] ^ IN[195] ^ IN[205] ^ IN[207] ^ IN[213] ^ IN[215] ^ IN[217] ^ IN[218] ^ IN[221] ^ IN[224] ^ IN[225] ^ IN[226] ^ IN[228] ^ IN[230] ^ IN[234] ^ IN[238] ^ IN[243] ^ IN[244] ^ IN[245] ^ IN[246] ^ IN[247] ^ IN[248] ^ IN[249] ^ IN[251] ^ IN[255] ^  1'b0 ;
        CHK[6] = IN[1] ^ IN[2] ^ IN[3] ^ IN[6] ^ IN[8] ^ IN[9] ^ IN[10] ^ IN[11] ^ IN[15] ^ IN[19] ^ IN[20] ^ IN[21] ^ IN[22] ^ IN[24] ^ IN[28] ^ IN[29] ^ IN[30] ^ IN[37] ^ IN[38] ^ IN[39] ^ IN[41] ^ IN[42] ^ IN[43] ^ IN[44] ^ IN[46] ^ IN[53] ^ IN[54] ^ IN[55] ^ IN[56] ^ IN[58] ^ IN[59] ^ IN[60] ^ IN[61] ^ IN[63] ^ IN[70] ^ IN[71] ^ IN[76] ^ IN[78] ^ IN[82] ^ IN[83] ^ IN[84] ^ IN[85] ^ IN[87] ^ IN[88] ^ IN[89] ^ IN[90] ^ IN[91] ^ IN[94] ^ IN[96] ^ IN[97] ^ IN[98] ^ IN[101] ^ IN[104] ^ IN[106] ^ IN[108] ^ IN[110] ^ IN[114] ^ IN[116] ^ IN[118] ^ IN[119] ^ IN[121] ^ IN[123] ^ IN[124] ^ IN[127] ^ IN[129] ^ IN[130] ^ IN[131] ^ IN[133] ^ IN[134] ^ IN[135] ^ IN[140] ^ IN[143] ^ IN[145] ^ IN[146] ^ IN[147] ^ IN[149] ^ IN[150] ^ IN[151] ^ IN[157] ^ IN[159] ^ IN[162] ^ IN[166] ^ IN[175] ^ IN[177] ^ IN[181] ^ IN[185] ^ IN[188] ^ IN[191] ^ IN[192] ^ IN[193] ^ IN[196] ^ IN[197] ^ IN[200] ^ IN[204] ^ IN[207] ^ IN[211] ^ IN[212] ^ IN[215] ^ IN[217] ^ IN[219] ^ IN[221] ^ IN[228] ^ IN[229] ^ IN[230] ^ IN[231] ^ IN[232] ^ IN[236] ^ IN[242] ^ IN[252] ^  1'b0 ;
        CHK[7] = IN[2] ^ IN[5] ^ IN[6] ^ IN[7] ^ IN[8] ^ IN[10] ^ IN[12] ^ IN[14] ^ IN[15] ^ IN[18] ^ IN[19] ^ IN[22] ^ IN[23] ^ IN[24] ^ IN[26] ^ IN[27] ^ IN[28] ^ IN[31] ^ IN[34] ^ IN[35] ^ IN[37] ^ IN[38] ^ IN[44] ^ IN[46] ^ IN[47] ^ IN[48] ^ IN[53] ^ IN[58] ^ IN[59] ^ IN[64] ^ IN[65] ^ IN[67] ^ IN[70] ^ IN[72] ^ IN[74] ^ IN[75] ^ IN[76] ^ IN[77] ^ IN[78] ^ IN[79] ^ IN[82] ^ IN[83] ^ IN[88] ^ IN[90] ^ IN[91] ^ IN[92] ^ IN[93] ^ IN[94] ^ IN[96] ^ IN[97] ^ IN[99] ^ IN[101] ^ IN[103] ^ IN[105] ^ IN[106] ^ IN[107] ^ IN[108] ^ IN[110] ^ IN[111] ^ IN[112] ^ IN[115] ^ IN[117] ^ IN[119] ^ IN[120] ^ IN[122] ^ IN[124] ^ IN[126] ^ IN[128] ^ IN[129] ^ IN[134] ^ IN[136] ^ IN[139] ^ IN[141] ^ IN[144] ^ IN[145] ^ IN[150] ^ IN[151] ^ IN[154] ^ IN[161] ^ IN[162] ^ IN[164] ^ IN[165] ^ IN[167] ^ IN[170] ^ IN[171] ^ IN[173] ^ IN[181] ^ IN[185] ^ IN[187] ^ IN[188] ^ IN[190] ^ IN[193] ^ IN[194] ^ IN[196] ^ IN[206] ^ IN[209] ^ IN[210] ^ IN[212] ^ IN[213] ^ IN[215] ^ IN[218] ^ IN[219] ^ IN[224] ^ IN[226] ^ IN[229] ^ IN[231] ^ IN[233] ^ IN[234] ^ IN[235] ^ IN[238] ^ IN[240] ^ IN[243] ^ IN[246] ^ IN[247] ^ IN[248] ^ IN[255] ^  1'b0 ;
        CHK[8] = IN[0] ^ IN[1] ^ IN[2] ^ IN[6] ^ IN[7] ^ IN[9] ^ IN[10] ^ IN[12] ^ IN[17] ^ IN[20] ^ IN[21] ^ IN[24] ^ IN[25] ^ IN[26] ^ IN[27] ^ IN[30] ^ IN[38] ^ IN[39] ^ IN[42] ^ IN[45] ^ IN[47] ^ IN[48] ^ IN[49] ^ IN[51] ^ IN[52] ^ IN[55] ^ IN[56] ^ IN[61] ^ IN[62] ^ IN[63] ^ IN[64] ^ IN[65] ^ IN[69] ^ IN[70] ^ IN[71] ^ IN[73] ^ IN[74] ^ IN[75] ^ IN[81] ^ IN[83] ^ IN[84] ^ IN[89] ^ IN[95] ^ IN[96] ^ IN[97] ^ IN[100] ^ IN[101] ^ IN[103] ^ IN[104] ^ IN[105] ^ IN[107] ^ IN[109] ^ IN[111] ^ IN[112] ^ IN[114] ^ IN[116] ^ IN[120] ^ IN[121] ^ IN[125] ^ IN[128] ^ IN[135] ^ IN[138] ^ IN[141] ^ IN[145] ^ IN[146] ^ IN[148] ^ IN[149] ^ IN[151] ^ IN[155] ^ IN[157] ^ IN[159] ^ IN[162] ^ IN[165] ^ IN[168] ^ IN[169] ^ IN[170] ^ IN[172] ^ IN[174] ^ IN[179] ^ IN[181] ^ IN[186] ^ IN[198] ^ IN[201] ^ IN[202] ^ IN[203] ^ IN[207] ^ IN[208] ^ IN[211] ^ IN[213] ^ IN[215] ^ IN[219] ^ IN[221] ^ IN[223] ^ IN[224] ^ IN[232] ^ IN[233] ^ IN[235] ^ IN[238] ^ IN[239] ^ IN[240] ^ IN[245] ^ IN[250] ^  1'b0 ;
        CHK[9] = IN[0] ^ IN[1] ^ IN[3] ^ IN[8] ^ IN[9] ^ IN[13] ^ IN[15] ^ IN[17] ^ IN[19] ^ IN[23] ^ IN[24] ^ IN[26] ^ IN[28] ^ IN[30] ^ IN[31] ^ IN[32] ^ IN[33] ^ IN[34] ^ IN[39] ^ IN[41] ^ IN[42] ^ IN[44] ^ IN[45] ^ IN[48] ^ IN[49] ^ IN[51] ^ IN[53] ^ IN[54] ^ IN[58] ^ IN[60] ^ IN[61] ^ IN[62] ^ IN[65] ^ IN[66] ^ IN[67] ^ IN[69] ^ IN[71] ^ IN[74] ^ IN[78] ^ IN[79] ^ IN[81] ^ IN[82] ^ IN[83] ^ IN[91] ^ IN[92] ^ IN[98] ^ IN[99] ^ IN[101] ^ IN[103] ^ IN[106] ^ IN[107] ^ IN[112] ^ IN[115] ^ IN[116] ^ IN[118] ^ IN[121] ^ IN[125] ^ IN[128] ^ IN[133] ^ IN[136] ^ IN[139] ^ IN[142] ^ IN[143] ^ IN[144] ^ IN[149] ^ IN[150] ^ IN[154] ^ IN[155] ^ IN[157] ^ IN[159] ^ IN[160] ^ IN[161] ^ IN[163] ^ IN[173] ^ IN[178] ^ IN[180] ^ IN[182] ^ IN[187] ^ IN[189] ^ IN[193] ^ IN[195] ^ IN[197] ^ IN[198] ^ IN[200] ^ IN[205] ^ IN[207] ^ IN[209] ^ IN[210] ^ IN[212] ^ IN[214] ^ IN[215] ^ IN[216] ^ IN[225] ^ IN[226] ^ IN[227] ^ IN[228] ^ IN[229] ^ IN[233] ^ IN[237] ^ IN[238] ^ IN[239] ^ IN[249] ^ IN[250] ^ IN[254] ^  1'b0 ;
        CHK[10] = IN[0] ^ IN[1] ^ IN[2] ^ IN[5] ^ IN[6] ^ IN[8] ^ IN[9] ^ IN[10] ^ IN[11] ^ IN[12] ^ IN[14] ^ IN[16] ^ IN[17] ^ IN[19] ^ IN[22] ^ IN[23] ^ IN[24] ^ IN[25] ^ IN[27] ^ IN[28] ^ IN[29] ^ IN[31] ^ IN[33] ^ IN[34] ^ IN[35] ^ IN[36] ^ IN[45] ^ IN[46] ^ IN[47] ^ IN[49] ^ IN[50] ^ IN[51] ^ IN[55] ^ IN[57] ^ IN[58] ^ IN[59] ^ IN[60] ^ IN[62] ^ IN[65] ^ IN[67] ^ IN[68] ^ IN[70] ^ IN[71] ^ IN[72] ^ IN[78] ^ IN[82] ^ IN[83] ^ IN[84] ^ IN[86] ^ IN[87] ^ IN[92] ^ IN[93] ^ IN[94] ^ IN[99] ^ IN[100] ^ IN[103] ^ IN[105] ^ IN[106] ^ IN[107] ^ IN[108] ^ IN[110] ^ IN[112] ^ IN[116] ^ IN[117] ^ IN[118] ^ IN[119] ^ IN[120] ^ IN[127] ^ IN[129] ^ IN[130] ^ IN[132] ^ IN[133] ^ IN[142] ^ IN[143] ^ IN[145] ^ IN[146] ^ IN[155] ^ IN[157] ^ IN[164] ^ IN[166] ^ IN[169] ^ IN[174] ^ IN[176] ^ IN[177] ^ IN[180] ^ IN[182] ^ IN[183] ^ IN[184] ^ IN[189] ^ IN[193] ^ IN[194] ^ IN[197] ^ IN[200] ^ IN[204] ^ IN[205] ^ IN[206] ^ IN[207] ^ IN[220] ^ IN[222] ^ IN[224] ^ IN[228] ^ IN[229] ^ IN[237] ^ IN[245] ^ IN[250] ^ IN[251] ^ IN[255] ^  1'b0 ;
        CHK[11] = IN[0] ^ IN[4] ^ IN[6] ^ IN[10] ^ IN[11] ^ IN[15] ^ IN[17] ^ IN[19] ^ IN[21] ^ IN[22] ^ IN[26] ^ IN[27] ^ IN[28] ^ IN[30] ^ IN[31] ^ IN[32] ^ IN[34] ^ IN[35] ^ IN[36] ^ IN[37] ^ IN[40] ^ IN[41] ^ IN[43] ^ IN[44] ^ IN[45] ^ IN[50] ^ IN[51] ^ IN[52] ^ IN[53] ^ IN[54] ^ IN[56] ^ IN[57] ^ IN[58] ^ IN[65] ^ IN[67] ^ IN[73] ^ IN[75] ^ IN[76] ^ IN[77] ^ IN[78] ^ IN[79] ^ IN[80] ^ IN[84] ^ IN[87] ^ IN[90] ^ IN[92] ^ IN[94] ^ IN[98] ^ IN[99] ^ IN[101] ^ IN[105] ^ IN[106] ^ IN[108] ^ IN[111] ^ IN[113] ^ IN[114] ^ IN[115] ^ IN[117] ^ IN[122] ^ IN[126] ^ IN[128] ^ IN[129] ^ IN[132] ^ IN[135] ^ IN[140] ^ IN[143] ^ IN[151] ^ IN[152] ^ IN[155] ^ IN[157] ^ IN[158] ^ IN[161] ^ IN[163] ^ IN[167] ^ IN[170] ^ IN[171] ^ IN[172] ^ IN[173] ^ IN[179] ^ IN[180] ^ IN[182] ^ IN[183] ^ IN[192] ^ IN[193] ^ IN[199] ^ IN[202] ^ IN[203] ^ IN[204] ^ IN[206] ^ IN[208] ^ IN[209] ^ IN[210] ^ IN[212] ^ IN[213] ^ IN[214] ^ IN[215] ^ IN[216] ^ IN[219] ^ IN[221] ^ IN[227] ^ IN[231] ^ IN[233] ^ IN[241] ^ IN[242] ^ IN[247] ^ IN[250] ^ IN[254] ^ IN[255] ^  1'b0 ;
        CHK[12] = IN[2] ^ IN[3] ^ IN[4] ^ IN[9] ^ IN[11] ^ IN[12] ^ IN[15] ^ IN[18] ^ IN[19] ^ IN[20] ^ IN[23] ^ IN[28] ^ IN[29] ^ IN[32] ^ IN[35] ^ IN[39] ^ IN[40] ^ IN[43] ^ IN[45] ^ IN[46] ^ IN[48] ^ IN[50] ^ IN[52] ^ IN[53] ^ IN[54] ^ IN[56] ^ IN[58] ^ IN[61] ^ IN[62] ^ IN[63] ^ IN[65] ^ IN[66] ^ IN[69] ^ IN[70] ^ IN[73] ^ IN[75] ^ IN[76] ^ IN[77] ^ IN[81] ^ IN[82] ^ IN[84] ^ IN[85] ^ IN[86] ^ IN[90] ^ IN[93] ^ IN[95] ^ IN[96] ^ IN[97] ^ IN[98] ^ IN[101] ^ IN[102] ^ IN[103] ^ IN[104] ^ IN[108] ^ IN[109] ^ IN[111] ^ IN[116] ^ IN[119] ^ IN[120] ^ IN[122] ^ IN[127] ^ IN[131] ^ IN[132] ^ IN[135] ^ IN[137] ^ IN[138] ^ IN[139] ^ IN[142] ^ IN[143] ^ IN[149] ^ IN[150] ^ IN[156] ^ IN[158] ^ IN[160] ^ IN[161] ^ IN[165] ^ IN[168] ^ IN[169] ^ IN[170] ^ IN[171] ^ IN[173] ^ IN[176] ^ IN[179] ^ IN[182] ^ IN[183] ^ IN[184] ^ IN[188] ^ IN[189] ^ IN[192] ^ IN[195] ^ IN[196] ^ IN[199] ^ IN[200] ^ IN[206] ^ IN[208] ^ IN[212] ^ IN[214] ^ IN[217] ^ IN[221] ^ IN[222] ^ IN[225] ^ IN[230] ^ IN[231] ^ IN[232] ^ IN[233] ^ IN[236] ^ IN[240] ^ IN[242] ^ IN[243] ^ IN[248] ^ IN[255] ^  1'b0 ;
        CHK[13] = IN[1] ^ IN[3] ^ IN[4] ^ IN[5] ^ IN[6] ^ IN[7] ^ IN[13] ^ IN[14] ^ IN[17] ^ IN[18] ^ IN[20] ^ IN[23] ^ IN[24] ^ IN[29] ^ IN[30] ^ IN[31] ^ IN[33] ^ IN[35] ^ IN[39] ^ IN[40] ^ IN[41] ^ IN[45] ^ IN[49] ^ IN[50] ^ IN[52] ^ IN[53] ^ IN[55] ^ IN[58] ^ IN[59] ^ IN[61] ^ IN[64] ^ IN[67] ^ IN[68] ^ IN[69] ^ IN[71] ^ IN[72] ^ IN[75] ^ IN[76] ^ IN[80] ^ IN[82] ^ IN[83] ^ IN[85] ^ IN[86] ^ IN[88] ^ IN[89] ^ IN[91] ^ IN[94] ^ IN[95] ^ IN[97] ^ IN[98] ^ IN[107] ^ IN[109] ^ IN[110] ^ IN[112] ^ IN[114] ^ IN[115] ^ IN[119] ^ IN[120] ^ IN[121] ^ IN[122] ^ IN[123] ^ IN[126] ^ IN[131] ^ IN[135] ^ IN[141] ^ IN[142] ^ IN[143] ^ IN[145] ^ IN[150] ^ IN[151] ^ IN[152] ^ IN[154] ^ IN[155] ^ IN[158] ^ IN[165] ^ IN[172] ^ IN[174] ^ IN[175] ^ IN[177] ^ IN[182] ^ IN[185] ^ IN[187] ^ IN[192] ^ IN[195] ^ IN[196] ^ IN[198] ^ IN[199] ^ IN[204] ^ IN[207] ^ IN[209] ^ IN[214] ^ IN[222] ^ IN[223] ^ IN[232] ^ IN[234] ^ IN[237] ^ IN[239] ^ IN[244] ^ IN[247] ^ IN[251] ^ IN[254] ^  1'b0 ;
        CHK[14] = IN[0] ^ IN[1] ^ IN[2] ^ IN[4] ^ IN[12] ^ IN[15] ^ IN[20] ^ IN[25] ^ IN[29] ^ IN[32] ^ IN[33] ^ IN[35] ^ IN[37] ^ IN[38] ^ IN[41] ^ IN[43] ^ IN[44] ^ IN[48] ^ IN[50] ^ IN[51] ^ IN[53] ^ IN[55] ^ IN[56] ^ IN[59] ^ IN[61] ^ IN[64] ^ IN[67] ^ IN[68] ^ IN[69] ^ IN[73] ^ IN[77] ^ IN[79] ^ IN[83] ^ IN[84] ^ IN[87] ^ IN[88] ^ IN[91] ^ IN[93] ^ IN[94] ^ IN[98] ^ IN[100] ^ IN[102] ^ IN[103] ^ IN[104] ^ IN[105] ^ IN[106] ^ IN[111] ^ IN[114] ^ IN[115] ^ IN[116] ^ IN[117] ^ IN[118] ^ IN[125] ^ IN[126] ^ IN[129] ^ IN[130] ^ IN[133] ^ IN[141] ^ IN[144] ^ IN[145] ^ IN[148] ^ IN[151] ^ IN[153] ^ IN[155] ^ IN[159] ^ IN[160] ^ IN[161] ^ IN[162] ^ IN[163] ^ IN[164] ^ IN[165] ^ IN[171] ^ IN[172] ^ IN[176] ^ IN[178] ^ IN[180] ^ IN[182] ^ IN[186] ^ IN[189] ^ IN[190] ^ IN[191] ^ IN[192] ^ IN[193] ^ IN[196] ^ IN[197] ^ IN[198] ^ IN[201] ^ IN[206] ^ IN[207] ^ IN[208] ^ IN[211] ^ IN[212] ^ IN[213] ^ IN[217] ^ IN[219] ^ IN[223] ^ IN[225] ^ IN[226] ^ IN[227] ^ IN[230] ^ IN[231] ^ IN[233] ^ IN[234] ^ IN[246] ^ IN[251] ^ IN[252] ^ IN[253] ^  1'b0 ;
        CHK[15] = IN[1] ^ IN[7] ^ IN[11] ^ IN[12] ^ IN[13] ^ IN[15] ^ IN[18] ^ IN[20] ^ IN[23] ^ IN[24] ^ IN[25] ^ IN[26] ^ IN[32] ^ IN[35] ^ IN[36] ^ IN[38] ^ IN[39] ^ IN[40] ^ IN[42] ^ IN[44] ^ IN[47] ^ IN[48] ^ IN[50] ^ IN[51] ^ IN[52] ^ IN[54] ^ IN[58] ^ IN[62] ^ IN[67] ^ IN[68] ^ IN[70] ^ IN[71] ^ IN[72] ^ IN[74] ^ IN[76] ^ IN[78] ^ IN[79] ^ IN[80] ^ IN[82] ^ IN[85] ^ IN[86] ^ IN[88] ^ IN[91] ^ IN[92] ^ IN[97] ^ IN[99] ^ IN[101] ^ IN[102] ^ IN[104] ^ IN[105] ^ IN[110] ^ IN[111] ^ IN[112] ^ IN[113] ^ IN[118] ^ IN[128] ^ IN[129] ^ IN[130] ^ IN[131] ^ IN[136] ^ IN[137] ^ IN[138] ^ IN[142] ^ IN[143] ^ IN[147] ^ IN[148] ^ IN[150] ^ IN[151] ^ IN[155] ^ IN[164] ^ IN[165] ^ IN[168] ^ IN[178] ^ IN[180] ^ IN[183] ^ IN[184] ^ IN[185] ^ IN[188] ^ IN[190] ^ IN[192] ^ IN[203] ^ IN[210] ^ IN[213] ^ IN[215] ^ IN[217] ^ IN[218] ^ IN[220] ^ IN[223] ^ IN[224] ^ IN[231] ^ IN[236] ^ IN[239] ^ IN[241] ^ IN[246] ^ IN[247] ^ IN[250] ^ IN[253] ^ IN[254] ^  1'b0 ;
    end

endmodule



