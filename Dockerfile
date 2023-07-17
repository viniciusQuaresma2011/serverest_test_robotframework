FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["robot", "resources/specs/Carrinho/CriarCarrinho.robot"]
