# put class_eval and other logic that depends on classes outside of the engine inside this block
Product.class_eval do
  has_and_belongs_to_many :promotion_rules

  def possible_promotions
    rules_with_matching_product_groups = product_groups.map(&:promotion_rules).flatten
    all_rules = promotion_rules + rules_with_matching_product_groups
    promotion_ids = all_rules.map(&:activator_id).uniq
    Promotion.advertised.where(:id => promotion_ids)
  end
end
