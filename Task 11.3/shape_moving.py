# Acknowledgement to the original authors of the code on which this 
# example is based.
import pygame
pygame.init()
SCREEN_HEIGHT = 700
SCREEN_WIDTH = 900
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT), 0, 32)
done = False
is_blue = True
x = 30
y = 30
time = pygame.time
while not done:
        for event in pygame.event.get():
                if event.type == pygame.QUIT:
                        done = True
                if event.type == pygame.KEYDOWN and event.key == pygame.K_SPACE:
                        is_blue = not is_blue
        pressed = pygame.key.get_pressed()
        if pressed[pygame.K_LEFT]:
                if x!=0:
                 x -= 2
        if pressed[pygame.K_RIGHT]:
                if x!= 850:
                 x += 2
        if pressed[pygame.K_UP]:
                if y!=0:
                 y -= 2
        if pressed[pygame.K_DOWN]:
                if y!=650:
                 y += 2
        print(f"x is {x} y is {y} timer is {time.get_ticks()}")
        screen.fill((0, 0, 0))
        if is_blue: color = (0, 128, 255)
        else: color = (255, 100, 0)
        rect = pygame.Rect(x, y, 50, 50)
        pygame.draw.rect(screen, color, rect)
        pygame.display.flip()