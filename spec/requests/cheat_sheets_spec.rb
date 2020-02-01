# frozen_string_literal: true
# require 'swagger_helper'
#
# describe 'cheat_sheets', type: :request do
#
# @id = rand(1..40)
# path '/cheat_sheets' do
#     get('return all or search for cheat_sheet') do
#       response(200, 'successful') do
# run_test!
#         consumes 'application/json'
#         produces 'application/json'
#         parameter name: :search,
#
#         in: :query,
#         schema: {
#           type: :object,
#           properties: {
#             search: { type: :string }
#           },
#         }
#         after do |example|
#           example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
#         end
#
#       end
#     end
#     post('create cheat_sheet') do
#       consumes 'application/json'
#       produces 'application/json'
#       parameter name: :data,
#       in: :query,
#       schema: {
#         type: :object,
#         properties: {
#           key_stroke: { type: :string },
#           result: { type: :string }
#         },
#       }
#       response(200, 'successful') do
# run_test!
#         after do |example|
#           example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
#         end
#       end
#     end
#   end
#   path "/cheat_sheets/#{@id}" do
#
#
#     get('show cheat_sheet') do
#       response(200, 'successful') do
#         run_test!
#         #
#         after do |example|
#           example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
#         end
#       end
#     end
#
#
#
#     patch('update cheat_sheet') do
#       consumes 'application/json'
#       produces 'application/json'
#       parameter name: :data,
#                 in: :query,
#                 schema: {
#         type: :object,
#         properties: {
#           key_stroke: { type: :string },
#           result: { type: :string }
#         },
#       }
#
#       response(200, 'successful') do
# run_test!
#         after do |example|
#           example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
#         end
#       end
#     end
#
#
#     delete('delete cheat_sheet') do
#       response(200, 'successful') do
# run_test!
#
#         after do |example|
#           example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
#         end
#       end
#     end
#   end
#
#
#
#   path '/random' do
#
#     get('random cheat_sheet') do
#       response(200, 'successful') do
#
#         after do |example|
#           example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
#         end
#         run_test!
#       end
#     end
#   end
#
# end
