NAME= putnbr
SRC = code.asm
OBJ = $(SRC:.asm=.o)

ASM = nasm -f elf64
LD = ld

%.o: %.asm
	$(ASM) -o $@ $<

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
