require 'swagger_helper'

RSpec.describe 'cheat_sheets', type: :request do



  path '/cheat_sheets' do

    get('list cheat_sheets') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end
        run_test!
      end
    end

    post('create cheat_sheet') do
      consumes 'application/json'
      produces 'application/json'
      parameter name: :data,
      in: :query,
      schema: {
        type: :object,
        properties: {
          key_stroke: { type: :string },
          result: { type: :string }
        },
      }
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end
        run_test!
      end
    end
  end
  path "/cheat_sheets/23" do


    get('show cheat_sheet') do
      response(200, 'successful') do
        #
        #
        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end
        run_test!
      end
    end


    #
    patch('update cheat_sheet') do
      consumes 'application/json'
      produces 'application/json'
      parameter name: :data,
                in: :query,
                schema: {
        type: :object,
        properties: {
          key_stroke: { type: :string },
          result: { type: :string }
        },
      }

      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end
        run_test!
      end
    end

  
    delete('delete cheat_sheet') do
      response(200, 'successful') do


        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end
        run_test!
      end
    end
  end

  path '/random' do

    get('random cheat_sheet') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end
        run_test!
      end
    end
  end
end
