# frozen_string_literal: true

ActiveAdmin.register Restaurant do
  permit_params :name, :address, :restorer_id, :accepted
end
