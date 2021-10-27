#!/usr/bin/python3
# data:
# author: Eduardo Marossi <eduardom44@gmail.com>

# data: 06/11/2020
# revisão:	Rafael dos Santos <rafaels6@al.insper.edu.br>
#			Thomas de Queiroz Barros Schneider <thomasqbs@al.insper.edu.br>
# descrição: Corrigido a instrução na linha 125, esse bug fazia com que o valor na tabela fosse interpretado como HEX e não como DEC:
#			 ANTES: r = bindigits(int(table[register], 16), 5)
#			 AGORA: r = bindigits(int(table[register]), 5)

import logging
import argparse
import sys

def bindigits(n, bits):
    s = bin(n & int("1"*bits, 2))[2:]
    return ("{0:0>%s}" % (bits)).format(s)

class Line_Assemble:
    def __init__(self):
        self.r_instructions = ['add', 'sub', 'and', 'or', 'slt', 'jr']
        self.i_instructions = ['lw', 'sw', 'beq', 'bne', 'addi', 'slti', 'ori', 'andi']
        self.j_instructions = ['j', 'jal']
        self.labels = {}
        self.address = 0
    
    def set_line(self, line):
        self.line = line.strip().replace('  ', ' ')
        if self.line.find('#') != -1:
            self.line = self.line[0:self.line.find('#')]

        logging.debug('set line: {}'.format(self.line))

    def get_parts(self):
        if self.line.strip() == '':
            return ('', [])

        if ' ' in self.line:
            instruct = self.line[:self.line.find(' ')].replace(' ', '')
            args = self.line[self.line.find(' '):].replace(' ', '')
        elif ':' in self.line: 
            instruct = self.line
            args = self.line[:self.line.find(':')]

        logging.debug('parts: {} {}'.format(instruct, args))
        return (instruct, args.split(','))

    def get_instruction_type(self):
        instruct = self.get_parts()[0]
        tp = None
        if ':' in instruct:
            tp = 'l'
        elif instruct in self.r_instructions:
            tp = 'r'
        elif instruct in self.i_instructions: 
            tp = 'i'
        elif instruct in self.j_instructions:
            tp = 'j'
        logging.debug('type: {}'.format(tp))
        return tp

    def first_pass(self):
        instruct, args = self.get_parts()
        if self.get_instruction_type() == 'l':
            self.labels[args[0]] = self.address
            logging.debug('set label {} to address {}'.format(args[0], self.address))
        elif self.get_instruction_type() != None:
            self.address += 1

    def get_instruction(self):
        instruct, args = self.get_parts()
        output = ""

        if self.get_instruction_type() == 'r':
            output = "000000" + self.get_register(args[1]) + self.get_register(args[2]) + self.get_register(args[0]) + "00000" + self.get_r_funct(instruct)
        elif self.get_instruction_type() == 'i' and len(args) == 2:
            output = self.get_i_instruction(instruct) + self.get_register(args[1]) + self.get_register(args[0]) + self.get_immediate(args[1])
        elif self.get_instruction_type() == 'i' and len(args) == 3:
            if 'beq' in instruct:
                output = self.get_i_instruction(instruct) + self.get_register(args[1]) + self.get_register(args[0]) + self.get_relative_address(args[2])
            else:
                output = self.get_i_instruction(instruct) + self.get_register(args[1]) + self.get_register(args[0]) + self.get_immediate(args[2])
        elif self.get_instruction_type() == 'j':
            output = self.get_j_instruction(instruct) + self.get_j_address(args[0])

        if self.get_instruction_type() != None and self.get_instruction_type() != 'l':
            self.address += 1

        logging.debug('instruction: {}'.format(output))
        return output
        
    def get_r_funct(self, instruct):
        table = {'add': '20', 'sub': '22', 'and': '24', 'or':'25', 'slt':'2a', 'jr': '8'}
        r = bindigits(int(table[instruct], 16), 6)
        logging.debug('r funct: {}'.format(r))
        return r

    def get_i_instruction(self, instruct):
        table = {'lw': '23', 'sw':'2b', 'beq':'4', 'addi': '8', 'andi': 'c', 'ori': 'd', 'slti': 'a',
                 'bne': '5'}
        r = bindigits(int(table[instruct], 16), 6)
        logging.debug('i instruct: {}'.format(r))
        return r
 
    def get_j_instruction(self, instruct):
        table = {'j': '2', 'jal': '3'}
        r = bindigits(int(table[instruct], 16), 6)
        logging.debug('j instruct: {}'.format(r))
        return r

    def get_register(self, register):
        register = register.strip().replace(' ', '')
        if '(' in register:
            register = register[register.find('('):register.find(')')]

        if '$' in register:
            register = register[register.find('$')+1:]

        table = {'zero': '0', 'at' : '1', 'v0' : '2', 'v1': '3', 'a0' : '4', 'a1': '5', 'a2': '6', 'a3': '7', 't0': '8',
                 't1': '9', 't2': '10', 't3' : '11', 't4': '12', 't5': '13', 't6': '14', 't7': '15', 's0': '16', 
                 's1': '17', 's2': '18', 's3': '19', 's4': '20', 's5': '21', 's6': '22', 's7': '23', 't8': '24',
                 't9': '25', 'k0': '26', 'k1': '27', 'gp': '28', 'sp' : '29', 'fp': '30', 'ra': '31'}

        r = bindigits(int(table[register]), 5)
        logging.debug('register: {}'.format(r))
        return r

    def get_immediate(self, immediate):
        if '(' in immediate:
            immediate = immediate[0:immediate.find('(')]

        r = bindigits(int(immediate), 16)
        logging.debug('immediate: {}'.format(r))
        return r

    def get_j_address(self, label):
        a = self.labels[label]
        r = bindigits(int(a), 26)
        logging.debug('j address: {}'.format(r))
        return r

    def get_relative_address(self, label):
        delta = self.labels[label] - self.address - 1
        return bindigits(int(delta), 16)

    def reset_address(self):
        self.address = 0


