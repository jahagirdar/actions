FROM ubuntu:latest
RUN apt update && apt install -y verilog make python3-pip && pip install cocotb cocotb-bus --break-system-packages
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
