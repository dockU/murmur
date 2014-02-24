FROM docku/arch
MAINTAINER Jon Chen <docku@burrito.sh>

RUN pacman -Sy --noconfirm --needed umurmur

ADD umurmur.conf /etc/umurmur/umurmur.conf
ADD run /etc/sv/umurmur/run

EXPOSE 64738

RUN ln -s /etc/sv/umurmur /service/