class MIPS_String_Format:
    def __init__(self):
        pass

    def begin(self):
        pass
    
    def end(self):
        pass

    def set_stream(self, stream):
        self.stream = stream

    def write(self, content):
        self.stream.write(content + "\n")


class MIPS_MIF_Format:
    def __init__(self, addr=14, data_width=32, increment_by=1):
        self.addr = addr
        self.data_width = data_width
        self.current_addr = 0
        self.increment_by = increment_by

    def set_stream(self, stream):
        self.stream = stream
    
    def begin(self):
        self.stream.write('DEPTH = {};\n'.format(2**self.addr))
        self.stream.write('WIDTH = {};\n\n'.format(self.data_width))
        self.stream.write('ADDRESS_RADIX = DEC;\n')
        self.stream.write('DATA_RADIX = BIN;\n\n')
        self.stream.write('CONTENT\n')
        self.stream.write('BEGIN\n')

    def write(self, content):
        self.stream.write('{}:   {};\n'.format(self.current_addr, content))
        self.current_addr += self.increment_by

    def end(self):
        if self.current_addr < 2**self.addr-1:
            self.stream.write('[{}..{}]:   {};\n'.format(self.current_addr, 2**self.addr-1, ''.zfill(32)))
        self.stream.write('END;\n')

class MIPS_Assemble:
    def __init__(self, out_format=MIPS_String_Format()):
        self.read_stream = None
        self.out_format = out_format

    def set_load_file(self, file_stream):
        self.read_stream = file_stream
        self.line_asm = Line_Assemble()

    def assemble(self):
        logging.debug('assemble')
        self.out_format.begin()
        self.read_stream.seek(0, 0)
        self.line_asm.reset_address()
        for i, l in enumerate(self.read_stream):
            self.line_asm.set_line(l)
            outp = self.line_asm.get_instruction()
            if outp != '':
                self.out_format.write(outp)
        self.out_format.end()

    def set_save_file(self, file_stream):
        self.out_format.set_stream(file_stream)

    def first_pass(self):
        # populate labels
        logging.debug('first pass')
        for i, l in enumerate(self.read_stream):
            self.line_asm.set_line(l)
            self.line_asm.first_pass()
        self.read_stream.seek(0, 0)
        self.line_asm.reset_address()


if __name__ == '__main__':
    argparse = argparse.ArgumentParser()
    argparse.add_argument('in_file', type=str)
    argparse.add_argument('-d', '--debug', default=False, action='store_true')
    argparse.add_argument('-mif', '--mif-format', default=False, action='store_true')
    argparse.add_argument('-a', '--addr', type=int, default=6)
    argparse.add_argument('-i', '--increment-by', type=int, default=1)

    args = argparse.parse_args()
    if args.debug:
        logging.basicConfig(level=logging.DEBUG)

    out_format = MIPS_String_Format()
    if args.mif_format:
        out_format = MIPS_MIF_Format(addr=args.addr, increment_by=args.increment_by)

    mips = MIPS_Assemble(out_format)
    mips.set_load_file(open(args.in_file, 'r'))
    mips.set_save_file(sys.stdout)
    mips.first_pass()
    mips.assemble()
    