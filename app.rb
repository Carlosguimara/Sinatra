require 'sinatra'
require 'json'

# Dados estáticos para exemplo
PRODUCTS = [
  { name: "Produto 1", price: 100, image: "image1.jpg", on_sale: true },
  { name: "Produto 2", price: 200, image: "image2.jpg", on_sale: false }
]

SHOP_INFO = {
  name: "Minha Loja",
  color: "#0000FF",
  owner: "João",
  department: "Vendas"
}

# Rota para obter todos os produtos
get '/products' do
  content_type :json
  PRODUCTS.to_json
end

# Rota para obter informações da loja
get '/info' do
  content_type :json
  SHOP_INFO.to_json
end

run! if app_file == $0