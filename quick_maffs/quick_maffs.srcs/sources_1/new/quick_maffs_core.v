`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cooper Union
// Engineer: Rafi Mueen
// 
// Create Date: 12/01/2018 11:53:42 PM
// Design Name: 
// Module Name: quick_maffs_core
// Project Name: OpenSesame
// Target Devices: 
// Tool Versions: 
// Description: Core ALU 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
// Instructions are structured as follows:
//  - Bits 31-28 are flags, identifies which type of instruction structure to use.
//      Currently, only "D type" instructions are supported
//  - Bits 27-4 are opcodes, identifies which instruction to perform
//  - Bits 3-0 are data width, identifies the data to transform's width in power of
//      2, i.e. 12 -> 2^12 = width of 4096
//
// Currently supported instructions:
//  - AE5DEC: Decrypt AES encrypted data
//  - AE5E7: Encrypt to AES ciphertext
//////////////////////////////////////////////////////////////////////////////////




module quick_maffs_core(
    input enable,
    input clk,
    
    input [31:0] instruction,
    input [4095:0] input_data,
    input [255:0] key,
    output reg [4095:0] output_data
    );
    
    wire [3:0] flags;
    wire [23:0] opcode;
    wire [3:0] data_bus_width, instruction_alu;
    wire [4095:0] op1_alu, op2_alu, result_alu;
    wire [127:0] op1_multiplier, op2_multiplier;
    wire [255:0] result_multipier;
    
    // SHARED RESOURCES
    
    quick_maffs_alu alu(.op1(op1_alu), .op2(op2_alu), .instruction(instruction_alu), .result(result_alu));
    quick_maffs_multiplier_dsp multiplier(.op1(op1_multiplier), .op2(op2_multiplier), .result(result_multiplier));
    
    assign flags = instruction[31:28];
    assign opcode = instruction[27:4];
    assign data_bus_width = instruction[3:0];
    
    always @(posedge clk) // Instruction Decode... I guess?
        case (flags)
            4'hD: // Flag bits set to "D type instruction"
            begin
                case (opcode)
                    24'hAE5DEC: // AES Decrypt
                    begin
                        
                    end
                    24'hAE5E7C: // AES Encrypt
                    begin
                    
                    end
                    24'hAE56E7: // AES Key Generate
                    begin
                    
                    end
                    24'hB103DE: // Blowfish Decrypt
                    begin
                    
                    end
                    24'hB103E7: // Blowfish Encrypt
                    begin
                    
                    end
                    24'hB1036E: // Blowfish Key Generate
                    begin
                    
                    end
                    24'hDE5DEC: // DES Decrypt
                    begin
                    
                    end
                    24'hDE5E7C: // DES Encrypt
                    begin
                    
                    end
                    24'hDE56E7: // DES Key Generate
                    begin
                    
                    end
                    24'h54A2D1: // SHA-2 Message Digest
                    begin
                    
                    end
                    24'h3D5D16: // MD5 Message Digest
                    begin
                    
                    end
                    24'h25ADEC: // RSA Decrypt
                    begin
                    
                    end
                    24'h25AE7C: // RSA Encrypt
                    begin
                    
                    end
                    24'h25AD16: // RSA Key Pair Generate
                    begin
                    
                    end
                endcase
            end
        endcase
endmodule
