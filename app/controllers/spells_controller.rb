class SpellsController < ApplicationController
  def index
    @spell_domains = SpellDomain.order(:name)
    @spell_domain = SpellDomain.find(params[:domain_id])
  end

  def show
    @spell = Spell.find params[:id]
  end
end