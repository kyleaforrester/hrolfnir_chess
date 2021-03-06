
while true; do
c-chess-cli -each tc=10+0.5 option.Threads=1 \
    -engine cmd=Ethereal name=Ethereal \
    -engine cmd=stockfish_7 name=stockfish_7 \
    -engine cmd=stockfish_8 name=stockfish_8 \
    -engine cmd=stockfish_9 name=stockfish_9 \
    -engine cmd=stockfish_10 name=stockfish_10 \
    -engine cmd=stockfish_11 name=stockfish_11 \
    -engine cmd=stockfish_classical name=stockfish_classical \
    -engine cmd=stockfish_12 name=stockfish_12 \
    -engine cmd=stockfish_13 name=stockfish_13 \
    -engine cmd=stockfish name=stockfish \
    -engine cmd=stockfish name=stockfish_dh-0.2-250.bin option.EvalFile=/home/kyle/Chess/nnue_networks/dh-0.2-250.bin \
    -engine cmd=stockfish name=stockfish_ninu-0.4b.bin option.EvalFile=/home/kyle/Chess/nnue_networks/ninu-0.4b.bin \
    -engine cmd=stockfish name=stockfish_thewhiterose.bin option.EvalFile=/home/kyle/Chess/nnue_networks/thewhiterose.bin \
    -engine cmd=stockfish name=stockfish_napping_nexus option.EvalFile=/home/kyle/Chess/nnue_networks/napping_nexus.bin \
    -engine cmd=stockfish name=stockfish_nascent_nutrient option.EvalFile=/home/kyle/Chess/nnue_networks/nascent_nutrient.bin \
    -engine cmd=stockfish name=stockfish_ign-0-9b1937cc option.EvalFile=/home/kyle/Chess/nnue_networks/ign-0-9b1937cc \
    -engine cmd=stockfish name=stockfish_375bdd2d7f-20210112 option.EvalFile=/home/kyle/Chess/nnue_networks/nn-375bdd2d7f-20210112.nnue \
    -engine cmd=stockfish name=stockfish_97f742aaefcd option.EvalFile=/home/kyle/Chess/nnue_networks/nn-97f742aaefcd.nnue \
    -engine cmd=stockfish name=stockfish_9931db908a9b option.EvalFile=/home/kyle/Chess/nnue_networks/nn-9931db908a9b.nnue \
    -games 100 -concurrency 4 -openings file=4moves_noob.epd order=random -repeat \
    -draw 8 10 -pgn ./data/$(date +%d%h%Y_%H%M%S).pgn 1

done
