energy_program = Program.create :created_at => Time.now, :updated_at => Time.now, :name => 'Energy', :description => 'Energy'
power_program = Program.create :created_at => Time.now, :updated_at => Time.now, :name => 'Power', :description => 'Power'
coal_program = Program.create :created_at => Time.now, :updated_at => Time.now, :name => 'Coal', :description => 'Coal'

Initiative.create :created_at => Time.now, :updated_at => Time.now, :name => 'Energy - initiative', :description => 'Energy - initiative', :program_id => energy_program
Initiative.create :created_at => Time.now, :updated_at => Time.now, :name => 'Power - initiative', :description => 'Power - initiative', :program_id => power_program
Initiative.create :created_at => Time.now, :updated_at => Time.now, :name => 'Coal - initiative', :description => 'Coal - initiative', :program_id => coal_program

(1..5).each do |i|
  FundingSource.create :name => "Funding Source #{i}", :amount => 10
end

Group.create :created_at => Time.now, :updated_at => Time.now, :name => 'Friends'
Group.create :created_at => Time.now, :updated_at => Time.now, :name => 'Supporters'
Group.create :created_at => Time.now, :updated_at => Time.now, :name => 'Partners'

LetterTemplate.create :letter_type => 'al_public_charity', :description => 'Award Letter Public Charity', :category => 'Award', :filename => 'al_public_charity'
LetterTemplate.create :letter_type => 'ga_public_charity', :description => 'Grant Agreement Public Charity', :category => 'Grant Agreement', :filename => 'ga_public_charity'
LetterTemplate.create :letter_type => 'ga_china_er', :description => 'Grant Agreement China ER', :category => 'Grant Agreement', :filename => 'ga_china_er'
LetterTemplate.create :letter_type => 'ga_gos', :description => 'Grant Agreement General Operating Support', :category => 'Grant Agreement', :filename => 'ga_gos'
LetterTemplate.create :letter_type => 'ga_multiyear', :description => 'Grant Agreement Multiyear', :category => 'Grant Agreement', :filename => 'ga_multiyear'
LetterTemplate.create :letter_type => 'ga_us_er', :description => 'Grant Agreement US ER', :category => 'Grant Agreement', :filename => 'ga_us_er'
LetterTemplate.create :letter_type => 'al_china_er', :description => 'Award Letter China ER', :category => 'Award', :filename => 'al_china_er'
LetterTemplate.create :letter_type => 'al_gos', :description => 'Award Letter General Operating Support', :category => 'Award', :filename => 'al_gos'
LetterTemplate.create :letter_type => 'al_multiyear', :description => 'Award Letter Multiyear', :category => 'Award', :filename => 'al_multiyear'
LetterTemplate.create :letter_type => 'al_us_er', :description => 'Award Letter US ER', :category => 'Award', :filename => 'al_us_er'


tax_class_group = MultiElementGroup.create :name => 'tax_classes', :description => 'TaxClass', :target_class_name => 'Organization'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => '509a1'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => '509a2'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => '509a3'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => 'Private Foundation'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => '501c4'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => '501c6'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => 'non-US'
MultiElementValue.create :multi_element_group_id => tax_class_group.id, :value => 'Non-Exempt'

expenditure_group = MultiElementGroup.create :name => 'expenditure_types', :description => 'ExpenditureType', :target_class_name => 'Request'
MultiElementValue.create :multi_element_group_id => expenditure_group.id, :value => 'grant'
MultiElementValue.create :multi_element_group_id => expenditure_group.id, :value => 'fip project'
MultiElementValue.create :multi_element_group_id => expenditure_group.id, :value => 'fip consulting agreement'

initiative_type_group = MultiElementGroup.create :name => 'initiative_types', :description => 'InitiativeType', :target_class_name => 'Request'
MultiElementValue.create :multi_element_group_id => initiative_type_group.id, :value => 'Mature'
MultiElementValue.create :multi_element_group_id => initiative_type_group.id, :value => 'Developing'
MultiElementValue.create :multi_element_group_id => initiative_type_group.id, :value => 'Higher Risk'
MultiElementValue.create :multi_element_group_id => initiative_type_group.id, :value => 'Former Allocation'

constituents_group = MultiElementGroup.create :name => 'constituents', :description => 'Constituents', :target_class_name => 'Request'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Agriculture'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Business'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Consumer and Low Income'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Faith'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Military/Security'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Sportsman'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Environment'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Conservation/Lands'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Minority'
MultiElementValue.create :multi_element_group_id => constituents_group.id, :value => 'Labor'

means_usa_group = MultiElementGroup.create :name => 'usa_means', :description => 'MeansUsa', :target_class_name => 'Request'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Technical Analysis'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Economic Analysis'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Legal Intervention'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Regulatory Intervention'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Grassroots Organization'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Constituency Building'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Grasstops Organizing'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Media/PR'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Capacity Building'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Workshop/Conference'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Strategy Development'
MultiElementValue.create :multi_element_group_id => means_usa_group.id, :value => 'Pilot Demonstration'

means_china_group = MultiElementGroup.create :name => 'china_means', :description => 'MeansChina', :target_class_name => 'Request'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'Chinese Academic'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'Chinese Research Institute'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'China-based expert consultant'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'China-based NGO'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'International Academic'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'International Research Institute'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'International-based expert'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'consultant'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'International NGO'
MultiElementValue.create :multi_element_group_id => means_china_group.id, :value => 'Other'

user_salutation_group = MultiElementGroup.create :name => 'user_salutations', :description => 'UserSalutation', :target_class_name => 'User'
MultiElementValue.create :multi_element_group_id => user_salutation_group.id, :value => 'Dr.'
MultiElementValue.create :multi_element_group_id => user_salutation_group.id, :value => 'M.'
MultiElementValue.create :multi_element_group_id => user_salutation_group.id, :value => 'Mr.'
MultiElementValue.create :multi_element_group_id => user_salutation_group.id, :value => 'Ms.'
MultiElementValue.create :multi_element_group_id => user_salutation_group.id, :value => 'Prof.'
MultiElementValue.create :multi_element_group_id => user_salutation_group.id, :value => 'Rev.'
    
fip_type_group = MultiElementGroup.create :name => 'fip_types', :description => 'Fip Types', :target_class_name => 'Request'
MultiElementValue.create :multi_element_group_id => fip_type_group.id, :value => 'Contract'
MultiElementValue.create :multi_element_group_id => fip_type_group.id, :value => 'Meeting'
MultiElementValue.create :multi_element_group_id => fip_type_group.id, :value => 'Other'