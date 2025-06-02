DO $$ BEGIN
 CREATE TYPE "public"."area_request_status" AS ENUM('pending', 'approved', 'rejected');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."area_status_enum" AS ENUM('unassigned', 'newly_assigned', 'ongoing_survey', 'revision', 'asked_for_completion', 'asked_for_revision_completion', 'asked_for_withdrawl', 'completed');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."attachment" AS ENUM('audio_monitoring', 'building_image', 'building_selfie', 'family_head_image', 'family_head_selfie', 'business_image', 'business_selfie');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."roles" AS ENUM('enumerator', 'supervisor', 'superadmin');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."building_status_enum" AS ENUM('approved', 'pending', 'requested_for_edit', 'rejected');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."building_token_status_enum" AS ENUM('allocated', 'unallocated');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."business_status_enum" AS ENUM('approved', 'pending', 'requested_for_edit', 'rejected');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."entity_type" AS ENUM('LOCATION', 'WARD', 'SETTLEMENT', 'SQUATTER_AREA', 'AGRICULTURAL_AREA', 'BUSINESS_AREA', 'INDUSTRIAL_AREA', 'ROAD', 'PARKING_FACILITY', 'PUBLIC_TRANSPORT', 'PETROL_PUMP', 'AGRIC_ZONE', 'FARM', 'FISH_FARM', 'GRASSLAND', 'GRAZING_AREA', 'CULTURAL_HERITAGE', 'HISTORICAL_SITE', 'RELIGIOUS_PLACE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."media_type" AS ENUM('IMAGE', 'VIDEO', 'DOCUMENT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."family_status_enum" AS ENUM('approved', 'pending', 'requested_for_edit', 'rejected');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."household_status_enum" AS ENUM('approved', 'pending', 'requested_for_edit', 'rejected');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."age_group" AS ENUM('AGE_BELOW_15', 'AGE_15_19', 'AGE_20_24', 'AGE_25_29', 'AGE_30_34', 'AGE_35_39', 'AGE_40_44', 'AGE_45_49', 'AGE_50_54', 'AGE_55_59', 'AGE_60_64', 'AGE_65_69', 'AGE_70_74', 'AGE_75_AND_ABOVE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."marital_status" AS ENUM('SINGLE', 'MARRIED', 'DIVORCED', 'WIDOWED', 'SEPARATED', 'NOT_STATED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."absentee_age_group" AS ENUM('AGE_0_4', 'AGE_5_9', 'AGE_10_14', 'AGE_15_19', 'AGE_20_24', 'AGE_25_29', 'AGE_30_34', 'AGE_35_39', 'AGE_40_44', 'AGE_45_49', 'AGE_50_AND_ABOVE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."married_age_group" AS ENUM('AGE_BELOW_15', 'AGE_15_19', 'AGE_20_24', 'AGE_25_29', 'AGE_30_34', 'AGE_35_39', 'AGE_40_AND_ABOVE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."language_type" AS ENUM('NEPALI', 'LIMBU', 'RAI', 'HINDI', 'NEWARI', 'SHERPA', 'TAMANG', 'MAITHILI', 'BHOJPURI', 'THARU', 'BAJJIKA', 'MAGAR', 'DOTELI', 'URDU', 'AWADI', 'GURUNG', 'BAITADELI', 'AACHAMI', 'BANTAWA', 'RAJBANSHI', 'CHAMLING', 'BAJHANGI', 'SANTHALI', 'CHEPANG', 'DANUWAR', 'SUNUWAR', 'MAGAHI', 'URAUN', 'KULUNG', 'KHAM', 'RAJASTHANI', 'MAJHI', 'THAMI', 'BHUJEL', 'BANGALA', 'THULUNG', 'YAKKHA', 'DHIMAL', 'TAJPURIYA', 'ANGIKA', 'SAMPANG', 'KHALING', 'YAMBULE', 'KUMAL', 'DARAI', 'BAHING', 'BAJURELI', 'HYOLMO', 'NACHIRING', 'YAMPHU', 'BOTE', 'GHARE', 'DUMI', 'LAPCHA', 'PUMA', 'DUMANGLI', 'DARCHULELI', 'AATHPAHARIYA', 'THAKALI', 'JIREL', 'MEWAHANG', 'SYMBOLIC_LANGUAGE', 'TIBETIAN', 'MECHE', 'CHANTYAL', 'RAJI', 'LOHARUNG', 'CHINTANG', 'GANGAI', 'PAHARI', 'DAILEKHI', 'LHOPA', 'DURA', 'KOCHE', 'CHILING', 'ENGLISH', 'JERO', 'KHAS', 'SANSKRIT', 'DOLPALI', 'HAYU', 'TILUNG', 'KOYI', 'KISAN', 'WALING', 'MUSALMAN', 'HIRAYANWI', 'JUMLI', 'PUNJABI', 'LHOMI', 'BELHARI', 'ORIYA', 'SONAHA', 'SINDHI', 'DADELDHURI', 'BYANSI', 'AASAMI', 'KAHMCHI', 'SAAM', 'MANAGE', 'DHULELI', 'PHANGDUWALI', 'SUREL', 'MALPANDE', 'CHINESE', 'KHARIYA', 'KURMALI', 'BARAM', 'LINGKHIM', 'SADHANI', 'KAGATE', 'JONGKHA', 'BANKARIYA', 'KAIKE', 'GADHWALI', 'FRECHN', 'MIJO', 'KUKI', 'KUSUNDA', 'RUSSIAN', 'SPANISH', 'NAGAMIJ', 'ARABI', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."religion_type" AS ENUM('HINDU', 'BUDDHIST', 'KIRANT', 'CHRISTIAN', 'ISLAM', 'NATURE', 'BON', 'JAIN', 'BAHAI', 'SIKH', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."disability_cause" AS ENUM('CONGENITAL', 'ACCIDENT', 'MALNUTRITION', 'DISEASE', 'CONFLICT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."birth_place" AS ENUM('SAME_MUNICIPALITY', 'SAME_DISTRICT_ANOTHER_MUNICIPALITY', 'ANOTHER_DISTRICT', 'ABROAD');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."migrated_from" AS ENUM('ANOTHER_DISTRICT', 'SAME_DISTRICT_ANOTHER_MUNICIPALITY', 'ABROAD');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."months_sustained" AS ENUM('UPTO_THREE_MONTHS', 'THREE_TO_SIX_MONTHS', 'SIX_TO_NINE_MONTHS', 'TWELVE_MONTHS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."economically_active_age_group" AS ENUM('AGE_0_TO_14', 'AGE_15_TO_59', 'AGE_60_PLUS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_spent" AS ENUM('LESS_THAN_1_HOUR', 'HOURS_1_TO_3', 'HOURS_4_TO_6', 'HOURS_7_TO_9', 'HOURS_10_TO_12', 'MORE_THAN_12_HOURS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."income_source_type" AS ENUM('JOB', 'AGRICULTURE', 'BUSINESS', 'INDUSTRY', 'FOREIGN_EMPLOYMENT', 'LABOUR', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."loan_use_type" AS ENUM('AGRICULTURE', 'BUSINESS', 'HOUSEHOLD_EXPENSES', 'FOREIGN_EMPLOYMENT', 'EDUCATION', 'HEALTH_TREATMENT', 'HOME_CONSTRUCTION', 'VEHICLE_PURCHASE', 'CEREMONY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."skill_type" AS ENUM('TEACHING_RELATED', 'PHOTOGRAPHY_RELATED', 'HANDICRAFT_RELATED', 'MUSIC_DRAMA_RELATED', 'STONEWORK_WOODWORK', 'CARPENTERY_RELATED', 'PLUMBING', 'HUMAN_HEALTH_RELATED', 'ANIMAL_HEALTH_RELATED', 'ELECTRICITY_INSTALLMENT_RELATED', 'HOTEL_RESTAURANT_RELATED', 'AGRICULTURE_RELATED', 'PRINTING_RELATED', 'DRIVING_RELATED', 'MECHANICS_RELATED', 'FURNITURE_RELATED', 'SHOEMAKING_RELATED', 'SEWING_RELATED', 'JWELLERY_MAKING_RELATED', 'BEUATICIAN_RELATED', 'SELF_PROTECTION_RELATED', 'LAND_SURVEY_RELATED', 'COMPUTER_SCIENCE_RELATED', 'ENGINEERING_DESIGN_RELATED', 'RADIO_TELEVISION_ELECTRICAL_REPAIR', 'LITERARY_CREATION_RELATED', 'OTHER', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."remittance_expense_type" AS ENUM('EDUCATION', 'HEALTH', 'HOUSEHOLD_USE', 'FESTIVALS', 'LOAN_PAYMENT', 'LOANED_OTHERS', 'SAVING', 'HOUSE_CONSTRUCTION', 'LAND_OWNERSHIP', 'JEWELRY_PURCHASE', 'GOODS_PURCHASE', 'BUSINESS_INVESTMENT', 'OTHER', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ownership_type_enum" AS ENUM('PRIVATE', 'RENT', 'INSTITUTIONAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."household_base_type" AS ENUM('CONCRETE_PILLAR', 'CEMENT_JOINED', 'MUD_JOINED', 'WOOD_POLE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."outer_wall_type" AS ENUM('CEMENT_JOINED', 'UNBAKED_BRICK', 'MUD_JOINED', 'TIN', 'BAMBOO', 'WOOD', 'PREFAB', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."foreign_employment_country" AS ENUM('AZERBAIJAN', 'NIGER', 'NIGERIA', 'NICARAGUA', 'THE_NETHERLANDS', 'NORWAY', 'NEPAL', 'NEW_ZEALAND', 'PERMISSION', 'PANAMA', 'PERU', 'BOSNIA', 'PHILIPPINES', 'PAKISTAN', 'POLAND', 'PORTUGAL', 'PUERTO_RICO', 'PARAGUAY', 'QATAR', 'INTERPOL', 'ROMANIA', 'BANGLADESH', 'RUSSIA', 'SAUDI_ARABIA', 'CECILS', 'SRIDAN', 'SWEDEN', 'SINGAPORE', 'SIERRA_LEONE', 'SAN_MARINO', 'SENEGAL', 'SOMALIA', 'BELGIUM', 'SYRIA', 'FESTIVAL', 'TOGO', 'THAILAND', 'TAJIKISTAN', 'BITE', 'TUNISIA', 'TONGA', 'EAST_TIMOR', 'TURKEY', 'BULGARIA', 'TAIWAN', 'TANZANIA', 'DUNGLAND', 'UKRAINE', 'UGANDA', 'UNITED_NATIONS', 'UNITED_STATES_OF_AMERICA', 'URUGUAY', 'UZBEKISTAN', 'BAHRAIN', 'VATICAN_CITY', 'VENEZUELA', 'VIETNAM', 'FLOUR', 'WELLS', 'WESTERN_SAMOA', 'YEMEN', 'TOKYO', 'YUGOSLAVIA', 'SOUTH_AFRICA', 'BURUNDI', 'ZAMBIA', 'ZAIRE', 'ZIMBABWE', 'KOSOVO', 'BRUNEI', 'BOLIVIA', 'BRAZIL', 'UNITED_ARAB_EMIRATES', 'BAHAMAS', 'BHUTAN', 'BOTSWANA', 'BELARUS', 'CANADA', 'CAMBODIA', 'CONGO', 'SWITZERLAND', 'CROATIA', 'CHILE', 'AFGHANISTAN', 'CAMEROON', 'CHINA', 'COLOMBIA', 'COSTA_RICA', 'CUBA', 'CYPRUS', 'CZECHOSLOVAKIA', 'GERMANY', 'DUBAI', 'DENMARK', 'ALBANIA', 'DOMINICA', 'ALGERIA', 'ECUADOR', 'EGYPT', 'SPAIN', 'ETHIOPIA', 'FINLAND', 'FIJI', 'FAWNS', 'UNITED_KINGDOM_OF_GREAT_BRITAIN', 'ARMENIA', 'GHANA', 'GAMBIA', 'GUINEA', 'GREECE', 'GUATEMALA', 'HONG_KONG', 'THE_AIR', 'HAITI', 'HUNGARY', 'INDONESIA', 'ANGOLA', 'REPUBLIC_OF_IRELAND', 'ISRAEL', 'INDIA', 'IRAQ', 'IRAN', 'ICELAND', 'ITALY', 'JAMAICA', 'JORDAN', 'JAPAN', 'ARGENTINA', 'KENYA', 'NORTH_KOREA', 'SOUTH_KOREA', 'KATHMANDU', 'KRVET', 'KAZAKHSTAN', 'ARSHATYA', 'LEBANON', 'HERZEGOVINA', 'AUSTRALIA', 'SRI_LANKA', 'LIBERIA', 'LESOTHO', 'LUXEMBOURG', 'LEON', 'LIBYA', 'MOROCCO', 'MONACO', 'MADAGASCAR', 'THE_GARDENER', 'ARUBA', 'MYANMAR', 'MONGOLIA', 'MACAU', 'MALTA', 'MAURITIUS', 'MALDIVES', 'MEXICO', 'MALAYSIA', 'MOZAMBIQUE', 'NAMIBIA');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."remittance_amount_group" AS ENUM('RS_0_TO_49999', 'RS_50000_TO_99999', 'RS_100000_TO_149999', 'RS_150000_TO_199999', 'RS_200000_TO_249999', 'RS_250000_TO_299999', 'RS_300000_TO_349999', 'RS_350000_TO_399999', 'RS_400000_TO_449999', 'RS_450000_TO_499999', 'RS_500000_PLUS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_to_financial_organization_type_enum" AS ENUM('UNDER_15_MIN', 'UNDER_30_MIN', 'UNDER_1_HOUR', '1_HOUR_OR_MORE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."financial_account_type_enum" AS ENUM('BANK', 'FINANCE', 'MICRO_FINANCE', 'COOPERATIVE', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."land_ownership_type" AS ENUM('PRIVATE', 'GUTHI', 'PUBLIC_EILANI', 'VILLAGE_BLOCK', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."irrigation_source_type" AS ENUM('LAKE_OR_RESERVOIR', 'IRRIGATION_CANAL', 'RAINWATER_COLLECTION', 'ELECTRIC_LIFT_IRRIGATION', 'CANAL', 'PUMPING_SET', 'UNDERGROUND_IRRIGATION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."food_crop_type" AS ENUM('PADDY', 'CORN', 'WHEAT', 'MILLET', 'BARLEY', 'PHAPAR', 'JUNELO', 'KAGUNO', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."pulse_type" AS ENUM('LENTIL', 'CHICKPEA', 'PEA', 'PIGEON_PEA', 'BLACK_GRAM', 'SOYABEAN', 'SNAKE_BEAN', 'BEAN', 'HORSE_GRAM', 'OTHER', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."oil_seed_type" AS ENUM('MUSTARD', 'FLAX', 'SUNFLOWER', 'OTHER', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fruit_type_enum" AS ENUM('MANGO', 'JACKFRUIT', 'LITCHI', 'BANANA', 'LEMON', 'ORANGE', 'NIBUWA', 'SWEET_ORANGE', 'SWEET_LEMON', 'JYAMIR', 'POMELO', 'PINEAPPLE', 'PAPAYA', 'AVOCADO', 'KIWI', 'GUAVA', 'PLUM', 'PEACH', 'PEAR', 'POMEGRANATE', 'WALNUT', 'JAPANESE_PERSIMMON', 'HOG_PLUM', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."spice_type_enum" AS ENUM('GARLIC', 'TURMERIC', 'CHILI_PEPPER', 'GINGER', 'CORIANDER', 'SICHUAN_PEPPER', 'BLACK_PEPPER', 'CINNAMOMUM_TAMALA', 'CUMIN', 'FENUGREEK', 'OTHER', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."vegetable_type_enum" AS ENUM('POTATO', 'CAULIFLOWER', 'CABBAGE', 'TOMATO', 'RADISH', 'CARROT', 'TURNIP', 'CAPSICUM', 'OKRA', 'BRINJAL', 'ONION', 'STRING_BEAN', 'RED_KIDNEY_BEAN', 'CUCUMBER', 'PUMPKIN', 'BITTER_GOURD', 'LUFFA', 'SNAKE_GOURD', 'CALABASH', 'BALSAM_APPLE', 'MUSHROOM', 'SQUICE', 'MUSTARD_GREENS', 'GARDEN_CRESS', 'SPINACH', 'COLOCASIA', 'YAM', 'OTHER', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."animal_product_type_enum" AS ENUM('MILK', 'MILK_PRODUCT', 'EGG', 'MEAT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."measurement_unit_enum" AS ENUM('TON', 'KG', 'COUNT', 'LITER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."crop_type_enum" AS ENUM('RICE', 'WHEAT', 'CORN', 'VEGETABLES', 'FRUITS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."vegetable_fruit_type_enum" AS ENUM('TOMATO', 'CAULIFLOWER', 'CABBAGE', 'POTATO', 'MUSTARD', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."business_type_enum" AS ENUM('VEGETABLE_FARMING', 'GOAT_FARMING', 'POULTRY_FARMING', 'FISH_FARMING', 'CATTLE_FARMING', 'ANIMAL_HUSBANDRY', 'LIVESTOCK_POULTRY', 'BEEKEEPING', 'FRUIT_FARMING', 'MUSHROOM_FARMING', 'PIG_FARMING', 'NURSERY', 'DAIRY_FARMING', 'MIXED_FARMING', 'AGRICULTURE', 'ORGANIC_FARMING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cooperative_type_enum" AS ENUM('SAVINGS_CREDIT', 'MULTI_PURPOSE', 'AGRICULTURE', 'DAIRY', 'COMMUNITY', 'WOMENS', 'FARMERS', 'VEGETABLE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."location_type" AS ENUM('VILLAGE', 'SETTLEMENT', 'TOLE', 'WARD', 'SQUATTER_AREA');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."drainage_system" AS ENUM('PROPER', 'PARTIAL', 'NONE', 'BLOCKED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."parking_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'VERY_POOR', 'UNDER_CONSTRUCTION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."parking_facility_type" AS ENUM('BUS_PARK', 'TAXI_PARK', 'TEMPO_PARK', 'AUTO_RICKSHAW_PARK', 'CAR_PARK', 'BIKE_PARK', 'MULTIPURPOSE_PARK', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."frequency" AS ENUM('DAILY', 'WEEKDAYS_ONLY', 'WEEKENDS_ONLY', 'OCCASIONAL', 'SEASONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."public_transport_type" AS ENUM('BUS', 'MINIBUS', 'MICROBUS', 'TEMPO', 'AUTO_RICKSHAW', 'TAXI', 'E_RICKSHAW', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."vehicle_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'VERY_POOR', 'UNDER_MAINTENANCE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."road_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'VERY_POOR', 'UNDER_CONSTRUCTION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."road_type" AS ENUM('HIGHWAY', 'URBAN', 'RURAL', 'GRAVEL', 'EARTHEN', 'AGRICULTURAL', 'ALLEY', 'BRIDGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."petrol_pump_type" AS ENUM('PETROL', 'DIESEL', 'PETROL_DIESEL', 'CNG', 'EV_CHARGING', 'MULTIPURPOSE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fish_farm_ownership_type" AS ENUM('PRIVATE', 'GOVERNMENT', 'COMMUNITY', 'COOPERATIVE', 'PUBLIC_PRIVATE_PARTNERSHIP', 'NGO_MANAGED', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."agric_zone_type" AS ENUM('PULSES', 'OILSEEDS', 'COMMERCIAL_FLOWER', 'SEASONAL_CROPS', 'SUPER_ZONE', 'POCKET_AREA', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."irrigation_system" AS ENUM('CANAL', 'SPRINKLER', 'DRIP', 'GROUNDWATER', 'RAINWATER_HARVESTING', 'SEASONAL_RIVER', 'NONE', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."soil_quality" AS ENUM('EXCELLENT', 'GOOD', 'AVERAGE', 'POOR', 'VERY_POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."grassland_management" AS ENUM('ROTATIONAL_GRAZING', 'CONTINUOUS_GRAZING', 'DEFERRED_GRAZING', 'HAY_PRODUCTION', 'CONSERVATION', 'UNMANAGED', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."grassland_type" AS ENUM('NATURAL_MEADOW', 'IMPROVED_PASTURE', 'RANGELAND', 'SILVOPASTURE', 'WETLAND_GRAZING', 'ALPINE_GRASSLAND', 'COMMON_GRAZING_LAND', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."vegetation_density" AS ENUM('VERY_DENSE', 'DENSE', 'MODERATE', 'SPARSE', 'VERY_SPARSE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."accessibility_level" AS ENUM('EASILY_ACCESSIBLE', 'MODERATELY_ACCESSIBLE', 'DIFFICULT_ACCESS', 'CHALLENGING_ACCESS', 'RESTRICTED_ACCESS', 'ACCESSIBLE_FOR_DISABLED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."grazing_area_type" AS ENUM('OPEN_RANGE', 'ALPINE_MEADOW', 'COMMUNITY_PASTURE', 'FOREST_UNDERSTORY', 'FLOODPLAIN', 'SEASONAL_PASTURE', 'DRY_SEASON_RESERVE', 'ROTATIONAL_PADDOCK', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ground_cover" AS ENUM('PRIMARILY_GRASSES', 'SHRUB_DOMINANT', 'MIXED_VEGETATION', 'FORBS_DOMINANT', 'TREE_SCATTERED', 'DEGRADED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."terrain_type" AS ENUM('FLAT', 'ROLLING', 'HILLY', 'MOUNTAINOUS', 'VALLEY', 'RIVERINE', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."utilization_level" AS ENUM('UNDERUTILIZED', 'OPTIMAL_USE', 'OVERUTILIZED', 'SEVERELY_DEGRADED', 'PROTECTED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."center_type" AS ENUM('COLLECTION_CENTER', 'STORAGE_FACILITY', 'PROCESSING_UNIT', 'MULTIPURPOSE_CENTER', 'MARKET_CENTER', 'COLD_STORAGE', 'WAREHOUSE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."processing_level" AS ENUM('PRIMARY_PROCESSING', 'SECONDARY_PROCESSING', 'TERTIARY_PROCESSING', 'MINIMAL_PROCESSING', 'COMPREHENSIVE_PROCESSING', 'NOT_APPLICABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."storage_type" AS ENUM('AMBIENT', 'COLD_STORAGE', 'CONTROLLED_ATMOSPHERE', 'SILO', 'WAREHOUSE', 'GRANARY', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."farm_type" AS ENUM('CROP_FARM', 'LIVESTOCK_FARM', 'MIXED_FARM', 'POULTRY_FARM', 'DAIRY_FARM', 'AQUACULTURE_FARM', 'HORTICULTURE_FARM', 'APICULTURE_FARM', 'SERICULTURE_FARM', 'ORGANIC_FARM', 'COMMERCIAL_FARM', 'SUBSISTENCE_FARM', 'AGROFORESTRY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."farming_system" AS ENUM('CONVENTIONAL', 'ORGANIC', 'INTEGRATED', 'CONSERVATION', 'HYDROPONIC', 'PERMACULTURE', 'BIODYNAMIC', 'TRADITIONAL', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."irrigation_type" AS ENUM('RAINFED', 'CANAL', 'DRIP', 'SPRINKLER', 'FLOOD', 'GROUNDWATER', 'RAINWATER_HARVESTING', 'NONE', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."land_ownership" AS ENUM('OWNED', 'LEASED', 'COMMUNITY', 'SHARED', 'GOVERNMENT', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."livestock_housing" AS ENUM('OPEN_SHED', 'BARN', 'FREE_STALL', 'TIE_STALL', 'DEEP_LITTER', 'CAGE_SYSTEM', 'FREE_RANGE', 'MOVABLE_PEN', 'ZERO_GRAZING', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."soil_type" AS ENUM('CLAY', 'SANDY', 'LOAM', 'SILT', 'CLAY_LOAM', 'SANDY_LOAM', 'SILTY_CLAY', 'ROCKY', 'PEATY', 'CHALKY', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."culture_system" AS ENUM('EXTENSIVE', 'SEMI_INTENSIVE', 'INTENSIVE', 'SUPER_INTENSIVE', 'POLYCULTURE', 'MONOCULTURE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."feeding_system" AS ENUM('MANUAL', 'AUTOMATIC', 'DEMAND_FEEDER', 'SUPPLEMENTARY', 'NATURAL_FOOD_ONLY', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fish_farm_type" AS ENUM('POND_CULTURE', 'CAGE_CULTURE', 'TANK_CULTURE', 'RACEWAY_CULTURE', 'RECIRCULATING_AQUACULTURE_SYSTEM', 'HATCHERY', 'NURSERY', 'INTEGRATED_FARMING', 'RICE_FISH_CULTURE', 'ORNAMENTAL_FISH_FARM', 'RESEARCH_FACILITY', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fish_water_source_type" AS ENUM('RIVER', 'STREAM', 'SPRING', 'WELL', 'GROUNDWATER', 'RAINWATER', 'CANAL', 'RESERVOIR', 'LAKE', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_management_system" AS ENUM('STATIC', 'FLOW_THROUGH', 'RECIRCULATING', 'AERATED', 'INTEGRATED', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."architectural_style" AS ENUM('TRADITIONAL_NEPALI', 'PAGODA', 'STUPA', 'SHIKHARA', 'MODERN', 'COLONIAL', 'GOTHIC', 'MUGHAL', 'DOME', 'MIXED', 'VERNACULAR', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."construction_material" AS ENUM('STONE', 'BRICK', 'WOOD', 'MUD', 'CONCRETE', 'MARBLE', 'METAL', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."preservation_status" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'DAMAGED', 'UNDER_RENOVATION', 'REBUILT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."religious_place_type" AS ENUM('HINDU_TEMPLE', 'BUDDHIST_TEMPLE', 'MOSQUE', 'CHURCH', 'GURUDWARA', 'SHRINE', 'MONASTERY', 'SYNAGOGUE', 'JAIN_TEMPLE', 'MEDITATION_CENTER', 'PAGODA', 'SACRED_GROVE', 'SACRED_POND', 'SACRED_RIVER', 'SACRED_HILL', 'PRAYER_HALL', 'RELIGIOUS_COMPLEX', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."religious_significance" AS ENUM('LOCAL', 'REGIONAL', 'NATIONAL', 'INTERNATIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cultural_heritage_type" AS ENUM('INTANGIBLE_HERITAGE', 'HISTORICAL_TREE', 'HISTORICAL_WELL', 'HISTORICAL_POND', 'HISTORICAL_STONE', 'ANCIENT_INSCRIPTION', 'SACRED_LANDMARK', 'TRADITIONAL_DANCE', 'TRADITIONAL_MUSIC', 'TRADITIONAL_CRAFT', 'FOLKLORE', 'ORAL_TRADITION', 'RITUAL_PRACTICE', 'CULINARY_TRADITION', 'TRADITIONAL_MEDICINE', 'INDIGENOUS_LANGUAGE', 'TRADITIONAL_GAME', 'TRADITIONAL_FESTIVAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."heritage_conservation_status" AS ENUM('WELL_PRESERVED', 'MAINTAINED', 'VULNERABLE', 'ENDANGERED', 'CRITICALLY_ENDANGERED', 'LOST', 'REVITALIZED', 'DOCUMENTED_ONLY', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."heritage_recognition_type" AS ENUM('UNESCO_INTANGIBLE_HERITAGE', 'NATIONAL_HERITAGE', 'PROVINCIAL_HERITAGE', 'LOCAL_HERITAGE', 'COMMUNITY_RECOGNISED', 'ACADEMIC_RECOGNITION', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."heritage_significance" AS ENUM('HIGHLY_SIGNIFICANT', 'SIGNIFICANT', 'MODERATE', 'LIMITED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."historical_architectural_style" AS ENUM('TRADITIONAL_NEPALI', 'PAGODA', 'NEWAR', 'MALLA', 'SHAH', 'RAI', 'LIMBU', 'MEDIEVAL', 'COLONIAL', 'GOTHIC', 'MUGHAL', 'RANA_PALACE', 'SHIKHARA', 'STUPA', 'MIXED', 'VERNACULAR', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."historical_construction_material" AS ENUM('STONE', 'BRICK', 'WOOD', 'MUD', 'CLAY', 'MARBLE', 'METAL', 'TERRACOTTA', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."historical_period" AS ENUM('ANCIENT', 'MEDIEVAL', 'LICCHAVI', 'MALLA', 'SHAH', 'RANA', 'PRE_UNIFICATION', 'COLONIAL', 'MODERN', 'CONTEMPORARY', 'MULTIPLE_PERIODS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."historical_preservation_status" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'DAMAGED', 'UNDER_RENOVATION', 'PARTIAL_RUINS', 'RUINS', 'ARCHAEOLOGICAL_REMAINS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."historical_significance" AS ENUM('LOCAL', 'REGIONAL', 'NATIONAL', 'INTERNATIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."historical_site_type" AS ENUM('PALACE', 'FORT', 'ANCIENT_SETTLEMENT', 'ARCHAEOLOGICAL_SITE', 'ANCIENT_MONUMENT', 'HERITAGE_BUILDING', 'HISTORIC_HOUSE', 'MEDIEVAL_TOWN', 'ROYAL_RESIDENCE', 'HISTORIC_GARDEN', 'HISTORIC_INFRASTRUCTURE', 'BATTLEFIELD', 'ANCIENT_RUINS', 'HISTORIC_LANDMARK', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."earthquake_safety" AS ENUM('FULLY_COMPLIANT', 'RETROFITTED', 'PARTIALLY_COMPLIANT', 'NON_COMPLIANT', 'UNDER_RETROFITTING', 'NOT_ASSESSED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."facility_status" AS ENUM('EXCELLENT', 'ADEQUATE', 'LIMITED', 'INADEQUATE', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."medium_of_instruction" AS ENUM('NEPALI', 'ENGLISH', 'DUAL_LANGUAGE', 'MULTILINGUAL', 'LOCAL_LANGUAGE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."performance_level" AS ENUM('EXCELLENT', 'GOOD', 'AVERAGE', 'BELOW_AVERAGE', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."school_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."school_level" AS ENUM('PRE_PRIMARY', 'PRIMARY', 'LOWER_SECONDARY', 'BASIC', 'SECONDARY', 'HIGHER_SECONDARY', 'INTEGRATED', 'SPECIAL_NEEDS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."school_type" AS ENUM('COMMUNITY_PUBLIC', 'INSTITUTIONAL_PRIVATE', 'RELIGIOUS', 'GOVERNMENT_AIDED', 'COMMUNITY_AIDED', 'SPECIAL_EDUCATION', 'VOCATIONAL', 'ALTERNATIVE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_affiliation" AS ENUM('TRIBHUVAN_UNIVERSITY', 'KATHMANDU_UNIVERSITY', 'PURBANCHAL_UNIVERSITY', 'POKHARA_UNIVERSITY', 'NEPAL_SANSKRIT_UNIVERSITY', 'FAR_WESTERN_UNIVERSITY', 'MID_WESTERN_UNIVERSITY', 'AGRICULTURE_AND_FORESTRY_UNIVERSITY', 'LUMBINI_BUDDHIST_UNIVERSITY', 'RAJARSHI_JANAK_UNIVERSITY', 'NEPAL_OPEN_UNIVERSITY', 'CTEVT', 'INTERNATIONAL', 'NOT_AFFILIATED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_facility_status" AS ENUM('EXCELLENT', 'ADEQUATE', 'LIMITED', 'INADEQUATE', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_faculty_type" AS ENUM('SCIENCE', 'MANAGEMENT', 'HUMANITIES', 'EDUCATION', 'LAW', 'MEDICINE', 'ENGINEERING', 'FORESTRY', 'AGRICULTURE', 'VETERINARY', 'FINE_ARTS', 'SOCIAL_SCIENCES', 'COMPUTER_SCIENCE', 'NURSING', 'PHARMACY', 'HOSPITALITY_MANAGEMENT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_instruction_medium" AS ENUM('NEPALI', 'ENGLISH', 'DUAL_LANGUAGE', 'MULTILINGUAL', 'LOCAL_LANGUAGE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_level" AS ENUM('INTERMEDIATE', 'BACHELORS', 'MASTERS', 'DOCTORATE', 'TECHNICAL', 'PROFESSIONAL', 'VOCATIONAL', 'MULTIPLE_LEVELS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_performance_level" AS ENUM('EXCELLENT', 'GOOD', 'AVERAGE', 'BELOW_AVERAGE', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."college_type" AS ENUM('COMMUNITY', 'PRIVATE', 'CONSTITUENT', 'PUBLIC', 'AFFILIATED', 'AUTONOMOUS', 'RELIGIOUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."automation_level" AS ENUM('FULLY_AUTOMATED', 'PARTIALLY_AUTOMATED', 'BASIC_AUTOMATION', 'MANUAL_SYSTEM', 'UNDER_AUTOMATION', 'NO_AUTOMATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."collection_size_category" AS ENUM('VERY_SMALL', 'SMALL', 'MEDIUM', 'LARGE', 'VERY_LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."library_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."library_management_type" AS ENUM('GOVERNMENT_MANAGED', 'COMMUNITY_MANAGED', 'NGO_MANAGED', 'PRIVATELY_MANAGED', 'EDUCATIONAL_INSTITUTION_MANAGED', 'COOPERATIVE_MANAGED', 'TRUST_MANAGED', 'MIXED_MANAGEMENT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."library_type" AS ENUM('PUBLIC_LIBRARY', 'COMMUNITY_LIBRARY', 'SCHOOL_LIBRARY', 'COLLEGE_LIBRARY', 'UNIVERSITY_LIBRARY', 'SPECIALIZED_LIBRARY', 'MOBILE_LIBRARY', 'DIGITAL_LIBRARY', 'CHILDREN_LIBRARY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."usage_frequency" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'VERY_LOW', 'SEASONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."child_center_facility_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_IMPROVEMENT', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."child_center_management_type" AS ENUM('GOVERNMENT', 'PRIVATE', 'COMMUNITY', 'NGO', 'INGO', 'RELIGIOUS_ORGANIZATION', 'COOPERATIVE', 'PUBLIC_PRIVATE_PARTNERSHIP', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."child_development_center_type" AS ENUM('MONTESSORI', 'DAYCARE', 'PRESCHOOL', 'ECD_CENTER', 'KINDERGARTEN', 'PLAY_GROUP', 'COMMUNITY_BASED', 'GOVERNMENT_RUN', 'PRIVATE', 'NGO_OPERATED', 'RELIGIOUS_AFFILIATED', 'SPECIAL_NEEDS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."infrastructure_adequacy" AS ENUM('HIGHLY_ADEQUATE', 'ADEQUATE', 'SOMEWHAT_ADEQUATE', 'INADEQUATE', 'HIGHLY_INADEQUATE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."safety_level" AS ENUM('VERY_SAFE', 'SAFE', 'MODERATE', 'SOMEWHAT_UNSAFE', 'UNSAFE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."accreditation_status" AS ENUM('FULLY_ACCREDITED', 'PROVISIONALLY_ACCREDITED', 'IN_PROCESS', 'NOT_ACCREDITED', 'ACCREDITATION_EXPIRED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."campus_status" AS ENUM('CENTRAL', 'CONSTITUENT', 'AFFILIATED', 'BRANCH');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."faculty_qualification_level" AS ENUM('HIGHLY_QUALIFIED', 'WELL_QUALIFIED', 'ADEQUATELY_QUALIFIED', 'NEEDS_IMPROVEMENT', 'INSUFFICIENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."instruction_medium" AS ENUM('NEPALI', 'ENGLISH', 'DUAL_LANGUAGE', 'MULTILINGUAL', 'LOCAL_LANGUAGE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."research_activity_level" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'MINIMAL', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."university_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'EXPANDED_RECENTLY', 'HISTORIC_PRESERVED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."university_facility_status" AS ENUM('EXCELLENT', 'GOOD', 'ADEQUATE', 'LIMITED', 'INADEQUATE', 'UNDER_DEVELOPMENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."university_type" AS ENUM('PUBLIC', 'PRIVATE', 'COMMUNITY', 'AFFILIATED', 'DEEMED', 'AUTONOMOUS', 'INTERNATIONAL', 'BRANCH_CAMPUS', 'SPECIALIZED', 'TECHNICAL', 'RELIGIOUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clc_medium_of_instruction" AS ENUM('NEPALI', 'ENGLISH', 'LOCAL_LANGUAGE', 'BILINGUAL', 'MULTILINGUAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clc_performance_level" AS ENUM('EXCELLENT', 'GOOD', 'AVERAGE', 'BELOW_AVERAGE', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clc_program_type" AS ENUM('ADULT_LITERACY', 'VOCATIONAL_TRAINING', 'LIFE_SKILLS', 'INCOME_GENERATION', 'HEALTH_EDUCATION', 'EARLY_CHILDHOOD', 'REMEDIAL_EDUCATION', 'DIGITAL_LITERACY', 'ENTREPRENEURSHIP', 'COMMUNITY_DEVELOPMENT', 'ENVIRONMENTAL_EDUCATION', 'MULTIPLE_PROGRAMS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clc_type" AS ENUM('GOVERNMENT_RUN', 'COMMUNITY_MANAGED', 'NGO_OPERATED', 'MUNICIPALITY_SUPPORTED', 'PRIVATE_PUBLIC_PARTNERSHIP', 'RELIGIOUS_ORGANIZATION', 'INTERNATIONAL_ORGANIZATION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."digital_infrastructure_level" AS ENUM('ADVANCED', 'MODERATE', 'BASIC', 'MINIMAL', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."municipality_classification" AS ENUM('METROPOLITAN_CITY', 'SUB_METROPOLITAN_CITY', 'MUNICIPALITY', 'RURAL_MUNICIPALITY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_performance" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS_IMPROVEMENT', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ward_location_type" AS ENUM('URBAN', 'SEMI_URBAN', 'RURAL', 'REMOTE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."distribution_system" AS ENUM('GRAVITY_FLOW', 'PUMPED', 'HYBRID', 'TANKER_SUPPLY', 'PUBLIC_TAPS', 'DIRECT_CONNECTION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."financial_health" AS ENUM('EXCELLENT', 'SUSTAINABLE', 'ADEQUATE', 'STRUGGLING', 'POOR', 'DEPENDENT_ON_SUBSIDIES');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_regularity" AS ENUM('CONTINUOUS', 'DAILY', 'ALTERNATE_DAYS', 'WEEKLY', 'IRREGULAR', 'SEASONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."treatment_type" AS ENUM('NONE', 'BASIC_FILTRATION', 'CHLORINATION', 'SEDIMENTATION', 'FULL_TREATMENT_PLANT', 'UV_TREATMENT', 'OZONATION', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_source_type" AS ENUM('SPRING', 'RIVER', 'GROUNDWATER', 'RESERVOIR', 'DEEP_TUBE_WELL', 'SHALLOW_TUBE_WELL', 'RAINWATER_HARVESTING', 'GLACIER_MELT', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_supply_type" AS ENUM('PUBLIC_UTILITY', 'COMMUNITY_MANAGED', 'PRIVATE_OPERATOR', 'NGO_MANAGED', 'MUNICIPAL_DEPARTMENT', 'FEDERAL_PROJECT', 'PROVINCIAL_PROJECT', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."accuracy_level" AS ENUM('VERY_HIGH', 'HIGH', 'STANDARD', 'BASIC', 'LIMITED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."survey_office_type" AS ENUM('SURVEY_DEPARTMENT', 'DISTRICT_SURVEY_OFFICE', 'LAND_SURVEY_BRANCH', 'CADASTRAL_SURVEY_BRANCH', 'GEODETIC_SURVEY_BRANCH', 'TOPOGRAPHICAL_SURVEY_BRANCH', 'BOUNDARY_SURVEY_BRANCH', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."administrative_office_type" AS ENUM('DISTRICT_ADMINISTRATION_OFFICE', 'DISTRICT_COORDINATION_COMMITTEE', 'AREA_ADMINISTRATION_OFFICE', 'REVENUE_OFFICE', 'LAND_REVENUE_OFFICE', 'DISTRICT_COURT', 'TRANSPORTATION_MANAGEMENT_OFFICE', 'DISTRICT_FOREST_OFFICE', 'DISTRICT_AGRICULTURE_OFFICE', 'DISTRICT_EDUCATION_OFFICE', 'DISTRICT_HEALTH_OFFICE', 'DISTRICT_VETERINARY_OFFICE', 'DISTRICT_POSTAL_OFFICE', 'DISTRICT_TREASURY_OFFICE', 'DISTRICT_ELECTION_OFFICE', 'DISTRICT_STATISTICS_OFFICE', 'DISASTER_MANAGEMENT_OFFICE', 'IMMIGRATION_OFFICE', 'POLICE_OFFICE', 'ARMED_POLICE_OFFICE', 'ARMY_OFFICE', 'DISTRICT_ATTORNEY_OFFICE', 'DISTRICT_GOVERNMENT_ATTORNEY_OFFICE', 'DISTRICT_LAND_SURVEY_OFFICE', 'SMALL_COTTAGE_INDUSTRY_OFFICE', 'INLAND_REVENUE_OFFICE', 'IRRIGATION_OFFICE', 'DRINKING_WATER_OFFICE', 'ROAD_DIVISION_OFFICE', 'ELECTRICITY_AUTHORITY_OFFICE', 'TELECOMMUNICATIONS_OFFICE', 'DISTRICT_DEVELOPMENT_COMMITTEE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."jurisdiction_level" AS ENUM('DISTRICT_LEVEL', 'SUB_DISTRICT_LEVEL', 'MUNICIPAL_LEVEL', 'WARD_LEVEL', 'MULTI_DISTRICT_LEVEL', 'PROVINCIAL_LEVEL', 'FEDERAL_LEVEL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_volume" AS ENUM('VERY_HIGH', 'HIGH', 'MEDIUM', 'LOW', 'VERY_LOW', 'VARIABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."workload_capacity" AS ENUM('ABOVE_CAPACITY', 'AT_CAPACITY', 'MODERATE_CAPACITY', 'UNDER_CAPACITY', 'SEVERELY_CONSTRAINED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."emergency_service_level" AS ENUM('COMPREHENSIVE_24_7', 'BASIC_24_7', 'LIMITED_HOURS', 'STABILIZATION_ONLY', 'REFERRAL_ONLY', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."facility_level" AS ENUM('EXCELLENT', 'GOOD', 'ADEQUATE', 'BASIC', 'MINIMAL', 'INADEQUATE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hospital_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hospital_level" AS ENUM('HEALTH_POST', 'PRIMARY_HOSPITAL', 'SECONDARY_HOSPITAL', 'TERTIARY_HOSPITAL', 'SUPER_SPECIALTY', 'DISTRICT_HOSPITAL', 'ZONAL_HOSPITAL', 'REGIONAL_HOSPITAL', 'CENTRAL_HOSPITAL', 'UNIVERSITY_HOSPITAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hospital_type" AS ENUM('GOVERNMENT', 'PRIVATE', 'COMMUNITY', 'TEACHING', 'SPECIALIZED', 'MISSION', 'NGO_OPERATED', 'MILITARY', 'AYURVEDIC', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."phc_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."phc_level" AS ENUM('PRIMARY_HEALTH_CENTER', 'HEALTH_POST', 'SUB_HEALTH_POST', 'URBAN_HEALTH_CENTER', 'COMMUNITY_HEALTH_UNIT', 'BASIC_HEALTH_SERVICE_CENTER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."phc_type" AS ENUM('GOVERNMENT', 'COMMUNITY', 'PRIVATE', 'NGO_OPERATED', 'PUBLIC_PRIVATE_PARTNERSHIP', 'MUNICIPAL', 'PROVINCIAL', 'FEDERAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."phc_water_source" AS ENUM('PIPED_WATER', 'WELL', 'PROTECTED_SPRING', 'RAINWATER_COLLECTION', 'WATER_TANKER', 'BOTTLED_WATER', 'NO_WATER_SOURCE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."power_source" AS ENUM('GRID_CONNECTION', 'SOLAR', 'GENERATOR', 'MIXED', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_availability" AS ENUM('ALWAYS_AVAILABLE', 'REGULAR_HOURS', 'SCHEDULED_DAYS', 'ON_CALL', 'LIMITED_HOURS', 'SEASONAL', 'NOT_CURRENTLY_AVAILABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."staff_availability" AS ENUM('FULL_TIME', 'PART_TIME', 'VISITING', 'ON_CALL', 'NOT_AVAILABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."equipment_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'OUTDATED', 'NON_FUNCTIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."health_post_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."health_post_management" AS ENUM('GOVERNMENT', 'COMMUNITY_MANAGED', 'PRIVATE_PUBLIC_PARTNERSHIP', 'NGO_MANAGED', 'FAITH_BASED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."health_post_type" AS ENUM('PRIMARY_HEALTH_POST', 'SUB_HEALTH_POST', 'COMMUNITY_HEALTH_UNIT', 'URBAN_HEALTH_CENTER', 'HEALTH_POST_WITH_BIRTHING_CENTER', 'AYURVEDIC_HEALTH_POST', 'MOBILE_HEALTH_POST', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_adequacy" AS ENUM('HIGHLY_ADEQUATE', 'ADEQUATE', 'SOMEWHAT_ADEQUATE', 'INADEQUATE', 'SEVERELY_INADEQUATE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_capacity" AS ENUM('HIGH', 'MEDIUM', 'LOW', 'INSUFFICIENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."uhc_level" AS ENUM('PRIMARY_URBAN_HEALTH_CENTER', 'STANDARD_URBAN_HEALTH_CENTER', 'COMPREHENSIVE_URBAN_HEALTH_CENTER', 'SPECIALIZED_URBAN_HEALTH_CENTER', 'SATELLITE_CLINIC', 'OUTREACH_CENTER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."uhc_type" AS ENUM('GOVERNMENT', 'MUNICIPAL', 'COMMUNITY', 'PRIVATE', 'NGO_OPERATED', 'PUBLIC_PRIVATE_PARTNERSHIP', 'PROVINCIAL', 'FEDERAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."basic_health_unit_type" AS ENUM('BASIC_HEALTH_UNIT', 'SATELLITE_CLINIC', 'MOBILE_CLINIC', 'OUTREACH_CENTER', 'PRIMARY_CARE_UNIT', 'COMMUNITY_HEALTH_OUTPOST', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."bhu_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_RECONSTRUCTION', 'UNDER_CONSTRUCTION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."facility_adequacy" AS ENUM('EXCELLENT', 'ADEQUATE', 'LIMITED', 'INADEQUATE', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clinic_accessibility" AS ENUM('HIGHLY_ACCESSIBLE', 'MODERATELY_ACCESSIBLE', 'LIMITED_ACCESSIBILITY', 'POORLY_ACCESSIBLE', 'NOT_ACCESSIBLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clinic_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clinic_ownership" AS ENUM('GOVERNMENT', 'PRIVATE', 'COMMUNITY', 'NGO', 'COOPERATIVE', 'RELIGIOUS', 'PUBLIC_PRIVATE_PARTNERSHIP', 'UNIVERSITY', 'INSURANCE_COMPANY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."clinic_type" AS ENUM('GENERAL_CLINIC', 'DENTAL_CLINIC', 'EYE_CLINIC', 'MATERNAL_CHILD_HEALTH_CLINIC', 'SPECIALIST_CLINIC', 'POLYCLINIC', 'DIAGNOSTIC_CLINIC', 'AYURVEDIC_CLINIC', 'HOMEOPATHIC_CLINIC', 'PHYSIOTHERAPY_CLINIC', 'MENTAL_HEALTH_CLINIC', 'FAMILY_PLANNING_CLINIC', 'VACCINATION_CLINIC', 'MOBILE_CLINIC', 'TELEMEDICINE_CLINIC', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."quality_standard" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS_IMPROVEMENT', 'POOR', 'NOT_ASSESSED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."equipment_status" AS ENUM('EXCELLENT', 'GOOD', 'OPERATIONAL', 'NEEDS_MAINTENANCE', 'NON_OPERATIONAL', 'OUTDATED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."police_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."police_facility_type" AS ENUM('CENTRAL_POLICE_OFFICE', 'PROVINCIAL_POLICE_OFFICE', 'DISTRICT_POLICE_OFFICE', 'AREA_POLICE_OFFICE', 'SECTOR_POLICE_OFFICE', 'POLICE_STATION', 'POLICE_POST', 'POLICE_BEAT', 'TRAFFIC_POLICE_UNIT', 'METROPOLITAN_POLICE', 'BORDER_POLICE_UNIT', 'TOURIST_POLICE_UNIT', 'WOMEN_AND_CHILDREN_SERVICE_CENTER', 'FORENSIC_LABORATORY', 'INVESTIGATIVE_BUREAU', 'TRAINING_ACADEMY', 'SPECIAL_TASK_FORCE', 'CANINE_UNIT', 'JAIL_FACILITY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."police_jurisdiction_type" AS ENUM('FEDERAL', 'PROVINCIAL', 'DISTRICT', 'MUNICIPALITY', 'RURAL_MUNICIPALITY', 'WARD', 'SECTOR', 'SPECIALIZED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."service_efficiency" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS_IMPROVEMENT', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."vehicle_status" AS ENUM('EXCELLENT', 'GOOD', 'OPERATIONAL', 'NEEDS_MAINTENANCE', 'NON_OPERATIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."workload_level" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'VARIABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."apf_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."apf_facility_type" AS ENUM('APF_HEADQUARTERS', 'PROVINCIAL_APF_HEADQUARTERS', 'APF_BRIGADE_HEADQUARTERS', 'APF_BATTALION_HEADQUARTERS', 'APF_COMPANY_BASE', 'APF_BORDER_OUTPOST', 'APF_TRAINING_CENTER', 'APF_SECURITY_BASE', 'APF_DISASTER_MANAGEMENT_CENTER', 'APF_SPECIAL_TASK_FORCE', 'APF_INDUSTRIAL_SECURITY_UNIT', 'APF_RIOT_CONTROL_UNIT', 'APF_MOBILE_UNIT', 'APF_RESERVE_UNIT', 'APF_LOGISTICAL_UNIT', 'APF_AIRPORT_SECURITY_UNIT', 'APF_HIGHWAY_SECURITY_UNIT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."apf_jurisdiction_type" AS ENUM('FEDERAL', 'PROVINCIAL', 'DISTRICT', 'MUNICIPALITY', 'RURAL_MUNICIPALITY', 'BORDER_AREA', 'INDUSTRIAL_COMPLEX', 'CRITICAL_INFRASTRUCTURE', 'SPECIAL_SECURITY_ZONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."apf_service_efficiency" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS_IMPROVEMENT', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."army_building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'HISTORICAL', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."army_facility_type" AS ENUM('ARMY_HEADQUARTERS', 'DIVISION_HEADQUARTERS', 'BRIGADE_HEADQUARTERS', 'BATTALION_HEADQUARTERS', 'COMPANY_BASE', 'TRAINING_CENTER', 'MILITARY_ACADEMY', 'MILITARY_HOSPITAL', 'LOGISTICS_BASE', 'SIGNAL_UNIT', 'ENGINEERING_UNIT', 'AVIATION_UNIT', 'ARTILLERY_UNIT', 'ARMORED_UNIT', 'SPECIAL_FORCES_BASE', 'INFANTRY_BASE', 'MILITARY_POLICE_UNIT', 'RECRUITMENT_CENTER', 'MILITARY_SCHOOL', 'WELFARE_CENTER', 'DISASTER_MANAGEMENT_CENTER', 'RESEARCH_AND_DEVELOPMENT_CENTER', 'AMMUNITION_DEPOT', 'BORDER_OUTPOST', 'CEREMONIAL_UNIT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."army_jurisdiction_type" AS ENUM('NATIONAL', 'PROVINCIAL', 'DIVISIONAL', 'BRIGADE', 'BATTALION', 'COMPANY', 'SPECIALIZED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."operational_readiness" AS ENUM('FULLY_OPERATIONAL', 'HIGH_READINESS', 'STANDARD_READINESS', 'LIMITED_OPERATIONAL', 'TRAINING_STATUS', 'MAINTENANCE_STATUS', 'RESERVE_STATUS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."attraction_crowd_level" AS ENUM('USUALLY_QUIET', 'MODERATELY_BUSY', 'BUSY_ON_WEEKENDS', 'CROWDED', 'OVERCROWDED_SEASONALLY', 'VARIES_BY_SEASON');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."attraction_ownership" AS ENUM('GOVERNMENT_FEDERAL', 'GOVERNMENT_PROVINCIAL', 'GOVERNMENT_LOCAL', 'COMMUNITY_MANAGED', 'PRIVATE', 'PUBLIC_PRIVATE_PARTNERSHIP', 'TRUST_MANAGED', 'RELIGIOUS_ORGANIZATION', 'NGO_MANAGED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."attraction_size" AS ENUM('SMALL', 'MEDIUM', 'LARGE', 'VERY_LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."attraction_status" AS ENUM('OPERATIONAL', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'SEASONAL', 'CLOSED_TEMPORARILY', 'CLOSED_PERMANENTLY', 'PLANNED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."entrance_fee_type" AS ENUM('FREE', 'PAID', 'DONATION_BASED', 'MEMBERSHIP_REQUIRED', 'DIFFERENT_RATES', 'SPECIAL_EVENTS_ONLY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."maintenance_status" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_MAINTENANCE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."tourism_season" AS ENUM('YEAR_ROUND', 'SUMMER', 'WINTER', 'SPRING', 'AUTUMN', 'MONSOON', 'DRY_SEASON', 'FESTIVAL_PERIOD', 'SPECIFIC_MONTHS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."visitor_experience_level" AS ENUM('EXCELLENT', 'GOOD', 'AVERAGE', 'BELOW_AVERAGE', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."park_type" AS ENUM('RECREATIONAL_PARK', 'THEME_PARK', 'ADVENTURE_PARK', 'ECO_PARK', 'WATER_PARK', 'AMUSEMENT_PARK', 'HERITAGE_PARK', 'BOTANICAL_GARDEN', 'ZOO', 'SAFARI_PARK', 'CHILDREN_PARK', 'ENTERTAINMENT_PARK', 'MIXED_USE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."picnic_spot_location_type" AS ENUM('RIVERSIDE', 'FOREST', 'HILLTOP', 'LAKESIDE', 'GARDEN', 'WATERFALL_VICINITY', 'PARK_AREA', 'FARMLAND', 'MOUNTAIN_AREA', 'VALLEY', 'MEADOW', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."children_garden_type" AS ENUM('ADVENTURE_PLAYGROUND', 'EDUCATIONAL_GARDEN', 'SENSORY_GARDEN', 'NATURE_PLAYGROUND', 'THEMED_GARDEN', 'WATER_PLAY_GARDEN', 'INCLUSIVE_PLAYGROUND', 'COMMUNITY_GARDEN', 'SCHOOL_GARDEN', 'THERAPEUTIC_GARDEN', 'MIXED_TYPE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."play_equipment_safety_level" AS ENUM('EXCELLENT', 'GOOD', 'ADEQUATE', 'NEEDS_IMPROVEMENT', 'POOR', 'UNDER_REPAIR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cave_type" AS ENUM('LIMESTONE_CAVE', 'LAVA_TUBE', 'SANDSTONE_CAVE', 'ICE_CAVE', 'ROCK_SHELTER', 'SEA_CAVE', 'SOLUTION_CAVE', 'TECTONIC_CAVE', 'TALUS_CAVE', 'EROSION_CAVE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."difficulty_level" AS ENUM('EASY', 'MODERATE', 'CHALLENGING', 'DIFFICULT', 'EXPERT_ONLY', 'VARIABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."conservation_status" AS ENUM('PROTECTED', 'RAMSAR_SITE', 'CONSERVATION_AREA', 'BUFFER_ZONE', 'COMMUNITY_MANAGED', 'GOVERNMENT_MANAGED', 'UNPROTECTED', 'THREATENED', 'ENDANGERED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."lake_wetland_type" AS ENUM('NATURAL_LAKE', 'ARTIFICIAL_LAKE', 'RESERVOIR', 'POND', 'WETLAND', 'MARSH', 'SWAMP', 'RIVER_OXBOW', 'FLOODPLAIN', 'WATER_STORAGE_AREA', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."tourism_potential" AS ENUM('HIGH', 'MEDIUM', 'LOW', 'UNDEVELOPED', 'OVERDEVELOPED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."wetland_water_source" AS ENUM('RIVER_FED', 'SPRING_FED', 'RAIN_FED', 'GROUNDWATER_FED', 'GLACIER_FED', 'RIVER_DIVERSION', 'CANAL_FED', 'MIXED_SOURCE', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."development_status" AS ENUM('WELL_DEVELOPED', 'DEVELOPED', 'PARTIALLY_DEVELOPED', 'MINIMAL_DEVELOPMENT', 'UNDEVELOPED', 'UNDER_DEVELOPMENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."view_point_accessibility_level" AS ENUM('VERY_EASY', 'EASY', 'MODERATE', 'DIFFICULT', 'VERY_DIFFICULT', 'SEASONAL_ACCESS');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."view_quality" AS ENUM('SPECTACULAR', 'EXCELLENT', 'GOOD', 'AVERAGE', 'LIMITED', 'DEPENDS_ON_WEATHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."viewpoint_tourism_potential" AS ENUM('HIGH', 'MEDIUM', 'LOW', 'UNDEVELOPED', 'OVERDEVELOPED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."viewpoint_type" AS ENUM('MOUNTAIN_VIEWPOINT', 'HILL_VIEWPOINT', 'VALLEY_VIEWPOINT', 'URBAN_VIEWPOINT', 'SUNRISE_VIEWPOINT', 'SUNSET_VIEWPOINT', 'RIVER_VIEWPOINT', 'LAKE_VIEWPOINT', 'FOREST_VIEWPOINT', 'TOWER_VIEWPOINT', 'OBSERVATION_DECK', 'PANORAMIC_VIEWPOINT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."building_construction_material" AS ENUM('CONCRETE', 'BRICK_AND_CEMENT', 'STONE_AND_CEMENT', 'WOOD_AND_CEMENT', 'MUD_AND_STONE', 'MUD_AND_WOOD', 'BAMBOO', 'PREFABRICATED', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."community_building_type" AS ENUM('COMMUNITY_CENTER', 'MULTIPURPOSE_HALL', 'MEETING_FACILITY', 'COMMUNITY_RESOURCE_CENTER', 'COMMUNITY_LEARNING_CENTER', 'COMMUNITY_SERVICE_CENTER', 'INFORMATION_CENTER', 'CRISIS_CENTER', 'COMMUNITY_KITCHEN', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."management_type" AS ENUM('COMMUNITY_MANAGED', 'LOCAL_GOVERNMENT_MANAGED', 'NGO_MANAGED', 'PUBLIC_PRIVATE_PARTNERSHIP', 'COOPERATIVE_MANAGED', 'TRUST_MANAGED', 'USER_COMMITTEE_MANAGED', 'JOINT_MANAGEMENT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."women_group_focus_area" AS ENUM('ECONOMIC_EMPOWERMENT', 'HEALTH_AND_SANITATION', 'EDUCATION', 'RIGHTS_ADVOCACY', 'GENDER_BASED_VIOLENCE', 'SAVINGS_AND_CREDIT', 'SKILL_DEVELOPMENT', 'ENVIRONMENTAL_CONSERVATION', 'HANDICRAFTS_PRODUCTION', 'LEADERSHIP_DEVELOPMENT', 'REPRODUCTIVE_HEALTH', 'COMMUNITY_DEVELOPMENT', 'MULTIPLE_FOCUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."womens_group_building_type" AS ENUM('MOTHERS_GROUP_BUILDING', 'WOMENS_COOPERATIVE', 'WOMENS_CENTER', 'WOMENS_SHELTER', 'WOMEN_EMPOWERMENT_CENTER', 'SKILL_DEVELOPMENT_CENTER', 'WOMENS_SAVING_GROUP', 'WOMEN_ENTERPRISE_CENTER', 'WOMEN_HEALTH_CENTER', 'MULTIPURPOSE_CENTER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."youth_club_building_type" AS ENUM('YOUTH_CLUB', 'SPORTS_CLUB', 'MULTIPURPOSE_YOUTH_CENTER', 'YOUTH_INFORMATION_CENTER', 'YOUTH_TRAINING_CENTER', 'YOUTH_ACTIVITY_CENTER', 'YOUTH_INNOVATION_HUB', 'YOUTH_RESOURCE_CENTER', 'YOUTH_COUNCIL_BUILDING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."youth_club_focus_area" AS ENUM('SPORTS', 'EDUCATION', 'SKILL_DEVELOPMENT', 'LEADERSHIP_DEVELOPMENT', 'COMMUNITY_SERVICE', 'ENTREPRENEURSHIP', 'ARTS_AND_CULTURE', 'ENVIRONMENT', 'TECHNOLOGY', 'CIVIC_ENGAGEMENT', 'HEALTH_AWARENESS', 'DISASTER_MANAGEMENT', 'MULTIPLE_FOCUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ethnic_group_building_type" AS ENUM('ETHNIC_COMMUNITY_CENTER', 'CULTURAL_CENTER', 'HERITAGE_PRESERVATION_CENTER', 'TRADITIONAL_ART_CENTER', 'TRADITIONAL_KNOWLEDGE_CENTER', 'LANGUAGE_LEARNING_CENTER', 'CRAFT_PRODUCTION_CENTER', 'INDIGENOUS_KNOWLEDGE_CENTER', 'MULTIPURPOSE_ETHNIC_CENTER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ethnic_group_focus_area" AS ENUM('CULTURAL_HERITAGE_PRESERVATION', 'LANGUAGE_PRESERVATION', 'TRADITIONAL_ARTS_AND_CRAFTS', 'COMMUNITY_DEVELOPMENT', 'INDIGENOUS_KNOWLEDGE', 'RIGHTS_ADVOCACY', 'TRADITIONAL_MUSIC_AND_DANCE', 'TRADITIONAL_HEALING_PRACTICES', 'INTERGENERATIONAL_KNOWLEDGE_TRANSFER', 'MULTIPLE_FOCUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cbo_building_type" AS ENUM('NGO_OFFICE', 'COOPERATIVE_BUILDING', 'DEVELOPMENT_ORGANIZATION', 'SOCIAL_SERVICE_CENTER', 'MICROFINANCE_INSTITUTION', 'FARMER_GROUP_BUILDING', 'FOREST_USER_GROUP_BUILDING', 'WATER_USER_GROUP_BUILDING', 'COMMUNITY_DISASTER_MANAGEMENT_CENTER', 'CIVIL_SOCIETY_ORGANIZATION', 'MULTIPURPOSE_CBO_BUILDING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cbo_focus_area" AS ENUM('POVERTY_REDUCTION', 'AGRICULTURE', 'EDUCATION', 'HEALTH', 'GENDER_EQUALITY', 'NATURAL_RESOURCE_MANAGEMENT', 'MICROFINANCE', 'DISASTER_MANAGEMENT', 'LIVELIHOOD_IMPROVEMENT', 'INFRASTRUCTURE_DEVELOPMENT', 'CLIMATE_CHANGE_ADAPTATION', 'WATER_AND_SANITATION', 'RIGHTS_ADVOCACY', 'MULTIPLE_FOCUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."assembly_hall_type" AS ENUM('PUBLIC_ASSEMBLY_HALL', 'COMMUNITY_AUDITORIUM', 'CONFERENCE_CENTER', 'PERFORMANCE_HALL', 'TOWN_HALL', 'MULTIPURPOSE_HALL', 'CONVENTION_CENTER', 'EVENT_VENUE', 'WEDDING_HALL', 'CULTURAL_PROGRAM_HALL', 'EXHIBITION_HALL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."event_type" AS ENUM('MEETINGS', 'CONFERENCES', 'WEDDINGS', 'CULTURAL_PERFORMANCES', 'RELIGIOUS_GATHERINGS', 'GOVERNMENT_FUNCTIONS', 'TRAINING_PROGRAMS', 'EXHIBITIONS', 'CONCERTS', 'POLITICAL_GATHERINGS', 'COMMUNITY_GATHERINGS', 'MIXED_USE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hall_size_category" AS ENUM('SMALL', 'MEDIUM', 'LARGE', 'EXTRA_LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."border_connection" AS ENUM('INDIA', 'CHINA', 'BOTH', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."customs_office_status" AS ENUM('FULLY_OPERATIONAL', 'PARTIALLY_OPERATIONAL', 'UNDER_RENOVATION', 'TEMPORARY_CLOSED', 'SEASONAL_OPERATION', 'PLANNED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."customs_office_type" AS ENUM('INTERNATIONAL_BORDER', 'INLAND_CUSTOMS', 'DRY_PORT', 'CUSTOMS_CHECKPOINT', 'SUB_CUSTOMS_OFFICE', 'CUSTOMS_HOUSE', 'TRANSIT_POINT', 'TRADE_POINT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."facility_condition" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS_IMPROVEMENT', 'POOR', 'DILAPIDATED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."modernization_level" AS ENUM('HIGHLY_MODERNIZED', 'MODERATELY_MODERNIZED', 'BASIC_FACILITIES', 'NEEDS_MODERNIZATION', 'UNDER_MODERNIZATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."trade_volume" AS ENUM('VERY_HIGH', 'HIGH', 'MEDIUM', 'LOW', 'VERY_LOW', 'VARIABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cleanliness_level" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'NEEDS_IMPROVEMENT', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."public_toilet_type" AS ENUM('PERMANENT_FACILITY', 'PORTABLE_FACILITY', 'MOBILE_FACILITY', 'URINALS_ONLY', 'FULL_SERVICE', 'PAY_AND_USE', 'FREE_FACILITY', 'ECO_TOILET', 'BIODIGESTER_TOILET', 'DISABILITY_FRIENDLY', 'SMART_TOILET', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."sewage_management_system" AS ENUM('CENTRALIZED_SEWERAGE', 'SEPTIC_TANK', 'BIODIGESTER', 'COMPOSTING_SYSTEM', 'ECOLOGICAL_SANITATION', 'CONVENTIONAL_PIT_LATRINE', 'POUR_FLUSH_TOILET', 'CONNECTION_TO_TREATMENT_PLANT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."toilet_management_type" AS ENUM('GOVERNMENT_MANAGED', 'MUNICIPALITY_MANAGED', 'COMMUNITY_MANAGED', 'PRIVATE_OPERATED', 'PUBLIC_PRIVATE_PARTNERSHIP', 'NGO_MANAGED', 'USER_COMMITTEE_MANAGED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."toilet_usage_frequency" AS ENUM('VERY_HIGH', 'HIGH', 'MEDIUM', 'LOW', 'VERY_LOW', 'SEASONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cultural_significance" AS ENUM('HIGH_HISTORICAL_VALUE', 'COMMUNITY_LANDMARK', 'MODERN_SIGNIFICANCE', 'RELIGIOUS_SIGNIFICANCE', 'TRADITIONAL_GATHERING_PLACE', 'TOURIST_ATTRACTION', 'MINIMAL_SIGNIFICANCE', 'NO_PARTICULAR_SIGNIFICANCE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."resting_place_construction_type" AS ENUM('TRADITIONAL_STONE_PLATFORM', 'CONCRETE_STRUCTURE', 'WOODEN_STRUCTURE', 'STONE_AND_WOOD', 'METAL_STRUCTURE', 'BRICK_AND_CONCRETE', 'BAMBOO_STRUCTURE', 'MIXED_MATERIALS', 'MODERN_PREFABRICATED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."resting_place_management_type" AS ENUM('GOVERNMENT_MANAGED', 'MUNICIPALITY_MANAGED', 'COMMUNITY_MANAGED', 'PRIVATELY_MANAGED', 'USER_COMMITTEE_MANAGED', 'UNMANAGED', 'NGO_MANAGED', 'TEMPLE_TRUST_MANAGED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."resting_place_type" AS ENUM('TRADITIONAL_CHAUTARI', 'MODERN_WAITING_AREA', 'BUS_STOP_SHELTER', 'ROADSIDE_REST_AREA', 'PARK_RESTING_AREA', 'COVERED_PAVILION', 'TOURIST_REST_STOP', 'MARKET_WAITING_AREA', 'TRANSIT_WAITING_AREA', 'MULTIPURPOSE_REST_AREA', 'PEDESTRIAN_REST_AREA', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."resting_place_usage_frequency" AS ENUM('VERY_HIGH', 'HIGH', 'MEDIUM', 'LOW', 'VERY_LOW', 'SEASONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."shade_type" AS ENUM('NATURAL_TREE_SHADE', 'PERMANENT_ROOF', 'SEMI_PERMANENT_CANOPY', 'THATCHED_ROOF', 'METAL_ROOF', 'TILED_ROOF', 'CONCRETE_ROOF', 'FABRIC_SHADE', 'NO_SHADE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_religious_significance" AS ENUM('EXTREMELY_HIGH', 'HIGH', 'MODERATE', 'LOW');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."religious_forest_type" AS ENUM('TEMPLE_FOREST', 'MONASTERY_FOREST', 'SACRED_GROVE', 'CREMATION_SITE', 'CHURCH_FOREST', 'MOSQUE_FOREST', 'PILGRIMAGE_SITE', 'HISTORICAL_RELIGIOUS_SITE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."benefit_sharing_mechanism" AS ENUM('EQUITABLE', 'GROUP_BASED', 'PERFORMANCE_BASED', 'NEEDS_BASED', 'CONTRIBUTION_BASED', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_management_system" AS ENUM('TRADITIONAL', 'SCIENTIFIC', 'PARTICIPATORY', 'ECOSYSTEM_BASED', 'SUSTAINABLE', 'MINIMAL_INTERVENTION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_terrain_type" AS ENUM('PLAIN', 'HILL', 'MOUNTAIN', 'VALLEY', 'SLOPE', 'PLATEAU', 'RIVERBANK', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."leasehold_forest_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'DEGRADED', 'UNDER_RESTORATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."leasehold_forest_type" AS ENUM('POVERTY_ALLEVIATION', 'INDUSTRIAL', 'ECOTOURISM', 'AGROFORESTRY', 'CONSERVATION', 'MIXED_USE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fire_risk_level" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'VERY_LOW');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'DEGRADED', 'SEVERELY_DEGRADED', 'UNDER_RESTORATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."government_forest_type" AS ENUM('NATIONAL_FOREST', 'PROTECTED_FOREST', 'CONSERVATION_AREA', 'BUFFER_ZONE_FOREST', 'RESERVED_FOREST', 'SCIENTIFIC_FOREST', 'PLANTATION_FOREST', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."management_status" AS ENUM('WELL_MANAGED', 'PARTIALLY_MANAGED', 'NEEDS_INTERVENTION', 'UNDER_DEVELOPMENT', 'NEGLECTED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."grazing_pressure" AS ENUM('NONE', 'LIGHT', 'MODERATE', 'HEAVY', 'EXCESSIVE', 'CONTROLLED', 'SEASONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."natural_pasture_type" AS ENUM('ALPINE_PASTURE', 'GRASSLAND_PASTURE', 'MEADOW_PASTURE', 'FOREST_BASED_PASTURE', 'SHRUBLAND_PASTURE', 'WETLAND_PASTURE', 'SEASONAL_PASTURE', 'MIXED_PASTURE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."pasture_management_type" AS ENUM('COMMUNITY_MANAGED', 'GOVERNMENT_MANAGED', 'TRADITIONAL_MANAGED', 'PRIVATELY_MANAGED', 'COOPERATIVE_MANAGED', 'JOINTLY_MANAGED', 'UNMANAGED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."seasonal_availability" AS ENUM('YEAR_ROUND', 'SUMMER_ONLY', 'WINTER_ONLY', 'MONSOON_SEASON', 'DRY_SEASON', 'SEASONAL_ROTATIONAL', 'INTERMITTENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."vegetation_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'DEGRADED', 'UNDER_REHABILITATION', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."management_authority" AS ENUM('DEPARTMENT_OF_NATIONAL_PARKS', 'MINISTRY_OF_FORESTS', 'PROVINCIAL_GOVERNMENT', 'LOCAL_GOVERNMENT', 'CONSERVATION_TRUST', 'JOINT_MANAGEMENT', 'INTERNATIONAL_BODY', 'MILITARY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."protected_area_type" AS ENUM('NATIONAL_PARK', 'WILDLIFE_RESERVE', 'CONSERVATION_AREA', 'STRICT_NATURE_RESERVE', 'PROTECTED_FOREST', 'NATURAL_MONUMENT', 'WATERSHED_PROTECTION_AREA', 'RAMSAR_SITE', 'WORLD_HERITAGE_SITE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."protection_status" AS ENUM('STRICTLY_PROTECTED', 'MEDIUM_PROTECTION', 'LOW_PROTECTION', 'SEASONAL_PROTECTION', 'MIXED_PROTECTION', 'UNDER_REVIEW');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hunting_area_type" AS ENUM('CONTROLLED_HUNTING_AREA', 'TROPHY_HUNTING_SITE', 'GAME_RESERVE', 'HUNTING_CONCESSION', 'MIXED_USE_CONSERVATION_AREA', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hunting_management" AS ENUM('GOVERNMENT_MANAGED', 'COMMUNITY_MANAGED', 'PRIVATE_OPERATOR', 'JOINT_MANAGEMENT', 'NGO_MANAGED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hunting_season" AS ENUM('YEAR_ROUND', 'SEASONAL', 'LIMITED_PERIOD', 'ROTATING', 'QUOTA_BASED', 'CLOSED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."buffer_zone_management" AS ENUM('BUFFER_ZONE_MANAGEMENT_COMMITTEE', 'COMMUNITY_FOREST_USER_GROUP', 'PARK_ADMINISTRATION', 'LOCAL_GOVERNMENT', 'JOINT_MANAGEMENT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."buffer_zone_type" AS ENUM('NATIONAL_PARK_BUFFER_ZONE', 'WILDLIFE_RESERVE_BUFFER_ZONE', 'CONSERVATION_AREA_BUFFER_ZONE', 'PROTECTED_FOREST_BUFFER_ZONE', 'MIXED_USE_BUFFER_ZONE', 'TRANSITION_ZONE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."land_use_type" AS ENUM('SETTLEMENT', 'AGRICULTURE', 'FOREST', 'GRAZING_LAND', 'WETLAND', 'BARREN_LAND', 'MIXED_USE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."flood_risk_level" AS ENUM('MINIMAL', 'LOW', 'MODERATE', 'HIGH', 'EXTREME', 'VARIABLE', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."pollution_level" AS ENUM('NONE', 'LOW', 'MODERATE', 'HIGH', 'SEVERE', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."river_flow_status" AS ENUM('PERENNIAL', 'SEASONAL', 'INTERMITTENT', 'EPHEMERAL', 'REGULATED', 'VARIABLE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."river_type" AS ENUM('MAJOR_RIVER', 'TRIBUTARY', 'SEASONAL_RIVER', 'PERENNIAL_RIVER', 'URBAN_RIVER', 'BOUNDARY_RIVER', 'BRAIDED_RIVER', 'MEANDERING_RIVER', 'MOUNTAIN_RIVER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_body_conservation_status" AS ENUM('PROTECTED', 'CONSERVATION_AREA', 'MANAGED', 'UNPROTECTED', 'THREATENED', 'CRITICAL', 'RESTORED', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_quality_status" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'VERY_POOR', 'POLLUTED', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."stream_type" AS ENUM('PERENNIAL', 'SEASONAL', 'INTERMITTENT', 'EPHEMERAL', 'HEADWATER', 'RAVINE', 'CREEK', 'BROOK', 'MOUNTAIN_STREAM', 'FOREST_STREAM', 'ARTIFICIAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_body_formation" AS ENUM('GLACIAL', 'TECTONIC', 'VOLCANIC', 'FLUVIAL', 'LANDSLIDE', 'HUMAN_MADE', 'ARTIFICIAL_EXCAVATION', 'RAIN_HARVESTING', 'RIVER_DIVERSION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_body_origin" AS ENUM('NATURAL', 'ARTIFICIAL', 'MODIFIED_NATURAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_body_ownership" AS ENUM('PUBLIC', 'GOVERNMENT', 'COMMUNITY', 'PRIVATE', 'RELIGIOUS_INSTITUTION', 'NGO', 'COOPERATIVE', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_body_permanence" AS ENUM('PERMANENT', 'SEASONAL', 'INTERMITTENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_body_type" AS ENUM('NATURAL_LAKE', 'ARTIFICIAL_LAKE', 'RESERVOIR', 'NATURAL_POND', 'ARTIFICIAL_POND', 'FISHERY_POND', 'RETENTION_POND', 'SHALLOW_POND', 'SEASONAL_POOL', 'OXBOW_LAKE', 'CRATER_LAKE', 'GLACIAL_LAKE', 'TECTONIC_LAKE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."canal_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'VERY_POOR', 'DAMAGED', 'UNDER_CONSTRUCTION', 'UNDER_MAINTENANCE', 'ABANDONED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."canal_construction_type" AS ENUM('EARTHEN', 'LINED_CONCRETE', 'LINED_STONE', 'LINED_BRICK', 'LINED_PLASTIC', 'COMPOSITE', 'PIPED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."canal_type" AS ENUM('MAIN_CANAL', 'BRANCH_CANAL', 'SECONDARY_CANAL', 'TERTIARY_CANAL', 'DISTRIBUTION_CANAL', 'FEEDER_CANAL', 'DRAINAGE_CANAL', 'MULTIPURPOSE_CANAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."flow_control_mechanism" AS ENUM('GATES', 'WEIRS', 'VALVES', 'PUMPS', 'SIPHONS', 'MANUAL', 'AUTOMATED', 'NONE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."irrigation_management_type" AS ENUM('GOVERNMENT', 'COMMUNITY', 'WATER_USER_ASSOCIATION', 'PRIVATE', 'COOPERATIVE', 'JOINT_MANAGEMENT', 'PUBLIC_PRIVATE_PARTNERSHIP', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dam_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'CRITICAL', 'UNDER_CONSTRUCTION', 'ABANDONED', 'BREACHED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dam_hazard_classification" AS ENUM('HIGH', 'SIGNIFICANT', 'LOW', 'UNDETERMINED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dam_ownership_type" AS ENUM('FEDERAL_GOVERNMENT', 'PROVINCIAL_GOVERNMENT', 'LOCAL_GOVERNMENT', 'COMMUNITY', 'PRIVATE', 'PUBLIC_PRIVATE', 'UTILITY_COMPANY', 'IRRIGATION_DISTRICT', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dam_purpose" AS ENUM('IRRIGATION', 'HYDROPOWER', 'WATER_SUPPLY', 'FLOOD_CONTROL', 'RECREATION', 'NAVIGATION', 'FISHERY', 'MULTI_PURPOSE', 'GROUNDWATER_RECHARGE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dam_regulatory_status" AS ENUM('REGULATED', 'UNREGULATED', 'EXEMPTED', 'UNDER_REVIEW', 'NON_JURISDICTIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dam_type" AS ENUM('STORAGE', 'DIVERSION', 'DETENTION', 'DEBRIS', 'GRAVITY', 'EMBANKMENT', 'ROCK_FILL', 'CONCRETE', 'ARCH', 'BUTTRESS', 'RUN_OF_RIVER', 'CANAL_HEAD', 'BARRAGE', 'EARTHEN', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."spring_flow_consistency" AS ENUM('PERENNIAL', 'SEASONAL', 'INTERMITTENT', 'EPHEMERAL', 'VARIABLE', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."spring_status" AS ENUM('FLOWING', 'REDUCED_FLOW', 'DRIED_UP', 'CONTAMINATED', 'PROTECTED', 'DEVELOPED', 'THREATENED', 'RESTORED', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."spring_type" AS ENUM('GRAVITY_SPRING', 'ARTESIAN_SPRING', 'HOT_SPRING', 'MINERAL_SPRING', 'THERMAL_SPRING', 'GEYSER', 'SEEP', 'KARST_SPRING', 'CONTACT_SPRING', 'FAULT_SPRING', 'FRACTURE_SPRING', 'DEPRESSION_SPRING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ecosystem_health" AS ENUM('PRISTINE', 'HEALTHY', 'MODERATE', 'DEGRADED', 'SEVERELY_DEGRADED', 'COLLAPSED', 'RECOVERING', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."wetland_seasonality" AS ENUM('PERMANENT', 'SEASONAL', 'INTERMITTENT', 'EPHEMERAL', 'FLUCTUATING', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."wetland_type" AS ENUM('MARSH', 'SWAMP', 'BOG', 'FEN', 'POND', 'FLOODPLAIN', 'MANGROVE', 'ESTUARINE', 'RIVERINE', 'LACUSTRINE', 'PEATLAND', 'ARTIFICIAL_POND', 'CONSTRUCTED_WETLAND', 'RICE_FIELD', 'SEASONAL_WETLAND', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."drinking_water_source_type" AS ENUM('TAP_INSIDE_HOUSE', 'TAP_OUTSIDE_HOUSE', 'TUBEWELL', 'COVERED_WELL', 'OPEN_WELL', 'AQUIFIER_MOOL', 'RIVER', 'JAR', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."source_reliability" AS ENUM('PERENNIAL', 'SEASONAL', 'INTERMITTENT', 'UNRELIABLE', 'DECLINING');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."treatment_method" AS ENUM('CHLORINATION', 'FILTRATION', 'UV_TREATMENT', 'BOILING', 'SEDIMENTATION', 'FLOCCULATION', 'COAGULATION', 'SLOW_SAND_FILTRATION', 'RAPID_SAND_FILTRATION', 'REVERSE_OSMOSIS', 'SOLAR_DISINFECTION', 'OZONATION', 'NO_TREATMENT', 'MULTIPLE_METHODS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_source_ownership" AS ENUM('GOVERNMENT', 'COMMUNITY', 'PRIVATE', 'WATER_USER_GROUP', 'NGO', 'MUNICIPALITY', 'WATER_AUTHORITY', 'MULTIPLE_OWNERSHIP', 'DISPUTED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_source_protection_status" AS ENUM('FULLY_PROTECTED', 'PARTIALLY_PROTECTED', 'MINIMAL_PROTECTION', 'NO_PROTECTION', 'UNDER_DEVELOPMENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."tank_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_REPAIR', 'NEEDS_REPLACEMENT', 'UNDER_CONSTRUCTION', 'NON_FUNCTIONING', 'ABANDONED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."tank_construction_material" AS ENUM('REINFORCED_CONCRETE', 'FERROCEMENT', 'BRICK_AND_CEMENT', 'STONE_MASONRY', 'PLASTIC', 'METAL', 'FIBERGLASS', 'HDPE', 'PVC', 'GALVANIZED_IRON', 'STAINLESS_STEEL', 'INTZE_TYPE', 'MIXED_MATERIAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."tank_ownership" AS ENUM('GOVERNMENT', 'MUNICIPALITY', 'WATER_USER_GROUP', 'COMMUNITY', 'PRIVATE', 'NGO', 'WATER_AUTHORITY', 'MIXED_OWNERSHIP', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_tank_type" AS ENUM('STORAGE_TANK', 'BREAK_PRESSURE_TANK', 'DISTRIBUTION_TANK', 'COLLECTION_TANK', 'SEDIMENTATION_TANK', 'GROUND_LEVEL_RESERVOIR', 'OVERHEAD_TANK', 'UNDERGROUND_RESERVOIR', 'CLEAR_WATER_RESERVOIR', 'FILTERED_WATER_RESERVOIR', 'RAW_WATER_TANK', 'COMMUNITY_TANK', 'HOUSEHOLD_TANK', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."landfill_site_status" AS ENUM('OPERATIONAL', 'PLANNED', 'UNDER_CONSTRUCTION', 'CLOSED', 'POST_CLOSURE_MONITORING', 'FULL', 'ABANDONED', 'TEMPORARY_CLOSED', 'REMEDIATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."landfill_site_type" AS ENUM('SANITARY_LANDFILL', 'CONTROLLED_DUMP', 'ENGINEERED_LANDFILL', 'BIOREACTOR_LANDFILL', 'SECURE_LANDFILL', 'CONSTRUCTION_DEBRIS_LANDFILL', 'TEMPORARY_LANDFILL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."liner_type" AS ENUM('CLAY', 'GEOMEMBRANE', 'COMPOSITE_LINER', 'GCL', 'HDPE', 'NONE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."operation_frequency" AS ENUM('DAILY', 'WEEKDAYS_ONLY', 'SPECIFIC_DAYS', 'SEASONAL', 'ON_DEMAND', 'IRREGULAR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."waste_type" AS ENUM('MUNICIPAL_SOLID_WASTE', 'CONSTRUCTION_DEBRIS', 'INDUSTRIAL_NON_HAZARDOUS', 'HAZARDOUS_WASTE', 'BIOMEDICAL_WASTE', 'MIXED_WASTE', 'INERT_WASTE', 'ORGANIC_WASTE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dumping_site_status" AS ENUM('ACTIVE', 'INACTIVE', 'CLOSED', 'REMEDIATED', 'UNDER_REMEDIATION', 'UNAUTHORIZED', 'MONITORED', 'SEASONAL', 'OCCASIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dumping_site_type" AS ENUM('OPEN_DUMP', 'CONTROLLED_DUMP', 'TEMPORARY_COLLECTION_POINT', 'UNAUTHORIZED_DUMP', 'EMERGENCY_DUMP', 'RIVERSIDE_DUMP', 'ROADSIDE_DUMP', 'QUARRY_DUMP', 'LOW_LYING_AREA_FILLING', 'MIXED_WASTE_DUMP', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."site_management_level" AS ENUM('WELL_MANAGED', 'BASIC_MANAGEMENT', 'MINIMAL_MANAGEMENT', 'UNMANAGED', 'ABANDONED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."wate_mgmt_ownership_type" AS ENUM('MUNICIPAL', 'WARD_LEVEL', 'PRIVATE', 'COMMUNITY', 'UNAUTHORIZED', 'GOVERNMENT', 'MIXED', 'UNIDENTIFIED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."metal_type" AS ENUM('IRON', 'COPPER', 'ZINC', 'LEAD', 'TIN', 'GOLD', 'SILVER', 'ALUMINUM', 'NICKEL', 'COBALT', 'MANGANESE', 'CHROMIUM', 'TITANIUM', 'TUNGSTEN', 'MOLYBDENUM', 'URANIUM', 'THORIUM', 'LITHIUM', 'RARE_EARTH', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."mine_operational_status" AS ENUM('OPERATIONAL', 'EXPLORATION', 'DEVELOPMENT', 'INACTIVE', 'ABANDONED', 'RECLAIMED', 'CLOSED', 'SEASONAL', 'MAINTENANCE', 'PLANNED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ownership_type" AS ENUM('GOVERNMENT', 'PRIVATE', 'PUBLIC_PRIVATE_PARTNERSHIP', 'COOPERATIVE', 'FOREIGN_INVESTMENT', 'JOINT_VENTURE', 'COMMUNITY_OWNED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."mining_method" AS ENUM('OPEN_PIT', 'UNDERGROUND', 'PLACER', 'IN_SITU_LEACHING', 'SOLUTION', 'HYDRAULIC', 'STRIP_MINING', 'MOUNTAIN_TOP_REMOVAL', 'ARTISANAL', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ore_grade" AS ENUM('HIGH_GRADE', 'MEDIUM_GRADE', 'LOW_GRADE', 'VARIABLE', 'UNASSESSED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."safety_record" AS ENUM('EXCELLENT', 'GOOD', 'SATISFACTORY', 'POOR', 'HAZARDOUS', 'UNASSESSED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."extraction_scale" AS ENUM('LARGE_SCALE', 'MEDIUM_SCALE', 'SMALL_SCALE', 'ARTISANAL', 'EXPLORATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."gemstone_quality" AS ENUM('PREMIUM', 'HIGH', 'MEDIUM', 'LOW', 'MIXED', 'UNGRADED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."gemstone_type" AS ENUM('DIAMOND', 'RUBY', 'SAPPHIRE', 'EMERALD', 'AQUAMARINE', 'CRYSTAL', 'WHITE_CRYSTAL', 'AMETHYST', 'JADE', 'TOURMALINE', 'GARNET', 'TOPAZ', 'TURQUOISE', 'OPAL', 'PERIDOT', 'KYANITE', 'QUARTZ', 'BERYL', 'TANZANITE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."material_quality" AS ENUM('PREMIUM', 'HIGH', 'STANDARD', 'LOW', 'MIXED', 'UNGRADED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."material_use" AS ENUM('CONSTRUCTION', 'ROAD_BUILDING', 'CONCRETE_PRODUCTION', 'BRICK_MAKING', 'DECORATIVE', 'LANDSCAPING', 'INDUSTRIAL', 'CEMENT_PRODUCTION', 'RAILWAY_BALLAST', 'FOUNDATION_WORK', 'MULTIPLE_USES', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."quarry_extraction_method" AS ENUM('OPEN_PIT', 'TERRACED', 'STRIP_MINING', 'RIVER_BED_EXTRACTION', 'HILLSIDE_CUTTING', 'BLASTING', 'MECHANICAL_EXCAVATION', 'MANUAL_EXTRACTION', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."quarry_material_type" AS ENUM('CRUSHED_STONE', 'SLATE', 'GRAVEL', 'SAND', 'ORDINARY_STONE', 'LIMESTONE', 'MARBLE', 'GRANITE', 'SANDSTONE', 'CLAY', 'SHALE', 'DOLOMITE', 'LATERITE', 'RIVER_STONE', 'BALLAST', 'PEBBLES', 'BOULDER', 'MIXED_AGGREGATES', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."building_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_MAINTENANCE', 'POOR', 'UNDER_CONSTRUCTION', 'UNDER_RENOVATION', 'TEMPORARY');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."environmental_impact_level" AS ENUM('HIGH', 'MODERATE', 'LOW', 'MINIMAL', 'UNKNOWN', 'MONITORED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_quality" AS ENUM('EXCELLENT', 'GOOD', 'ACCEPTABLE', 'POOR', 'VERY_POOR', 'UNTESTED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."education_level_enum" AS ENUM('none', 'primary', 'secondary', 'higher_secondary', 'bachelor', 'masters', 'phd', 'other');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."gender" AS ENUM('MALE', 'FEMALE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."educational_level" AS ENUM('CHILD_DEVELOPMENT_CENTER', 'NURSERY', 'CLASS_1', 'CLASS_2', 'CLASS_3', 'CLASS_4', 'CLASS_5', 'CLASS_6', 'CLASS_7', 'CLASS_8', 'CLASS_9', 'CLASS_10', 'SLC_LEVEL', 'CLASS_12_LEVEL', 'BACHELOR_LEVEL', 'MASTERS_LEVEL', 'PHD_LEVEL', 'OTHER', 'INFORMAL_EDUCATION', 'EDUCATED', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."educational_level_type" AS ENUM('CHILD_DEVELOPMENT_CENTER', 'NURSERY', 'GRADE_1', 'GRADE_2', 'GRADE_3', 'GRADE_4', 'GRADE_5', 'GRADE_6', 'GRADE_7', 'GRADE_8', 'GRADE_9', 'GRADE_10', 'SLC_LEVEL', 'CLASS_12_LEVEL', 'BACHELOR_LEVEL', 'MASTERS_LEVEL', 'PHD_LEVEL', 'INFORMAL_EDUCATION', 'OTHER', 'EDUCATED', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."school_dropout_cause_type" AS ENUM('BUSINESS', 'PRIVATE_JOB', 'GOVERNMENTAL_JOB', 'STUDY', 'WORK', 'DEPENDENT', 'CONFLICT', 'OTHER', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."major_subject_type" AS ENUM('ENGLISH', 'ECONOMICS', 'ENGINEERING', 'HISTORY', 'HOME_ECONOMICS', 'RURAL_DEVELOPMENT', 'MEDICINE', 'POPULATION_STUDY', 'BIOLOGY', 'STATISTICS', 'NEPALI', 'TOURISM', 'GEOGRAPHY', 'PHYSICS', 'PSYCHOLOGY', 'HUMANITIES', 'CHEMISTRY', 'POLITICAL_SCIENCE', 'FORESTRY_AND_AGRICULTURE', 'BOTANY', 'COMMERCE', 'SCIENCE', 'MANAGEMENT', 'EDUCATION', 'EDUCATIONAL_SCIENCE', 'SANSKRIT', 'ARTS', 'SOCIAL_SCIENCES', 'INFORMATION_TECHNOLOGY', 'HINDI', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."literacy_type" AS ENUM('BOTH_READING_AND_WRITING', 'READING_ONLY', 'ILLITERATE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."immunization_indicator_type" AS ENUM('ROTA2_ONE_YEAR', 'DPT_HEP_B_HIB3_UNDER_ONE', 'DPT_HEP_B_HIB1_UNDER_ONE', 'JE_12_23_MONTHS', 'MR2_12_23_MONTHS', 'FULLY_IMMUNIZED_NIP', 'TCV', 'MR1', 'FIPV1_UNDER_ONE', 'BCG_UNDER_ONE', 'FIPV2_UNDER_ONE', 'OPV1_UNDER_ONE', 'OPV3_UNDER_ONE', 'PCV1_UNDER_ONE', 'PCV3_UNDER_ONE', 'HYGIENE_PROMOTION', 'PLANNED_IMMUNIZATION_SESSIONS', 'TD_COMPLETE_PREGNANT', 'TD2_PREGNANT', 'TD2_PLUS_PREGNANT', 'SERIOUS_AEFI', 'ROTA1_UNDER_ONE', 'PLANNED_CLINICS', 'BCG_WASTAGE', 'DPT_HEP_B_HIB_WASTAGE', 'FIPV_WASTAGE', 'JE_WASTAGE', 'MR_WASTAGE', 'OPV_WASTAGE', 'ROTA_WASTAGE', 'TCV_WASTAGE', 'TD_WASTAGE', 'AES_RATE', 'DPT_HEP_B_HIB_DROPOUT_1_3', 'DPT_HEP_B_HIB1_MR2_DROPOUT', 'MEASLES_RATE', 'MEASLES_RUBELLA_DROPOUT', 'MOTHERS_HYGIENE_PARTICIPANTS', 'PCV_DROPOUT_1_3', 'ASSISTED_DELIVERIES', 'BIRTHS_BY_SBA', 'BIRTHS_BY_SKILLED_PERSONNEL', 'BIRTHS_OTHER', 'HOME_MISOPROSTAL_DELIVERIES', 'DELIVERIES_UNDER_20', 'CAESAREAN_DELIVERIES', 'INSTITUTIONAL_DELIVERIES', 'MOTHERS_TWO_PNC_VISITS', 'NEONATAL_MORTALITY_FACILITY', 'NEONATES_FOUR_CHECKUPS', 'NEONATES_BIRTH_ASPHYXIA', 'NEONATES_CONGENITAL_ANOMALIES', 'NEWBORNS_CHX_APPLIED', 'NEWBORNS_24HR_CHECKUP', 'NEWBORNS_LOW_BIRTH_WEIGHT', 'NORMAL_VAGINAL_DELIVERIES', 'POSTPARTUM_45DAYS_IFA', 'POSTPARTUM_VITAMIN_A', 'POSTPARTUM_CS_INFECTION', 'INDUCED_PREGNANCIES', 'PREGNANT_EIGHT_ANC_VISITS', 'FOUR_ANC_VISITS', 'PREGNANT_ANTHELMINTHICS', 'FIRST_ANC_CHECKUP', 'AT_LEAST_ONE_ANC', 'PRETERM_BIRTHS', 'STILL_BIRTHS', 'OBSTETRIC_COMPLICATION_REFERRALS', 'FIRST_ANC', 'FOUR_PNC_PROTOCOL', 'PNC_24_HOURS', 'CALCIUM_180_TABLETS', 'CONTRACEPTION_AFTER_ABORTION', 'BLOOD_COMPLICATIONS', 'ABORTION_COMPLICATIONS', 'EMERGENCY_OBSTETRIC_NEED', 'MATERNAL_DEATHS', 'ABORTION_COMPLICATIONS_TREATED', 'PPH_TREATED', 'HEMORRHAGE_TREATED', 'APH_TREATED', 'ECLAMPSIA_TREATED', 'ECTOPIC_PREGNANCY_TREATED', 'PREECLAMPSIA_TREATED', 'PUERPERAL_SEPSIS_TREATED', 'OBSTRUCTED_LABOR_TREATED', 'RETAINED_PLACENTA_TREATED', 'RUPTURED_UTERUS_TREATED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."safe_motherhood_indicator_type" AS ENUM('POSTPARTUM_MOTHERS_TWO_PNC_HOME_VISITS', 'PREGNANT_WOMEN_AT_LEAST_ONE_ANC_CHECKUP', 'PREGNANT_WOMEN_RECEIVED_ANTHELMINTHICS', 'POSTPARTUM_WOMEN_REFERRED_OBSTETRIC_COMPLICATIONS', 'NORMAL_VAGINAL_DELIVERIES', 'NEWBORNS_CHX_APPLIED_AFTER_BIRTH', 'POSTPARTUM_MOTHERS_45DAYS_IRON_FOLIC_ACID', 'POSTPARTUM_MOTHERS_VITAMIN_A', 'WOMEN_CONTRACEPTIVES_AFTER_ABORTION', 'WOMEN_180DAYS_IRON_FOLIC_ACID_PREGNANCY', 'PREGNANT_WOMEN_FOUR_ANC_CHECKUPS_PROTOCOL', 'WOMEN_FIRST_ANC_CHECKUP_PROTOCOL', 'WOMEN_180_CALCIUM_TABLETS_PREGNANCY', 'INSTITUTIONAL_DELIVERIES', 'BIRTHS_ATTENDED_SBA_TRAINED_ANMS', 'WOMEN_PNC_WITHIN_24HRS_DELIVERY', 'NEWBORNS_CHECKUP_24HRS_BIRTH', 'WOMEN_FOUR_POSTNATAL_CHECKUPS_PROTOCOL', 'NEONATES_FOUR_CHECKUPS_PNC_PROTOCOL', 'PREGNANT_WOMEN_EIGHT_ANC_VISITS_PROTOCOL', 'PREGNANCIES_TERMINATED_INDUCED_PROCEDURE', 'NEWBORNS_LOW_BIRTH_WEIGHT', 'DELIVERIES_BELOW_20_YEARS_INSTITUTIONAL', 'NEONATES_BIRTH_ASPHYXIA', 'PRETERM_BIRTH', 'STILL_BIRTHS', 'BIRTHS_ATTENDED_NON_SBA_SHP', 'NEONATES_CONGENITAL_ANOMALIES', 'NEONATAL_MORTALITY_HEALTH_FACILITY', 'ASSISTED_VACUUM_FORCEPS_DELIVERIES', 'DELIVERIES_CAESAREAN_SECTION_REPORTED', 'DELIVERY_BY_CAESAREAN_SECTION', 'PREGNANT_WOMEN_HOME_BIRTH_MISOPROSTAL', 'WOMEN_TREATED_HAEMORRHAGE', 'WOMEN_TREATED_ANTEPARTUM_HAEMORRHAGE', 'WOMEN_TREATED_POSTPARTUM_HAEMORRHAGE', 'WOMEN_TREATED_ECTOPIC_PREGNANCY', 'WOMEN_TREATED_RUPTURED_UTERUS', 'WOMEN_TREATED_PREECLAMPSIA', 'WOMEN_TREATED_ECLAMPSIA', 'WOMEN_TREATED_RETAINED_PLACENTA', 'WOMEN_TREATED_PUERPERAL_SEPSIS', 'WOMEN_TREATED_ABORTION_COMPLICATIONS', 'WOMEN_OBSTETRIC_COMPLICATIONS_BLOOD_TRANSFUSION', 'REPORTED_MATERNAL_DEATHS_HEALTH_FACILITY', 'WOMEN_COMPLICATIONS_INDUCED_ABORTION', 'BIRTHS_ATTENDED_SKILLED_HEALTH_PERSONNEL', 'PREGNANT_WOMEN_FIRST_ANC_CHECKUP_PROTOCOL', 'MET_NEED_EMERGENCY_OBSTETRIC_CARE', 'WOMEN_TREATED_PROLONGED_OBSTRUCTED_LABOR', 'POSTPARTUM_MOTHERS_CS_WOUND_INFECTION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."first_child_birth_age_group" AS ENUM('AGE_15_19', 'AGE_20_24', 'AGE_25_29', 'AGE_30_34', 'AGE_35_39', 'AGE_40_44', 'AGE_45_49');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."delivery_place_type" AS ENUM('HOUSE', 'GOVERNMENTAL_HEALTH_INSTITUTION', 'PRIVATE_HEALTH_INSTITUTION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."immunization_fiscal_year" AS ENUM('FY_2079_2080', 'FY_2080_2081', 'FY_2081_2082', 'FY_2082_2083', 'FY_2083_2084', 'FY_2084_2085', 'FY_2085_2086');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."immunization_indicator" AS ENUM('DPT_HEPB_HIB1_COVERAGE', 'OPV1_COVERAGE', 'PCV1_COVERAGE', 'ROTA1_COVERAGE', 'DPT_HEPB_HIB3_COVERAGE', 'OPV3_COVERAGE', 'ROTA2_COVERAGE', 'PLANNED_IMMUNIZATION_SESSIONS_CONDUCTED', 'PLANNED_IMMUNIZATION_CLINICS_CONDUCTED', 'HYGIENE_PROMOTION_SESSION_AMONG_ROUTINE_IMMUNIZATION', 'PCV3_COVERAGE', 'MEASLES_RUBELLA1_COVERAGE', 'MEASLES_RUBELLA2_COVERAGE', 'FULLY_IMMUNIZED_NIP_SCHEDULE', 'BCG_COVERAGE', 'TCV_COVERAGE', 'JE_COVERAGE', 'FIPV1_COVERAGE', 'TD2_TD2PLUS_COMPLETED_PREGNANT_WOMEN', 'VACCINE_WASTAGE_BCG', 'TD2PLUS_PREGNANT_WOMEN', 'FIPV2_COVERAGE', 'TD2_PREGNANT_WOMEN', 'VACCINE_WASTAGE_JE', 'VACCINE_WASTAGE_MR', 'VACCINE_WASTAGE_FIPV', 'VACCINE_WASTAGE_TCV', 'MEASLES_INCIDENCE_RATE', 'VACCINE_WASTAGE_TD', 'VACCINE_WASTAGE_OPV', 'VACCINE_WASTAGE_DPT_HEPB_HIB', 'DPT_HEPB_HIB1_VS_MR2_DROPOUT', 'PCV_DROPOUT', 'VACCINE_WASTAGE_PCV', 'DPT_HEPB_HIB_DROPOUT', 'VACCINE_WASTAGE_ROTA', 'HPV1_COVERAGE', 'HPV2_COVERAGE', 'MEASLES_RUBELLA_DROPOUT', 'SERIOUS_AEFI_PERCENT', 'AES_RATE', 'NEONATAL_TETANUS_RATE', 'HPV_DROPOUT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_to_health_organization_type" AS ENUM('UNDER_15_MIN', 'UNDER_30_MIN', 'UNDER_1_HOUR', '1_HOUR_OR_MORE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."chronic_disease_type" AS ENUM('HEART_RELATED_DISEASE', 'RESPIRATION_RELATED', 'ASTHMA', 'EPILEPSY', 'TUMOR_CANCER', 'DIABETES', 'KIDNEY_RELATED', 'LIVER_RELATED', 'ARTHRITIS_JOINT_PAIN', 'GYNECOLOGICAL_DISEASE', 'OCCUPATIONAL_DISEASE', 'BLOOD_PRESSURE_HIGH_LOW', 'GASTRIC_ULCER_INTESTINE_DISEASE', 'PARKINSON_ALZHEIMER', 'MIGRAINE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."business_volume" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'VERY_LOW');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."showroom_size_category" AS ENUM('SMALL', 'MEDIUM', 'LARGE', 'FLAGSHIP');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."showroom_type" AS ENUM('NEW_VEHICLES', 'USED_VEHICLES', 'MIXED_VEHICLES', 'TWO_WHEELER', 'FOUR_WHEELER', 'COMMERCIAL_VEHICLES', 'HEAVY_EQUIPMENT', 'MULTI_BRAND', 'SINGLE_BRAND', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."branch_service_level" AS ENUM('FULL_SERVICE', 'LIMITED_SERVICE', 'SPECIALIZED_SERVICE', 'SELF_SERVICE', 'BASIC', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."branch_size" AS ENUM('HEAD_OFFICE', 'REGIONAL_OFFICE', 'PROVINCIAL_OFFICE', 'MAIN_BRANCH', 'LARGE_BRANCH', 'MEDIUM_BRANCH', 'SMALL_BRANCH', 'EXTENSION_COUNTER', 'ATM_ONLY', 'AGENCY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."financial_institution_ownership" AS ENUM('GOVERNMENT_OWNED', 'PRIVATE', 'JOINT_VENTURE', 'FOREIGN', 'PUBLIC_PRIVATE_PARTNERSHIP', 'COMMUNITY_OWNED', 'COOPERATIVE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."financial_institution_type" AS ENUM('COMMERCIAL_BANK', 'DEVELOPMENT_BANK', 'FINANCE_COMPANY', 'MICROFINANCE_INSTITUTION', 'PAYMENT_SERVICE_PROVIDER', 'REMITTANCE_COMPANY', 'INSURANCE_COMPANY', 'CAPITAL_MARKET_INSTITUTION', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."haat_bazaar_frequency" AS ENUM('DAILY', 'WEEKLY', 'BIWEEKLY', 'FORTNIGHTLY', 'MONTHLY', 'SEASONAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."haat_bazaar_primary_product" AS ENUM('AGRICULTURAL', 'LIVESTOCK', 'HANDICRAFT', 'TEXTILES', 'GENERAL_MERCHANDISE', 'FOOD', 'MIXED', 'SPECIALIZED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."haat_bazaar_scale" AS ENUM('SMALL', 'MEDIUM', 'LARGE', 'VERY_LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."operating_space" AS ENUM('OPEN_GROUND', 'COVERED_SHED', 'STREET', 'MIXED', 'PURPOSE_BUILT', 'TEMPORARY_STRUCTURES', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hotel_management_type" AS ENUM('INDEPENDENTLY_OWNED_AND_OPERATED', 'CHAIN_OPERATED', 'FRANCHISE', 'MANAGEMENT_CONTRACT', 'LEASED', 'REFERRAL_GROUP', 'JOINT_VENTURE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hotel_size_category" AS ENUM('SMALL', 'MEDIUM', 'LARGE', 'VERY_LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hotel_star_rating" AS ENUM('ONE_STAR', 'TWO_STAR', 'THREE_STAR', 'FOUR_STAR', 'FIVE_STAR', 'UNRATED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."hotel_type" AS ENUM('LUXURY_HOTEL', 'BUSINESS_HOTEL', 'RESORT', 'BOUTIQUE_HOTEL', 'BUDGET_HOTEL', 'MOTEL', 'GUEST_HOUSE', 'HOMESTAY', 'HERITAGE_HOTEL', 'ECO_RESORT', 'APARTMENT_HOTEL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."occupancy_level" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'VERY_LOW');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cooperative_scale" AS ENUM('PRIMARY', 'DISTRICT_LEVEL', 'PROVINCIAL_LEVEL', 'NATIONAL_LEVEL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cooperative_type" AS ENUM('AGRICULTURE', 'SAVINGS_AND_CREDIT', 'WOMENS', 'MULTIPURPOSE', 'EDUCATION', 'HEALTH', 'DAIRY', 'CONSUMER', 'PRODUCTION', 'ENERGY', 'TOURISM', 'TRANSPORTATION', 'COMMUNICATION', 'WORKER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."primary_business_focus" AS ENUM('SAVINGS_MOBILIZATION', 'CREDIT_PROVISION', 'AGRICULTURAL_PRODUCTION', 'AGRICULTURAL_MARKETING', 'CONSUMER_RETAIL', 'HEALTHCARE_SERVICES', 'EDUCATION_SERVICES', 'MANUFACTURING', 'MARKETING', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_center_type" AS ENUM('BUSINESS_COMPLEX', 'SHOPPING_MALL', 'COMMERCIAL_CENTER', 'TRADE_CENTER', 'WHOLESALE_MARKET', 'RETAIL_MARKET', 'MIXED_USE_MARKET', 'TRADITIONAL_MARKET', 'SPECIALIZED_MARKET', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_ownership" AS ENUM('GOVERNMENT_OWNED', 'MUNICIPALITY_OWNED', 'PRIVATE', 'COOPERATIVE', 'PUBLIC_PRIVATE_PARTNERSHIP', 'COMMUNITY_OWNED', 'MIXED_OWNERSHIP', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_scale" AS ENUM('LOCAL', 'WARD_LEVEL', 'MUNICIPAL', 'DISTRICT_LEVEL', 'REGIONAL', 'PROVINCIAL', 'NATIONAL', 'INTERNATIONAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_structure" AS ENUM('FORMAL_BUILDING', 'SEMI_PERMANENT', 'TEMPORARY_STRUCTURES', 'OPEN_AIR', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."food_safety_level" AS ENUM('HIGH', 'MODERATE', 'BASIC', 'MINIMAL', 'POOR', 'NOT_ASSESSED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."infrastructure_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'POOR', 'VERY_POOR', 'UNDER_CONSTRUCTION', 'UNDER_MAINTENANCE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_frequency" AS ENUM('DAILY', 'WEEKLY', 'BIWEEKLY', 'MONTHLY', 'SEASONAL', 'OCCASIONAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_management_type" AS ENUM('MUNICIPAL_MANAGED', 'PRIVATE_MANAGED', 'COMMUNITY_MANAGED', 'COOPERATIVE_MANAGED', 'NGO_MANAGED', 'SELF_MANAGED', 'PUBLIC_PRIVATE_PARTNERSHIP', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."market_type" AS ENUM('WHOLESALE', 'RETAIL', 'MIXED', 'FARMERS_MARKET', 'ORGANIC_MARKET', 'SEASONAL_MARKET', 'PERMANENT_MARKET', 'STREET_MARKET', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."disaster_center_management" AS ENUM('GOVERNMENT_MANAGED', 'LOCAL_GOVERNMENT_MANAGED', 'NGO_MANAGED', 'RED_CROSS_MANAGED', 'COMMUNITY_MANAGED', 'JOINT_MANAGEMENT', 'SECURITY_FORCES_MANAGED', 'PRIVATE_SECTOR_MANAGED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."disaster_center_type" AS ENUM('EMERGENCY_OPERATIONS_CENTER', 'COORDINATION_CENTER', 'EVACUATION_CENTER', 'RELIEF_DISTRIBUTION_CENTER', 'EARLY_WARNING_CENTER', 'MULTIPURPOSE_DISASTER_CENTER', 'FIRE_STATION', 'SEARCH_AND_RESCUE_CENTER', 'HEALTH_EMERGENCY_CENTER', 'TRAINING_AND_AWARENESS_CENTER', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."operational_status" AS ENUM('OPERATIONAL', 'UNDER_CONSTRUCTION', 'PLANNED', 'UNDER_MAINTENANCE', 'DECOMMISSIONED', 'PARTIALLY_OPERATIONAL', 'SEASONAL_OPERATION', 'TESTING_PHASE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fire_incident_severity" AS ENUM('MINOR', 'MODERATE', 'MAJOR', 'CATASTROPHIC');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."fire_incident_type" AS ENUM('RESIDENTIAL_FIRE', 'COMMERCIAL_FIRE', 'INDUSTRIAL_FIRE', 'FOREST_FIRE', 'VEHICLE_FIRE', 'ELECTRICAL_FIRE', 'GAS_LEAKAGE_FIRE', 'KITCHEN_FIRE', 'STORAGE_FACILITY_FIRE', 'PUBLIC_BUILDING_FIRE', 'RELIGIOUS_BUILDING_FIRE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."flood_cause" AS ENUM('HEAVY_RAINFALL', 'RIVERINE_OVERFLOW', 'FLASH_FLOOD', 'GLACIAL_LAKE_OUTBURST', 'DAM_FAILURE', 'POOR_DRAINAGE', 'STORM_SURGE', 'SNOWMELT', 'MULTIPLE_CAUSES', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."flood_frequency" AS ENUM('RARE', 'OCCASIONAL', 'FREQUENT', 'ANNUAL', 'SEASONAL', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."flood_severity" AS ENUM('MINOR', 'MODERATE', 'MAJOR', 'SEVERE', 'CATASTROPHIC');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_fire_cause" AS ENUM('NATURAL_LIGHTNING', 'HUMAN_NEGLIGENCE', 'AGRICULTURE_BURNING', 'INTENTIONAL', 'ELECTRICAL_FAULT', 'FOREST_MANAGEMENT', 'UNCERTAIN', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_fire_severity" AS ENUM('LOW', 'MODERATE', 'HIGH', 'VERY_HIGH', 'EXTREME', 'CATASTROPHIC');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_fire_status" AS ENUM('ACTIVE', 'CONTAINED', 'CONTROLLED', 'EXTINGUISHED', 'MONITORING', 'RECURRENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_type" AS ENUM('CONIFEROUS', 'BROADLEAF', 'MIXED', 'SUBTROPICAL', 'TEMPERATE', 'ALPINE', 'PLANTATION', 'SHRUBLAND', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."landslide_severity" AS ENUM('VERY_LOW', 'LOW', 'MODERATE', 'HIGH', 'VERY_HIGH', 'CATASTROPHIC');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."landslide_status" AS ENUM('ACTIVE', 'DORMANT', 'STABILIZED', 'MITIGATED', 'MONITORED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."landslide_type" AS ENUM('ROTATIONAL', 'TRANSLATIONAL', 'DEBRIS_FLOW', 'ROCKFALL', 'EARTHFLOW', 'MUDFLOW', 'CREEP', 'COMPLEX', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."trigger_mechanism" AS ENUM('RAINFALL', 'EARTHQUAKE', 'SNOWMELT', 'HUMAN_ACTIVITY', 'EROSION', 'VOLCANIC_ACTIVITY', 'MULTIPLE_CAUSES', 'UNKNOWN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."erosion_severity" AS ENUM('MINIMAL', 'MILD', 'MODERATE', 'SEVERE', 'EXTREME', 'CATASTROPHIC');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."erosion_status" AS ENUM('ACTIVE', 'STABILIZED', 'MITIGATED', 'MONITORED', 'WORSENING', 'RECOVERING');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."generation_type" AS ENUM('HYDROPOWER', 'MICRO_HYDROPOWER', 'MINI_HYDROPOWER', 'SOLAR_FARM', 'WIND_FARM', 'THERMAL', 'DIESEL_GENERATOR', 'BIOMASS', 'HYBRID', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."substation_class" AS ENUM('PRIMARY', 'SECONDARY', 'GRID', 'LOCAL', 'INDUSTRIAL', 'RURAL', 'URBAN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."substation_type" AS ENUM('TRANSMISSION', 'DISTRIBUTION', 'SWITCHING', 'STEP_UP', 'STEP_DOWN', 'COLLECTOR', 'GRID_INTERCONNECTION', 'CONSUMER', 'MOBILE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."insulation_type" AS ENUM('OIL_IMMERSED', 'DRY_TYPE', 'SF6_GAS', 'AIR_CORE', 'VACUUM', 'RESIN_IMPREGNATED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."transformer_cooling" AS ENUM('OIL_NATURAL_AIR_NATURAL', 'OIL_NATURAL_AIR_FORCED', 'OIL_FORCED_AIR_FORCED', 'OIL_FORCED_WATER_FORCED', 'DRY_TYPE', 'CAST_RESIN', 'SEALED', 'NON_SEALED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."transformer_type" AS ENUM('DISTRIBUTION', 'POWER', 'AUTO', 'STEP_UP', 'STEP_DOWN', 'ISOLATING', 'INSTRUMENT', 'CURRENT', 'VOLTAGE', 'POLE_MOUNTED', 'PAD_MOUNTED', 'GROUNDING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."biodiversity_level" AS ENUM('VERY_HIGH', 'HIGH', 'MODERATE', 'LOW', 'VERY_LOW');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."ecosystem_type" AS ENUM('TROPICAL', 'SUBTROPICAL', 'TEMPERATE', 'ALPINE', 'GRASSLAND', 'WETLAND', 'RIPARIAN', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_accessibility" AS ENUM('HIGHLY_ACCESSIBLE', 'MODERATELY_ACCESSIBLE', 'DIFFICULT_ACCESS', 'REMOTE', 'VERY_REMOTE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_density" AS ENUM('VERY_DENSE', 'DENSE', 'MODERATE', 'SPARSE', 'VERY_SPARSE', 'OPEN');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."forest_management_status" AS ENUM('WELL_MANAGED', 'MODERATELY_MANAGED', 'POORLY_MANAGED', 'UNMANAGED', 'UNDER_DEVELOPMENT');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."land_tenure" AS ENUM('REGISTERED', 'UNREGISTERED', 'DISPUTED', 'COMMUNAL', 'PUBLIC', 'PRIVATE', 'TRUST', 'LEASED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."topography_type" AS ENUM('FLAT', 'GENTLE_SLOPE', 'MODERATE_SLOPE', 'STEEP', 'VERY_STEEP', 'MOUNTAINOUS', 'MIXED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."air_pollution_level" AS ENUM('LOW', 'MODERATE', 'HIGH', 'VERY_HIGH', 'CRITICAL');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."brick_industry_status" AS ENUM('OPERATIONAL', 'SEASONAL_OPERATION', 'TEMPORARILY_CLOSED', 'PERMANENTLY_CLOSED', 'UNDER_CONSTRUCTION', 'UNDER_MAINTENANCE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."brick_kiln_type" AS ENUM('FIXED_CHIMNEY_BULL_TRENCH_KILN', 'ZIGZAG_KILN', 'VERTICAL_SHAFT_BRICK_KILN', 'HOFFMAN_KILN', 'TUNNEL_KILN', 'CLAMP_KILN', 'MOVING_CHIMNEY_BULL_TRENCH_KILN', 'HYBRID_HOFFMAN_KILN', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."brick_technology_level" AS ENUM('TRADITIONAL', 'SEMI_IMPROVED', 'IMPROVED', 'MODERN', 'ADVANCED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dairy_industry_type" AS ENUM('MILK_COLLECTION_CENTER', 'MILK_CHILLING_CENTER', 'MILK_PROCESSING_PLANT', 'CHEESE_FACTORY', 'BUTTER_FACTORY', 'YOGURT_PRODUCTION', 'ICE_CREAM_FACTORY', 'MILK_POWDER_PLANT', 'CONDENSED_MILK_PLANT', 'MIXED_DAIRY_PRODUCTS', 'COOPERATIVE_DAIRY', 'PRIVATE_DAIRY', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."dairy_operation_scale" AS ENUM('MICRO', 'COTTAGE', 'SMALL', 'MEDIUM', 'LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."milk_source" AS ENUM('COW_MILK', 'BUFFALO_MILK', 'MIXED_MILK', 'GOAT_MILK', 'YAK_MILK', 'IMPORTED_MILK', 'MULTIPLE_SOURCES');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."establishment_status" AS ENUM('OPERATIONAL', 'PARTIALLY_OPERATIONAL', 'UNDER_CONSTRUCTION', 'TEMPORARILY_CLOSED', 'CLOSED', 'PLANNED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."furniture_industry_type" AS ENUM('WOODEN_FURNITURE', 'METAL_FURNITURE', 'PLASTIC_FURNITURE', 'BAMBOO_FURNITURE', 'CANE_FURNITURE', 'UPHOLSTERY_WORKSHOP', 'FURNITURE_PARTS', 'OFFICE_FURNITURE', 'HOME_FURNITURE', 'CUSTOM_FURNITURE', 'MIXED_MATERIALS', 'FURNITURE_FINISHING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."operation_scale" AS ENUM('MICRO', 'COTTAGE', 'SMALL', 'MEDIUM', 'LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."production_volume" AS ENUM('VERY_LOW', 'LOW', 'MODERATE', 'HIGH', 'VERY_HIGH');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."industrial_sector_type" AS ENUM('INDUSTRIAL_ESTATE', 'SPECIAL_ECONOMIC_ZONE', 'EXPORT_PROCESSING_ZONE', 'INDUSTRIAL_CORRIDOR', 'INDUSTRIAL_VILLAGE', 'INDUSTRIAL_PARK', 'TECHNOLOGY_PARK', 'INDUSTRIAL_CLUSTER', 'AGRICULTURAL_INDUSTRIAL_ZONE', 'TOURISM_INDUSTRIAL_ZONE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."mill_operational_status" AS ENUM('FULLY_OPERATIONAL', 'PARTIALLY_OPERATIONAL', 'SEASONAL_OPERATION', 'TEMPORARILY_CLOSED', 'PERMANENTLY_CLOSED', 'UNDER_MAINTENANCE', 'UNDER_RENOVATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."mill_power_source" AS ENUM('ELECTRICITY', 'DIESEL', 'WATER', 'SOLAR', 'HYBRID', 'MANUAL', 'ANIMAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."mill_technology_level" AS ENUM('TRADITIONAL', 'SEMI_IMPROVED', 'IMPROVED', 'MODERN', 'ADVANCED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."mill_type" AS ENUM('RICE_MILL', 'GRINDING_MILL', 'OIL_MILL', 'WATER_MILL', 'FLOUR_MILL', 'SPICE_MILL', 'PULSE_MILL', 'MULTIPURPOSE_MILL', 'SAW_MILL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."textile_industry_type" AS ENUM('SPINNING_MILL', 'WEAVING_MILL', 'KNITTING_UNIT', 'DYING_UNIT', 'PRINTING_UNIT', 'GARMENT_FACTORY', 'HANDLOOM_UNIT', 'CARPET_MANUFACTURING', 'PASHMINA_PRODUCTION', 'WOOLEN_TEXTILE', 'COTTON_TEXTILE', 'SYNTHETIC_TEXTILE', 'TRADITIONAL_TEXTILE', 'MIXED_TEXTILE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."textile_operation_scale" AS ENUM('MICRO', 'COTTAGE', 'SMALL', 'MEDIUM', 'LARGE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."textile_production_volume" AS ENUM('VERY_LOW', 'LOW', 'MODERATE', 'HIGH', 'VERY_HIGH');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."funding_source" AS ENUM('GOVERNMENT_REGULAR', 'GOVERNMENT_PROJECT', 'PRIVATE_SECTOR', 'DONOR_FUNDED', 'INTERNATIONAL_ORGANIZATION', 'SELF_FUNDING', 'MIXED_FUNDING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."research_center_management" AS ENUM('GOVERNMENT', 'UNIVERSITY', 'PRIVATE_SECTOR', 'NON_PROFIT', 'INTERNATIONAL_ORGANIZATION', 'PUBLIC_PRIVATE_PARTNERSHIP', 'COOPERATIVE', 'AUTONOMOUS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."research_center_type" AS ENUM('AGRICULTURAL', 'INDUSTRIAL', 'TECHNOLOGICAL', 'MEDICAL', 'ENVIRONMENTAL', 'SCIENTIFIC', 'ECONOMIC', 'SOCIAL_SCIENCE', 'EDUCATIONAL', 'INNOVATION_HUB', 'MIXED', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."research_facility_condition" AS ENUM('EXCELLENT', 'GOOD', 'FAIR', 'NEEDS_IMPROVEMENT', 'POOR');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."knowledge_transmission" AS ENUM('ACTIVE_TRANSMISSION', 'LIMITED_TRANSMISSION', 'ENDANGERED', 'CRITICAL', 'DISCONTINUED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."traditional_workshop_type" AS ENUM('BLACKSMITH', 'POTTERY', 'WOODWORKING', 'WEAVING', 'METALWORKING', 'STONE_CARVING', 'HANDLOOM', 'BAMBOO_CRAFTS', 'LEATHERWORK', 'JEWELRY_MAKING', 'MASK_MAKING', 'THANGKA_PAINTING', 'CARPET_MAKING', 'PAPER_MAKING', 'MUSICAL_INSTRUMENT_MAKING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."industry_scale" AS ENUM('LARGE', 'MEDIUM', 'SMALL', 'MICRO', 'COTTAGE', 'HOUSEHOLD');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."industry_status" AS ENUM('OPERATIONAL', 'UNDER_CONSTRUCTION', 'TEMPORARILY_CLOSED', 'PERMANENTLY_CLOSED', 'PLANNING_STAGE', 'SEASONAL_OPERATION');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."industry_type" AS ENUM('MANUFACTURING', 'PROCESSING', 'ASSEMBLY', 'EXTRACTION', 'AGRO_BASED', 'FOREST_BASED', 'MINERAL_BASED', 'ENERGY_BASED', 'SERVICE_BASED', 'TOURISM_BASED', 'INFORMATION_TECHNOLOGY', 'CONSTRUCTION_MATERIAL', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."technology_level" AS ENUM('MANUAL', 'SEMI_AUTOMATED', 'AUTOMATED', 'ADVANCED', 'HIGH_TECH');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."cooking_fuel_type" AS ENUM('WOOD', 'LP_GAS', 'KEROSENE', 'ELECTRICITY', 'BIOGAS', 'DUNGCAKE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."electricity_source_type" AS ENUM('ELECTRICITY', 'SOLAR', 'KEROSENE', 'BIOGAS', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."facility_type" AS ENUM('RADIO', 'TELEVISION', 'COMPUTER', 'INTERNET', 'MOBILE_PHONE', 'CAR_JEEP', 'MOTORCYCLE', 'BICYCLE', 'REFRIGERATOR', 'WASHING_MACHINE', 'AIR_CONDITIONER', 'ELECTRICAL_FAN', 'MICROWAVE_OVEN', 'DAILY_NATIONAL_NEWSPAPER_ACCESS', 'NONE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."map_passed_status_type" AS ENUM('PASSED', 'ARCHIVED', 'NEITHER_PASSED_NOR_ARCHIVED');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."floor_type" AS ENUM('CONCRETE', 'MUD', 'WOOD', 'BRICK', 'TILE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."roof_type" AS ENUM('CEMENT', 'TIN', 'TILE', 'STRAW', 'WOOD', 'STONE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."road_status_type" AS ENUM('BLACK_TOPPED', 'GRAVELED', 'DIRT', 'GORETO', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_to_active_road_type" AS ENUM('UNDER_15_MIN', 'UNDER_30_MIN', 'UNDER_1_HOUR', '1_HOUR_OR_MORE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_to_financial_organization_type" AS ENUM('UNDER_15_MIN', 'UNDER_30_MIN', 'UNDER_1_HOUR', '1_HOUR_OR_MORE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_to_market_center_type" AS ENUM('UNDER_15_MIN', 'UNDER_30_MIN', 'UNDER_1_HOUR', '1_HOUR_OR_MORE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."time_to_public_transport_type" AS ENUM('UNDER_15_MIN', 'UNDER_30_MIN', 'UNDER_1_HOUR', '1_HOUR_OR_MORE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."first_marriage_age_group" AS ENUM('AGE_0_14', 'AGE_15_19', 'AGE_20_24', 'AGE_25_29', 'AGE_30_34', 'AGE_35_39', 'AGE_40_44', 'AGE_45_49', 'AGE_50_54', 'AGE_55_59', 'AGE_60_AND_ABOVE');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."gender_type" AS ENUM('MALE', 'FEMALE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."solid_waste_management_type" AS ENUM('HOME_COLLECTION', 'WASTE_COLLECTING_PLACE', 'BURNING', 'DIGGING', 'RIVER', 'ROAD_OR_PUBLIC_PLACE', 'COMPOST_MANURE', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."toilet_type" AS ENUM('FLUSH_WITH_SEPTIC_TANK', 'NORMAL', 'PUBLIC_EILANI', 'NO_TOILET', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 CREATE TYPE "public"."water_purification_type" AS ENUM('BOILING', 'FILTERING', 'CHEMICAL_PIYUSH', 'NO_ANY_FILTERING', 'OTHER');
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_area_requests" (
        "area_id" varchar NOT NULL,
        "user_id" varchar(21) NOT NULL,
        "status" "area_request_status" DEFAULT 'pending',
        "message" varchar(500),
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp,
        CONSTRAINT "acme_area_requests_area_id_user_id_pk" PRIMARY KEY ("area_id", "user_id")
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_area_status_view" (
        "area_id" varchar(36) PRIMARY KEY NOT NULL,
        "code" integer NOT NULL,
        "ward" integer NOT NULL,
        "assigned_to" varchar(21),
        "area_status" "area_status_enum" DEFAULT 'unassigned',
        "completed_by" varchar(21),
        "completed_by_name" varchar(255),
        "assigned_to_name" varchar(255)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_areas" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "code" integer NOT NULL,
        "ward" integer NOT NULL,
        "geometry" geometry (Polygon, 4326),
        "assigned_to" varchar(21),
        "area_status" "area_status_enum" DEFAULT 'unassigned'
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_enumerator_assignments" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "area_id" varchar(36) NOT NULL,
        "assigned_to" varchar(21) NOT NULL,
        "assigned_at" timestamp DEFAULT now() NOT NULL,
        "status" "area_status_enum" DEFAULT 'unassigned'
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_point_requests" (
        "id" text PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "enumerator_id" text NOT NULL,
        "coordinates" geometry (Point, 4326),
        "message" text NOT NULL,
        "status" text DEFAULT 'pending' NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp DEFAULT now() NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_sessions" (
        "id" varchar(255) PRIMARY KEY NOT NULL,
        "user_id" varchar(21) NOT NULL,
        "expires_at" timestamp with time zone NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_staging_to_production" (
        "staging_table" varchar(255) NOT NULL,
        "production_table" varchar(255) NOT NULL,
        "record_id" varchar(255) NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        CONSTRAINT "acme_staging_to_production_staging_table_production_table_record_id_pk" PRIMARY KEY ("staging_table", "production_table", "record_id")
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_odk_survey_attachments" (
        "data_id" varchar(55) NOT NULL,
        "type" "attachment" DEFAULT 'building_image' NOT NULL,
        "name" varchar(255) NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        CONSTRAINT "acme_odk_survey_attachments_data_id_name_pk" PRIMARY KEY ("data_id", "name")
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_odk_survey_data" (
        "id" varchar(55) PRIMARY KEY NOT NULL,
        "form_id" varchar(255) NOT NULL,
        "data" json NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_odk_survey_forms" (
        "id" varchar(255) PRIMARY KEY NOT NULL,
        "name" varchar(255) NOT NULL,
        "url" json,
        "odk_project_id" integer NOT NULL,
        "odk_form_id" varchar(255) NOT NULL,
        "username" json,
        "password" json,
        "attachment_paths" json[],
        "update_interval" integer DEFAULT 7200,
        "last_fetched" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_users" (
        "id" varchar(21) PRIMARY KEY NOT NULL,
        "user_name" varchar(255) NOT NULL,
        "name" varchar(255) NOT NULL,
        "hashed_password" varchar(255),
        "phone_number" varchar(10),
        "email" varchar(255),
        "avatar" varchar(255),
        "ward_number" integer,
        "role" "roles" DEFAULT 'enumerator',
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp,
        "nepali_name" text,
        "nepali_address" text,
        "nepali_phone" text
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_wards" (
        "ward_number" integer PRIMARY KEY NOT NULL,
        "ward_area_code" integer NOT NULL,
        "geometry" geometry (Polygon, 4326)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_building_edit_requests" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "building_id" varchar(48),
        "message" text NOT NULL,
        "requested_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_building_tokens" (
        "token" varchar(48) PRIMARY KEY NOT NULL,
        "area_id" varchar(48),
        "status" "building_token_status_enum" DEFAULT 'unallocated',
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_buildings" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "survey_date" timestamp,
        "enumerator_name" varchar(255),
        "locality" varchar(255),
        "total_families" integer,
        "total_businesses" integer,
        "survey_audio_recording" varchar(255),
        "gps" geometry (Point, 4326),
        "altitude" double precision,
        "gps_accuracy" double precision,
        "building_image" varchar(255),
        "enumerator_selfie" varchar(255),
        "land_ownership" varchar(255),
        "base" varchar(255),
        "outer_wall" varchar(255),
        "roof" varchar(255),
        "floor" varchar(255),
        "map_status" varchar(255),
        "natural_disasters" text[],
        "time_to_market" varchar(255),
        "time_to_active_road" varchar(255),
        "time_to_public_bus" varchar(255),
        "time_to_health_organization" varchar(255),
        "time_to_financial_organization" varchar(255),
        "road_status" varchar(255),
        "status" "building_status_enum" DEFAULT 'pending',
        "tmp_area_code" varchar(255),
        "tmp_ward_number" integer,
        "tmp_enumerator_id" varchar(255),
        "tmp_building_token" varchar(255),
        "area_id" varchar(255),
        "user_id" varchar(21),
        "ward_id" integer,
        "building_token" varchar(255),
        "is_area_invalid" boolean DEFAULT false,
        "is_ward_invalid" boolean DEFAULT false,
        "is_building_token_invalid" boolean DEFAULT false,
        "is_enumerator_invalid" boolean DEFAULT false
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_buildings_with_updated_names" (
        "id" varchar(48),
        "survey_date" timestamp,
        "enumerator_name" varchar(255),
        "main_enumerator_name" varchar(255),
        "locality" varchar(255),
        "total_families" integer,
        "total_businesses" integer,
        "survey_audio_recording" varchar(255),
        "gps" geometry (Point, 4326),
        "altitude" double precision,
        "gps_accuracy" double precision,
        "building_image" varchar(255),
        "enumerator_selfie" varchar(255),
        "land_ownership" varchar(255),
        "base" varchar(255),
        "outer_wall" varchar(255),
        "roof" varchar(255),
        "floor" varchar(255),
        "map_status" varchar(255),
        "natural_disasters" text[],
        "time_to_market" varchar(255),
        "time_to_active_road" varchar(255),
        "time_to_public_bus" varchar(255),
        "time_to_health_organization" varchar(255),
        "time_to_financial_organization" varchar(255),
        "road_status" varchar(255),
        "status" "building_status_enum",
        "tmp_area_code" varchar(255),
        "tmp_ward_number" integer,
        "tmp_enumerator_id" varchar(255),
        "tmp_building_token" varchar(255),
        "area_id" varchar(255),
        "user_id" varchar(21),
        "ward_id" integer,
        "building_token" varchar(255),
        "is_area_invalid" boolean,
        "is_ward_invalid" boolean,
        "is_building_token_invalid" boolean,
        "is_enumerator_invalid" boolean
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_buildings" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "survey_date" timestamp,
        "enumerator_name" varchar(255),
        "enumerator_id" varchar(255),
        "area_code" varchar(255),
        "ward_number" integer,
        "locality" varchar(255),
        "building_token" varchar(255),
        "total_families" integer,
        "total_businesses" integer,
        "survey_audio_recording" varchar(255),
        "gps" geometry (Point, 4326),
        "altitude" numeric,
        "gps_accuracy" numeric,
        "building_image" varchar(255),
        "enumerator_selfie" varchar(255),
        "land_ownership" varchar(255),
        "base" varchar(255),
        "outer_wall" varchar(255),
        "roof" varchar(255),
        "floor" varchar(255),
        "map_status" varchar(255),
        "natural_disasters" text[],
        "time_to_market" varchar(255),
        "time_to_active_road" varchar(255),
        "time_to_public_bus" varchar(255),
        "time_to_health_organization" varchar(255),
        "time_to_financial_organization" varchar(255),
        "road_status" varchar(255)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_business_animal_products" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "ward_no" integer,
        "animal_product" varchar(100),
        "product_name" varchar(255),
        "unit" varchar(100),
        "production_amount" numeric(10, 2),
        "sales_amount" numeric(10, 2),
        "monthly_production" numeric(10, 2),
        "revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_business_animal_products" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "ward_no" integer,
        "animal_product" varchar(100),
        "product_name" varchar(255),
        "unit" varchar(100),
        "production_amount" numeric(10, 2),
        "sales_amount" numeric(10, 2),
        "monthly_production" numeric(10, 2),
        "revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_business_animals" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "ward_no" integer,
        "animal_type" varchar(100),
        "animal_name" varchar(255),
        "total_count" integer,
        "sales_count" integer,
        "production" numeric(10, 2),
        "revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_business_animals" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "ward_no" integer,
        "animal_type" varchar(100),
        "animal_name" varchar(255),
        "total_count" integer,
        "sales_count" integer,
        "production" numeric(10, 2),
        "revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_business_crops" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "ward_no" integer,
        "crop_type" varchar(100),
        "crop_name" varchar(100),
        "crop_area" numeric(10, 2),
        "crop_production" numeric(10, 2),
        "crop_sales" numeric(10, 2),
        "crop_revenue" numeric(10, 2),
        "crop_count" integer
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_business_crops" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "ward_no" integer,
        "crop_type" varchar(100),
        "crop_name" varchar(100),
        "crop_area" numeric(10, 2),
        "crop_production" numeric(10, 2),
        "crop_sales" numeric(10, 2),
        "crop_revenue" numeric(10, 2),
        "crop_count" integer
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_khajura_business" (
        "id" text PRIMARY KEY NOT NULL,
        "ward_no" integer NOT NULL,
        "tenant_id" text,
        "device_id" text NOT NULL,
        "business_location" text[],
        "date_of_interview" timestamp,
        "business_name" text,
        "business_province" text,
        "business_district" text,
        "business_local_level" text,
        "business_locality" text,
        "operator_name" text,
        "operator_phone" text,
        "operator_age" integer,
        "operator_gender" text,
        "operator_educational_level" text,
        "business_nature" text,
        "business_nature_other" text,
        "business_type" text,
        "business_type_other" text,
        "is_business_registered" text,
        "registered_bodies" text[],
        "registered_bodies_other" text[],
        "statutory_status" text,
        "statutory_status_other" text,
        "has_pan_number" text,
        "pan_number" integer,
        "business_ownership_status" text,
        "business_ownership_status_other" text,
        "business_location_ownership" text,
        "business_location_ownership_other" text,
        "hotel_accomodation_type" text,
        "hotel_room_numbers" integer,
        "hotel_bed_numbers" integer,
        "hotel_room_types" text[],
        "agricultural_businesses" text[],
        "business_food_crops" text[],
        "business_pulses" text[],
        "business_oil_seeds" text[],
        "business_vegetables" text[],
        "business_fruits" text[],
        "business_spices" text[],
        "business_cash_crops" text[],
        "business_animals" text[],
        "business_animal_products" text[],
        "business_investment" real,
        "business_profit" real,
        "business_past_year_investment" real,
        "has_business_partners" text,
        "total_partners" integer,
        "nepali_male_partners" integer,
        "nepali_female_partners" integer,
        "has_foreign_partners" text,
        "foreign_male_partners" integer,
        "foreign_female_partners" integer,
        "has_involved_family" text,
        "total_involved_family" integer,
        "male_involved_family" integer,
        "female_involved_family" integer,
        "has_permanent_employees" text,
        "total_permanent_employees" integer,
        "nepali_male_permanent_employees" integer,
        "nepali_female_permanent_employees" integer,
        "has_foreign_permanent_employees" text,
        "foreign_male_permanent_employees" integer,
        "foreign_female_permanent_employees" integer,
        "foreign_permanent_employee_countries" text[],
        "has_temporary_employees" text,
        "total_temporary_employees" integer,
        "nepali_male_temporary_employees" integer,
        "nepali_female_temporary_employees" integer,
        "has_foreign_temporary_employees" text,
        "foreign_male_temporary_employees" integer,
        "foreign_female_temporary_employees" integer,
        "foreign_temporary_employee_countries" text[],
        "geom" geometry (Point, 4326),
        "name" text,
        "status" "business_status_enum" DEFAULT 'pending'
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_khajura_business_edit_requests" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "business_id" varchar(48),
        "message" text NOT NULL,
        "requested_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_acme_khajura_businesses" (
        "id" text PRIMARY KEY NOT NULL,
        "ward_no" integer NOT NULL,
        "tenant_id" text,
        "device_id" text NOT NULL,
        "business_location" text[],
        "date_of_interview" timestamp,
        "business_name" text,
        "business_province" text,
        "business_district" text,
        "business_local_level" text,
        "business_locality" text,
        "operator_name" text,
        "operator_phone" text,
        "operator_age" integer,
        "operator_gender" text,
        "operator_educational_level" text,
        "business_nature" text,
        "business_nature_other" text,
        "business_type" text,
        "business_type_other" text,
        "is_business_registered" text,
        "registered_bodies" text[],
        "registered_bodies_other" text[],
        "statutory_status" text,
        "statutory_status_other" text,
        "has_pan_number" text,
        "pan_number" integer,
        "business_ownership_status" text,
        "business_ownership_status_other" text,
        "business_location_ownership" text,
        "business_location_ownership_other" text,
        "hotel_accomodation_type" text,
        "hotel_room_numbers" integer,
        "hotel_bed_numbers" integer,
        "hotel_room_types" text[],
        "agricultural_businesses" text[],
        "business_food_crops" text[],
        "business_pulses" text[],
        "business_oil_seeds" text[],
        "business_vegetables" text[],
        "business_fruits" text[],
        "business_spices" text[],
        "business_cash_crops" text[],
        "business_animals" text[],
        "business_animal_products" text[],
        "business_investment" real,
        "business_profit" real,
        "business_past_year_investment" real,
        "has_business_partners" text,
        "total_partners" integer,
        "nepali_male_partners" integer,
        "nepali_female_partners" integer,
        "has_foreign_partners" text,
        "foreign_male_partners" integer,
        "foreign_female_partners" integer,
        "has_involved_family" text,
        "total_involved_family" integer,
        "male_involved_family" integer,
        "female_involved_family" integer,
        "has_permanent_employees" text,
        "total_permanent_employees" integer,
        "nepali_male_permanent_employees" integer,
        "nepali_female_permanent_employees" integer,
        "has_foreign_permanent_employees" text,
        "foreign_male_permanent_employees" integer,
        "foreign_female_permanent_employees" integer,
        "foreign_permanent_employee_countries" text[],
        "has_temporary_employees" text,
        "total_temporary_employees" integer,
        "nepali_male_temporary_employees" integer,
        "nepali_female_temporary_employees" integer,
        "has_foreign_temporary_employees" text,
        "foreign_male_temporary_employees" integer,
        "foreign_female_temporary_employees" integer,
        "foreign_temporary_employee_countries" text[],
        "geom" geometry (Point, 4326),
        "name" text
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_entity_media" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "entity_id" varchar(36) NOT NULL,
        "entity_type" "entity_type" NOT NULL,
        "media_id" varchar(36) NOT NULL,
        "is_primary" boolean DEFAULT false,
        "display_order" integer DEFAULT 0,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_media" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "file_name" varchar(255) NOT NULL,
        "file_path" varchar(1024) NOT NULL,
        "file_url" varchar(1024),
        "file_size" integer,
        "mime_type" varchar(255),
        "type" "media_type" NOT NULL,
        "title" text,
        "description" text,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_agricultural_land" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer,
        "land_ownership_type" varchar(100),
        "land_area" numeric(10, 2),
        "is_land_irrigated" varchar(100),
        "irrigated_land_area" numeric(10, 2),
        "irrigation_source" varchar(100)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_agricultural_land" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer,
        "land_ownership_type" varchar(100),
        "land_area" numeric(10, 2),
        "is_land_irrigated" varchar(100),
        "irrigated_land_area" numeric(10, 2),
        "irrigation_source" varchar(100)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_animal_product" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "animal_product_name" varchar(100),
        "animal_product_name_other" varchar(100),
        "animal_product_unit" varchar(100),
        "animal_product_unit_other" varchar(100),
        "animal_product_sales" numeric(10, 2),
        "animal_product_production" numeric(10, 2),
        "animal_product_production_months" integer,
        "animal_product_revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_animal_product" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "animal_product_name" varchar(100),
        "animal_product_name_other" varchar(100),
        "animal_product_unit" varchar(100),
        "animal_product_unit_other" varchar(100),
        "animal_product_sales" numeric(10, 2),
        "animal_product_production" numeric(10, 2),
        "animal_product_production_months" integer,
        "animal_product_revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_animal" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "animal_name" varchar(100),
        "animal_name_other" varchar(100),
        "total_animals" integer,
        "animal_sales" numeric(10, 2),
        "animal_revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_animal" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "animal_name" varchar(100),
        "animal_name_other" varchar(100),
        "total_animals" integer,
        "animal_sales" numeric(10, 2),
        "animal_revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_crop" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "crop_type" varchar(100),
        "crop_name" varchar(100),
        "crop_area" numeric(10, 2),
        "crop_count" integer,
        "crop_production" numeric(10, 2),
        "crop_sales" numeric(10, 2),
        "crop_revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_crop" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48) NOT NULL,
        "ward_no" integer NOT NULL,
        "crop_type" varchar(100),
        "crop_name" varchar(100),
        "crop_area" numeric(10, 2),
        "crop_count" integer,
        "crop_production" numeric(10, 2),
        "crop_sales" numeric(10, 2),
        "crop_revenue" numeric(10, 2)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_death" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "deceased_name" varchar(100),
        "deceased_age" integer,
        "deceased_death_cause" varchar(100),
        "deceased_gender" varchar(100),
        "deceased_fertility_death_condition" varchar(100)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_death" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48) NOT NULL,
        "ward_no" integer NOT NULL,
        "deceased_name" varchar(100),
        "deceased_age" integer,
        "deceased_death_cause" varchar(100),
        "deceased_gender" varchar(100),
        "deceased_fertility_death_condition" varchar(100),
        "deceased_has_death_certificate" varchar(100)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_family" (
        "id" text PRIMARY KEY NOT NULL,
        "enumerator_name" text,
        "enumerator_phone" text,
        "ward_no" integer NOT NULL,
        "area_code" text,
        "house_token_number" text,
        "family_symbol_no" text,
        "locality" text,
        "dev_org" text,
        "location" text,
        "gps" geometry (Point, 4326),
        "altitude" numeric,
        "gps_accuracy" numeric,
        "head_name" text,
        "head_phone" text,
        "total_members" integer,
        "is_sanitized" boolean,
        "survey_audio_recording" varchar(255),
        "family_image" varchar(255),
        "enumerator_selfie" varchar(255),
        "house_ownership" text,
        "house_ownership_other" text,
        "feels_safe" text,
        "water_source" text[],
        "water_source_other" text,
        "water_purification_methods" text[],
        "toilet_type" text,
        "solid_waste" text,
        "solid_waste_other" text,
        "primary_cooking_fuel" text,
        "primary_energy_source" text,
        "primary_energy_source_other" text,
        "facilities" text[],
        "female_properties" text,
        "loaned_organizations" text[],
        "loan_use" text,
        "has_bank" text,
        "has_insurance" text,
        "health_org" text,
        "health_org_other" text,
        "income_sources" text[],
        "municipal_suggestions" text,
        "municipal_suggestions_other" text,
        "has_remittance" boolean,
        "remittance_expenses" text[],
        "tmp_area_code" varchar(255),
        "tmp_ward_number" integer,
        "tmp_enumerator_id" varchar(255),
        "tmp_building_token" varchar(255),
        "area_id" varchar(255),
        "user_id" varchar(21),
        "ward_id" integer,
        "building_token" varchar(255),
        "is_area_invalid" boolean DEFAULT false,
        "is_ward_invalid" boolean DEFAULT false,
        "is_building_token_invalid" boolean DEFAULT false,
        "is_enumerator_invalid" boolean DEFAULT false,
        "status" "family_status_enum" DEFAULT 'pending'
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_family_edit_requests" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "message" text NOT NULL,
        "requested_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_family_with_updated_names" (
        "id" text,
        "enumerator_name" text,
        "main_enumerator_name" text,
        "enumerator_phone" text,
        "ward_no" integer,
        "area_code" text,
        "house_token_number" text,
        "family_symbol_no" text,
        "locality" text,
        "dev_org" text,
        "location" text,
        "gps" geometry (Point, 4326),
        "altitude" numeric,
        "gps_accuracy" numeric,
        "head_name" text,
        "head_phone" text,
        "total_members" integer,
        "is_sanitized" boolean,
        "survey_audio_recording" varchar(255),
        "family_image" varchar(255),
        "enumerator_selfie" varchar(255),
        "house_ownership" text,
        "house_ownership_other" text,
        "feels_safe" text,
        "water_source" text[],
        "water_source_other" text,
        "water_purification_methods" text[],
        "toilet_type" text,
        "solid_waste" text,
        "solid_waste_other" text,
        "primary_cooking_fuel" text,
        "primary_energy_source" text,
        "primary_energy_source_other" text,
        "facilities" text[],
        "female_properties" text,
        "loaned_organizations" text[],
        "loan_use" text,
        "has_bank" text,
        "has_insurance" text,
        "health_org" text,
        "health_org_other" text,
        "income_sources" text[],
        "municipal_suggestions" text,
        "municipal_suggestions_other" text,
        "has_remittance" boolean,
        "remittance_expenses" text[],
        "tmp_area_code" varchar(255),
        "tmp_ward_number" integer,
        "tmp_enumerator_id" varchar(255),
        "tmp_building_token" varchar(255),
        "area_id" varchar(255),
        "user_id" varchar(21),
        "ward_id" integer,
        "building_token" varchar(255),
        "is_area_invalid" boolean,
        "is_ward_invalid" boolean,
        "is_building_token_invalid" boolean,
        "is_enumerator_invalid" boolean,
        "status" "family_status_enum"
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_family" (
        "id" text PRIMARY KEY NOT NULL,
        "enumerator_name" text,
        "enumerator_phone" text,
        "enumerator_id" text,
        "building_token" text,
        "survey_date" text,
        "ward_no" integer NOT NULL,
        "area_code" text,
        "locality" text,
        "dev_org" text,
        "gps" geometry (Point, 4326),
        "altitude" numeric,
        "gps_accuracy" numeric,
        "head_name" text,
        "head_phone" text,
        "total_members" integer,
        "is_sanitized" text,
        "house_ownership" text,
        "house_ownership_other" text,
        "feels_safe" boolean,
        "water_source" text[],
        "water_source_other" text,
        "water_purification_methods" text[],
        "toilet_type" text,
        "solid_waste" text,
        "solid_waste_other" text,
        "primary_cooking_fuel" text,
        "primary_energy_source" text,
        "primary_energy_source_other" text,
        "facilities" text[],
        "female_properties" text,
        "loaned_organizations" text[],
        "loan_use" text[],
        "has_bank" text,
        "has_insurance" text,
        "health_org" text,
        "health_org_other" text,
        "income_sources" text[],
        "municipal_suggestions" text[],
        "municipal_suggestions_other" text,
        "has_remittance" boolean,
        "remittance_expenses" text[]
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "product_individual" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48),
        "ward_no" integer NOT NULL,
        "name" varchar(255) NOT NULL,
        "gender" varchar(100) NOT NULL,
        "age" integer,
        "family_role" varchar(100),
        "citizen_of" varchar(100),
        "citizen_of_other" varchar(255),
        "caste" varchar(100),
        "caste_other" varchar(255),
        "ancestor_language" varchar(100),
        "ancestor_language_other" varchar(255),
        "primary_mother_tongue" varchar(100),
        "primary_mother_tongue_other" varchar(255),
        "religion" varchar(100),
        "religion_other" varchar(255),
        "marital_status" varchar(100),
        "married_age" integer,
        "has_chronic_disease" varchar(100),
        "primary_chronic_disease" varchar(100),
        "is_sanitized" varchar(100),
        "is_disabled" varchar(100),
        "disability_type" varchar(100),
        "disability_type_other" varchar(255),
        "disability_cause" varchar(100),
        "has_birth_certificate" varchar(100),
        "gave_live_birth" varchar(100),
        "alive_sons" integer,
        "alive_daughters" integer,
        "total_born_children" integer,
        "has_dead_children" varchar(100),
        "dead_sons" integer,
        "dead_daughters" integer,
        "total_dead_children" integer,
        "gave_recent_live_birth" varchar(100),
        "recent_born_sons" integer,
        "recent_born_daughters" integer,
        "total_recent_children" integer,
        "recent_delivery_location" varchar(100),
        "prenatal_checkups" integer,
        "first_delivery_age" integer,
        "is_present" varchar(100),
        "absentee_age" integer,
        "absentee_educational_level" varchar(100),
        "absence_reason" varchar(100),
        "absentee_location" varchar(255),
        "absentee_province" varchar(100),
        "absentee_district" varchar(100),
        "absentee_country" varchar(100),
        "absentee_has_sent_cash" varchar(100),
        "absentee_cash_amount" integer,
        "literacy_status" varchar(100),
        "school_presence_status" varchar(100),
        "educational_level" varchar(100),
        "primary_subject" varchar(100),
        "goes_school" varchar(100),
        "school_barrier" varchar(100),
        "has_training" varchar(100),
        "training" varchar(100),
        "months_trained" integer,
        "primary_skill" varchar(100),
        "has_internet_access" varchar(100),
        "financial_work_duration" varchar(100),
        "primary_occupation" varchar(100),
        "work_barrier" varchar(100),
        "work_availability" varchar(100)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_product_individual" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "family_id" varchar(48) NOT NULL,
        "ward_no" integer NOT NULL,
        "name" varchar(255) NOT NULL,
        "gender" varchar(100) NOT NULL,
        "age" integer,
        "citizen_of" varchar(100),
        "citizen_of_other" varchar(255),
        "caste" varchar(100),
        "caste_other" varchar(255),
        "ancestor_language" varchar(100),
        "ancestor_language_other" varchar(255),
        "primary_mother_tongue" varchar(100),
        "primary_mother_tongue_other" varchar(255),
        "religion" varchar(100),
        "religion_other" varchar(255),
        "marital_status" varchar(100),
        "married_age" integer,
        "has_chronic_disease" varchar(100),
        "primary_chronic_disease" varchar(100),
        "is_sanitized" varchar(100),
        "is_disabled" varchar(100),
        "disability_type" varchar(100),
        "disability_type_other" varchar(255),
        "disability_cause" varchar(100),
        "gave_live_birth" varchar(100),
        "alive_sons" integer,
        "alive_daughters" integer,
        "total_born_children" integer,
        "has_dead_children" varchar(100),
        "dead_sons" integer,
        "dead_daughters" integer,
        "total_dead_children" integer,
        "gave_recent_live_birth" varchar(100),
        "recent_born_sons" integer,
        "recent_born_daughters" integer,
        "total_recent_children" integer,
        "recent_delivery_location" varchar(100),
        "prenatal_checkups" integer,
        "first_delivery_age" integer,
        "is_present" varchar(100),
        "absentee_age" integer,
        "absentee_educational_level" varchar(100),
        "absence_reason" varchar(100),
        "absentee_location" varchar(255),
        "absentee_province" varchar(100),
        "absentee_district" varchar(100),
        "absentee_country" varchar(100),
        "absentee_has_sent_cash" varchar(100),
        "absentee_cash_amount" integer,
        "literacy_status" varchar(100),
        "school_presence_status" varchar(100),
        "educational_level" varchar(100),
        "primary_subject" varchar(100),
        "goes_school" varchar(100),
        "school_barrier" varchar(100),
        "has_training" varchar(100),
        "training" varchar(100),
        "months_trained" integer,
        "primary_skill" varchar(100),
        "has_internet_access" varchar(100),
        "financial_work_duration" varchar(100),
        "primary_occupation" varchar(100),
        "work_barrier" varchar(100),
        "work_availability" varchar(100)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_khajura_household_edit_requests" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "household_id" varchar(48),
        "message" text NOT NULL,
        "requested_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_khajura_households" (
        "id" text PRIMARY KEY NOT NULL,
        "profile_id" text,
        "province" text,
        "district" text,
        "local_level" text,
        "ward_no" integer,
        "house_symbol_no" text,
        "family_symbol_no" text,
        "date_of_interview" timestamp,
        "household_location" text[],
        "locality" text,
        "development_organization" text,
        "family_head_name" text,
        "family_head_phone_no" text,
        "total_members" integer,
        "are_members_elsewhere" text,
        "total_elsewhere_members" integer,
        "house_ownership" text,
        "house_ownership_other" text,
        "land_ownership" text,
        "land_ownership_other" text,
        "house_base" text,
        "house_base_other" text,
        "house_outer_wall" text,
        "house_outer_wall_other" text,
        "house_roof" text,
        "house_roof_other" text,
        "house_floor" text,
        "house_floor_other" text,
        "is_house_passed" text,
        "is_map_archived" text,
        "natural_disasters" text[],
        "is_safe" text,
        "water_source" text,
        "water_purification_methods" text,
        "toilet_type" text,
        "solid_waste_management" text,
        "primary_cooking_fuel" text,
        "primary_energy_source" text,
        "road_status" text,
        "time_to_public_bus" text,
        "time_to_market" text,
        "distance_to_active_road" text,
        "facilities" text[],
        "has_properties_elsewhere" text,
        "has_female_named_properties" text,
        "organizations_loaned_from" text[],
        "loan_uses" text[],
        "time_to_bank" text,
        "financial_accounts" text[],
        "income_sources" text[],
        "have_health_insurance" text,
        "consulting_health_organization" text,
        "time_to_health_organization" text,
        "municipal_suggestions" text[],
        "have_agricultural_land" text,
        "agricultural_lands" text[],
        "are_involved_in_agriculture" text,
        "food_crops" text[],
        "pulses" text[],
        "oil_seeds" text[],
        "vegetables" text[],
        "fruits" text[],
        "spices" text[],
        "cash_crops" text[],
        "are_involved_in_husbandry" text,
        "animals" text[],
        "animal_products" text[],
        "have_aquaculture" text,
        "pond_number" integer,
        "pond_area" real,
        "fish_production" real,
        "have_apiary" text,
        "hive_number" integer,
        "honey_production" real,
        "honey_sales" real,
        "honey_revenue" real,
        "has_agricultural_insurance" text,
        "months_involved_in_agriculture" text,
        "agricultural_machines" text[],
        "have_remittance" text,
        "remittance_expenses" text[],
        "birth_place" text,
        "birth_province" text,
        "birth_district" text,
        "birth_country" text,
        "prior_location" text,
        "prior_province" text,
        "prior_district" text,
        "prior_country" text,
        "residence_reason" text,
        "has_business" text,
        "device_id" text,
        "geom" geometry (Point, 4326),
        "name" text
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_acme_khajura_household" (
        "id" text PRIMARY KEY NOT NULL,
        "profile_id" text,
        "province" text,
        "district" text,
        "local_level" text,
        "ward_no" integer,
        "house_symbol_no" text,
        "family_symbol_no" text,
        "date_of_interview" timestamp,
        "household_location" text[],
        "locality" text,
        "development_organization" text,
        "family_head_name" text,
        "family_head_phone_no" text,
        "total_members" integer,
        "are_members_elsewhere" text,
        "total_elsewhere_members" integer,
        "house_ownership" text,
        "house_ownership_other" text,
        "land_ownership" text,
        "land_ownership_other" text,
        "house_base" text,
        "house_base_other" text,
        "house_outer_wall" text,
        "house_outer_wall_other" text,
        "house_roof" text,
        "house_roof_other" text,
        "house_floor" text,
        "house_floor_other" text,
        "is_house_passed" text,
        "is_map_archived" text,
        "natural_disasters" text[],
        "is_safe" text,
        "water_source" text,
        "water_purification_methods" text,
        "toilet_type" text,
        "solid_waste_management" text,
        "primary_cooking_fuel" text,
        "primary_energy_source" text,
        "road_status" text,
        "time_to_public_bus" text,
        "time_to_market" text,
        "distance_to_active_road" text,
        "facilities" text[],
        "has_properties_elsewhere" text,
        "has_female_named_properties" text,
        "organizations_loaned_from" text[],
        "loan_uses" text[],
        "time_to_bank" text,
        "financial_accounts" text[],
        "income_sources" text[],
        "have_health_insurance" text,
        "consulting_health_organization" text,
        "time_to_health_organization" text,
        "municipal_suggestions" text[],
        "have_agricultural_land" text,
        "agricultural_lands" text[],
        "are_involved_in_agriculture" text,
        "food_crops" text[],
        "pulses" text[],
        "oil_seeds" text[],
        "vegetables" text[],
        "fruits" text[],
        "spices" text[],
        "cash_crops" text[],
        "are_involved_in_husbandry" text,
        "animals" text[],
        "animal_products" text[],
        "have_aquaculture" text,
        "pond_number" integer,
        "pond_area" real,
        "fish_production" real,
        "have_apiary" text,
        "hive_number" integer,
        "honey_production" real,
        "honey_sales" real,
        "honey_revenue" real,
        "has_agricultural_insurance" text,
        "months_involved_in_agriculture" text,
        "agricultural_machines" text[],
        "have_remittance" text,
        "remittance_expenses" text[],
        "birth_place" text,
        "birth_province" text,
        "birth_district" text,
        "birth_country" text,
        "prior_location" text,
        "prior_province" text,
        "prior_district" text,
        "prior_country" text,
        "residence_reason" text,
        "has_business" text,
        "device_id" text,
        "geom" geometry (Point, 4326),
        "name" text
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_wise_marital_status" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" "age_group" NOT NULL,
        "marital_status" "marital_status" NOT NULL,
        "population" integer NOT NULL,
        "male_population" integer,
        "female_population" integer,
        "other_population" integer,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_gender_wise_absentee" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" "absentee_age_group" NOT NULL,
        "gender" "gender" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_gender_wise_married_age" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" "married_age_group" NOT NULL,
        "gender" "gender" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_time_series_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "ward_name" text,
        "year" integer NOT NULL,
        "total_population" integer,
        "male_population" integer,
        "female_population" integer,
        "other_population" integer,
        "total_households" integer,
        "average_household_size" numeric,
        "population_0_to_14" integer,
        "population_15_to_59" integer,
        "population_60_and_above" integer,
        "literacy_rate" numeric,
        "male_literacy_rate" numeric,
        "female_literacy_rate" numeric,
        "growth_rate" numeric,
        "area_sq_km" numeric,
        "population_density" numeric,
        "sex_ratio" numeric,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_caste_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "caste_type" varchar(100) NOT NULL,
        "population" integer,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_demographic_summary" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "ward_name" text,
        "total_population" integer,
        "population_male" integer,
        "population_female" integer,
        "population_other" integer,
        "total_households" integer,
        "average_household_size" numeric,
        "sex_ratio" numeric,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_mother_tongue_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "language_type" "language_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_wise_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" varchar NOT NULL,
        "gender" varchar NOT NULL,
        "population" integer DEFAULT 0 NOT NULL,
        "updated_at" timestamp DEFAULT NOW(),
        "created_at" timestamp DEFAULT NOW()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_religion_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "religion_type" "religion_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_major_occupation" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "occupation" text NOT NULL,
        "population" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_wise_economically_active_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" "economically_active_age_group" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_disability_cause" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "disability_cause" "disability_cause" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_birthplace_households" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "birth_place" "birth_place" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_acme_ward_wise_migrated_households" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "migrated_from" "migrated_from" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_birth_certificate_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "with_birth_certificate" integer NOT NULL,
        "without_birth_certificate" integer NOT NULL,
        "total_population_under_5" integer,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_gender_wise_deceased_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" varchar NOT NULL,
        "gender" varchar NOT NULL,
        "deceased_population" integer DEFAULT 0 NOT NULL,
        "updated_at" timestamp DEFAULT NOW(),
        "created_at" timestamp DEFAULT NOW()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "ward_wise_annual_income_sustenance" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "months_sustained" "months_sustained" NOT NULL,
        "households" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_gender_wise_economically_active_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_group" "economically_active_age_group" NOT NULL,
        "gender" "gender" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "exported_products" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "product_name" text NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "ward_time_wise_household_chores" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "time_spent" "time_spent" NOT NULL,
        "population" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_household_income_source" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "income_source" text NOT NULL,
        "households" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_household_land_possessions" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "households" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "ward_wise_households_loan_use" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "loan_use" text NOT NULL,
        "households" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_households_on_loan" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "households" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "imported_products" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "product_name" text NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "ward_wise_remittance_expenses" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "remittance_expense" "remittance_expense_type" NOT NULL,
        "households" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_trained_population" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "trained_population" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_household_base" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "base_type" "household_base_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_household_outer_wall" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "wall_type" "outer_wall_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_foreign_employment_countries" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "country" "foreign_employment_country" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_remittance" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "amount_group" "remittance_amount_group" NOT NULL,
        "sending_population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_land_ownership" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "land_ownership_type" "land_ownership_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_irrigated_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "irrigated_area_hectares" numeric(10, 2) NOT NULL,
        "unirrigated_area_hectares" numeric(10, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_irrigation_source" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "irrigation_source" "irrigation_source_type" NOT NULL,
        "coverage_in_hectares" numeric(10, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_food_crops" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "food_crop" "food_crop_type" NOT NULL,
        "production_in_tonnes" numeric(10, 2) NOT NULL,
        "sales_in_tonnes" numeric(10, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_pulses" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "pulse" "pulse_type" NOT NULL,
        "production_in_tonnes" numeric(10, 2) NOT NULL,
        "sales_in_tonnes" numeric(10, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_oil_seeds" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "oil_seed" "oil_seed_type" NOT NULL,
        "production_in_tonnes" numeric(10, 2) NOT NULL,
        "sales_in_tonnes" numeric(10, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_fruits" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "fruit_type" "fruit_type_enum" NOT NULL,
        "production_in_tonnes" numeric(10, 2) NOT NULL,
        "sales_in_tonnes" numeric(10, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_spices" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "spice_type" "spice_type_enum" NOT NULL,
        "production_in_tonnes" numeric(10, 2) NOT NULL,
        "sales_in_tonnes" numeric(10, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_vegetables" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "vegetable_type" "vegetable_type_enum" NOT NULL,
        "production_in_tonnes" numeric(10, 2) NOT NULL,
        "sales_in_tonnes" numeric(10, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_animal_products" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "animal_product" TEXT NOT NULL,
        "production_amount" numeric(14, 2) NOT NULL,
        "sales_amount" numeric(14, 2) NOT NULL,
        "revenue_in_rs" numeric(14, 2) NOT NULL,
        "measurement_unit" TEXT NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_crop_diseases" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "crop" "crop_type_enum" NOT NULL,
        "major_pests" text NOT NULL,
        "major_diseases" text NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_vegetables_and_fruits_diseases" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "crop" "vegetable_fruit_type_enum" NOT NULL,
        "major_pests" text NOT NULL,
        "major_diseases" text NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_commercial_agricultural_animal_husbandry_farmers_group" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" varchar(255) NOT NULL,
        "ward_number" integer NOT NULL,
        "type" "business_type_enum" NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_wide_agriculture_related_farmers_group" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" varchar(255) NOT NULL,
        "ward_number" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_cooperatives" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "cooperative_name" varchar(255) NOT NULL,
        "ward_number" integer NOT NULL,
        "cooperative_type" "cooperative_type_enum" NOT NULL,
        "phone_number" varchar(20),
        "remarks" text,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "aspect" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "type_en" varchar(255) NOT NULL,
        "type_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "chapters" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "title_en" varchar(255) NOT NULL,
        "title_ne" varchar(255) NOT NULL,
        "part_id" varchar(15) NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "elevation" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "elevation_en" varchar(255) NOT NULL,
        "elevation_ne" varchar(255) NOT NULL,
        "geometry" geometry (MultiPolygon, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "health" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "highway" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "road_name_en" varchar(255) NOT NULL,
        "road_name_ne" varchar(255) NOT NULL,
        "geometry" geometry (LineString, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "land_use" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "land_use_en" varchar(255) NOT NULL,
        "land_use_ne" varchar(255) NOT NULL,
        "geometry" geometry (MultiPolygon, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "municipality_boundaries" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Polygon, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "municipality_offices" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "parts" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "title_en" varchar(255) NOT NULL,
        "title_ne" varchar(255) NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "physical_infrastructures" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "roads" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "geometry" geometry (MultiLineString, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "schools" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "sections" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "title_en" varchar(255) NOT NULL,
        "title_ne" varchar(255) NOT NULL,
        "slug" varchar(255) NOT NULL,
        "content_schema" json DEFAULT '{}'::json NOT NULL,
        "chapter_id" varchar(15) NOT NULL,
        "created_at" timestamp DEFAULT now() NOT NULL,
        "updated_at" timestamp
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "slope" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "angle_en" varchar(255) NOT NULL,
        "angle_ne" varchar(255) NOT NULL,
        "geometry" geometry (MultiPolygon, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "springs" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "geometry" geometry (LineString, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "tourist_places" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "villages" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "ward_boundaries" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Polygon, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "ward_offices" (
        "id" varchar(15) PRIMARY KEY NOT NULL,
        "name_en" varchar(255) NOT NULL,
        "name_ne" varchar(255) NOT NULL,
        "geometry" geometry (Point, 4326) NOT NULL
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_location" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "location_type" NOT NULL,
        "is_new_settlement" boolean DEFAULT false,
        "is_town_planned" boolean DEFAULT false,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "point_geometry" geometry (Point, 4326),
        "polygon_geometry" geometry (Polygon, 4326),
        "parent_id" varchar(36),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_parking_facility" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "parking_facility_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_square_meters" integer,
        "vehicle_capacity" integer,
        "condition" "parking_condition",
        "drainage_system" "drainage_system",
        "has_roof" boolean DEFAULT false,
        "has_toilet" boolean DEFAULT false,
        "has_waiting_area" boolean DEFAULT false,
        "has_ticket_counter" boolean DEFAULT false,
        "has_food_stalls" boolean DEFAULT false,
        "has_security_personnel" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "operating_hours" text,
        "operator" text,
        "contact_info" text,
        "established_year" varchar(4),
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "area_polygon" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_public_transport" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "public_transport_type" NOT NULL,
        "operator_name" text,
        "operator_contact" text,
        "operator_email" text,
        "operator_website" text,
        "route_name" text,
        "start_point" text,
        "end_point" text,
        "via_points" text,
        "estimated_duration_minutes" integer,
        "frequency" "frequency",
        "start_time" time,
        "end_time" time,
        "interval_minutes" integer,
        "vehicle_count" integer,
        "seating_capacity" integer,
        "vehicle_condition" "vehicle_condition",
        "has_air_conditioning" boolean DEFAULT false,
        "has_wifi" boolean DEFAULT false,
        "is_accessible" boolean DEFAULT false,
        "fare_amount" integer,
        "fare_description" text,
        "serving_road_ids" text,
        "parking_facility_ids" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "route_path" geometry (LineString, 4326),
        "stop_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_road" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "road_type" NOT NULL,
        "width_in_meters" integer,
        "condition" "road_condition",
        "drainage_system" "drainage_system",
        "maintenance_year" varchar(4),
        "length_in_meters" integer,
        "start_point" text,
        "end_point" text,
        "has_street_lights" boolean,
        "has_divider" boolean,
        "has_pedestrian_path" boolean,
        "has_bicycle_lane" boolean,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "road_path" geometry (LineString, 4326),
        "representative_point" geometry (Point, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_petrol_pump" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "petrol_pump_type" NOT NULL,
        "ward_number" integer NOT NULL,
        "locality" text,
        "address" text,
        "owner_name" text,
        "owner_contact" text,
        "owner_email" text,
        "owner_website" text,
        "has_ev_charging" boolean DEFAULT false,
        "has_car_wash" boolean DEFAULT false,
        "has_convenience_store" boolean DEFAULT false,
        "has_restroom" boolean DEFAULT false,
        "has_air_filling" boolean DEFAULT false,
        "operating_hours" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_agric_zone" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "agric_zone_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_hectares" integer,
        "soil_quality" "soil_quality",
        "irrigation_system" "irrigation_system",
        "major_crops" text,
        "seasonal_availability" text,
        "annual_production" integer,
        "production_year" varchar(4),
        "is_government_owned" boolean DEFAULT false,
        "owner_name" text,
        "owner_contact" text,
        "caretaker_name" text,
        "caretaker_contact" text,
        "has_storage" boolean DEFAULT false,
        "has_processing_unit" boolean DEFAULT false,
        "has_farmers_cooperative" boolean DEFAULT false,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "area_polygon" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_grassland" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "grassland_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_hectares" numeric(10, 2),
        "elevation_in_meters" integer,
        "vegetation_density" "vegetation_density",
        "grassland_management" "grassland_management",
        "dominant_species" text,
        "carrying_capacity" integer,
        "grazing_period" text,
        "annual_fodder_yield" numeric(10, 2),
        "yield_year" varchar(4),
        "is_government_owned" boolean DEFAULT false,
        "owner_name" text,
        "owner_contact" text,
        "caretaker_name" text,
        "caretaker_contact" text,
        "has_water_source" boolean DEFAULT false,
        "water_source_type" text,
        "is_fenced" boolean DEFAULT false,
        "has_grazing_rights" boolean DEFAULT false,
        "has_protected_status" boolean DEFAULT false,
        "protection_type" text,
        "biodiversity_value" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "area_polygon" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_grazing_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "grazing_area_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_hectares" numeric(10, 2),
        "elevation_in_meters" integer,
        "terrain_type" "terrain_type",
        "ground_cover" "ground_cover",
        "accessibility_level" "accessibility_level",
        "livestock_capacity" integer,
        "primary_livestock_type" text,
        "grazing_seasons" text,
        "grazing_duration" text,
        "rotational_system" boolean DEFAULT false,
        "rest_period" text,
        "utilization_level" "utilization_level",
        "has_water_source" boolean DEFAULT false,
        "water_source_types" text,
        "water_availability" text,
        "water_source_distance" integer,
        "is_government_owned" boolean DEFAULT false,
        "owner_name" text,
        "owner_contact" text,
        "caretaker_name" text,
        "caretaker_contact" text,
        "permit_required" boolean DEFAULT false,
        "permit_info" text,
        "has_fencing" boolean DEFAULT false,
        "has_windbreaks" boolean DEFAULT false,
        "has_shelters" boolean DEFAULT false,
        "infrastructure_notes" text,
        "invasive_species" text,
        "erosion_issues" boolean DEFAULT false,
        "conservation_status" text,
        "restoration_efforts" text,
        "traditional_use" text,
        "cultural_significance" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "area_polygon" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_agri_processing_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "center_type" "center_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_square_meters" numeric(10, 2),
        "building_year_constructed" integer,
        "is_operational" boolean DEFAULT true,
        "operational_status" text,
        "operation_start_year" integer,
        "has_storage_facility" boolean DEFAULT false,
        "storage_type" "storage_type",
        "storage_total_capacity_mt" numeric(10, 2),
        "storage_current_usage_mt" numeric(10, 2),
        "temperature_controlled" boolean DEFAULT false,
        "temperature_range_min" numeric(5, 2),
        "temperature_range_max" numeric(5, 2),
        "humidity_controlled" boolean DEFAULT false,
        "has_processing_unit" boolean DEFAULT false,
        "processing_level" "processing_level",
        "processing_capacity_mt_per_day" numeric(10, 2),
        "main_processing_activities" text,
        "value_addition_activities" text,
        "primary_commodities" text,
        "secondary_commodities" text,
        "seasonal_availability" text,
        "has_quality_control_lab" boolean DEFAULT false,
        "quality_standards" text,
        "certifications" text,
        "ownership_type" "fish_farm_ownership_type",
        "owner_name" text,
        "owner_contact" text,
        "manager_name" text,
        "manager_contact" text,
        "total_staff_count" integer,
        "technical_staff_count" integer,
        "has_electricity" boolean DEFAULT true,
        "has_water_supply" boolean DEFAULT true,
        "has_waste_management_system" boolean DEFAULT false,
        "has_internet" boolean DEFAULT false,
        "annual_throughput_mt" numeric(12, 2),
        "capacity_utilization_percent" integer,
        "recorded_year" varchar(4),
        "employment_generated" integer,
        "service_area_radius_km" numeric(6, 2),
        "farmers_served_count" integer,
        "women_farmers_percent" integer,
        "linked_grazing_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_agric_zones" jsonb DEFAULT '[]'::jsonb,
        "linked_grasslands" jsonb DEFAULT '[]'::jsonb,
        "establishment_cost_npr" numeric(14, 2),
        "annual_operating_cost_npr" numeric(14, 2),
        "annual_revenue_npr" numeric(14, 2),
        "profitable_operation" boolean DEFAULT true,
        "major_constraints" text,
        "development_needs" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "facility_footprint" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_farm" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "farm_type" "farm_type" NOT NULL,
        "farming_system" "farming_system",
        "ward_number" integer,
        "location" text,
        "address" text,
        "total_area_in_hectares" numeric(10, 2),
        "cultivated_area_in_hectares" numeric(10, 2),
        "land_ownership" "land_ownership",
        "soil_type" "soil_type",
        "irrigation_type" "irrigation_type",
        "irrigation_source_details" text,
        "irrigated_area_in_hectares" numeric(10, 2),
        "main_crops" text,
        "secondary_crops" text,
        "crop_rotation" boolean DEFAULT false,
        "crop_rotation_details" text,
        "intercropping" boolean DEFAULT false,
        "cropping_seasons" text,
        "annual_crop_yield_mt" numeric(10, 2),
        "recorded_year_crops" varchar(4),
        "has_livestock" boolean DEFAULT false,
        "livestock_types" text,
        "cattle_count" integer,
        "buffalo_count" integer,
        "goat_count" integer,
        "sheep_count" integer,
        "pig_count" integer,
        "poultry_count" integer,
        "other_livestock_count" integer,
        "other_livestock_details" text,
        "livestock_housing_type" "livestock_housing",
        "livestock_management_details" text,
        "annual_milk_production_liters" numeric(12, 2),
        "annual_egg_production" integer,
        "annual_meat_production_kg" numeric(10, 2),
        "recorded_year_livestock" varchar(4),
        "owner_name" text,
        "owner_contact" text,
        "farmer_type" text,
        "farmer_education" text,
        "farmer_experience_years" integer,
        "has_cooperative_membership" boolean DEFAULT false,
        "cooperative_name" text,
        "family_labor_count" integer,
        "hired_labor_count" integer,
        "annual_investment_npr" numeric(14, 2),
        "annual_income_npr" numeric(14, 2),
        "profitable_operation" boolean DEFAULT true,
        "market_access_details" text,
        "major_buyer_types" text,
        "has_farm_house" boolean DEFAULT false,
        "has_storage" boolean DEFAULT false,
        "storage_capacity_mt" numeric(10, 2),
        "has_farm_equipment" boolean DEFAULT false,
        "equipment_details" text,
        "has_electricity" boolean DEFAULT false,
        "has_road_access" boolean DEFAULT false,
        "road_access_type" text,
        "uses_chemical_fertilizer" boolean DEFAULT false,
        "uses_pesticides" boolean DEFAULT false,
        "uses_organic_methods" boolean DEFAULT false,
        "composting" boolean DEFAULT false,
        "soil_conservation_practices" text,
        "rainwater_harvesting" boolean DEFAULT false,
        "manure_management" text,
        "has_certifications" boolean DEFAULT false,
        "certification_details" text,
        "receives_extension_services" boolean DEFAULT false,
        "extension_service_provider" text,
        "training_received" text,
        "technical_support_needs" text,
        "major_challenges" text,
        "disaster_vulnerabilities" text,
        "growth_opportunities" text,
        "future_expansion_plans" text,
        "linked_grazing_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_processing_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_agric_zones" jsonb DEFAULT '[]'::jsonb,
        "linked_grasslands" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "farm_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_fish_farm" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "farm_type" "fish_farm_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "ownership_type" "fish_farm_ownership_type",
        "total_area_in_hectares" numeric(10, 2),
        "water_surface_area_in_hectares" numeric(10, 2),
        "operational_since" integer,
        "total_pond_count" integer,
        "active_pond_count" integer,
        "average_pond_size_in_square_meters" numeric(10, 2),
        "average_water_depth_in_meters" numeric(5, 2),
        "total_water_volume_in_cubic_meters" numeric(12, 2),
        "water_source" "fish_water_source_type",
        "water_source_details" text,
        "water_availability_issues" text,
        "has_water_quality_monitoring" boolean DEFAULT false,
        "water_quality_parameters" text,
        "culture_system" "culture_system",
        "primary_fish_species" text,
        "secondary_fish_species" text,
        "seed_source_details" text,
        "stocking_density_per_square_meter" numeric(8, 2),
        "growout_period_in_months" integer,
        "feeding_system" "feeding_system",
        "feed_types" text,
        "feed_conversion_ratio" numeric(5, 2),
        "annual_feed_usage_in_kg" numeric(10, 2),
        "water_management_system" "water_management_system",
        "uses_probiotics" boolean DEFAULT false,
        "uses_aeration" boolean DEFAULT false,
        "aeration_type" text,
        "water_exchange_frequency" text,
        "water_exchange_percentage" integer,
        "effluent_management_details" text,
        "annual_production_in_kg" numeric(12, 2),
        "average_yield_per_hectare_in_kg" numeric(10, 2),
        "survival_rate_percentage" integer,
        "average_fish_size_in_grams" numeric(8, 2),
        "recorded_year_production" varchar(4),
        "production_cycles_per_year" integer,
        "has_farm_house" boolean DEFAULT false,
        "has_hatchery" boolean DEFAULT false,
        "hatchery_capacity_million_fry" integer,
        "has_nursery" boolean DEFAULT false,
        "nursery_area_in_square_meters" numeric(10, 2),
        "has_feed_storage" boolean DEFAULT false,
        "has_equipment" boolean DEFAULT false,
        "equipment_details" text,
        "has_laboratory" boolean DEFAULT false,
        "laboratory_purpose" text,
        "has_ice_production" boolean DEFAULT false,
        "has_processing_area" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT false,
        "has_generator" boolean DEFAULT false,
        "has_fencing" boolean DEFAULT false,
        "has_security_system" boolean DEFAULT false,
        "owner_name" text,
        "owner_contact" text,
        "manager_name" text,
        "manager_contact" text,
        "technical_staff_count" integer,
        "regular_staff_count" integer,
        "seasonal_labor_count" integer,
        "has_trained_staff" boolean DEFAULT false,
        "training_details" text,
        "annual_operating_cost_npr" numeric(14, 2),
        "annual_revenue_npr" numeric(14, 2),
        "profitable_operation" boolean DEFAULT true,
        "market_access_details" text,
        "major_buyer_types" text,
        "average_selling_price_per_kg" numeric(8, 2),
        "common_diseases" text,
        "disease_prevention_methods" text,
        "uses_chemicals" boolean DEFAULT false,
        "chemical_usage_details" text,
        "mortality_percentage" integer,
        "health_monitoring_frequency" text,
        "has_environmental_impact_assessment" boolean DEFAULT false,
        "uses_renewable_energy" boolean DEFAULT false,
        "renewable_energy_details" text,
        "waste_management_practices" text,
        "has_certifications" boolean DEFAULT false,
        "certification_details" text,
        "major_constraints" text,
        "disaster_vulnerabilities" text,
        "receives_government_support" boolean DEFAULT false,
        "government_support_details" text,
        "receives_ngo_support" boolean DEFAULT false,
        "ngo_support_details" text,
        "technical_support_needs" text,
        "expansion_plans" text,
        "diversification_plans" text,
        "technology_upgrade_plans" text,
        "linked_processing_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_water_bodies" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "farm_boundary" geometry (Polygon, 4326),
        "pond_polygons" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_religious_place" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "religious_place_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_square_meters" numeric(10, 2),
        "architectural_style" "architectural_style",
        "construction_material" "construction_material",
        "year_established" integer,
        "year_renovated" integer,
        "main_deity" text,
        "secondary_deities" text,
        "religious_tradition" text,
        "religious_significance" "religious_significance",
        "religious_story" text,
        "historical_significance" text,
        "cultural_significance" text,
        "is_heritage_site" boolean DEFAULT false,
        "heritage_designation" text,
        "inscriptions" text,
        "has_archaeological_value" boolean DEFAULT false,
        "archaeological_details" text,
        "managed_by" text,
        "contact_person" text,
        "contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "daily_opening_time" text,
        "daily_closing_time" text,
        "is_open_all_day" boolean DEFAULT false,
        "weekly_closed_days" text,
        "entry_fee_npr" integer,
        "entry_fee_details_foreigners" text,
        "total_building_count" integer,
        "has_main_hall" boolean DEFAULT false,
        "main_hall_capacity" integer,
        "has_community_space" boolean DEFAULT false,
        "has_accommodation" boolean DEFAULT false,
        "accommodation_capacity" integer,
        "has_kitchen" boolean DEFAULT false,
        "has_dining_hall" boolean DEFAULT false,
        "dining_capacity" integer,
        "has_library" boolean DEFAULT false,
        "has_museum" boolean DEFAULT false,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_toilets" boolean DEFAULT false,
        "has_handicap_access" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_water_supply" boolean DEFAULT true,
        "has_drinking_water" boolean DEFAULT false,
        "has_footwear_facility" boolean DEFAULT false,
        "has_cloth_storage" boolean DEFAULT false,
        "preservation_status" "preservation_status",
        "last_restoration_year" integer,
        "restoration_details" text,
        "has_regular_maintenance" boolean DEFAULT false,
        "maintenance_details" text,
        "funding_source" text,
        "regular_prayers" text,
        "special_rituals" text,
        "annual_festivals" text,
        "festival_months" text,
        "festival_details" text,
        "special_offerings" text,
        "estimated_daily_visitors" integer,
        "estimated_yearly_visitors" integer,
        "peak_visitation_months" text,
        "has_overseas_visitors" boolean DEFAULT false,
        "guides_available" boolean DEFAULT false,
        "visitor_dress_code" text,
        "photo_allowed" boolean DEFAULT true,
        "photo_restrictions" text,
        "community_benefits" text,
        "social_services_offered" text,
        "educational_activities" text,
        "has_shops" boolean DEFAULT false,
        "shop_count" integer,
        "shop_types" text,
        "economic_impact" text,
        "total_annual_revenue" numeric(14, 2),
        "annual_operating_budget" numeric(14, 2),
        "has_garden" boolean DEFAULT false,
        "garden_area_in_square_meters" numeric(10, 2),
        "has_significant_trees" boolean DEFAULT false,
        "significant_tree_details" text,
        "has_water_body" boolean DEFAULT false,
        "water_body_details" text,
        "has_security_personnel" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "has_fire_safety" boolean DEFAULT false,
        "disaster_preparedness" text,
        "has_significant_artwork" boolean DEFAULT false,
        "artwork_details" text,
        "has_historical_artifacts" boolean DEFAULT false,
        "artifacts_details" text,
        "has_registered_treasures" boolean DEFAULT false,
        "treasure_details" text,
        "current_challenges" text,
        "conservation_needs" text,
        "development_plans" text,
        "linked_cultural_events" jsonb DEFAULT '[]'::jsonb,
        "linked_cultural_organizations" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "complex_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_cultural_heritage" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "heritage_type" "cultural_heritage_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "has_physical_location" boolean DEFAULT true,
        "estimated_age_years" integer,
        "historical_period" text,
        "year_discovered" integer,
        "year_recognised" integer,
        "cultural_significance" text,
        "heritage_significance" "heritage_significance",
        "associated_communities" text,
        "associated_ethnic_groups" text,
        "spiritual_significance" text,
        "conservation_status" "heritage_conservation_status",
        "conservation_details" text,
        "threats_to_preservation" text,
        "safeguarding_measures" text,
        "last_conservation_date" date,
        "conservation_agency" text,
        "is_officially_recognised" boolean DEFAULT false,
        "recognition_type" "heritage_recognition_type",
        "recognition_date" date,
        "recognition_reference_id" text,
        "has_proper_documentation" boolean DEFAULT false,
        "documentation_details" text,
        "has_research_publications" boolean DEFAULT false,
        "publication_references" text,
        "physical_dimensions" text,
        "physical_characteristics" text,
        "material_composition" text,
        "geological_significance" text,
        "practice_frequency" text,
        "practice_season" text,
        "geographic_distribution" text,
        "transmission_method" text,
        "associated_artifacts" text,
        "language_of_expression" text,
        "has_ecological_value" boolean DEFAULT false,
        "ecological_value" text,
        "ecosystem_services" text,
        "flora_fauna_details" text,
        "biological_characteristics" text,
        "current_usage" text,
        "community_role" text,
        "economic_value" text,
        "tourism_value" boolean DEFAULT false,
        "tourism_details" text,
        "educational_value" boolean DEFAULT false,
        "educational_activities" text,
        "ownership_type" text,
        "managed_by" text,
        "access_restrictions" text,
        "visitor_guidelines" text,
        "associated_rituals" text,
        "ritual_calendar" text,
        "ritual_participants" text,
        "ritual_materials" text,
        "adaptation_to_modern_context" text,
        "commercialization_impact" text,
        "globalization_impact" text,
        "revitalization_efforts" text,
        "has_audio_recordings" boolean DEFAULT false,
        "has_video_recordings" boolean DEFAULT false,
        "has_digital_documentation" boolean DEFAULT false,
        "digital_archive_links" text,
        "community_participation_level" text,
        "youth_involvement" text,
        "gender_aspects" text,
        "community_awareness" text,
        "key_knowledge_holders" text,
        "practitioner_count" integer,
        "master_practitioners" text,
        "teaching_institutions" text,
        "linked_historical_sites" jsonb DEFAULT '[]'::jsonb,
        "linked_religious_places" jsonb DEFAULT '[]'::jsonb,
        "linked_cultural_organizations" jsonb DEFAULT '[]'::jsonb,
        "linked_cultural_events" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "area_polygon" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_historical_site" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "historical_site_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "area_in_square_meters" numeric(10, 2),
        "architectural_style" "historical_architectural_style",
        "construction_material" "historical_construction_material",
        "historical_period" "historical_period",
        "year_established" integer,
        "year_abandoned" integer,
        "last_restoration_year" integer,
        "historical_significance" "historical_significance",
        "original_function" text,
        "notable_people" text,
        "historical_events" text,
        "dynasty_or_rulership" text,
        "change_of_ownership" text,
        "cultural_significance" text,
        "archaeological_remains" text,
        "artifacts_found" text,
        "excavation_history" text,
        "excavation_year" integer,
        "is_heritage_site" boolean DEFAULT false,
        "heritage_designation" text,
        "heritage_listing_year" integer,
        "heritage_reference_id" text,
        "has_inscriptions" boolean DEFAULT false,
        "inscription_details" text,
        "has_historical_documents" boolean DEFAULT false,
        "documentation_details" text,
        "managed_by" text,
        "contact_person" text,
        "contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "daily_opening_time" text,
        "daily_closing_time" text,
        "is_open_all_day" boolean DEFAULT false,
        "weekly_closed_days" text,
        "entry_fee_npr" integer,
        "entry_fee_details_foreigners" text,
        "total_structure_count" integer,
        "has_main_building" boolean DEFAULT false,
        "has_defensive_walls" boolean DEFAULT false,
        "has_towers" boolean DEFAULT false,
        "has_moat" boolean DEFAULT false,
        "has_gardens" boolean DEFAULT false,
        "has_courtyards" boolean DEFAULT false,
        "structure_details" text,
        "notable_features" text,
        "architectural_elements" text,
        "has_underground_structures" boolean DEFAULT false,
        "underground_details" text,
        "has_durbar" boolean DEFAULT false,
        "has_temple" boolean DEFAULT false,
        "has_artificial_water_body" boolean DEFAULT false,
        "water_body_details" text,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_toilets" boolean DEFAULT false,
        "has_handicap_access" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_water_supply" boolean DEFAULT true,
        "has_cafeteria" boolean DEFAULT false,
        "has_gift_shop" boolean DEFAULT false,
        "preservation_status" "historical_preservation_status",
        "restoration_details" text,
        "has_regular_maintenance" boolean DEFAULT false,
        "maintenance_details" text,
        "funding_source" text,
        "conservation_challenges" text,
        "research_value" text,
        "ongoing_research" text,
        "educational_programs" text,
        "publication_references" text,
        "estimated_daily_visitors" integer,
        "estimated_yearly_visitors" integer,
        "peak_visitation_months" text,
        "has_overseas_visitors" boolean DEFAULT false,
        "guides_available" boolean DEFAULT false,
        "has_tourism_infrastructure" boolean DEFAULT false,
        "tourism_details" text,
        "visitor_facilities" text,
        "photo_allowed" boolean DEFAULT true,
        "photo_restrictions" text,
        "visit_duration" text,
        "local_community_involvement" text,
        "community_benefits" text,
        "educational_activities" text,
        "annual_maintenance_cost" numeric(14, 2),
        "annual_revenue" numeric(14, 2),
        "economic_impact" text,
        "employment_generated" integer,
        "traditional_uses" text,
        "ceremonial_importance" text,
        "cultural_events" text,
        "local_myths" text,
        "has_security_personnel" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "has_fire_safety" boolean DEFAULT false,
        "safety_measures" text,
        "disaster_preparedness" text,
        "has_archaeological_artifacts" boolean DEFAULT false,
        "artifact_storage_location" text,
        "has_on_site_museum" boolean DEFAULT false,
        "museum_details" text,
        "notable_collections" text,
        "damage_history" text,
        "current_threats" text,
        "encroachment_issues" text,
        "natural_disaster_risk" text,
        "development_projects" text,
        "future_conservation_plans" text,
        "proposed_improvements" text,
        "linked_cultural_events" jsonb DEFAULT '[]'::jsonb,
        "linked_cultural_organizations" jsonb DEFAULT '[]'::jsonb,
        "linked_religious_places" jsonb DEFAULT '[]'::jsonb,
        "linked_historical_sites" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "site_boundary" geometry (Polygon, 4326),
        "structure_footprints" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_school" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "school_type" "school_type" NOT NULL,
        "school_level" "school_level" NOT NULL,
        "established_date" date,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "affiliation_number" varchar(50),
        "affiliated_board" text,
        "medium_of_instruction" "medium_of_instruction" NOT NULL,
        "is_co_educational" boolean DEFAULT true,
        "has_hostel" boolean DEFAULT false,
        "is_residential" boolean DEFAULT false,
        "offers_day_boarding" boolean DEFAULT false,
        "ward_number" integer,
        "location" text,
        "address" text,
        "nearest_landmark" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "facebook_page" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "youtube_channel" text,
        "principal_name" text,
        "principal_qualification" text,
        "principal_contact_number" text,
        "principal_email" text,
        "chairperson_name" text,
        "management_type" text,
        "school_start_time" time,
        "school_end_time" time,
        "weekly_off_days" text,
        "shifts_count" integer,
        "shifts_details" text,
        "total_land_area_sqm" numeric(10, 2),
        "covered_area_sqm" numeric(10, 2),
        "playground_area_sqm" numeric(10, 2),
        "total_building_count" integer,
        "total_classrooms_count" integer,
        "total_floors_count" integer,
        "building_condition" "school_building_condition",
        "construction_type" text,
        "construction_year" integer,
        "last_renovation_year" integer,
        "has_compound_wall" boolean DEFAULT false,
        "has_playground" boolean DEFAULT false,
        "playground_facilities" text,
        "has_sports_field" boolean DEFAULT false,
        "sports_field_details" text,
        "earthquake_safety_standard" "earthquake_safety",
        "has_fire_safety_equipment" boolean DEFAULT false,
        "has_first_aid_kit" boolean DEFAULT true,
        "has_security_guard" boolean DEFAULT false,
        "security_guard_count" integer,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_emergency_exits" boolean DEFAULT false,
        "has_perimeter_fencing" boolean DEFAULT false,
        "fencing_type" text,
        "has_safety_training" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "electricity_source_type" text,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_drinking_water" boolean DEFAULT true,
        "water_source_type" text,
        "has_toilets" boolean DEFAULT true,
        "toilets_count" integer,
        "has_separate_toilets_for_girls" boolean DEFAULT false,
        "has_separate_toilets_for_staff" boolean DEFAULT false,
        "has_handwashing_facilities" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "has_canteen" boolean DEFAULT false,
        "has_mid_day_meal_program" boolean DEFAULT false,
        "mid_day_meal_details" text,
        "has_disabled_friendly_access" boolean DEFAULT false,
        "disabled_friendly_facilities" text,
        "has_library" boolean DEFAULT false,
        "library_books_count" integer,
        "library_area_sqm" numeric(8, 2),
        "has_reading_room" boolean DEFAULT false,
        "has_audio_visual_room" boolean DEFAULT false,
        "has_science_lab" boolean DEFAULT false,
        "science_lab_details" text,
        "has_computer_lab" boolean DEFAULT false,
        "computer_lab_computer_count" integer,
        "has_chemistry_lab" boolean DEFAULT false,
        "has_physics_lab" boolean DEFAULT false,
        "has_biology_lab" boolean DEFAULT false,
        "has_language_lab" boolean DEFAULT false,
        "has_geography_lab" boolean DEFAULT false,
        "has_arts_and_crafts_room" boolean DEFAULT false,
        "has_music_room" boolean DEFAULT false,
        "has_dance_room" boolean DEFAULT false,
        "has_smart_classes" boolean DEFAULT false,
        "smart_classes_count" integer,
        "smart_classes_details" text,
        "has_projectors" boolean DEFAULT false,
        "projectors_count" integer,
        "has_teaching_aids" boolean DEFAULT false,
        "teaching_aids_details" text,
        "grades_offered" text,
        "lowest_grade" text,
        "highest_grade" text,
        "stream_offerings" text,
        "other_special_programs" text,
        "has_pre_primary" boolean DEFAULT false,
        "pre_primary_details" text,
        "has_special_needs_program" boolean DEFAULT false,
        "special_needs_program_details" text,
        "total_teaching_staff_count" integer,
        "male_teaching_staff_count" integer,
        "female_teaching_staff_count" integer,
        "other_gender_teaching_staff_count" integer,
        "permanent_teaching_staff_count" integer,
        "contract_teaching_staff_count" integer,
        "total_administrative_staff_count" integer,
        "total_support_staff_count" integer,
        "teacher_student_ratio" text,
        "teachers_with_professional_degree" integer,
        "teachers_training_details" text,
        "total_student_count" integer,
        "male_student_count" integer,
        "female_student_count" integer,
        "other_gender_student_count" integer,
        "students_by_grade_details" text,
        "dayscholars_count" integer,
        "boarders_count" integer,
        "special_needs_students_count" integer,
        "scholarship_students_count" integer,
        "dropout_rate" numeric(5, 2),
        "admission_process_details" text,
        "attendance_rate" numeric(5, 2),
        "pass_rate" numeric(5, 2),
        "average_academic_performance" text,
        "performance_level" "performance_level",
        "national_exam_performance" text,
        "district_rank" integer,
        "extra_curricular_achievements" text,
        "significant_alumni" text,
        "sports_offered" text,
        "cultural_activities_offered" text,
        "clubs_and_societies" text,
        "annual_events" text,
        "community_outreach_programs" text,
        "annual_fees_structure" text,
        "average_annual_fees_primary" numeric(12, 2),
        "average_annual_fees_secondary" numeric(12, 2),
        "scholarship_provisions" text,
        "government_funded_programs" text,
        "annual_budget" numeric(18, 2),
        "funding_sources" text,
        "has_health_checkup" boolean DEFAULT false,
        "health_checkup_frequency" text,
        "has_school_nurse" boolean DEFAULT false,
        "has_health_room" boolean DEFAULT false,
        "health_education_programs" text,
        "nutrition_programs" text,
        "has_pta" boolean DEFAULT false,
        "pta_meeting_frequency" text,
        "community_involvement_level" text,
        "local_authority_support" text,
        "parent_feedback_mechanism" text,
        "provides_transportation" boolean DEFAULT false,
        "transportation_details" text,
        "school_bus_count" integer,
        "van_count" integer,
        "transportation_coverage" text,
        "hostel_capacity" integer,
        "boys_hostel_capacity" integer,
        "girls_hostel_capacity" integer,
        "hostel_facilities" text,
        "hostels_count" integer,
        "meals_provided_daily" integer,
        "has_garden" boolean DEFAULT false,
        "has_green_initiatives" boolean DEFAULT false,
        "green_initiatives_details" text,
        "has_rainwater_harvesting" boolean DEFAULT false,
        "has_solar_power" boolean DEFAULT false,
        "waste_management_system" text,
        "infrastructure_challenges" text,
        "academic_challenges" text,
        "development_plans" text,
        "funding_needs" text,
        "government_partnerships" text,
        "ngo_partnerships" text,
        "corporate_partnerships" text,
        "international_partnerships" text,
        "ict_infrastructure_level" text,
        "has_digital_learning_resources" boolean DEFAULT false,
        "digital_learning_details" text,
        "teacher_ict_proficiency" text,
        "student_ict_access_level" text,
        "has_internal_quality_assurance" boolean DEFAULT false,
        "external_evaluation_frequency" text,
        "accreditation_status" text,
        "accrediting_body" text,
        "quality_improvement_initiatives" text,
        "expansion_plans" text,
        "infrastructure_upgrades" text,
        "academic_enhancement_plans" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_libraries" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_sports_complexes" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "campus_boundary" geometry (Polygon, 4326),
        "building_footprints" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_college_campus" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "college_type" "college_type" NOT NULL,
        "college_level" "college_level" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "principal_name" text,
        "affiliated_with" "college_affiliation",
        "affiliation_year" integer,
        "qaa_accredited" boolean DEFAULT false,
        "qaa_accreditation_year" integer,
        "institution_code" varchar(50),
        "instruction_medium" "college_instruction_medium",
        "phone_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "youtube_channel" text,
        "opening_time" time,
        "closing_time" time,
        "operating_days" text,
        "shifts_offered" text,
        "has_weekend_classes" boolean DEFAULT false,
        "academic_calendar_details" text,
        "campus_area_sq_m" numeric(10, 2),
        "building_count" integer,
        "total_floors_sq_m" numeric(10, 2),
        "classroom_count" integer,
        "average_class_size_sq_m" numeric(8, 2),
        "building_condition" "college_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "has_auditorium" boolean DEFAULT false,
        "auditorium_capacity" integer,
        "has_conference_room" boolean DEFAULT false,
        "conference_room_count" integer,
        "has_seminar_hall" boolean DEFAULT false,
        "seminar_hall_count" integer,
        "offered_faculties" jsonb DEFAULT '[]'::jsonb,
        "offered_programs" text,
        "total_programs" integer,
        "shorter_courses" text,
        "specializations" text,
        "has_distance_learning" boolean DEFAULT false,
        "distance_learning_details" text,
        "total_student_capacity" integer,
        "current_enrollment" integer,
        "male_student_count" integer,
        "female_student_count" integer,
        "other_gender_student_count" integer,
        "foreign_student_count" integer,
        "scholarship_student_count" integer,
        "daily_attendance_percent" numeric(5, 2),
        "annual_graduation_rate" numeric(5, 2),
        "employment_rate" numeric(5, 2),
        "student_teacher_ratio" numeric(6, 2),
        "total_faculty_count" integer,
        "full_time_faculty_count" integer,
        "part_time_faculty_count" integer,
        "phd_faculty_count" integer,
        "masters_faculty_count" integer,
        "bachelors_faculty_count" integer,
        "male_faculty_count" integer,
        "female_faculty_count" integer,
        "administrative_staff_count" integer,
        "support_staff_count" integer,
        "faculty_vacancy_count" integer,
        "faculty_turnover_rate" numeric(5, 2),
        "average_faculty_experience_years" numeric(5, 2),
        "library_status" "college_facility_status",
        "book_count" integer,
        "has_e_library" boolean DEFAULT false,
        "e_resource_subscriptions" text,
        "library_seating_capacity" integer,
        "has_computer_lab" boolean DEFAULT false,
        "computer_lab_count" integer,
        "computer_count" integer,
        "internet_speed" text,
        "has_wifi" boolean DEFAULT false,
        "wifi_coverage" text,
        "has_scientific_labs" boolean DEFAULT false,
        "scientific_lab_count" integer,
        "lab_equipment_status" "college_facility_status",
        "has_engineering_workshop" boolean DEFAULT false,
        "has_language_lab" boolean DEFAULT false,
        "has_sports_ground" boolean DEFAULT false,
        "sports_ground_area_sq_m" numeric(10, 2),
        "indoor_sports_facilities" text,
        "outdoor_sports_facilities" text,
        "has_gym" boolean DEFAULT false,
        "has_hostel" boolean DEFAULT false,
        "male_hostel_capacity" integer,
        "female_hostel_capacity" integer,
        "has_canteen" boolean DEFAULT false,
        "canteen_capacity" integer,
        "has_transport_service" boolean DEFAULT false,
        "transport_service_details" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "toilet_count" integer,
        "has_disabled_friendly_toilets" boolean DEFAULT false,
        "has_disabled_access" boolean DEFAULT false,
        "disabled_access_details" text,
        "has_health_clinic" boolean DEFAULT false,
        "has_mental_health_services" boolean DEFAULT false,
        "has_fire_safety_system" boolean DEFAULT false,
        "fire_safety_details" text,
        "has_emergency_exits" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "security_personnel_count" integer,
        "annual_budget_npr" numeric(18, 2),
        "average_tuition_fee_npr" numeric(10, 2),
        "scholarship_budget_percent" numeric(5, 2),
        "research_budget_percent" numeric(5, 2),
        "infrastructure_budget_percent" numeric(5, 2),
        "has_financial_aid" boolean DEFAULT false,
        "financial_aid_details" text,
        "performance_level" "college_performance_level",
        "passing_rate_percent" numeric(5, 2),
        "research_publications_count" integer,
        "research_projects" text,
        "industry_collaborations" text,
        "academic_achievements" text,
        "quality_assurance_measures" text,
        "has_career_counseling" boolean DEFAULT false,
        "career_counseling_details" text,
        "student_support_services" text,
        "has_alumni_association" boolean DEFAULT false,
        "alumni_count" integer,
        "notable_alumni" text,
        "placement_services" boolean DEFAULT false,
        "placement_companies_count" integer,
        "placement_rate_percent" numeric(5, 2),
        "average_starting_salary_npr" numeric(10, 2),
        "has_governing_board" boolean DEFAULT true,
        "governing_board_size" integer,
        "female_in_governing_board" integer,
        "administrative_structure" text,
        "has_student_union" boolean DEFAULT false,
        "student_union_details" text,
        "development_plans" text,
        "expansion_plans" text,
        "new_programs_planned" text,
        "infrastructure_improvement_plans" text,
        "academic_challenges" text,
        "infrastructure_challenges" text,
        "financial_challenges" text,
        "human_resource_challenges" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_universities" jsonb DEFAULT '[]'::jsonb,
        "linked_industries" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "campus_area" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_library" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "library_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "management_type" "library_management_type" NOT NULL,
        "managing_authority" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_number" varchar(20),
        "is_affiliated_with_network" boolean DEFAULT false,
        "affiliation_details" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "facebook_page" text,
        "other_social_media" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_on_weekends" boolean DEFAULT false,
        "weekly_off_days" text,
        "has_dedicated_building" boolean DEFAULT true,
        "building_ownership" text,
        "monthly_rent_npr" numeric(10, 2),
        "building_condition" "library_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floor_area_sq_m" numeric(10, 2),
        "total_floors" integer,
        "total_rooms" integer,
        "reading_room_capacity" integer,
        "has_children_reading_section" boolean DEFAULT false,
        "has_reference_section" boolean DEFAULT false,
        "has_periodical_section" boolean DEFAULT false,
        "has_digital_section" boolean DEFAULT false,
        "has_group_study_space" boolean DEFAULT false,
        "has_individual_study_carrels" boolean DEFAULT false,
        "study_carrel_count" integer,
        "has_outdoor_reading_space" boolean DEFAULT false,
        "table_count" integer,
        "chair_count" integer,
        "shelving_unit_count" integer,
        "has_lockers" boolean DEFAULT false,
        "locker_count" integer,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "has_toilets" boolean DEFAULT true,
        "has_disabled_accessible_toilets" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_wifi" boolean DEFAULT false,
        "has_heating_system" boolean DEFAULT false,
        "has_cooling_system" boolean DEFAULT false,
        "total_books_count" integer,
        "nepali_language_books_count" integer,
        "english_language_books_count" integer,
        "other_language_books_count" integer,
        "children_books_count" integer,
        "reference_books_count" integer,
        "textbook_count" integer,
        "fiction_books_count" integer,
        "non_fiction_books_count" integer,
        "rarebooks_count" integer,
        "antique_books_count" integer,
        "local_history_books_count" integer,
        "periodical_subscriptions_count" integer,
        "newspaper_subscriptions_count" integer,
        "magazine_subscriptions_count" integer,
        "audio_visual_materials_count" integer,
        "digital_resources_count" integer,
        "collection_size_category" "collection_size_category",
        "last_inventory_date" date,
        "annual_new_acquisitions_count" integer,
        "total_collection_value_npr" numeric(14, 2),
        "has_organized_catalog" boolean DEFAULT false,
        "catalog_system" text,
        "has_catalog_cards" boolean DEFAULT false,
        "has_digital_catalog" boolean DEFAULT false,
        "catalog_software" text,
        "has_membership_system" boolean DEFAULT true,
        "total_members_count" integer,
        "student_members_count" integer,
        "teacher_members_count" integer,
        "community_members_count" integer,
        "lifetime_members_count" integer,
        "annual_membership_fee_npr" numeric(10, 2),
        "student_membership_fee_npr" numeric(10, 2),
        "max_books_per_member" integer,
        "max_loan_period_days" integer,
        "late_fee_per_day_npr" numeric(6, 2),
        "average_monthly_circulation" integer,
        "automation_level" "automation_level",
        "has_computerized_catalog" boolean DEFAULT false,
        "has_barcoding_system" boolean DEFAULT false,
        "has_rfid_system" boolean DEFAULT false,
        "digital_resource_access" boolean DEFAULT false,
        "subscribe_to_digital_resources" boolean DEFAULT false,
        "digital_resource_details" text,
        "has_digital_repository" boolean DEFAULT false,
        "digital_repository_details" text,
        "has_computers" boolean DEFAULT false,
        "computer_count" integer,
        "computers_for_public_use_count" integer,
        "computers_for_staff_use_count" integer,
        "has_printers" boolean DEFAULT false,
        "printer_count" integer,
        "has_photocopiers" boolean DEFAULT false,
        "photocopier_count" integer,
        "has_scanners" boolean DEFAULT false,
        "scanner_count" integer,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "volunteer_staff_count" integer,
        "trained_librarian_count" integer,
        "untraned_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "other_gender_staff_count" integer,
        "chief_librarian_qualification" text,
        "staff_training_status" text,
        "offers_reference_service" boolean DEFAULT true,
        "offers_inter_library_loan" boolean DEFAULT false,
        "offers_mobile_library_service" boolean DEFAULT false,
        "offers_online_resource_access" boolean DEFAULT false,
        "offers_community_programs" boolean DEFAULT false,
        "community_program_details" text,
        "offers_reading_programs" boolean DEFAULT false,
        "reading_program_details" text,
        "offers_skill_training" boolean DEFAULT false,
        "skill_training_details" text,
        "offers_research_support" boolean DEFAULT false,
        "offers_bibliography_service" boolean DEFAULT false,
        "offers_digitization_service" boolean DEFAULT false,
        "offers_printing_service" boolean DEFAULT false,
        "offers_copying_service" boolean DEFAULT false,
        "offers_scanning_service" boolean DEFAULT false,
        "average_daily_visitors_count" integer,
        "peak_hour_visitors_count" integer,
        "annual_visitors_count" integer,
        "usage_frequency" "usage_frequency",
        "user_satisfaction_level" text,
        "collection_usage_rate" numeric(5, 2),
        "space_utilization_rate" numeric(5, 2),
        "annual_budget_npr" numeric(18, 2),
        "collection_budget_npr" numeric(14, 2),
        "salary_budget_npr" numeric(14, 2),
        "facilities_budget_npr" numeric(14, 2),
        "has_generated_income" boolean DEFAULT false,
        "annual_income_npr" numeric(14, 2),
        "income_sources" text,
        "receives_government_funding" boolean DEFAULT false,
        "government_funding_details_npr" numeric(14, 2),
        "receives_donor_funding" boolean DEFAULT false,
        "donor_funding_details_npr" numeric(14, 2),
        "donor_organizations" text,
        "has_management_committee" boolean DEFAULT false,
        "management_committee_size" integer,
        "female_committee_members" integer,
        "committee_meeting_frequency" text,
        "has_policies_and_procedures" boolean DEFAULT false,
        "has_strategic_plan" boolean DEFAULT false,
        "has_annual_work_plan" boolean DEFAULT false,
        "has_user_feedback_system" boolean DEFAULT false,
        "last_manager_election_date" date,
        "collaborating_institutions" text,
        "partnership_details" text,
        "has_security_system" boolean DEFAULT false,
        "security_system_details" text,
        "has_fire_safety_equipment" boolean DEFAULT false,
        "fire_safety_details" text,
        "has_disaster_management_plan" boolean DEFAULT false,
        "major_challenges" text,
        "collection_development_needs" text,
        "infrastructure_needs" text,
        "staffing_needs" text,
        "technological_needs" text,
        "expansion_plans" text,
        "digitization_plans" text,
        "service_improvement_plans" text,
        "historical_notes" text,
        "cultural_significance" text,
        "special_collections" text,
        "notable_achievements" text,
        "community_engagement_activities" text,
        "educational_impact" text,
        "cultural_preservation_efforts" text,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_colleges" jsonb DEFAULT '[]'::jsonb,
        "linked_community_organizations" jsonb DEFAULT '[]'::jsonb,
        "linked_government_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_child_development_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "center_type" "child_development_center_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_number" varchar(20),
        "management_type" "child_center_management_type" NOT NULL,
        "affiliated_school_id" varchar(36),
        "affiliated_school_name" text,
        "operating_hours_start" time,
        "operating_hours_end" time,
        "operating_days" text,
        "is_year_round_operation" boolean DEFAULT true,
        "holiday_schedule" text,
        "has_after_hours_program" boolean DEFAULT false,
        "after_hours_program_details" text,
        "principal_name" text,
        "contact_person_name" text,
        "contact_person_role" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "other_social_media" text,
        "total_student_capacity" integer,
        "current_enrollment" integer,
        "waitlist_count" integer,
        "minimum_age_months" integer,
        "maximum_age_years" integer,
        "has_age_group_segregation" boolean DEFAULT true,
        "age_group_details" text,
        "toddler_count" integer,
        "pre_schooler_count" integer,
        "boys_count" integer,
        "girls_count" integer,
        "special_needs_children_count" integer,
        "scholarship_seats_count" integer,
        "free_lunch_provided_count" integer,
        "total_staff_count" integer,
        "teacher_count" integer,
        "assistant_count" integer,
        "caregiver_count" integer,
        "administrative_staff_count" integer,
        "support_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "trained_staff_count" integer,
        "ecde_trained_count" integer,
        "montessori_trained_count" integer,
        "first_aid_trained_count" integer,
        "staff_child_ratio" text,
        "staff_qualifications_details" text,
        "staff_training_frequency" text,
        "total_area_sq_m" numeric(10, 2),
        "indoor_area_sq_m" numeric(10, 2),
        "outdoor_area_sq_m" numeric(10, 2),
        "building_condition" "child_center_facility_condition",
        "building_ownership" text,
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_classrooms" integer,
        "has_playground" boolean DEFAULT false,
        "playground_equipped" boolean DEFAULT false,
        "playground_equipment_details" text,
        "has_indoor_play_area" boolean DEFAULT false,
        "has_dedicated_nap_area" boolean DEFAULT false,
        "has_kitchen" boolean DEFAULT false,
        "has_dining_space" boolean DEFAULT false,
        "has_library_corner" boolean DEFAULT false,
        "book_count" integer,
        "has_special_needs_facilities" boolean DEFAULT false,
        "special_needs_facilities_details" text,
        "has_toilet_for_children" boolean DEFAULT true,
        "children_toilet_count" integer,
        "has_separate_toilets_for_staff" boolean DEFAULT false,
        "staff_toilet_count" integer,
        "has_handwashing_station" boolean DEFAULT true,
        "handwashing_station_count" integer,
        "has_drinking_water" boolean DEFAULT true,
        "water_source_type" text,
        "has_electricity" boolean DEFAULT true,
        "infrastructure_adequacy" "infrastructure_adequacy",
        "curriculum_type" text,
        "teaching_methodology" text,
        "language_of_instruction" text,
        "additional_languages_taught" text,
        "has_structured_curriculum" boolean DEFAULT true,
        "curriculum_details" text,
        "daily_schedule_description" text,
        "has_outdoor_activities" boolean DEFAULT true,
        "outdoor_activities_frequency" text,
        "has_art_activities" boolean DEFAULT true,
        "has_music_activities" boolean DEFAULT true,
        "has_physical_activities" boolean DEFAULT true,
        "has_storytelling_activities" boolean DEFAULT true,
        "has_planned_activity_schedule" boolean DEFAULT true,
        "performance_assessment_method" text,
        "parent_teacher_meeting_frequency" text,
        "safety_level" "safety_level",
        "has_fire_safety_equipment" boolean DEFAULT false,
        "fire_safety_equipment_details" text,
        "has_first_aid_kit" boolean DEFAULT true,
        "medical_emergency_procedure" text,
        "has_child_safety_policy" boolean DEFAULT false,
        "child_safety_policy_details" text,
        "has_child_protection_policy" boolean DEFAULT false,
        "conducts_criminal_record_check" boolean DEFAULT false,
        "has_secure_entry_system" boolean DEFAULT false,
        "entry_system_details" text,
        "has_perimeter_fencing" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_daily_attendance_record" boolean DEFAULT true,
        "child_pickup_procedure" text,
        "health_checkup_frequency" text,
        "immunization_requirements" text,
        "sick_child_policy" text,
        "provides_snacks" boolean DEFAULT false,
        "provides_lunch" boolean DEFAULT false,
        "meals_sourced" text,
        "has_nutrition_guidelines" boolean DEFAULT false,
        "nutrition_guidelines_details" text,
        "accommodates_dietary_restrictions" boolean DEFAULT false,
        "meals_included_in_fees" boolean DEFAULT false,
        "meal_fees_structure" text,
        "registration_fee_npr" numeric(10, 2),
        "monthly_fee_npr" numeric(10, 2),
        "annual_fee_npr" numeric(10, 2),
        "other_fees_details" text,
        "has_scholarship_program" boolean DEFAULT false,
        "scholarship_program_details" text,
        "fee_waiver_available" boolean DEFAULT false,
        "fee_waiver_conditions" text,
        "has_inclusion_policy" boolean DEFAULT false,
        "inclusion_policy_details" text,
        "receives_government_funding" boolean DEFAULT false,
        "government_funding_details" text,
        "receives_ngo_funding" boolean DEFAULT false,
        "ngo_funding_details" text,
        "has_parent_teacher_association" boolean DEFAULT false,
        "parent_involvement_level" text,
        "parent_volunteer_program" boolean DEFAULT false,
        "parent_education_program" boolean DEFAULT false,
        "regular_parent_communication_method" text,
        "community_outreach_programs" text,
        "collaborates_with_health_services" boolean DEFAULT false,
        "health_services_collaboration_details" text,
        "collaborates_with_schools" boolean DEFAULT false,
        "school_collaboration_details" text,
        "has_quality_standards_certification" boolean DEFAULT false,
        "certification_details" text,
        "last_inspection_date" date,
        "inspection_result" text,
        "government_monitoring_frequency" text,
        "internal_evaluation_system" text,
        "parent_feedback_mechanism" text,
        "improvement_measures" text,
        "major_challenges" text,
        "resource_needs" text,
        "infrastructure_needs" text,
        "training_needs" text,
        "expansion_plans" text,
        "quality_improvement_plans" text,
        "future_programs" text,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_university" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "university_type" "university_type" NOT NULL,
        "university_category" TEXT NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "district" text,
        "province" text,
        "established_date" date,
        "registration_number" varchar(100),
        "registered_with" text,
        "ugc_registration_number" varchar(100),
        "campus_status" "campus_status",
        "parent_university_id" varchar(36),
        "is_main_campus" boolean DEFAULT false,
        "vicechancellor_name" text,
        "rector_name" text,
        "registrar_name" text,
        "dean_names" jsonb DEFAULT '[]'::jsonb,
        "campus_chief_name" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "youtube_channel" text,
        "linkedin_handle" text,
        "office_opening_time" time,
        "office_closing_time" time,
        "class_hours" text,
        "library_hours" text,
        "weekly_off_days" text,
        "accreditation_status" "accreditation_status",
        "accreditation_body" text,
        "last_accreditation_year" integer,
        "instruction_medium" "instruction_medium",
        "academic_calendar" text,
        "total_faculties" integer,
        "faculties_offered" jsonb DEFAULT '[]'::jsonb,
        "departments_count" integer,
        "departments_list" jsonb DEFAULT '[]'::jsonb,
        "research_centers_count" integer,
        "research_centers_list" jsonb DEFAULT '[]'::jsonb,
        "undergraduate_programs_count" integer,
        "undergraduate_programs_list" jsonb DEFAULT '[]'::jsonb,
        "graduate_programs_count" integer,
        "graduate_programs_list" jsonb DEFAULT '[]'::jsonb,
        "doctorates_programs_count" integer,
        "doctorates_programs_list" jsonb DEFAULT '[]'::jsonb,
        "certificate_courses_count" integer,
        "certificate_courses_list" jsonb DEFAULT '[]'::jsonb,
        "offers_distance_learning" boolean DEFAULT false,
        "offers_online_courses" boolean DEFAULT false,
        "offers_continuing_education" boolean DEFAULT false,
        "total_student_count" integer,
        "undergraduate_student_count" integer,
        "graduate_student_count" integer,
        "doctorate_student_count" integer,
        "certificate_program_student_count" integer,
        "male_student_count" integer,
        "female_student_count" integer,
        "other_gender_student_count" integer,
        "international_student_count" integer,
        "scholarship_recipient_count" integer,
        "annual_graduation_rate" numeric(5, 2),
        "employment_rate_after_graduation" numeric(5, 2),
        "average_enrollment_per_year" integer,
        "total_alumni_count" integer,
        "total_faculty_count" integer,
        "full_time_faculty_count" integer,
        "part_time_faculty_count" integer,
        "visiting_faculty_count" integer,
        "male_faculty_count" integer,
        "female_faculty_count" integer,
        "faculty_with_phd_count" integer,
        "faculty_with_masters_count" integer,
        "faculty_student_ratio" numeric(5, 2),
        "total_administrative_staff_count" integer,
        "total_support_staff_count" integer,
        "faculty_qualification_level" "faculty_qualification_level",
        "total_land_area_sqm" numeric(12, 2),
        "total_built_area_sqm" numeric(12, 2),
        "total_building_count" integer,
        "building_condition" "university_building_condition",
        "classroom_count" integer,
        "average_class_size" integer,
        "laboratory_count" integer,
        "computer_lab_count" integer,
        "total_computer_count" integer,
        "has_library" boolean DEFAULT true,
        "library_book_count" integer,
        "has_digital_library" boolean DEFAULT false,
        "has_wifi" boolean DEFAULT false,
        "wifi_coverage" text,
        "internet_bandwidth" text,
        "has_auditorium" boolean DEFAULT false,
        "auditorium_capacity" integer,
        "has_conference_hall" boolean DEFAULT false,
        "conference_hall_count" integer,
        "has_sports_complex" boolean DEFAULT false,
        "sports_facilities" jsonb DEFAULT '[]'::jsonb,
        "has_playground" boolean DEFAULT false,
        "has_indoor_games" boolean DEFAULT false,
        "has_gym" boolean DEFAULT false,
        "has_medical_facility" boolean DEFAULT false,
        "medical_facility_details" text,
        "has_cafeteria" boolean DEFAULT false,
        "cafeteria_capacity" integer,
        "has_student_hostel" boolean DEFAULT false,
        "male_hostel_capacity" integer,
        "female_hostel_capacity" integer,
        "has_faculty_housing" boolean DEFAULT false,
        "faculty_housing_units" integer,
        "has_parking_facility" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_atm_facility" boolean DEFAULT false,
        "has_solar_power" boolean DEFAULT false,
        "solar_capacity_kw" numeric(8, 2),
        "has_rainwater_harvesting" boolean DEFAULT false,
        "has_elevator" boolean DEFAULT false,
        "has_access_for_disabled" boolean DEFAULT false,
        "has_elearning_facilities" boolean DEFAULT false,
        "elearning_details" text,
        "overall_facility_status" "university_facility_status",
        "research_activity_level" "research_activity_level",
        "annual_research_budget_npr" numeric(14, 2),
        "annual_publication_count" integer,
        "intellectual_property_count" integer,
        "research_collaborations" text,
        "major_research_areas" text,
        "research_funding_sources" text,
        "career_counseling_services" boolean DEFAULT false,
        "student_exchange_programs" boolean DEFAULT false,
        "internship_programs" boolean DEFAULT false,
        "industry_linkages" text,
        "community_outreach_programs" text,
        "alumni_engagement_programs" text,
        "extracurricular_activities" text,
        "student_clubs_count" integer,
        "student_clubs_list" jsonb DEFAULT '[]'::jsonb,
        "annual_budget_npr" numeric(18, 2),
        "funding_sources" text,
        "undergraduate_tuition_npr" numeric(12, 2),
        "graduate_tuition_npr" numeric(12, 2),
        "scholarship_budget_npr" numeric(14, 2),
        "has_endowment_fund" boolean DEFAULT false,
        "endowment_size_npr" numeric(18, 2),
        "has_financial_aid_program" boolean DEFAULT false,
        "financial_aid_details" text,
        "has_international_collaborations" boolean DEFAULT false,
        "international_partner_count" integer,
        "international_partners" jsonb DEFAULT '[]'::jsonb,
        "exchange_program_details" text,
        "international_accreditation" text,
        "has_internal_quality_assurance" boolean DEFAULT false,
        "quality_assurance_details" text,
        "national_ranking" text,
        "international_ranking" text,
        "major_awards" text,
        "has_strategic_plan" boolean DEFAULT false,
        "current_strategic_plan_period" text,
        "governance_structure" text,
        "has_automated_management_system" boolean DEFAULT false,
        "management_system_details" text,
        "major_challenges" text,
        "development_plans" text,
        "expansion_plans" text,
        "community_service_programs" text,
        "public_lecture_series_frequency" text,
        "community_development_initiatives" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "campus_area" geometry (Polygon, 4326),
        "building_footprints" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_community_learning_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "center_type" "clc_type" NOT NULL,
        "established_date" date,
        "registration_number" varchar(50),
        "registered_with" text,
        "main_program_type" "clc_program_type" NOT NULL,
        "other_program_types" jsonb DEFAULT '[]'::jsonb,
        "is_operational" boolean DEFAULT true,
        "operational_status" text,
        "managing_organization" text,
        "chairperson_name" text,
        "manager_name" text,
        "management_committee_size" integer,
        "women_in_management_committee" integer,
        "marginalised_groups_in_committee" integer,
        "total_learners" integer,
        "female_learner_count" integer,
        "male_learner_count" integer,
        "children_learner_count" integer,
        "youth_learner_count" integer,
        "adult_learner_count" integer,
        "senior_learner_count" integer,
        "dalit_learner_count" integer,
        "janajati_learner_count" integer,
        "madhesi_learner_count" integer,
        "muslim_learner_count" integer,
        "brahmin_chhetri_learner_count" integer,
        "other_ethnicity_learner_count" integer,
        "pwd_learner_count" integer,
        "literacy_programs_offered" boolean DEFAULT false,
        "post_literacy_programs_offered" boolean DEFAULT false,
        "income_generation_programs_offered" boolean DEFAULT false,
        "skill_training_offered" boolean DEFAULT false,
        "skill_training_types" text,
        "equivalency_programs_offered" boolean DEFAULT false,
        "equivalency_program_details" text,
        "community_development_activities" text,
        "life_long_learning_activities" text,
        "annual_program_count" integer,
        "average_program_duration_days" integer,
        "medium_of_instruction" "clc_medium_of_instruction",
        "local_languages_used" text,
        "full_time_staff_count" integer,
        "part_time_staff_count" integer,
        "female_staff_count" integer,
        "male_staff_count" integer,
        "volunteers_count" integer,
        "facilitators_count" integer,
        "facilitator_training_frequency" text,
        "staff_qualification_details" text,
        "building_ownership" text,
        "is_shared_facility" boolean DEFAULT false,
        "shared_with_details" text,
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_rooms" integer,
        "classroom_count" integer,
        "has_assembly_hall" boolean DEFAULT false,
        "has_library_space" boolean DEFAULT false,
        "has_computer_lab" boolean DEFAULT false,
        "has_resource_corner" boolean DEFAULT false,
        "has_administrative_room" boolean DEFAULT false,
        "has_counseling_room" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_drinking_water" boolean DEFAULT false,
        "has_toilets" boolean DEFAULT true,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_handwashing_facilities" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "computer_count" integer,
        "tablet_count" integer,
        "book_count" integer,
        "has_audio_visual_equipment" boolean DEFAULT false,
        "has_teaching_learning_materials" boolean DEFAULT true,
        "teaching_materials_status" "facility_status",
        "has_incoming_generating_equipment" boolean DEFAULT false,
        "income_generating_equipment_details" text,
        "resource_materials_availability" text,
        "annual_budget_npr" numeric(18, 2),
        "government_funding_npr" numeric(18, 2),
        "donor_funding_npr" numeric(18, 2),
        "community_contribution_npr" numeric(18, 2),
        "income_generation_npr" numeric(18, 2),
        "has_endowment_fund" boolean DEFAULT false,
        "endowment_fund_size_npr" numeric(18, 2),
        "major_donors" text,
        "has_annual_audit" boolean DEFAULT false,
        "last_audit_date" date,
        "completion_rate_percent" numeric(5, 2),
        "dropout_rate_percent" numeric(5, 2),
        "employment_success_rate_percent" numeric(5, 2),
        "annual_graduates_count" integer,
        "success_stories" text,
        "performance_level" "clc_performance_level",
        "monitoring_mechanism" text,
        "last_inspection_date" date,
        "inspection_authority" text,
        "community_contribution_types" text,
        "community_mobilization_activities" text,
        "network_partnership" text,
        "collaborating_organizations" jsonb DEFAULT '[]'::jsonb,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "facebook_page" text,
        "opening_time" time,
        "closing_time" time,
        "operating_days_per_week" integer,
        "operating_months_per_year" integer,
        "major_challenges" text,
        "development_plans" text,
        "sustainability_plans" text,
        "support_needs" text,
        "innovation_practices" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_municipality_office" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "classification" "municipality_classification" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "municipality_code" varchar(20),
        "established_date" date,
        "province_number" integer,
        "district_name" text,
        "local_level_type" text,
        "total_wards" integer,
        "total_area_sq_km" numeric(10, 2),
        "population_count" integer,
        "population_year" varchar(4),
        "population_density" numeric(10, 2),
        "mayor_name" text,
        "deputy_mayor_name" text,
        "chief_administrative_officer_name" text,
        "election_last_held_date" date,
        "phone_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "po_box_number" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "youtube_channel" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_on_weekends" boolean DEFAULT false,
        "weekly_off_days" text,
        "holiday_schedule" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_disabled_access" boolean DEFAULT false,
        "building_amenities" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_public_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_public_toilets" boolean DEFAULT false,
        "has_handicap_toilets" boolean DEFAULT false,
        "has_public_wifi" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_help_desk" boolean DEFAULT false,
        "has_token_system" boolean DEFAULT false,
        "has_feedback_system" boolean DEFAULT false,
        "has_information_desk" boolean DEFAULT false,
        "has_notice_board" boolean DEFAULT true,
        "digital_infrastructure_level" "digital_infrastructure_level",
        "has_biometric_attendance" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "has_e_governance" boolean DEFAULT false,
        "e_governance_details" text,
        "has_digital_payment" boolean DEFAULT false,
        "digital_payment_methods" text,
        "has_online_applications" boolean DEFAULT false,
        "online_services_offered" text,
        "has_digital_record_keeping" boolean DEFAULT false,
        "has_web_portal" boolean DEFAULT false,
        "web_portal_services" text,
        "has_mobile_app" boolean DEFAULT false,
        "mobile_app_services" text,
        "has_grievance_portal" boolean DEFAULT false,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "contract_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "other_gender_staff_count" integer,
        "staffing_adequacy" text,
        "vital_registration_services" boolean DEFAULT true,
        "property_tax_collection" boolean DEFAULT true,
        "business_registration" boolean DEFAULT true,
        "building_permits" boolean DEFAULT true,
        "recommendation_letters" boolean DEFAULT true,
        "social_security_distribution" boolean DEFAULT true,
        "disaster_response_services" boolean DEFAULT true,
        "agricultural_extension_services" boolean DEFAULT false,
        "environmental_services" boolean DEFAULT false,
        "health_services" boolean DEFAULT false,
        "educational_services" boolean DEFAULT false,
        "others_services_offered" text,
        "average_service_time_minutes" integer,
        "daily_visitor_count" integer,
        "monthly_service_delivery_count" integer,
        "service_performance_rating" "service_performance",
        "citizen_satisfaction_percent" integer,
        "service_innovations" text,
        "annual_budget_npr" numeric(18, 2),
        "revenue_collection_npr" numeric(18, 2),
        "budget_fiscal_year" varchar(9),
        "major_income_sources_details" text,
        "major_expenditure_details" text,
        "external_funding_sources" text,
        "has_budget_public_disclosure" boolean DEFAULT false,
        "development_budget_npr" numeric(18, 2),
        "ongoing_development_projects" text,
        "completed_development_projects" text,
        "major_infrastructure_projects" text,
        "public_private_partnerships" text,
        "annual_plan_published" boolean DEFAULT false,
        "public_hearings_held" boolean DEFAULT false,
        "public_hearings_frequency" text,
        "transparency_mechanisms" text,
        "anti_corruption_measures" text,
        "right_to_information_officer" boolean DEFAULT false,
        "has_judicial_committee" boolean DEFAULT true,
        "has_dispute_resolution_mechanism" boolean DEFAULT false,
        "has_consumer_committee" boolean DEFAULT false,
        "has_procurement_committee" boolean DEFAULT true,
        "executive_committee_size" integer,
        "women_in_executive_committee" integer,
        "dalits_in_executive_committee" integer,
        "vehicle_count" integer,
        "heavy_equipment_count" integer,
        "computer_count" integer,
        "asset_management_system" boolean DEFAULT false,
        "land_holdings_details" text,
        "ngo_community_partnerships" text,
        "coordination_with_province_gov" text,
        "coordination_with_federal_gov" text,
        "inter_municipal_cooperation" text,
        "international_partnerships" text,
        "institutional_challenges" text,
        "resource_challenges" text,
        "capacity_challenges" text,
        "development_priorities" text,
        "strategic_plan" boolean DEFAULT false,
        "strategic_plan_period" text,
        "vision_statement" text,
        "future_expansion_plans" text,
        "digitization_plans" text,
        "capacity_building_plans" text,
        "awards_received" text,
        "certifications_obtained" text,
        "best_practices_implemented" text,
        "periodic_publications" text,
        "communication_strategy" text,
        "public_awareness_programs" text,
        "special_programs" text,
        "facility_for_elderly" boolean DEFAULT false,
        "facility_for_children" boolean DEFAULT false,
        "facility_for_women" boolean DEFAULT false,
        "facility_for_disabled" boolean DEFAULT false,
        "disaster_management_plans" boolean DEFAULT false,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_educational_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_infrastructure_projects" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "jurisdiction_area" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_office" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer NOT NULL,
        "location" text,
        "address" text,
        "location_type" "ward_location_type",
        "municipality_office_id" varchar(36),
        "established_date" date,
        "population_count" integer,
        "population_year" varchar(4),
        "household_count" integer,
        "total_area_sq_km" numeric(10, 2),
        "ward_chairperson_name" text,
        "election_last_held_date" date,
        "ward_secretary_name" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_on_weekends" boolean DEFAULT false,
        "weekly_off_days" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_disabled_access" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_public_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_public_toilets" boolean DEFAULT false,
        "has_handicap_toilets" boolean DEFAULT false,
        "has_public_wifi" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_help_desk" boolean DEFAULT false,
        "has_token_system" boolean DEFAULT false,
        "has_feedback_system" boolean DEFAULT false,
        "has_notice_board" boolean DEFAULT true,
        "digital_infrastructure_level" "digital_infrastructure_level",
        "has_biometric_attendance" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "has_e_governance" boolean DEFAULT false,
        "has_digital_payment" boolean DEFAULT false,
        "digital_payment_methods" text,
        "has_online_applications" boolean DEFAULT false,
        "online_services_offered" text,
        "has_digital_record_keeping" boolean DEFAULT false,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "contract_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "other_gender_staff_count" integer,
        "staffing_adequacy" text,
        "vital_registration_services" boolean DEFAULT true,
        "property_tax_collection" boolean DEFAULT true,
        "business_registration" boolean DEFAULT true,
        "building_permits" boolean DEFAULT true,
        "recommendation_letters" boolean DEFAULT true,
        "social_security_distribution" boolean DEFAULT true,
        "disaster_response_services" boolean DEFAULT false,
        "others_services_offered" text,
        "average_service_time_minutes" integer,
        "daily_visitor_count" integer,
        "monthly_service_delivery_count" integer,
        "service_performance_rating" "service_performance",
        "citizen_satisfaction_percent" integer,
        "annual_budget_npr" numeric(18, 2),
        "budget_fiscal_year" varchar(9),
        "major_expenditure_details" text,
        "development_budget_npr" numeric(18, 2),
        "ongoing_development_projects" text,
        "completed_development_projects" text,
        "public_hearings_held" boolean DEFAULT false,
        "public_hearings_frequency" text,
        "has_consumer_committee" boolean DEFAULT false,
        "ward_committee_size" integer,
        "women_in_ward_committee" integer,
        "dalits_in_ward_committee" integer,
        "institutional_challenges" text,
        "resource_challenges" text,
        "development_priorities" text,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_health_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_educational_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_religious_places" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "ward_boundary" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_water_supply_institution" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "institution_type" "water_supply_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "registration_number" varchar(50),
        "registered_with" text,
        "coverage" text,
        "coverage_population" integer,
        "total_customers" integer,
        "total_household_connections" integer,
        "total_institutional_connections" integer,
        "total_commercial_connections" integer,
        "chairperson_name" text,
        "manager_name" text,
        "management_type" text,
        "committee_size_total" integer,
        "committee_female_members" integer,
        "committee_dalit_members" integer,
        "committee_marginalized_members" integer,
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "other_social_media" text,
        "operating_days" text,
        "office_opening_time" time,
        "office_closing_time" time,
        "customer_service_hours" text,
        "has_emergency_service" boolean DEFAULT false,
        "emergency_service_details" text,
        "has_office_building" boolean DEFAULT true,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "water_building_condition",
        "construction_year" integer,
        "last_renovation_year" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_customer_service_center" boolean DEFAULT false,
        "water_source" "water_source_type",
        "water_source_details" text,
        "water_source_capacity_lpd" integer,
        "water_source_distance" numeric(8, 2),
        "water_rights_status" text,
        "watershed_protection" boolean DEFAULT false,
        "watershed_protection_details" text,
        "treatment_type" "treatment_type",
        "treatment_details" text,
        "treatment_capacity_lpd" integer,
        "water_quality_testing" boolean DEFAULT false,
        "water_quality_testing_frequency" text,
        "water_quality" "water_quality",
        "quality_parameters" text,
        "quality_issues" text,
        "has_treatment_plant" boolean DEFAULT false,
        "treatment_plant_capacity" integer,
        "has_storage_tank" boolean DEFAULT false,
        "storage_tank_capacity" integer,
        "storage_tank_count" integer,
        "storage_tank_details" text,
        "distribution_system" "distribution_system",
        "pipeline_length" numeric(10, 2),
        "pipeline_material" text,
        "pipeline_condition" text,
        "public_tap_count" integer,
        "has_pressure_management" boolean DEFAULT false,
        "pressure_management_details" text,
        "service_regularity" "service_regularity",
        "supply_hours_per_day" numeric(4, 2),
        "supply_days_per_week" integer,
        "average_supply_lpcd" numeric(8, 2),
        "is_metered" boolean DEFAULT false,
        "metering_coverage" integer,
        "non_revenue_water_percent" numeric(5, 2),
        "has_tariff_system" boolean DEFAULT true,
        "tariff_structure" text,
        "minimum_monthly_charge_npr" numeric(10, 2),
        "average_monthly_bill_npr" numeric(10, 2),
        "connection_fee_npr" numeric(10, 2),
        "billing_frequency" text,
        "billing_method" text,
        "payment_methods" text,
        "has_digital_payment" boolean DEFAULT false,
        "digital_payment_methods" text,
        "bill_collection_rate" numeric(5, 2),
        "total_staff_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "permanent_staff_count" integer,
        "contract_staff_count" integer,
        "female_staff_count" integer,
        "staff_training_status" text,
        "has_o_and_m_plan" boolean DEFAULT false,
        "maintenance_budget_npr" numeric(14, 2),
        "preventive_maintenance_schedule" text,
        "breakdown_response_time" text,
        "equipment_availability" text,
        "has_spare_parts_inventory" boolean DEFAULT false,
        "maintenance_staff_capacity" text,
        "has_service_vehicles" boolean DEFAULT false,
        "service_vehicle_count" integer,
        "annual_budget_npr" numeric(18, 2),
        "annual_revenue_npr" numeric(18, 2),
        "operating_cost_npr" numeric(18, 2),
        "financial_sustainability" "financial_health",
        "has_emergency_fund" boolean DEFAULT false,
        "emergency_fund_amount_npr" numeric(18, 2),
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources" text,
        "has_accounting_system" boolean DEFAULT false,
        "accounting_system_details" text,
        "last_audit_date" date,
        "has_consumer_committee" boolean DEFAULT false,
        "consumer_meeting_frequency" text,
        "has_grievance_system" boolean DEFAULT false,
        "grievance_resolution_process" text,
        "annual_complaints_count" integer,
        "customer_satisfaction_level" text,
        "has_awareness_programs" boolean DEFAULT false,
        "awareness_topics" text,
        "pumping_capacity" numeric(10, 2),
        "has_generator_backup" boolean DEFAULT false,
        "generator_capacity" text,
        "energy_source_primary" text,
        "energy_source_backup" text,
        "monthly_energy_consumption" numeric(10, 2),
        "has_automation_system" boolean DEFAULT false,
        "automation_details" text,
        "has_water_conservation_program" boolean DEFAULT false,
        "water_conservation_measures" text,
        "leakage_detection_system" boolean DEFAULT false,
        "leakage_percentage" numeric(5, 2),
        "water_reuse_recycling" boolean DEFAULT false,
        "water_reuse_details" text,
        "has_digital_billing" boolean DEFAULT false,
        "has_customer_database" boolean DEFAULT false,
        "has_scada" boolean DEFAULT false,
        "has_gis_mapping" boolean DEFAULT false,
        "technologies_used" text,
        "digitization_plans" text,
        "major_challenges" text,
        "infrastructure_needs" text,
        "capacity_building_needs" text,
        "future_expansion_plans" text,
        "climate_change_adaptation" text,
        "disaster_preparedness" text,
        "manages_sanitation_services" boolean DEFAULT false,
        "sanitation_services" text,
        "sewerage_network" boolean DEFAULT false,
        "sewerage_network_coverage" integer,
        "has_wastewater_treatment" boolean DEFAULT false,
        "wastewater_treatment_details" text,
        "septage_management" boolean DEFAULT false,
        "septage_management_details" text,
        "public_meetings_held" boolean DEFAULT false,
        "meeting_frequency" text,
        "public_report_published" boolean DEFAULT false,
        "has_transparency_mechanisms" boolean DEFAULT false,
        "transparency_mechanisms" text,
        "has_complaint_handling_system" boolean DEFAULT false,
        "coordination_with_local_gov" text,
        "coordination_with_provincial_gov" text,
        "coordination_with_federal_gov" text,
        "partner_organizations" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_educational_institutions" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "service_area_polygon" geometry (MultiPolygon, 4326),
        "pipeline_network" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_land_survey_branch" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "office_type" "survey_office_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "office_code" varchar(20),
        "established_date" date,
        "parent_office_id" varchar(36),
        "jurisdiction_area" text,
        "central_office_distance" numeric(8, 2),
        "office_head_name" text,
        "office_head_title" text,
        "office_head_appointment_date" date,
        "phone_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "po_box_number" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_on_weekends" boolean DEFAULT false,
        "weekly_off_days" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_disabled_access" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_public_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_public_toilets" boolean DEFAULT false,
        "has_public_wifi" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_help_desk" boolean DEFAULT false,
        "has_token_system" boolean DEFAULT false,
        "has_feedback_system" boolean DEFAULT false,
        "has_notice_board" boolean DEFAULT true,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_surveying_equipment" boolean DEFAULT true,
        "total_station_count" integer,
        "total_station_condition" "equipment_condition",
        "gps_equipment_count" integer,
        "gps_equipment_condition" "equipment_condition",
        "rtgps_available" boolean DEFAULT false,
        "traditional_theodolite_count" integer,
        "leveling_equipment_count" integer,
        "drafting_equipment_available" boolean DEFAULT true,
        "equipment_last_updated_year" integer,
        "equipment_adequacy" text,
        "drone_survey_capability" boolean DEFAULT false,
        "drone_count" integer,
        "lidar_capability" boolean DEFAULT false,
        "aerial_photography_capability" boolean DEFAULT false,
        "dgps_available" boolean DEFAULT false,
        "gnss_base_station_available" boolean DEFAULT false,
        "digital_infrastructure_level" "digital_infrastructure_level",
        "has_biometric_attendance" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "has_digital_record_keeping" boolean DEFAULT false,
        "has_gis_lab" boolean DEFAULT false,
        "gis_lab_details" text,
        "computer_count" integer,
        "digitization_status" text,
        "digital_mapping_capability" boolean DEFAULT false,
        "has_plotters" boolean DEFAULT false,
        "plotter_count" integer,
        "has_scanners" boolean DEFAULT false,
        "scanner_count" integer,
        "has_digital_data_backup" boolean DEFAULT false,
        "backup_frequency" text,
        "land_records_digitized" boolean DEFAULT false,
        "land_records_digitization_percent" integer,
        "maps_digitized" boolean DEFAULT false,
        "maps_digitization_percent" integer,
        "has_land_information_system" boolean DEFAULT false,
        "land_information_system_details" text,
        "has_cadastral_database" boolean DEFAULT false,
        "cadastral_database_details" text,
        "has_gis_system" boolean DEFAULT false,
        "gis_system_details" text,
        "software_used" text,
        "online_service_availability" boolean DEFAULT false,
        "online_services_details" text,
        "land_parcels_covered" integer,
        "average_survey_time_per_parcel" numeric(8, 2),
        "annual_survey_capacity" integer,
        "average_application_processing_time" integer,
        "backlog_cases" integer,
        "oldest_pending_case_date" date,
        "survey_accuracy_level" "accuracy_level",
        "service_capacity" "service_capacity",
        "service_efficiency" "service_efficiency",
        "land_title_survey" boolean DEFAULT true,
        "boundary_survey" boolean DEFAULT true,
        "topographical_survey" boolean DEFAULT true,
        "subdivision_services" boolean DEFAULT true,
        "land_dispute_resolution" boolean DEFAULT true,
        "map_preparation" boolean DEFAULT true,
        "coordinate_referencing" boolean DEFAULT true,
        "land_valuation" boolean DEFAULT false,
        "geodetic_control" boolean DEFAULT false,
        "monthly_applications_received" integer,
        "monthly_services_completed" integer,
        "services_offered" text,
        "total_staff_count" integer,
        "surveyor_count" integer,
        "technician_count" integer,
        "engineer_count" integer,
        "administrative_staff_count" integer,
        "support_staff_count" integer,
        "vacant_positions" integer,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "staff_training_frequency" text,
        "staffing_adequacy" text,
        "has_security_system" boolean DEFAULT false,
        "security_system_details" text,
        "fire_protection_system" boolean DEFAULT false,
        "has_data_privacy_policy" boolean DEFAULT false,
        "has_disaster_recovery_plan" boolean DEFAULT false,
        "record_storage_security" text,
        "historical_maps_available" boolean DEFAULT false,
        "oldest_map_year" integer,
        "historical_records_digitized" boolean DEFAULT false,
        "has_archive" boolean DEFAULT true,
        "archive_condition" text,
        "annual_budget_npr" numeric(18, 2),
        "equipment_budget_npr" numeric(14, 2),
        "maintenance_budget_npr" numeric(14, 2),
        "training_budget_npr" numeric(14, 2),
        "annual_revenue_npr" numeric(18, 2),
        "revenue_from_service_fees_npr" numeric(18, 2),
        "budget_adequacy" text,
        "budget_fiscal_year" varchar(9),
        "survey_cost_per_parcel_npr" numeric(10, 2),
        "map_printing_fee_npr" numeric(10, 2),
        "land_title_survey_fee_npr" numeric(10, 2),
        "subdivision_fee_npr" numeric(10, 2),
        "boundary_survey_fee_npr" numeric(10, 2),
        "fee_structure_details" text,
        "subsidized_services" boolean DEFAULT false,
        "subsidized_services_details" text,
        "technical_challenges" text,
        "infrastructure_challenges" text,
        "equipment_needs" text,
        "training_needs" text,
        "software_needs" text,
        "other_challenges" text,
        "coord_with_municipal_office" boolean DEFAULT true,
        "coord_with_land_revenue_office" boolean DEFAULT true,
        "coord_with_court_system" boolean DEFAULT false,
        "coord_with_department_survey" boolean DEFAULT true,
        "external_coordination" text,
        "data_sharing" text,
        "ongoing_projects" text,
        "planned_projects_upgrades" text,
        "innovation_initiatives" text,
        "modernization_efforts" text,
        "expansion_plans" text,
        "technology_upgrade_plans" text,
        "service_improvement_plans" text,
        "training_facilities_available" boolean DEFAULT false,
        "training_programs_offered" text,
        "annual_training_budget_npr" numeric(14, 2),
        "training_frequency" text,
        "public_awareness_programs" boolean DEFAULT false,
        "outreach_activities" text,
        "public_information_materials" boolean DEFAULT false,
        "service_charts_available" boolean DEFAULT true,
        "transparency_mechanisms" text,
        "anti_corruption_measures" text,
        "public_grievance_system" boolean DEFAULT false,
        "linked_land_revenue_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_forest_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "jurisdiction_area_geometry" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_administrative_office" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "office_type" "administrative_office_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "office_code" varchar(20),
        "established_date" date,
        "parent_office_id" varchar(36),
        "parent_ministry" text,
        "jurisdiction_level" "jurisdiction_level" NOT NULL,
        "jurisdiction_areas" text,
        "population_served" integer,
        "office_head_name" text,
        "office_head_title" text,
        "office_head_appointment_date" date,
        "office_head_contact_number" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "po_box_number" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "other_social_media" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_on_weekends" boolean DEFAULT false,
        "weekly_off_days" text,
        "holiday_schedule" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_disabled_access" boolean DEFAULT false,
        "security_infrastructure" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_heating_system" boolean DEFAULT false,
        "has_cooling_system" boolean DEFAULT false,
        "has_public_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_public_toilets" boolean DEFAULT false,
        "has_handicap_toilets" boolean DEFAULT false,
        "has_public_wifi" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_help_desk" boolean DEFAULT false,
        "has_token_system" boolean DEFAULT false,
        "has_feedback_system" boolean DEFAULT false,
        "has_notice_board" boolean DEFAULT true,
        "has_cafeteria" boolean DEFAULT false,
        "has_childcare_area" boolean DEFAULT false,
        "digital_infrastructure_level" "digital_infrastructure_level",
        "has_biometric_attendance" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_e_governance" boolean DEFAULT false,
        "e_governance_details" text,
        "has_digital_payment" boolean DEFAULT false,
        "digital_payment_methods" text,
        "has_online_applications" boolean DEFAULT false,
        "online_services_offered" text,
        "has_digital_record_keeping" boolean DEFAULT false,
        "digital_record_percentage" integer,
        "has_web_portal" boolean DEFAULT false,
        "web_portal_services" text,
        "has_mobile_app" boolean DEFAULT false,
        "mobile_app_services" text,
        "has_video_conferencing" boolean DEFAULT false,
        "total_staff_count" integer,
        "gazeted_officers_count" integer,
        "non_gazeted_staff_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "support_staff_count" integer,
        "contract_staff_count" integer,
        "vacant_positions" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "other_gender_staff_count" integer,
        "staff_training_frequency" text,
        "staffing_adequacy" text,
        "staff_qualification_details" text,
        "service_volume_level" "service_volume",
        "average_daily_citizens_served" integer,
        "average_case_processing_time_hours" numeric(6, 2),
        "monthly_average_applications" integer,
        "monthly_average_cases_resolved" integer,
        "pending_cases_count" integer,
        "oldest_pending_case_months" integer,
        "workload_capacity" "workload_capacity",
        "service_efficiency" "service_performance",
        "main_services_offered" text,
        "services_categorization" text,
        "has_online_service_tracking" boolean DEFAULT false,
        "has_service_quality_standards" boolean DEFAULT false,
        "average_service_time_minutes" integer,
        "citizen_charter_display" boolean DEFAULT true,
        "service_improvement_initiatives" text,
        "collection_authorized" boolean DEFAULT false,
        "revenue_collection_type_details" text,
        "annual_revenue_collection_npr" numeric(18, 2),
        "fee_schedule_details" text,
        "revenue_growth_percent" numeric(5, 2),
        "annual_budget_npr" numeric(18, 2),
        "budget_fiscal_year" varchar(9),
        "capital_expenditure_npr" numeric(18, 2),
        "operational_expenditure_npr" numeric(18, 2),
        "external_funding_sources" text,
        "fund_utilization_rate" numeric(5, 2),
        "vehicle_count" integer,
        "motorbike_count" integer,
        "computer_count" integer,
        "printer_count" integer,
        "photocopier_count" integer,
        "generator_count" integer,
        "specialized_equipment" text,
        "asset_management_system" boolean DEFAULT false,
        "governing_laws" text,
        "key_regulations" text,
        "compliance_status" text,
        "last_audit_date" date,
        "audit_compliance_status" text,
        "has_citizen_complaint_mechanism" boolean DEFAULT false,
        "complaint_resolution_mechanism" text,
        "annual_complaints_count" integer,
        "complaints_resolved_percent" integer,
        "coordination_with_local_gov" text,
        "coordination_with_province_gov" text,
        "coordination_with_federal_gov" text,
        "inter_office_coordination" text,
        "coordinating_agencies" text,
        "public_information_availability" text,
        "public_awareness_programs" boolean DEFAULT false,
        "public_awareness_program_details" text,
        "community_outreach_activities" text,
        "public_consultation_mechanisms" text,
        "transparency_mechanisms" text,
        "anti_corruption_measures" text,
        "right_to_information_officer" boolean DEFAULT false,
        "publicly_available_documents" text,
        "has_proactive_disclosure" boolean DEFAULT false,
        "disclosure_frequency" text,
        "performance_indicators" text,
        "monitoring_mechanisms" text,
        "last_performance_evaluation_date" date,
        "performance_rating" text,
        "citizen_satisfaction_percent" integer,
        "recent_achievements" text,
        "major_challenges" text,
        "infrastructural_needs" text,
        "staffing_needs" text,
        "technical_needs" text,
        "capacity_building_needs" text,
        "funding_needs" text,
        "policy_reform_needs" text,
        "strategic_plan" boolean DEFAULT false,
        "strategic_plan_period" text,
        "future_expansion_plans" text,
        "digitization_plans" text,
        "service_modernization_plans" text,
        "has_fire_safety_measures" boolean DEFAULT false,
        "fire_safety_measures_details" text,
        "has_emergency_exits" boolean DEFAULT false,
        "emergency_exit_count" integer,
        "has_disaster_preparedness_plans" boolean DEFAULT false,
        "disaster_preparedness_details" text,
        "has_security_personnel" boolean DEFAULT false,
        "security_personnel_count" integer,
        "average_case_pending_months" numeric(6, 2),
        "case_disposal_rate" numeric(5, 2),
        "has_legal_aid_services" boolean DEFAULT false,
        "legal_aid_services_details" text,
        "annual_cases_filed_count" integer,
        "annual_cases_resolved_count" integer,
        "total_pending_cases" integer,
        "jurisdiction_area" numeric(10, 2),
        "population_per_officer_ratio" numeric(10, 2),
        "crime_statistics_available" boolean DEFAULT false,
        "crime_rate_details" text,
        "community_policing_programs" boolean DEFAULT false,
        "community_policing_details" text,
        "annual_transactions_count" integer,
        "average_transaction_processing_days" numeric(5, 2),
        "has_land_records_digitized" boolean DEFAULT false,
        "land_records_digitization_percent" integer,
        "area_served_hectares" numeric(10, 2),
        "farmers_served_count" integer,
        "extension_services_details" text,
        "office_projects_count" integer,
        "beneficiaries_count" integer,
        "institutions_overseen" integer,
        "students_or_patients_served" integer,
        "quality_monitoring_mechanisms" text,
        "program_implementation_details" text,
        "periodic_publications" text,
        "publications_frequency" text,
        "has_resource_center" boolean DEFAULT false,
        "resource_center_details" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_service_providers" jsonb DEFAULT '[]'::jsonb,
        "linked_institutions" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "jurisdiction_area_geometry" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_hospital" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "hospital_type" "hospital_type" NOT NULL,
        "hospital_level" "hospital_level" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_number" varchar(20),
        "ownership" text,
        "affiliated_institution" text,
        "phone_number" text,
        "emergency_number" text,
        "ambulance_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "is_open_24_hours" boolean DEFAULT true,
        "outpatient_opening_time" time,
        "outpatient_closing_time" time,
        "outpatient_open_days" text,
        "emergency_hours" text,
        "total_area_sq_m" numeric(10, 2),
        "building_count" integer,
        "main_building_floors" integer,
        "building_condition" "hospital_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "has_emergency_building" boolean DEFAULT false,
        "has_outpatient_building" boolean DEFAULT false,
        "has_administrative_building" boolean DEFAULT false,
        "has_staff_quarters" boolean DEFAULT false,
        "has_other_buildings" boolean DEFAULT false,
        "other_buildings_details" text,
        "total_bed_count" integer,
        "general_bed_count" integer,
        "private_bed_count" integer,
        "icu_bed_count" integer,
        "nicu_bed_count" integer,
        "picu_bed_count" integer,
        "emergency_bed_count" integer,
        "maternity_bed_count" integer,
        "isolation_bed_count" integer,
        "ventilator_count" integer,
        "bed_occupancy_rate_percent" numeric(5, 2),
        "average_length_of_stay_days" numeric(5, 2),
        "annual_admission_count" integer,
        "annual_outpatient_count" integer,
        "annual_emergency_count" integer,
        "annual_surgery_count" integer,
        "annual_delivery_count" integer,
        "has_casualty_department" boolean DEFAULT false,
        "has_general_medicine" boolean DEFAULT false,
        "has_general_surgery" boolean DEFAULT false,
        "has_obstetrics" boolean DEFAULT false,
        "has_gynecology" boolean DEFAULT false,
        "has_pediatrics" boolean DEFAULT false,
        "has_orthopedics" boolean DEFAULT false,
        "has_ent" boolean DEFAULT false,
        "has_ophthalmology" boolean DEFAULT false,
        "has_dermatology" boolean DEFAULT false,
        "has_psychiatry" boolean DEFAULT false,
        "has_dental_services" boolean DEFAULT false,
        "has_cardiology" boolean DEFAULT false,
        "has_neurology" boolean DEFAULT false,
        "has_oncology" boolean DEFAULT false,
        "has_nicu" boolean DEFAULT false,
        "has_icu" boolean DEFAULT false,
        "has_ccu" boolean DEFAULT false,
        "has_hdu" boolean DEFAULT false,
        "has_pathology" boolean DEFAULT false,
        "has_radiology" boolean DEFAULT false,
        "has_physiotherapy" boolean DEFAULT false,
        "has_emergency_services" boolean DEFAULT false,
        "emergency_service_level" "emergency_service_level",
        "other_departments" text,
        "has_laboratory" boolean DEFAULT false,
        "has_x_ray" boolean DEFAULT false,
        "has_ultrasound" boolean DEFAULT false,
        "has_ct_scan" boolean DEFAULT false,
        "has_mri" boolean DEFAULT false,
        "has_ecg" boolean DEFAULT false,
        "has_eeg" boolean DEFAULT false,
        "has_mammography" boolean DEFAULT false,
        "has_endoscopy" boolean DEFAULT false,
        "has_dialysis" boolean DEFAULT false,
        "dialysis_unit_count" integer,
        "other_diagnostic_facilities" text,
        "has_operation_theater" boolean DEFAULT false,
        "operation_theater_count" integer,
        "has_laparoscopy" boolean DEFAULT false,
        "has_blood_bank" boolean DEFAULT false,
        "blood_bank_type" text,
        "has_ambulance_service" boolean DEFAULT false,
        "ambulance_count" integer,
        "total_staff_count" integer,
        "doctor_count" integer,
        "specialist_doctor_count" integer,
        "nurse_count" integer,
        "paramedic_count" integer,
        "lab_technician_count" integer,
        "radiographer_count" integer,
        "pharmacist_count" integer,
        "administrative_staff_count" integer,
        "support_staff_count" integer,
        "female_staff_percentage" integer,
        "vacant_positions" integer,
        "doctor_beds_ratio" numeric(6, 2),
        "nurse_beds_ratio" numeric(6, 2),
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "power_backup_capacity_kw" numeric(10, 2),
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_water_treatment" boolean DEFAULT false,
        "has_heating" boolean DEFAULT false,
        "has_cooling" boolean DEFAULT false,
        "has_oxygen_supply" boolean DEFAULT false,
        "oxygen_supply_type" text,
        "has_oxygen_plant" boolean DEFAULT false,
        "oxygen_plant_capacity" text,
        "has_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_public_toilets" boolean DEFAULT false,
        "toilet_count" integer,
        "has_canteen" boolean DEFAULT false,
        "has_pharmacy" boolean DEFAULT false,
        "is_pharmacy_24_hours" boolean DEFAULT false,
        "has_atm" boolean DEFAULT false,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_ambulance_parking" boolean DEFAULT false,
        "has_helicopter_landing_facility" boolean DEFAULT false,
        "has_electronic_health_records" boolean DEFAULT false,
        "ehr_system_name" text,
        "has_hospital_management_system" boolean DEFAULT false,
        "hms_system_name" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_telemedecine_service" boolean DEFAULT false,
        "telemedicine_details" text,
        "has_pacs_system" boolean DEFAULT false,
        "has_biometric_attendance" boolean DEFAULT false,
        "has_cctv_coverage" boolean DEFAULT false,
        "accreditation_status" "accreditation_status",
        "accrediting_body" text,
        "last_accreditation_year" integer,
        "has_infection_control" boolean DEFAULT false,
        "infection_control_protocols" text,
        "has_quality_assurance_team" boolean DEFAULT false,
        "quality_assurance_details" text,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_details" text,
        "has_mortality_review" boolean DEFAULT false,
        "patient_satisfaction_measurement" boolean DEFAULT false,
        "patient_satisfaction_percent" integer,
        "annual_budget_npr" numeric(18, 2),
        "government_funding_percentage" integer,
        "donor_funding_percentage" integer,
        "patient_fee_percentage" integer,
        "has_insurance_acceptance" boolean DEFAULT false,
        "accepted_insurance_providers" text,
        "has_free_services" boolean DEFAULT false,
        "free_services_details" text,
        "has_subsidy_programs" boolean DEFAULT false,
        "subsidy_details" text,
        "average_outpatient_fee_npr" numeric(10, 2),
        "average_inpatient_daily_fee_npr" numeric(10, 2),
        "provides_immunization" boolean DEFAULT false,
        "provides_family_planning" boolean DEFAULT false,
        "provides_antenatal_care" boolean DEFAULT false,
        "provides_nutrition_programs" boolean DEFAULT false,
        "provides_health_education" boolean DEFAULT false,
        "provides_outreach_programs" boolean DEFAULT false,
        "outreach_program_details" text,
        "runs_community_programs" boolean DEFAULT false,
        "community_program_details" text,
        "is_teaching_hospital" boolean DEFAULT false,
        "teaching_programs" text,
        "has_research_activities" boolean DEFAULT false,
        "research_focus_areas" text,
        "published_papers_count" integer,
        "has_disaster_management_plan" boolean DEFAULT false,
        "disaster_management_details" text,
        "has_mass_calsualty_management" boolean DEFAULT false,
        "has_earthquake_resistant_building" boolean DEFAULT false,
        "earthquake_protection_details" text,
        "infrastructure_challenges" text,
        "equipment_challenges" text,
        "staffing_challenges" text,
        "supply_chain_challenges" text,
        "funding_challenges" text,
        "quality_challenges" text,
        "other_challenges" text,
        "immediate_needs" text,
        "expansion_plans" text,
        "upgrade_needs" text,
        "future_departments" text,
        "technology_improvement_plans" text,
        "specialty_areas" text,
        "center_of_excellence_areas" text,
        "unique_services" text,
        "referral_hospitals" text,
        "collaborating_institutions" text,
        "part_of_health_network" boolean DEFAULT false,
        "health_network_details" text,
        "recent_upgrades" text,
        "recent_equipment_additions" text,
        "recent_staff_changes" text,
        "external_donor_support" text,
        "ngo_partnerships" text,
        "international_affiliations" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_institutions" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "campus_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_primary_health_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "phc_type" "phc_type" NOT NULL,
        "phc_level" "phc_level" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_number" varchar(20),
        "ownership" text,
        "catchment_population" integer,
        "catchment_area_sq_km" numeric(10, 2),
        "catchment_vdcs" text,
        "catchment_wards" text,
        "phone_number" text,
        "emergency_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_24_hours" boolean DEFAULT false,
        "weekly_off_days" text,
        "emergency_hours_details" text,
        "total_area_sq_m" numeric(10, 2),
        "building_count" integer,
        "total_floors" integer,
        "building_condition" "phc_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "has_staff_quarters" boolean DEFAULT false,
        "staff_quarters_condition" text,
        "staff_quarters_count" integer,
        "has_compound" boolean DEFAULT false,
        "has_boundary_wall" boolean DEFAULT false,
        "total_room_count" integer,
        "examination_room_count" integer,
        "consultation_room_count" integer,
        "procedure_room_count" integer,
        "dispensary_room_count" integer,
        "laboratory_room_count" integer,
        "administration_room_count" integer,
        "waiting_room_count" integer,
        "waiting_room_capacity" integer,
        "observation_bed_count" integer,
        "delivery_bed_count" integer,
        "toilet_count" integer,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_patient_toilets" boolean DEFAULT false,
        "has_waiting_area" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "power_source" "power_source",
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "power_availability_hours_per_day" integer,
        "has_water_supply" boolean DEFAULT true,
        "water_source" "phc_water_source",
        "water_availability" "service_availability",
        "has_handwashing_stations" boolean DEFAULT false,
        "handwashing_station_count" integer,
        "has_waste_disposal_system" boolean DEFAULT false,
        "waste_disposal_system_type" text,
        "has_placenta_pit" boolean DEFAULT false,
        "has_incinerator" boolean DEFAULT false,
        "provides_general_outpatient_services" boolean DEFAULT true,
        "provides_birthing_services" boolean DEFAULT false,
        "provides_antenatal_services" boolean DEFAULT false,
        "provides_postnatal_services" boolean DEFAULT false,
        "provides_immunization_services" boolean DEFAULT false,
        "provides_family_planning_services" boolean DEFAULT false,
        "provides_nutrition_services" boolean DEFAULT false,
        "provides_maternal_health_services" boolean DEFAULT false,
        "provides_child_health_services" boolean DEFAULT false,
        "provides_adolescent_health_services" boolean DEFAULT false,
        "provides_geriatric_services" boolean DEFAULT false,
        "provides_emergency_services" boolean DEFAULT false,
        "provides_referral_services" boolean DEFAULT true,
        "provides_mental_health_services" boolean DEFAULT false,
        "provides_dental_services" boolean DEFAULT false,
        "provides_physiotherapy_services" boolean DEFAULT false,
        "outpatient_days_per_week" integer,
        "immunization_days_per_month" integer,
        "clinic_days_per_month" integer,
        "average_daily_outpatient_count" integer,
        "annual_patient_count" integer,
        "annual_delivery_count" integer,
        "top5_diseases" text,
        "has_basic_laboratory" boolean DEFAULT false,
        "laboratory_tests" text,
        "has_blood_testing_facility" boolean DEFAULT false,
        "has_urine_testing_facility" boolean DEFAULT false,
        "has_stool_testing_facility" boolean DEFAULT false,
        "has_malaria_testing_facility" boolean DEFAULT false,
        "has_tb_testing_facility" boolean DEFAULT false,
        "has_pregnancy_testing_facility" boolean DEFAULT false,
        "has_hiv_testing_facility" boolean DEFAULT false,
        "has_blood_glucose_testing_facility" boolean DEFAULT false,
        "has_ultrasound" boolean DEFAULT false,
        "has_x_ray" boolean DEFAULT false,
        "has_ecg" boolean DEFAULT false,
        "other_diagnostic_facilities" text,
        "has_medicine_dispensary" boolean DEFAULT false,
        "essential_medicines_availability" "service_availability",
        "has_vaccine_refrigerator" boolean DEFAULT false,
        "vaccine_cold_chain_functioning" boolean DEFAULT false,
        "has_medicine_storage" boolean DEFAULT false,
        "medicine_storage_condition" text,
        "has_medicine_supply_shortages" boolean DEFAULT false,
        "medicine_supply_shortage_details" text,
        "has_basic_equipment" boolean DEFAULT false,
        "has_blood_pressure_apparatus" boolean DEFAULT false,
        "has_stethoscope" boolean DEFAULT false,
        "has_thermometer" boolean DEFAULT false,
        "has_weighing_scale" boolean DEFAULT false,
        "has_height_measuring_device" boolean DEFAULT false,
        "has_fetoscope" boolean DEFAULT false,
        "has_examination_table" boolean DEFAULT false,
        "has_delivery_table" boolean DEFAULT false,
        "has_autoclave" boolean DEFAULT false,
        "has_nebulizer" boolean DEFAULT false,
        "has_oxygen_cylinder" boolean DEFAULT false,
        "has_suction_machine" boolean DEFAULT false,
        "has_ambulance" boolean DEFAULT false,
        "ambulance_count" integer,
        "equipment_condition" text,
        "equipment_maintenance_last_date" date,
        "total_staff_count" integer,
        "doctor_count" integer,
        "doctor_availability" "staff_availability",
        "health_assistant_count" integer,
        "staff_nurse_count" integer,
        "anm_count" integer,
        "ahm_count" integer,
        "lab_technician_count" integer,
        "pharmacist_count" integer,
        "administration_staff_count" integer,
        "support_staff_count" integer,
        "female_staff_count" integer,
        "male_staff_count" integer,
        "vacant_positions_count" integer,
        "staff_shortage_critical_areas" text,
        "most_recent_training" text,
        "training_needs" text,
        "has_management_committee" boolean DEFAULT false,
        "management_committee_size" integer,
        "management_committee_female_count" integer,
        "management_committee_frequency" text,
        "last_management_meeting_date" date,
        "has_citizen_charter" boolean DEFAULT false,
        "has_suggestion_box" boolean DEFAULT false,
        "implements_quality_improvement_measures" boolean DEFAULT false,
        "quality_improvement_details" text,
        "has_emergency_plan" boolean DEFAULT false,
        "has_referral_protocol" boolean DEFAULT false,
        "has_monthly_reporting_system" boolean DEFAULT false,
        "has_computer_system" boolean DEFAULT false,
        "computer_count" integer,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "has_electronic_health_record" boolean DEFAULT false,
        "ehr_system_name" text,
        "has_hmis" boolean DEFAULT false,
        "hmis_type" text,
        "has_telemedicine" boolean DEFAULT false,
        "telemedicine_details" text,
        "has_mobile_health_services" boolean DEFAULT false,
        "mobile_health_details" text,
        "annual_budget_npr" numeric(18, 2),
        "government_funding_percentage" integer,
        "community_funding_percentage" integer,
        "donor_funding_percentage" integer,
        "annual_operational_cost_npr" numeric(18, 2),
        "has_user_fees" boolean DEFAULT false,
        "user_fees_details" text,
        "has_exemption_scheme" boolean DEFAULT false,
        "exemption_scheme_details" text,
        "has_insurance_scheme" boolean DEFAULT false,
        "insurance_details" text,
        "percent_people_insured" integer,
        "has_community_outreach_programs" boolean DEFAULT false,
        "community_program_details" text,
        "has_fchvs" boolean DEFAULT false,
        "fchv_count" integer,
        "has_awareness_programs" boolean DEFAULT false,
        "awareness_program_details" text,
        "has_community_feedback_mechanism" boolean DEFAULT false,
        "feedback_mechanism_details" text,
        "implements_immunization_programs" boolean DEFAULT false,
        "immunization_coverage_percent" integer,
        "implements_nutrition_programs" boolean DEFAULT false,
        "nutrition_program_details" text,
        "implements_maternal_health_programs" boolean DEFAULT false,
        "maternal_program_details" text,
        "implements_child_health_programs" boolean DEFAULT false,
        "child_program_details" text,
        "implements_family_planning_programs" boolean DEFAULT false,
        "family_planning_details" text,
        "implements_disease_surveillance" boolean DEFAULT false,
        "implements_school_health_programs" boolean DEFAULT false,
        "infrastructure_challenges" text,
        "equipment_challenges" text,
        "staffing_challenges" text,
        "medicine_challenges" text,
        "funding_challenges" text,
        "community_engagement_challenges" text,
        "other_challenges" text,
        "immediate_needs" text,
        "expansion_plans" text,
        "upgrade_needs" text,
        "future_services" text,
        "maternal_mortality_rate" numeric(10, 2),
        "infant_mortality_rate" numeric(10, 2),
        "under5_mortality_rate" numeric(10, 2),
        "institutional_delivery_rate" numeric(5, 2),
        "immunization_coverage_rate" numeric(5, 2),
        "contraceptive_prevalence_rate" numeric(5, 2),
        "antenatal_care_visit4_rate" numeric(5, 2),
        "receives_external_support" boolean DEFAULT false,
        "supporting_organizations" text,
        "support_types" text,
        "part_of_health_network" boolean DEFAULT false,
        "health_network_details" text,
        "has_referral_system" boolean DEFAULT false,
        "referred_to_hospitals" text,
        "referral_transport_means" text,
        "average_referral_time_minutes" integer,
        "emergency_response_process" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "catchment_area_geometry" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_health_post" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "health_post_type" "health_post_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "registration_number" varchar(50),
        "management_type" "health_post_management" NOT NULL,
        "parent_facility_id" varchar(36),
        "catchment_population" integer,
        "catchment_area_description" text,
        "service_availability" "service_availability",
        "in_charge_title" text,
        "in_charge_name" text,
        "in_charge_contact_number" text,
        "supervising_officer" text,
        "supervising_entity" text,
        "has_management_committee" boolean DEFAULT false,
        "management_committee_details" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "email" text,
        "website_url" text,
        "opening_time" time,
        "closing_time" time,
        "is_24_hour_service" boolean DEFAULT false,
        "weekly_off_day" text,
        "service_hours_per_week" integer,
        "has_emergency_services" boolean DEFAULT false,
        "emergency_service_details" text,
        "building_ownership" text,
        "building_condition" "health_post_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_area_sq_m" numeric(10, 2),
        "has_adequate_waiting_area" boolean DEFAULT false,
        "has_toilets" boolean DEFAULT true,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_patient_privacy" boolean DEFAULT false,
        "has_wheelchair_access" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "electricity_availability_hours_per_day" integer,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "water_availability" text,
        "has_birthing_center" boolean DEFAULT false,
        "has_laboratory" boolean DEFAULT false,
        "has_pharmacy" boolean DEFAULT false,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_details" text,
        "has_handwashing_facility" boolean DEFAULT false,
        "is_covid19_ready" boolean DEFAULT false,
        "facility_condition" text,
        "has_furniture" boolean DEFAULT true,
        "furniture_condition" text,
        "total_staff_count" integer,
        "health_assistant_count" integer,
        "anm_count" integer,
        "ahw_count" integer,
        "mch_worker_count" integer,
        "vaccinator_count" integer,
        "support_staff_count" integer,
        "volunteer_count" integer,
        "female_cht_count" integer,
        "male_cht_count" integer,
        "any_staff_shortage_current" boolean DEFAULT false,
        "staff_shortage_details" text,
        "staff_training_status" text,
        "staff_residency_available" boolean DEFAULT false,
        "general_health_services" boolean DEFAULT true,
        "maternal_health_services" boolean DEFAULT true,
        "child_health_services" boolean DEFAULT true,
        "immunization_services" boolean DEFAULT true,
        "family_planning_services" boolean DEFAULT true,
        "nutrition_services" boolean DEFAULT true,
        "tuberculosis_services" boolean DEFAULT true,
        "hiv_services" boolean DEFAULT false,
        "mental_health_services" boolean DEFAULT false,
        "geriatric_services" boolean DEFAULT false,
        "laboratory_conducts_tests" boolean DEFAULT false,
        "laboratory_test_types" text,
        "regular_vaccination_days" text,
        "antenatal_care_services" boolean DEFAULT true,
        "post_natal_care_services" boolean DEFAULT true,
        "outreach_clinics_held_monthly" integer,
        "offers_telemedicine" boolean DEFAULT false,
        "telemedicine_details" text,
        "referral_services" boolean DEFAULT true,
        "referral_destination" text,
        "ambulance_accessible" boolean DEFAULT false,
        "ambulance_contact_number" text,
        "has_referral_protocols" boolean DEFAULT false,
        "additional_services" text,
        "has_basic_equipment" boolean DEFAULT true,
        "basic_equipment_condition" "equipment_condition",
        "has_diagnostic_equipment" boolean DEFAULT false,
        "diagnostic_equipment_detail" text,
        "has_cold_chain" boolean DEFAULT false,
        "cold_chain_condition" "equipment_condition",
        "has_essential_medicines" boolean DEFAULT true,
        "essential_medicines_availability" text,
        "medicine_stockout_frequency" text,
        "has_prenatal_vitamins" boolean DEFAULT true,
        "has_oral_rehydration_therapy" boolean DEFAULT true,
        "has_antibiotics" boolean DEFAULT true,
        "has_antimalarials" boolean DEFAULT false,
        "has_basic_anesthesia" boolean DEFAULT false,
        "has_oxygen_supply" boolean DEFAULT false,
        "drug_inventory_system" text,
        "regular_medicine_supply_frequency" text,
        "average_monthly_outpatients" integer,
        "average_monthly_antenatal_visits" integer,
        "average_monthly_deliveries" integer,
        "average_monthly_child_checkups" integer,
        "average_monthly_family_planning" integer,
        "average_monthly_immunization" integer,
        "service_utilization_trend" text,
        "performance_evaluation_system" text,
        "last_performance_review_date" date,
        "patient_satisfaction_measured" boolean DEFAULT false,
        "patient_satisfaction_level" text,
        "has_record_keeping_system" boolean DEFAULT true,
        "record_keeping_type" text,
        "has_electronic_health_records" boolean DEFAULT false,
        "electronic_system_details" text,
        "uses_hmis" boolean DEFAULT false,
        "has_internet_for_reporting" boolean DEFAULT false,
        "reporting_frequency" text,
        "last_reporting_date" date,
        "has_surveillance_system" boolean DEFAULT false,
        "surveillance_details" text,
        "has_community_outreach" boolean DEFAULT false,
        "outreach_activities" text,
        "fchv_count" integer,
        "fchv_active_percent" numeric(5, 2),
        "mother_groups_active" boolean DEFAULT false,
        "mother_group_count" integer,
        "health_education_sessions" boolean DEFAULT false,
        "health_education_frequency" text,
        "school_health_program" boolean DEFAULT false,
        "community_based_activities" text,
        "community_feedback_mechanism" boolean DEFAULT false,
        "feedback_mechanism_details" text,
        "annual_budget_npr" numeric(18, 2),
        "budget_fiscal_year" varchar(9),
        "government_funding_percent" numeric(5, 2),
        "donor_funding_percent" numeric(5, 2),
        "local_funding_percent" numeric(5, 2),
        "user_fees_collected" boolean DEFAULT false,
        "free_service_availability" text,
        "annual_expenditure_npr" numeric(18, 2),
        "financial_management_system" text,
        "supply_chain_mechanism" text,
        "medicine_supplier_type" text,
        "supply_frequency" text,
        "stockout_frequency" text,
        "inventory_management_system" text,
        "logistics_support" text,
        "last_supply_received_date" date,
        "infrastructure_challenges" text,
        "staffing_challenges" text,
        "supply_challenges" text,
        "service_challenges" text,
        "other_challenges" text,
        "priority_needs" text,
        "service_improvement_plans" text,
        "regulatory_compliance" boolean DEFAULT true,
        "last_supervision_date" date,
        "supervision_frequency" text,
        "supervising_authority" text,
        "quality_improvement_system" boolean DEFAULT false,
        "quality_improvement_details" text,
        "patient_safety_measures" text,
        "infection_control_protocols" boolean DEFAULT false,
        "waste_disposal_system" text,
        "partnership_with_ngos" boolean DEFAULT false,
        "partner_ngo_details" text,
        "local_coordination_mechanism" text,
        "health_system_integration" text,
        "private_sector_coordination" boolean DEFAULT false,
        "community_group_coordination" boolean DEFAULT false,
        "referral_network_strength" text,
        "service_adequacy" "service_adequacy",
        "service_quality" text,
        "patient_feedback" text,
        "community_perception" text,
        "staff_satisfaction" text,
        "disaster_preparedness" boolean DEFAULT false,
        "disaster_plan_details" text,
        "emergency_response_capability" text,
        "disaster_training_for_staff" boolean DEFAULT false,
        "emergency_supplies_available" boolean DEFAULT false,
        "expansion_plans" text,
        "planned_upgrades" text,
        "service_enhancement_plans" text,
        "community_future_plans" text,
        "sustainability_plans" text,
        "linked_referral_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_community_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "catchment_area_polygon" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_urban_health_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "center_type" "uhc_type" NOT NULL,
        "center_level" "uhc_level" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "parent_institution_id" varchar(36),
        "registration_number" varchar(50),
        "registered_with" text,
        "population_served" integer,
        "catchment_area_description" text,
        "service_area_sq_km" numeric(10, 2),
        "chief_name" text,
        "chief_qualification" text,
        "chief_contact_number" text,
        "management_committee_exists" boolean DEFAULT true,
        "management_committee_size" integer,
        "management_committee_female_members" integer,
        "management_committee_dalit_members" integer,
        "management_committee_marginalized_members" integer,
        "management_committee_formation_date" date,
        "management_committee_meeting_frequency" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "instagram_handle" text,
        "twitter_handle" text,
        "opening_time" time,
        "closing_time" time,
        "is_24_hour_service" boolean DEFAULT false,
        "emergency_service_available" boolean DEFAULT true,
        "open_on_weekends" boolean DEFAULT true,
        "weekly_off_days" text,
        "service_availability_details" text,
        "building_ownership" text,
        "building_condition" "phc_building_condition",
        "construction_year" integer,
        "last_renovation_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_area_sqm" numeric(10, 2),
        "has_adequate_space" boolean DEFAULT true,
        "has_waiting_area" boolean DEFAULT true,
        "waiting_area_capacity" integer,
        "has_water_supply" boolean DEFAULT true,
        "water_supply_source" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_heating" boolean DEFAULT false,
        "has_cooling" boolean DEFAULT false,
        "has_internet_access" boolean DEFAULT false,
        "internet_connection_type" text,
        "has_telephone_connection" boolean DEFAULT true,
        "has_parking" boolean DEFAULT true,
        "has_ambulance_parking" boolean DEFAULT false,
        "has_ramp" boolean DEFAULT false,
        "has_disabled_friendly_toilets" boolean DEFAULT false,
        "has_proper_signage" boolean DEFAULT true,
        "has_reception" boolean DEFAULT true,
        "has_fire_safety_equipment" boolean DEFAULT false,
        "has_security_system" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "general_health_checkup_available" boolean DEFAULT true,
        "maternal_health_services_available" boolean DEFAULT true,
        "child_health_services_available" boolean DEFAULT true,
        "family_planning_services_available" boolean DEFAULT true,
        "immunization_services_available" boolean DEFAULT true,
        "tb_program_available" boolean DEFAULT true,
        "hiv_program_available" boolean DEFAULT false,
        "malaria_program_available" boolean DEFAULT false,
        "ncds_services_available" boolean DEFAULT true,
        "mental_health_services_available" boolean DEFAULT false,
        "laboratory_services_available" boolean DEFAULT true,
        "laboratory_service_level" text,
        "pharmacy_available" boolean DEFAULT true,
        "pharmacy_service_type" text,
        "emergency_services_available" boolean DEFAULT true,
        "ambulance_service_available" boolean DEFAULT false,
        "ambulance_count" integer,
        "referral_services_available" boolean DEFAULT true,
        "referral_centers" text,
        "dental_services_available" boolean DEFAULT false,
        "eye_care_services_available" boolean DEFAULT false,
        "physiotherapy_available" boolean DEFAULT false,
        "ultrasonography_available" boolean DEFAULT false,
        "xray_available" boolean DEFAULT false,
        "ecg_available" boolean DEFAULT false,
        "nutrition_program_available" boolean DEFAULT true,
        "outreach_services_available" boolean DEFAULT true,
        "health_education_services_available" boolean DEFAULT true,
        "specialized_services_available" boolean DEFAULT false,
        "specialized_services_details" text,
        "other_services_offered" text,
        "has_adequate_equipment" boolean DEFAULT true,
        "equipment_condition" text,
        "has_functional_refrigerator" boolean DEFAULT true,
        "has_vaccine_cold_chain" boolean DEFAULT true,
        "has_medicine_storage" boolean DEFAULT true,
        "has_laboratory_equipment" boolean DEFAULT true,
        "laboratory_equipment_details" text,
        "has_sterilization_equipment" boolean DEFAULT true,
        "has_delivery_kit" boolean DEFAULT true,
        "has_emergency_equipment" boolean DEFAULT true,
        "emergency_equipment_details" text,
        "has_adequate_furniture" boolean DEFAULT true,
        "has_computer_system" boolean DEFAULT false,
        "computer_count" integer,
        "uses_paper_records" boolean DEFAULT true,
        "uses_electronic_records" boolean DEFAULT false,
        "electronic_record_system_details" text,
        "has_inpatient_services" boolean DEFAULT false,
        "total_inpatient_beds" integer,
        "male_ward_bed_count" integer,
        "female_ward_bed_count" integer,
        "child_ward_bed_count" integer,
        "maternity_bed_count" integer,
        "emergency_bed_count" integer,
        "has_isolation_beds" boolean DEFAULT false,
        "isolation_bed_count" integer,
        "icu_bed_count" integer,
        "ventilator_count" integer,
        "oxygen_supply_available" boolean DEFAULT false,
        "oxygen_supply_type" text,
        "total_staff_count" integer,
        "medical_officer_count" integer,
        "specialist_doctor_count" integer,
        "specialist_types" text,
        "nurse_count" integer,
        "anm_count" integer,
        "ha_count" integer,
        "aha_count" integer,
        "lab_technician_count" integer,
        "pharmacist_count" integer,
        "public_health_officer_count" integer,
        "administration_staff_count" integer,
        "support_staff_count" integer,
        "female_staff_count" integer,
        "male_staff_count" integer,
        "sanctioned_positions_count" integer,
        "filled_positions_count" integer,
        "vacant_positions_count" integer,
        "contractual_staff_count" integer,
        "permanent_staff_count" integer,
        "staffing_adequacy" text,
        "staff_training_status" text,
        "staff_accommodation_available" boolean DEFAULT false,
        "staff_accommodation_details" text,
        "average_daily_opd" integer,
        "average_monthly_opd" integer,
        "average_monthly_ipd" integer,
        "average_monthly_lab_tests" integer,
        "average_monthly_xrays" integer,
        "average_monthly_ultrasounds" integer,
        "annual_patient_count" integer,
        "referral_rate_percent" numeric(5, 2),
        "bed_occupancy_rate_percent" numeric(5, 2),
        "average_length_of_stay_days" numeric(5, 2),
        "service_utilization_trend" text,
        "most_common_diseases" text,
        "seasonal_disease_patterns" text,
        "service_capacity" "service_capacity",
        "annual_budget_npr" numeric(18, 2),
        "government_funding_npr" numeric(18, 2),
        "local_government_funding_npr" numeric(18, 2),
        "donor_funding_npr" numeric(18, 2),
        "community_contribution_npr" numeric(18, 2),
        "patient_fees_income_npr" numeric(18, 2),
        "other_income_npr" numeric(18, 2),
        "annual_operational_cost_npr" numeric(18, 2),
        "annual_medicine_expense_npr" numeric(18, 2),
        "annual_salary_expense_npr" numeric(18, 2),
        "annual_equipment_expense_npr" numeric(18, 2),
        "has_health_insurance_system" boolean DEFAULT false,
        "insurance_enrollment_count" integer,
        "free_service_available" boolean DEFAULT true,
        "free_service_details" text,
        "health_insurance_details" text,
        "has_essential_medicines_list" boolean DEFAULT true,
        "essential_medicines_availability_percent" integer,
        "medicine_stockout_frequency" text,
        "medicine_supply_source" text,
        "has_proper_inventory_system" boolean DEFAULT true,
        "inventory_management_details" text,
        "has_quality_assurance_system" boolean DEFAULT false,
        "quality_assurance_details" text,
        "has_citizen_charter" boolean DEFAULT true,
        "monitoring_mechanism_exists" boolean DEFAULT true,
        "last_external_assessment_date" date,
        "assessment_findings" text,
        "has_regular_reporting_system" boolean DEFAULT true,
        "reporting_frequency" text,
        "reports_to_entities" text,
        "has_patient_feedback_system" boolean DEFAULT false,
        "patient_satisfaction_level" text,
        "complaint_resolution_mechanism" text,
        "has_fchv" boolean DEFAULT true,
        "fchv_count" integer,
        "has_community_health_workers" boolean DEFAULT true,
        "community_health_worker_count" integer,
        "community_awareness_activities" text,
        "community_outreach_frequency" text,
        "community_participation_level" text,
        "has_school_health_program" boolean DEFAULT false,
        "participation_in_campaigns" text,
        "has_urban_poor_services" boolean DEFAULT false,
        "urban_poor_services_details" text,
        "has_slum_outreach_programs" boolean DEFAULT false,
        "slum_outreach_details" text,
        "has_migrant_population_services" boolean DEFAULT false,
        "migrant_services_details" text,
        "has_occupational_health_services" boolean DEFAULT false,
        "occupational_health_details" text,
        "has_air_pollution_monitoring" boolean DEFAULT false,
        "environmental_health_programs" text,
        "has_lifestyle_disease_programs" boolean DEFAULT false,
        "lifestyle_disease_details" text,
        "major_challenges" text,
        "infrastructure_needs" text,
        "equipment_needs" text,
        "human_resource_needs" text,
        "service_expansion_plans" text,
        "upgrade_plans" text,
        "coordination_with_local_government" text,
        "coordination_with_provincial_government" text,
        "coordination_with_federal_government" text,
        "partner_organizations" text,
        "technical_support_sources" text,
        "has_disaster_preparedness_protocol" boolean DEFAULT false,
        "disaster_response_capacity" text,
        "has_emergency_response_team" boolean DEFAULT false,
        "mass_casualty_management_capacity" text,
        "covered_by_health_insurance" boolean DEFAULT false,
        "safe_motherhood_program" boolean DEFAULT true,
        "nutrition_program" boolean DEFAULT true,
        "immunization_program" boolean DEFAULT true,
        "family_planning_program" boolean DEFAULT true,
        "tuberculosis_program" boolean DEFAULT true,
        "hiv_program" boolean DEFAULT false,
        "leprosy_program" boolean DEFAULT false,
        "malaria_program" boolean DEFAULT false,
        "filariasis_program" boolean DEFAULT false,
        "snakebite_treatment" boolean DEFAULT false,
        "mental_health_program" boolean DEFAULT false,
        "geriatric_care" boolean DEFAULT false,
        "adolescent_health_services" boolean DEFAULT true,
        "special_program_details" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_educational_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_cbos" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "service_area_polygon" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_basic_health_unit" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "unit_type" "basic_health_unit_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "catchment_population" integer,
        "catchment_area_sq_km" numeric(10, 2),
        "distance_from_nearest_health_post_km" numeric(6, 2),
        "distance_from_nearest_road_km" numeric(6, 2),
        "referral_facility_name" text,
        "referral_facility_distance" numeric(6, 2),
        "management_type" text,
        "parent_health_facility_id" varchar(36),
        "supervising_agency" text,
        "local_government_support" text,
        "is_open_24_hours" boolean DEFAULT false,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "emergency_service_availability" boolean DEFAULT false,
        "services_frequency" text,
        "has_dedicated_building" boolean DEFAULT true,
        "building_ownership" text,
        "building_condition" "bhu_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_area_sq_m" numeric(10, 2),
        "has_electricity" boolean DEFAULT false,
        "electricity_source" text,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT false,
        "water_source_type" "water_source_type",
        "has_functional_toilets" boolean DEFAULT false,
        "has_patient_toilet" boolean DEFAULT false,
        "has_staff_toilet" boolean DEFAULT false,
        "has_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_waste_disposal_system" boolean DEFAULT false,
        "waste_disposal_method" text,
        "has_telephone" boolean DEFAULT false,
        "telephone_number" text,
        "has_mobile_coverage" boolean DEFAULT false,
        "mobile_network_providers" text,
        "has_internet_access" boolean DEFAULT false,
        "internet_type" text,
        "has_consultation_room" boolean DEFAULT false,
        "consultation_room_count" integer,
        "has_treatment_room" boolean DEFAULT false,
        "has_injection_room" boolean DEFAULT false,
        "has_dressing_room" boolean DEFAULT false,
        "has_laboratory_corner" boolean DEFAULT false,
        "has_pharmacy_corner" boolean DEFAULT false,
        "has_medicine_refrigerator" boolean DEFAULT false,
        "has_birthing_facilities" boolean DEFAULT false,
        "has_basic_emergency_equipment" boolean DEFAULT false,
        "has_observation_beds" boolean DEFAULT false,
        "observation_bed_count" integer,
        "basic_equipment_availability" "facility_adequacy",
        "equipment_functionality_status" text,
        "provides_general_consultation" boolean DEFAULT true,
        "provides_antenatal_care" boolean DEFAULT false,
        "provides_postnatal_care" boolean DEFAULT false,
        "provides_delivery_services" boolean DEFAULT false,
        "provides_immunization" boolean DEFAULT false,
        "immunization_frequency" text,
        "provides_wound_care" boolean DEFAULT false,
        "provides_basic_testing" boolean DEFAULT false,
        "testing_service_details" text,
        "provides_family_planning" boolean DEFAULT false,
        "family_planning_details" text,
        "provides_nutrition_services" boolean DEFAULT false,
        "provides_health_education" boolean DEFAULT false,
        "health_education_frequency" text,
        "provides_outreach" boolean DEFAULT false,
        "outreach_frequency" text,
        "outreach_coverage_area" text,
        "referral_services" text,
        "additional_special_services_offered" text,
        "medicine_availability" "facility_adequacy",
        "essential_drugs_list" boolean DEFAULT false,
        "medicine_supply_frequency" text,
        "has_stock_outs_in_last_3_months" boolean DEFAULT false,
        "stock_out_details" text,
        "days_of_stock_out_per_month_average" integer,
        "supply_chain_challenges" text,
        "in_charge_designation" text,
        "in_charge_name" text,
        "in_charge_contact_number" text,
        "total_staff_count" integer,
        "health_assistant_count" integer,
        "nurse_count" integer,
        "anm_count" integer,
        "mchw_count" integer,
        "support_staff_count" integer,
        "female_staff_count" integer,
        "male_staff_count" integer,
        "staff_vacancy_count" integer,
        "staffing_adequacy" "facility_adequacy",
        "staff_attendance_rate" integer,
        "staff_accommodation_available" boolean DEFAULT false,
        "average_monthly_patients" integer,
        "average_daily_outpatients" integer,
        "top_three_morbidities" text,
        "patient_referral_rate_percent" numeric(5, 2),
        "annual_service_statistics" jsonb DEFAULT '[]'::jsonb,
        "annual_budget_npr" numeric(14, 2),
        "budget_source" text,
        "has_cost_sharing_mechanism" boolean DEFAULT false,
        "cost_sharing_details" text,
        "has_community_support_fund" boolean DEFAULT false,
        "has_health_committee" boolean DEFAULT false,
        "health_committee_meeting_frequency" text,
        "community_engagement_activities" text,
        "femahl_health_volunteers_count" integer,
        "femahl_volunteers_active_percent" integer,
        "supervision_frequency" text,
        "last_supervision_date" date,
        "has_quality_improvement_process" boolean DEFAULT false,
        "reporting_compliance_percent" integer,
        "major_challenges" text,
        "priority_needs" text,
        "infrastructure_needs" text,
        "equipment_needs" text,
        "medicine_needs" text,
        "staffing_needs" text,
        "expansion_plans" text,
        "service_improvement_plans" text,
        "has_disaster_preparedness_plans" boolean DEFAULT false,
        "disaster_kit_available" boolean DEFAULT false,
        "serves_as_emergency_shelter" boolean DEFAULT false,
        "linked_with_health_post" boolean DEFAULT false,
        "linked_with_phcc" boolean DEFAULT false,
        "linked_with_hospital" boolean DEFAULT false,
        "ngo_partnership_details" text,
        "community_linkages" text,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "accessibility_in_monsoon" text,
        "transportation_options" text,
        "services_for_disabled" text,
        "services_for_elderly" text,
        "implemented_health_programs" text,
        "program_successes" text,
        "program_challenges" text,
        "record_keeping_system" text,
        "has_hmis" boolean DEFAULT false,
        "hmis_usage_level" text,
        "data_quality_assessment" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "catchment_area" geometry (MultiPolygon, 4326),
        "service_status" TEXT DEFAULT 'REGULARLY_AVAILABLE',
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_clinic" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "clinic_type" "clinic_type" NOT NULL,
        "specialization" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "established_date" date,
        "ownership" "clinic_ownership" NOT NULL,
        "owner_name" text,
        "parent_institution_id" varchar(36),
        "parent_institution_name" text,
        "is_standalone" boolean DEFAULT true,
        "catchment_population" integer,
        "catchment_area_description" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "youtube_channel" text,
        "has_online_appointment" boolean DEFAULT false,
        "online_appointment_details" text,
        "operating_days" text,
        "opening_time" time,
        "closing_time" time,
        "has_shift_system" boolean DEFAULT false,
        "shift_details" text,
        "is_24_hour_service" boolean DEFAULT false,
        "average_wait_time_minutes" integer,
        "appointment_system" boolean DEFAULT false,
        "appointment_system_details" text,
        "building_ownership" text,
        "building_condition" "clinic_building_condition",
        "total_floors" integer,
        "total_rooms" integer,
        "building_area_sq_m" numeric(10, 2),
        "construction_year" integer,
        "last_renovation_year" integer,
        "consultation_rooms_count" integer,
        "procedure_rooms_count" integer,
        "waiting_area_capacity" integer,
        "has_reception_area" boolean DEFAULT true,
        "has_separate_consultation_rooms" boolean DEFAULT true,
        "has_waiting_room" boolean DEFAULT true,
        "has_patient_toilets" boolean DEFAULT true,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_ramp" boolean DEFAULT false,
        "has_wheelchair_access" boolean DEFAULT false,
        "has_adequate_ventilation" boolean DEFAULT true,
        "has_proper_lighting" boolean DEFAULT true,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_speed" text,
        "has_waste_management_system" boolean DEFAULT false,
        "waste_management_details" text,
        "has_biomedical_waste_management" boolean DEFAULT false,
        "primary_services" text,
        "has_laboratory_services" boolean DEFAULT false,
        "laboratory_services_details" text,
        "has_diagnostic_services" boolean DEFAULT false,
        "diagnostic_services_details" text,
        "has_pharmacy" boolean DEFAULT false,
        "pharmacy_details" text,
        "has_vaccination_services" boolean DEFAULT false,
        "vaccination_services_details" text,
        "has_maternal_services" boolean DEFAULT false,
        "maternal_services_details" text,
        "has_child_health_services" boolean DEFAULT false,
        "child_health_services_details" text,
        "has_emergency_services" boolean DEFAULT false,
        "emergency_services_details" text,
        "has_referral_system" boolean DEFAULT false,
        "referral_system_details" text,
        "common_treatments_provided" text,
        "additional_specialized_services" text,
        "community_outreach_activities" text,
        "health_education_programs" text,
        "has_medical_equipment" boolean DEFAULT true,
        "basic_equipment_list" text,
        "specialized_equipment_list" text,
        "equipment_condition" text,
        "equipment_maintenance_process" text,
        "main_equipment_needs" text,
        "total_staff_count" integer,
        "doctor_count" integer,
        "specialist_doctor_count" integer,
        "specialist_details" text,
        "nurse_count" integer,
        "health_assistant_count" integer,
        "lab_technician_count" integer,
        "pharmacist_count" integer,
        "reception_staff_count" integer,
        "other_staff_count" integer,
        "female_medical_staff_count" integer,
        "administrative_staff_count" integer,
        "staffing_adequacy" text,
        "main_staffing_challenges" text,
        "average_daily_patients" integer,
        "annual_patient_count" integer,
        "female_patient_percentage" integer,
        "child_patient_percentage" integer,
        "elderly_patient_percentage" integer,
        "most_common_diagnoses" text,
        "patient_record_system" text,
        "has_electronic_records" boolean DEFAULT false,
        "electronic_record_system_details" text,
        "consultation_fee_range" text,
        "average_consultation_fee_npr" numeric(10, 2),
        "has_insurance_acceptance" boolean DEFAULT false,
        "insurance_details" text,
        "accepted_payment_methods" text,
        "has_digital_payment" boolean DEFAULT false,
        "digital_payment_details" text,
        "annual_budget_npr" numeric(18, 2),
        "revenue_sources_details" text,
        "financial_sustainability_status" text,
        "is_registered_with_nmc" boolean DEFAULT false,
        "nmc_registration_details" text,
        "has_certifications" boolean DEFAULT false,
        "certification_details" text,
        "quality_assurance_mechanisms" text,
        "infection_control_protocols" text,
        "patient_safety_measures" text,
        "service_quality_standard" "quality_standard",
        "last_quality_assessment_date" date,
        "quality_improvement_plans" text,
        "essential_medicine_availability" text,
        "medicine_source_details" text,
        "has_adequate_supply_chain" boolean DEFAULT true,
        "supply_chain_challenges" text,
        "medicine_storage_condition" text,
        "cold_chain_availability" boolean DEFAULT false,
        "cold_chain_details" text,
        "accessibility_level" "clinic_accessibility",
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_nearest_hospital_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "has_parking_facility" boolean DEFAULT false,
        "parking_capacity" integer,
        "gender_sensitive_services" text,
        "disability_friendly_features" text,
        "affordability_measures" text,
        "infrastructure_challenges" text,
        "service_challenges" text,
        "equipment_challenges" text,
        "human_resource_challenges" text,
        "financial_challenges" text,
        "priority_needs" text,
        "support_required" text,
        "expansion_plans" text,
        "service_improvement_plans" text,
        "technology_upgrade_plans" text,
        "staff_capacity_building_plans" text,
        "community_feedback_mechanism" boolean DEFAULT false,
        "community_feedback_details" text,
        "patient_satisfaction_level" text,
        "community_outreach_programs" text,
        "preventive_health_programs" text,
        "health_awareness_activities" text,
        "covid_response_measures" text,
        "has_covid19_testing" boolean DEFAULT false,
        "covid19_vaccination_available" boolean DEFAULT false,
        "disaster_preparedness_level" text,
        "emergency_response_protocols" text,
        "referral_hospitals" text,
        "linked_health_networks" text,
        "public_private_partnership" text,
        "linked_ambulance_services" text,
        "government_program_participation" text,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_pharmacies" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "service_area_polygon" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_nepal_police" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "facility_type" "police_facility_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "office_code" varchar(20),
        "established_date" date,
        "jurisdiction_type" "police_jurisdiction_type" NOT NULL,
        "jurisdiction_area_description" text,
        "jurisdiction_area_sq_km" numeric(10, 2),
        "population_served" integer,
        "parent_police_office_id" varchar(36),
        "reporting_hierarchy" text,
        "in_charge_rank" text,
        "in_charge_name" text,
        "in_charge_appointment_date" date,
        "in_charge_contact_number" text,
        "deputy_in_charge_rank" text,
        "deputy_in_charge_name" text,
        "phone_number" text,
        "emergency_contact_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "control_room_number" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "other_social_media" text,
        "online_communication_channels" text,
        "is_open_all_day" boolean DEFAULT true,
        "office_opening_time" time,
        "office_closing_time" time,
        "has_dedicated_help_desk" boolean DEFAULT false,
        "help_desk_hours" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "police_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_compound" boolean DEFAULT false,
        "compound_area_sq_m" numeric(10, 2),
        "has_barrack" boolean DEFAULT false,
        "barrack_capacity" integer,
        "has_mess" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_toilets" boolean DEFAULT true,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "total_officers_count" integer,
        "male_officers_count" integer,
        "female_officers_count" integer,
        "other_gender_officers_count" integer,
        "inspector_above_rank_count" integer,
        "sub_inspector_rank_count" integer,
        "assistant_sub_inspector_rank_count" integer,
        "head_constables_count" integer,
        "constables_count" integer,
        "other_staff_count" integer,
        "foreign_trained_staff_count" integer,
        "specialized_trained_staff_count" integer,
        "staffing_adequacy" text,
        "staff_training_needs" text,
        "has_four_wheeler_vehicle" boolean DEFAULT false,
        "four_wheeler_count" integer,
        "four_wheeler_status" "vehicle_status",
        "has_two_wheeler_vehicle" boolean DEFAULT false,
        "two_wheeler_count" integer,
        "two_wheeler_status" "vehicle_status",
        "has_specialized_vehicle" boolean DEFAULT false,
        "specialized_vehicle_details" text,
        "fuel_budget_adequacy" text,
        "has_radio_equipment" boolean DEFAULT false,
        "radio_equipment_count" integer,
        "radio_equipment_status" "equipment_status",
        "has_computer_equipment" boolean DEFAULT false,
        "computer_count" integer,
        "computer_equipment_status" "equipment_status",
        "has_internet_for_investigation" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_fingerprinting_equipment" boolean DEFAULT false,
        "has_detention_facility" boolean DEFAULT false,
        "detention_cells_count" integer,
        "detention_capacity" integer,
        "male_cells_count" integer,
        "female_cells_count" integer,
        "juvenile_cells_count" integer,
        "detention_facility_condition" text,
        "has_women_cell" boolean DEFAULT false,
        "has_juvenile_unit" boolean DEFAULT false,
        "has_traffic_unit" boolean DEFAULT false,
        "traffic_unit_staff_count" integer,
        "has_cyber_crime_unit" boolean DEFAULT false,
        "has_intelligence_unit" boolean DEFAULT false,
        "special_units" text,
        "annual_cases_registered_count" integer,
        "cases_registered_last_year" integer,
        "annual_cases_solved_count" integer,
        "cases_solved_last_year" integer,
        "registered_fiscal_year" varchar(9),
        "major_crime_types" text,
        "crime_trend_description" text,
        "average_daily_complaints" integer,
        "pending_cases_count" integer,
        "workload_level" "workload_level",
        "patrol_frequency" text,
        "has_patrol_schedule" boolean DEFAULT false,
        "has_community_policing_program" boolean DEFAULT false,
        "community_policing_details" text,
        "community_relation_rating" text,
        "conducts_community_awareness" boolean DEFAULT false,
        "conducts_community_meetings" boolean DEFAULT false,
        "community_program_frequency" text,
        "average_response_time_minutes" numeric(6, 2),
        "service_efficiency" "service_efficiency",
        "has_emergency_response_plan" boolean DEFAULT false,
        "has_disaster_management_role" boolean DEFAULT false,
        "disaster_management_details" text,
        "citizen_satisfaction_level" text,
        "annual_budget_npr" numeric(18, 2),
        "operational_budget_npr" numeric(18, 2),
        "equipment_budget_npr" numeric(18, 2),
        "infrastructure_budget_npr" numeric(18, 2),
        "budget_adequacy" text,
        "budget_fiscal_year" varchar(9),
        "major_challenges" text,
        "infrastructure_needs" text,
        "equipment_needs" text,
        "staffing_needs" text,
        "training_needs" text,
        "community_relations_needs" text,
        "development_plans" text,
        "modernization_plans" text,
        "community_engagement_plans" text,
        "coordinates_with_armed_police" boolean DEFAULT false,
        "coordinates_with_army" boolean DEFAULT false,
        "coordinates_with_local_government" boolean DEFAULT false,
        "coordinates_with_ngos" boolean DEFAULT false,
        "coordination_mechanisms" text,
        "joint_operations_history" text,
        "security_sensitive_zones" text,
        "border_security_responsibility" boolean DEFAULT false,
        "border_security_details" text,
        "vip_security_responsibility" boolean DEFAULT false,
        "critical_infrastructure_protection" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_educational_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_other_police_units" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "jurisdiction_area" geometry (MultiPolygon, 4326),
        "patrolling_routes" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_armed_police_force" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "facility_type" "apf_facility_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "office_code" varchar(20),
        "established_date" date,
        "jurisdiction_type" "apf_jurisdiction_type" NOT NULL,
        "jurisdiction_area_description" text,
        "jurisdiction_area_sq_km" numeric(10, 2),
        "population_served" integer,
        "parent_apf_office_id" varchar(36),
        "reporting_hierarchy" text,
        "in_charge_rank" text,
        "in_charge_name" text,
        "in_charge_appointment_date" date,
        "in_charge_contact_number" text,
        "deputy_in_charge_rank" text,
        "deputy_in_charge_name" text,
        "phone_number" text,
        "emergency_contact_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "control_room_number" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "other_social_media" text,
        "is_open_all_day" boolean DEFAULT true,
        "office_opening_time" time,
        "office_closing_time" time,
        "has_public_inquiry_desk" boolean DEFAULT false,
        "inquiry_desk_hours" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "apf_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "total_office_area_sqm" numeric(10, 2),
        "has_compound" boolean DEFAULT true,
        "compound_area_sq_m" numeric(10, 2),
        "has_barrack" boolean DEFAULT true,
        "barrack_capacity" integer,
        "has_mess" boolean DEFAULT true,
        "has_training_ground" boolean DEFAULT false,
        "training_ground_area_sq_m" numeric(10, 2),
        "has_helipads" boolean DEFAULT false,
        "helipad_count" integer,
        "has_armory" boolean DEFAULT true,
        "has_observation_tower" boolean DEFAULT false,
        "observation_tower_count" integer,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT true,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_toilets" boolean DEFAULT true,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_satellite_communication" boolean DEFAULT false,
        "total_personnel_count" integer,
        "male_personnel_count" integer,
        "female_personnel_count" integer,
        "officers_count" integer,
        "junior_officers_count" integer,
        "other_ranks_count" integer,
        "combat_trained_count" integer,
        "special_operations_trained_count" integer,
        "disaster_response_trained_count" integer,
        "riot_control_trained_count" integer,
        "vip_protection_trained_count" integer,
        "medical_staff_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "staffing_adequacy" text,
        "has_four_wheeler_vehicle" boolean DEFAULT true,
        "four_wheeler_count" integer,
        "four_wheeler_status" "vehicle_status",
        "has_two_wheeler_vehicle" boolean DEFAULT true,
        "two_wheeler_count" integer,
        "two_wheeler_status" "vehicle_status",
        "has_armored_vehicle" boolean DEFAULT false,
        "armored_vehicle_count" integer,
        "armored_vehicle_status" "vehicle_status",
        "has_water_cannon" boolean DEFAULT false,
        "water_cannon_count" integer,
        "has_specialized_vehicle" boolean DEFAULT false,
        "specialized_vehicle_details" text,
        "fuel_budget_adequacy" text,
        "has_radio_equipment" boolean DEFAULT true,
        "radio_equipment_count" integer,
        "radio_equipment_status" "equipment_status",
        "has_encrypted_communication" boolean DEFAULT false,
        "has_computer_equipment" boolean DEFAULT true,
        "computer_count" integer,
        "computer_equipment_status" "equipment_status",
        "has_cctv" boolean DEFAULT true,
        "cctv_camera_count" integer,
        "has_thermal_imagers" boolean DEFAULT false,
        "thermal_imagers_count" integer,
        "has_night_vision_equipment" boolean DEFAULT false,
        "night_vision_equipment_count" integer,
        "has_drones" boolean DEFAULT false,
        "drone_count" integer,
        "has_metal_detectors" boolean DEFAULT true,
        "metal_detector_count" integer,
        "has_explosive_detectors" boolean DEFAULT false,
        "explosive_detector_count" integer,
        "has_detention_facility" boolean DEFAULT false,
        "detention_cells_count" integer,
        "detention_capacity" integer,
        "detention_facility_condition" text,
        "has_rapid_response_team" boolean DEFAULT false,
        "rapid_response_team_strength" integer,
        "has_special_task_force" boolean DEFAULT false,
        "special_task_force_strength" integer,
        "has_search_rescue_team" boolean DEFAULT false,
        "search_rescue_team_strength" integer,
        "has_explosive_disposal_unit" boolean DEFAULT false,
        "has_k9_unit" boolean DEFAULT false,
        "k9_unit_strength" integer,
        "special_units" text,
        "primary_operational_role" text,
        "secondary_operational_roles" text,
        "major_operational_activities" text,
        "annual_operations_count" integer,
        "recorded_fiscal_year" varchar(9),
        "workload_level" "workload_level",
        "patrol_frequency" text,
        "has_patrol_schedule" boolean DEFAULT true,
        "border_security_responsibility" boolean DEFAULT false,
        "border_post_count" integer,
        "border_patrolling_frequency" text,
        "border_crossing_points_monitored" integer,
        "border_security_challenges" text,
        "security_industries" text,
        "critical_infrastructure_protected" text,
        "vip_security_responsibility" boolean DEFAULT false,
        "vip_security_details" text,
        "disaster_management_role" boolean DEFAULT false,
        "disaster_response_equipment" text,
        "disaster_management_details" text,
        "rescue_operations_capability" text,
        "has_disaster_response_team" boolean DEFAULT false,
        "disaster_response_team_strength" integer,
        "disaster_response_training_frequency" text,
        "average_response_time_minutes" numeric(6, 2),
        "service_efficiency" "apf_service_efficiency",
        "has_emergency_response_plan" boolean DEFAULT true,
        "emergency_response_plan_last_updated" date,
        "annual_budget_npr" numeric(18, 2),
        "operational_budget_npr" numeric(18, 2),
        "equipment_budget_npr" numeric(18, 2),
        "infrastructure_budget_npr" numeric(18, 2),
        "budget_adequacy" text,
        "budget_fiscal_year" varchar(9),
        "has_training_facility" boolean DEFAULT false,
        "training_facility_type" text,
        "annual_training_programs" integer,
        "personnel_trained_annually" integer,
        "specialized_training_offered" text,
        "community_outreach_programs" text,
        "conducts_civilian_training" boolean DEFAULT false,
        "civilian_training_details" text,
        "public_perception_details" text,
        "major_challenges" text,
        "infrastructure_needs" text,
        "equipment_needs" text,
        "staffing_needs" text,
        "training_needs" text,
        "development_plans" text,
        "modernization_plans" text,
        "expansion_plans" text,
        "coordinates_with_police" boolean DEFAULT true,
        "coordinates_with_army" boolean DEFAULT true,
        "coordinates_with_local_government" boolean DEFAULT true,
        "coordination_mechanisms" text,
        "joint_operations_history" text,
        "joint_training_programs" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_police_units" jsonb DEFAULT '[]'::jsonb,
        "linked_army_units" jsonb DEFAULT '[]'::jsonb,
        "linked_critical_infrastructure" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "jurisdiction_area" geometry (MultiPolygon, 4326),
        "patrolling_routes" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_nepal_army" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "facility_type" "army_facility_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "unit_code" varchar(20),
        "established_date" date,
        "jurisdiction_type" "army_jurisdiction_type",
        "command_structure" text,
        "historical_significance" text,
        "parent_unit_id" varchar(36),
        "reporting_hierarchy" text,
        "commanding_officer_rank" text,
        "commanding_officer_name" text,
        "commanding_officer_appointment_date" date,
        "deputy_commander_rank" text,
        "deputy_commander_name" text,
        "phone_number" text,
        "emergency_contact_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_handle" text,
        "twitter_handle" text,
        "other_social_media" text,
        "admin_office_opening_time" time,
        "admin_office_closing_time" time,
        "has_public_inquiry_office" boolean DEFAULT false,
        "public_inquiry_hours" text,
        "building_ownership" text,
        "building_type" text,
        "building_condition" "army_building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "historical_building" boolean DEFAULT false,
        "historical_building_details" text,
        "total_floors" integer,
        "total_rooms" integer,
        "total_area_sq_m" numeric(10, 2),
        "has_perimeter_wall" boolean DEFAULT true,
        "wall_height_meters" numeric(5, 2),
        "has_watch_towers" boolean DEFAULT false,
        "watch_tower_count" integer,
        "has_barracks" boolean DEFAULT true,
        "barracks_building_count" integer,
        "barracks_capacity" integer,
        "has_family_quarters" boolean DEFAULT false,
        "family_quarters_count" integer,
        "has_officers_quarters" boolean DEFAULT false,
        "officers_quarters_count" integer,
        "has_jco_quarters" boolean DEFAULT false,
        "jco_quarters_count" integer,
        "has_guesthouse" boolean DEFAULT false,
        "guesthouse_capacity" integer,
        "has_mess" boolean DEFAULT true,
        "mess_capacity" integer,
        "has_parade_ground" boolean DEFAULT true,
        "parade_ground_area_sq_m" numeric(10, 2),
        "has_training_area" boolean DEFAULT true,
        "training_area_sq_m" numeric(10, 2),
        "has_simulator_facility" boolean DEFAULT false,
        "has_shooting_range" boolean DEFAULT false,
        "shooting_range_details" text,
        "has_obstacle_course" boolean DEFAULT false,
        "has_helipad" boolean DEFAULT false,
        "helipad_count" integer,
        "has_armory" boolean DEFAULT true,
        "armory_security_level" text,
        "has_workshop" boolean DEFAULT false,
        "workshop_type" text,
        "has_storage_facility" boolean DEFAULT true,
        "storage_facility_type" text,
        "has_fitness_center" boolean DEFAULT false,
        "has_sports_ground" boolean DEFAULT false,
        "sports_ground_type" text,
        "has_swimming_pool" boolean DEFAULT false,
        "has_auditorium" boolean DEFAULT false,
        "auditorium_capacity" integer,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT true,
        "power_backup_type" text,
        "power_backup_capacity" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "water_storage_capacity" text,
        "has_sewage_treatment" boolean DEFAULT false,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_type" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "has_secure_communication" boolean DEFAULT true,
        "secure_communication_type" text,
        "has_medical_facility" boolean DEFAULT true,
        "medical_facility_type" text,
        "medical_facility_bed_capacity" integer,
        "has_medical_officer" boolean DEFAULT false,
        "medical_officer_count" integer,
        "has_ambulance" boolean DEFAULT false,
        "ambulance_count" integer,
        "total_personnel_count" integer,
        "officers_count" integer,
        "jco_count" integer,
        "other_ranks_count" integer,
        "civilian_staff_count" integer,
        "combat_units_count" integer,
        "support_units_count" integer,
        "female_personnel_count" integer,
        "special_forces_count" integer,
        "personnel_capacity" integer,
        "staffing_status" text,
        "has_four_wheeler_vehicle" boolean DEFAULT true,
        "four_wheeler_count" integer,
        "four_wheeler_status" "vehicle_status",
        "has_troop_carriers" boolean DEFAULT false,
        "troop_carrier_count" integer,
        "has_armored_vehicles" boolean DEFAULT false,
        "armored_vehicle_count" integer,
        "has_artillery_equipment" boolean DEFAULT false,
        "artillery_equipment_details" text,
        "has_engineering_equipment" boolean DEFAULT false,
        "engineering_equipment_details" text,
        "has_specialized_equipment" boolean DEFAULT false,
        "specialized_equipment_details" text,
        "equipment_maintenance_status" text,
        "vehicle_maintenance_status" "vehicle_status",
        "has_radio_equipment" boolean DEFAULT true,
        "radio_equipment_count" integer,
        "radio_equipment_status" "equipment_status",
        "has_computer_equipment" boolean DEFAULT true,
        "computer_count" integer,
        "computer_equipment_status" "equipment_status",
        "has_cctv" boolean DEFAULT true,
        "cctv_camera_count" integer,
        "has_drones" boolean DEFAULT false,
        "drone_count" integer,
        "has_surveillance_equipment" boolean DEFAULT false,
        "surveillance_equipment_details" text,
        "has_night_vision_capability" boolean DEFAULT false,
        "night_vision_equipment_count" integer,
        "has_satellite_communication" boolean DEFAULT false,
        "special_units" text,
        "special_capabilities" text,
        "operational_readiness" "operational_readiness",
        "combat_readiness_rating" text,
        "has_rapid_deployment_team" boolean DEFAULT false,
        "has_special_forces" boolean DEFAULT false,
        "special_forces_details" text,
        "provides_basic_training" boolean DEFAULT false,
        "provides_advanced_training" boolean DEFAULT false,
        "provides_specialized_training" boolean DEFAULT false,
        "specialized_training_types" text,
        "annual_trainees_capacity" integer,
        "training_facility_quality" text,
        "training_instructors_count" integer,
        "disaster_management_role" boolean DEFAULT true,
        "disaster_response_equipment" text,
        "disaster_response_capabilities" text,
        "civil_approach_policy" text,
        "community_support_activities" text,
        "public_welfare_initiatives" text,
        "security_measures" text,
        "physical_security_rating" text,
        "electronic_surveillance" boolean DEFAULT true,
        "guard_post_count" integer,
        "security_patrol_frequency" text,
        "has_quick_reaction_team" boolean DEFAULT true,
        "security_challenges" text,
        "national_defense_role" text,
        "border_security_role" boolean DEFAULT false,
        "border_security_details" text,
        "counter_insurgency_role" boolean DEFAULT false,
        "counter_insurgency_details" text,
        "internal_security_role" boolean DEFAULT false,
        "internal_security_details" text,
        "peacekeeping_experience" boolean DEFAULT false,
        "peacekeeping_mission_details" text,
        "annual_budget_npr" numeric(18, 2),
        "operational_budget_npr" numeric(18, 2),
        "maintenance_budget_npr" numeric(18, 2),
        "training_budget_npr" numeric(18, 2),
        "infrastructure_budget_npr" numeric(18, 2),
        "budget_adequacy" text,
        "budget_fiscal_year" varchar(9),
        "has_welfare_department" boolean DEFAULT false,
        "veterans_assistance_programs" boolean DEFAULT false,
        "family_support_programs" boolean DEFAULT false,
        "education_facilities" boolean DEFAULT false,
        "education_facilities_details" text,
        "recreational_facilities" boolean DEFAULT false,
        "recreational_facilities_details" text,
        "community_engagement_activities" text,
        "civil_military_cooperation_projects" text,
        "public_perception" text,
        "community_outreach_frequency" text,
        "major_challenges" text,
        "infrastructure_needs" text,
        "equipment_needs" text,
        "training_needs" text,
        "deployment_challenges" text,
        "development_plans" text,
        "modernization_plans" text,
        "expansion_plans" text,
        "future_initiatives" text,
        "coordinates_with_police" boolean DEFAULT true,
        "coordinates_with_armed_police" boolean DEFAULT true,
        "coordinates_with_local_government" boolean DEFAULT true,
        "coordination_mechanisms" text,
        "joint_operations_history" text,
        "joint_exercises_frequency" text,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_police_units" jsonb DEFAULT '[]'::jsonb,
        "linked_armed_police_units" jsonb DEFAULT '[]'::jsonb,
        "linked_other_army_units" jsonb DEFAULT '[]'::jsonb,
        "linked_strategic_locations" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "operational_area" geometry (MultiPolygon, 4326),
        "training_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_tourism_park" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "park_type" "park_type" NOT NULL,
        "established_year" integer,
        "ownership" "attraction_ownership" NOT NULL,
        "managing_authority" text,
        "status" "attraction_status" NOT NULL,
        "size" "attraction_size",
        "area_in_hectares" numeric(10, 2),
        "ward_number" integer,
        "location" text,
        "address" text,
        "latitude" numeric(9, 6),
        "longitude" numeric(9, 6),
        "elevation_in_meters" numeric(7, 2),
        "accessibility_level" "accessibility_level",
        "access_routes" text,
        "distance_from_city_center_km" numeric(6, 2),
        "opening_time" time,
        "closing_time" time,
        "opening_days" text,
        "is_open_all_year" boolean DEFAULT true,
        "peak_season" "tourism_season",
        "seasonal_opening_details" text,
        "entrance_fee_type" "entrance_fee_type" NOT NULL,
        "adult_fee_npr" numeric(10, 2),
        "child_fee_npr" numeric(10, 2),
        "foreigner_fee_npr" numeric(10, 2),
        "saarc_fee_npr" numeric(10, 2),
        "discount_categories" text,
        "ticket_booking_methods" text,
        "has_rides" boolean DEFAULT false,
        "ride_count" integer,
        "major_attractions" text,
        "has_water_features" boolean DEFAULT false,
        "water_feature_details" text,
        "has_playgrounds" boolean DEFAULT false,
        "playground_count" integer,
        "has_gardens" boolean DEFAULT false,
        "garden_details" text,
        "has_zoo_section" boolean DEFAULT false,
        "animal_species_count" integer,
        "major_animal_attractions" text,
        "has_aquarium" boolean DEFAULT false,
        "aquarium_details" text,
        "has_museum" boolean DEFAULT false,
        "museum_details" text,
        "has_toilets" boolean DEFAULT true,
        "toilet_count" integer,
        "has_disabled_toilets" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_restaurants" boolean DEFAULT false,
        "restaurant_count" integer,
        "has_food_court" boolean DEFAULT false,
        "food_court_capacity" integer,
        "has_food_stalls" boolean DEFAULT false,
        "has_shops" boolean DEFAULT false,
        "shop_count" integer,
        "has_benches_seating" boolean DEFAULT true,
        "seating_capacity" integer,
        "has_lockers" boolean DEFAULT false,
        "has_first_aid" boolean DEFAULT false,
        "has_information_center" boolean DEFAULT false,
        "has_parking_facility" boolean DEFAULT false,
        "car_parking_capacity" integer,
        "bus_parking_capacity" integer,
        "bike_parking_capacity" integer,
        "has_wheelchair_access" boolean DEFAULT false,
        "wheelchair_access_details" text,
        "has_stroller_access" boolean DEFAULT false,
        "has_paved_paths" boolean DEFAULT false,
        "total_path_length_km" numeric(6, 2),
        "has_security_personnel" boolean DEFAULT false,
        "security_personnel_count" integer,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_lifeguards" boolean DEFAULT false,
        "lifeguard_count" integer,
        "accident_history" text,
        "safety_measures" text,
        "average_daily_visitors" integer,
        "peak_daily_visitors" integer,
        "annual_visitor_count" integer,
        "local_visitor_percentage" integer,
        "foreign_visitor_percentage" integer,
        "visitor_satisfaction_level" "visitor_experience_level",
        "crowd_level" "attraction_crowd_level",
        "tree_count" integer,
        "major_plant_species" text,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_details" text,
        "has_recycling_bins" boolean DEFAULT false,
        "recycling_bin_count" integer,
        "is_environmentally_protected" boolean DEFAULT false,
        "protection_details" text,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "seasonal_staff_count" integer,
        "maintenance_staff_count" integer,
        "has_dedicated_manager" boolean DEFAULT false,
        "operating_budget_npr" numeric(18, 2),
        "annual_maintenance_cost_npr" numeric(14, 2),
        "annual_revenue_npr" numeric(18, 2),
        "revenue_sources" text,
        "government_funding_npr" numeric(14, 2),
        "historical_significance" text,
        "cultural_importance" text,
        "educational_value" text,
        "offers_guided_tours" boolean DEFAULT false,
        "tour_languages" text,
        "has_educational_programs" boolean DEFAULT false,
        "educational_program_details" text,
        "special_features" text,
        "unique_selling_points" text,
        "awards_and_recognitions" text,
        "regular_events" text,
        "annual_events" text,
        "has_event_venue" boolean DEFAULT false,
        "event_venue_capacity" integer,
        "outdoor_activity_options" text,
        "maintenance_status" "maintenance_status",
        "last_major_renovation" date,
        "planned_upgrades" text,
        "expansion_plans" text,
        "marketing_channels" text,
        "has_website" boolean DEFAULT false,
        "website_url" text,
        "social_media_links" text,
        "has_online_presence" boolean DEFAULT false,
        "online_rating" numeric(3, 1),
        "major_challenges" text,
        "visitor_complaints" text,
        "improvement_suggestions" text,
        "contact_person" text,
        "contact_person_title" text,
        "contact_phone" text,
        "contact_email" text,
        "linked_restaurants" jsonb DEFAULT '[]'::jsonb,
        "linked_accommodations" jsonb DEFAULT '[]'::jsonb,
        "linked_transportation" jsonb DEFAULT '[]'::jsonb,
        "linked_attractions" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "park_boundary" geometry (Polygon, 4326),
        "path_network" geometry (MultiLineString, 4326),
        "feature_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_picnic_spot" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "location_type" "picnic_spot_location_type" NOT NULL,
        "established_year" integer,
        "ownership" "attraction_ownership" NOT NULL,
        "managing_authority" text,
        "status" "attraction_status" NOT NULL,
        "size" "attraction_size",
        "area_in_hectares" numeric(10, 2),
        "ward_number" integer,
        "location" text,
        "address" text,
        "latitude" numeric(9, 6),
        "longitude" numeric(9, 6),
        "elevation_in_meters" numeric(7, 2),
        "accessibility_level" "accessibility_level",
        "access_routes" text,
        "distance_from_city_center_km" numeric(6, 2),
        "shelter_count" integer,
        "has_roofed_shelters" boolean DEFAULT false,
        "has_open_spaces" boolean DEFAULT true,
        "table_count" integer,
        "bench_count" integer,
        "has_cooking_areas" boolean DEFAULT false,
        "cooking_area_count" integer,
        "has_barbecue_pits" boolean DEFAULT false,
        "barbecue_pit_count" integer,
        "has_firepits" boolean DEFAULT false,
        "firepit_count" integer,
        "has_toilets" boolean DEFAULT false,
        "toilet_count" integer,
        "has_cleaning_service" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "water_source_type" text,
        "has_electricity" boolean DEFAULT false,
        "electricity_details" text,
        "has_play_area" boolean DEFAULT false,
        "play_area_facilities" text,
        "has_swimming_option" boolean DEFAULT false,
        "swimming_details" text,
        "is_reservable" boolean DEFAULT false,
        "reservation_process" text,
        "max_group_size" integer,
        "entrance_fee_type" "entrance_fee_type" NOT NULL,
        "entrance_fee_npr" numeric(10, 2),
        "shelter_rent_fee_npr" numeric(10, 2),
        "is_open_all_year" boolean DEFAULT true,
        "operating_hours" text,
        "opening_days" text,
        "best_visiting_time" text,
        "peak_season" "tourism_season",
        "max_capacity" integer,
        "average_daily_visitors" integer,
        "peak_daily_visitors" integer,
        "visitor_satisfaction_level" "visitor_experience_level",
        "crowd_level" "attraction_crowd_level",
        "popular_activities" text,
        "natural_surroundings" text,
        "prominent_vegetation" text,
        "scenic_views" text,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_details" text,
        "waste_disposal_bins" integer,
        "is_environmentally_sensitive" boolean DEFAULT false,
        "environmental_concerns" text,
        "has_fire_safety_measures" boolean DEFAULT false,
        "fire_safety_details" text,
        "alcohol_allowed" boolean DEFAULT true,
        "music_allowed" boolean DEFAULT true,
        "pet_allowed" boolean DEFAULT false,
        "noise_restrictions" text,
        "other_rules" text,
        "has_overseer" boolean DEFAULT false,
        "overseer_details" text,
        "has_parking_facility" boolean DEFAULT false,
        "car_parking_capacity" integer,
        "bus_parking_capacity" integer,
        "bike_parking_capacity" integer,
        "has_disabled_access" boolean DEFAULT false,
        "disabled_access_details" text,
        "walking_paths_condition" text,
        "maintenance_frequency" text,
        "maintenance_status" "maintenance_status",
        "cleaning_schedule" text,
        "staff_count" integer,
        "annual_maintenance_cost_npr" numeric(14, 2),
        "offers_equipment_rental" boolean DEFAULT false,
        "rental_equipment_types" text,
        "has_catering_services" boolean DEFAULT false,
        "catering_service_details" text,
        "nearby_food_options" text,
        "sound_environment" text,
        "average_visit_duration_hours" numeric(4, 2),
        "best_season" text,
        "unique_experience_offered" text,
        "common_issues" text,
        "visitor_complaints" text,
        "maintenance_challenges" text,
        "planned_improvements" text,
        "expansion_plans" text,
        "contact_person" text,
        "contact_person_title" text,
        "contact_phone" text,
        "contact_email" text,
        "linked_nearby_attractions" jsonb DEFAULT '[]'::jsonb,
        "linked_accommodations" jsonb DEFAULT '[]'::jsonb,
        "linked_food_options" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "area_boundary" geometry (Polygon, 4326),
        "access_paths" geometry (MultiLineString, 4326),
        "facilities_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_childrens_garden" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "garden_type" "children_garden_type" NOT NULL,
        "established_year" integer,
        "ownership" "attraction_ownership" NOT NULL,
        "managing_authority" text,
        "status" "attraction_status" NOT NULL,
        "size" "attraction_size",
        "area_in_square_meters" numeric(10, 2),
        "ward_number" integer,
        "location" text,
        "address" text,
        "latitude" numeric(9, 6),
        "longitude" numeric(9, 6),
        "accessibility_level" "accessibility_level",
        "access_routes" text,
        "distance_from_city_center_km" numeric(6, 2),
        "opening_time" time,
        "closing_time" time,
        "opening_days" text,
        "is_open_all_year" boolean DEFAULT true,
        "seasonal_opening_details" text,
        "entrance_fee_type" "entrance_fee_type" NOT NULL,
        "child_fee_npr" numeric(10, 2),
        "adult_fee_npr" numeric(10, 2),
        "group_discounts" boolean DEFAULT false,
        "discount_details" text,
        "suitable_for_age_min" integer,
        "suitable_for_age_max" integer,
        "separate_toddler_area" boolean DEFAULT false,
        "toddler_area_facilities" text,
        "swing_count" integer,
        "slide_count" integer,
        "seesaw_count" integer,
        "climbing_structures_count" integer,
        "sandpit_count" integer,
        "merry_go_round_count" integer,
        "balance_equipment_count" integer,
        "spring_rider_count" integer,
        "water_play_features" boolean DEFAULT false,
        "water_play_details" text,
        "has_themed_areas" boolean DEFAULT false,
        "themed_area_details" text,
        "educational_elements" text,
        "arts_and_crafts_area" boolean DEFAULT false,
        "indoor_play_area" boolean DEFAULT false,
        "indoor_play_area_size_square_meters" numeric(8, 2),
        "has_sensory_elements" boolean DEFAULT false,
        "sensory_element_details" text,
        "has_music_elements" boolean DEFAULT false,
        "music_element_details" text,
        "has_gardening_area" boolean DEFAULT false,
        "gardening_area_details" text,
        "has_wildlife_habitats" boolean DEFAULT false,
        "wildlife_habitat_details" text,
        "ground_surface_types" text,
        "fall_attenuation_surface" boolean DEFAULT false,
        "fall_surface_details" text,
        "equipment_safety_level" "play_equipment_safety_level",
        "last_safety_inspection_date" timestamp,
        "inspection_frequency" text,
        "children_safety_features" text,
        "is_fully_fenced" boolean DEFAULT false,
        "gate_details" text,
        "is_wheelchair_accessible" boolean DEFAULT false,
        "has_accessible_play_equipment" boolean DEFAULT false,
        "accessible_equipment_details" text,
        "has_special_needs_accommodations" boolean DEFAULT false,
        "special_needs_details" text,
        "has_shade_structures" boolean DEFAULT false,
        "shade_structure_count" integer,
        "has_toilets" boolean DEFAULT false,
        "has_child_sized_toilets" boolean DEFAULT false,
        "has_changing_tables" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_handwashing_stations" boolean DEFAULT false,
        "has_seating_for_adults" boolean DEFAULT false,
        "seating_capacity" integer,
        "has_picnic_tables" boolean DEFAULT false,
        "picnic_table_count" integer,
        "has_cafeteria" boolean DEFAULT false,
        "has_snack_vending" boolean DEFAULT false,
        "has_parking_facility" boolean DEFAULT false,
        "car_parking_capacity" integer,
        "has_stroller_access" boolean DEFAULT true,
        "has_stroller_parking" boolean DEFAULT false,
        "public_transport_nearby" boolean DEFAULT false,
        "public_transport_details" text,
        "average_daily_visitors" integer,
        "peak_daily_visitors" integer,
        "busiest_times" text,
        "visitor_satisfaction_level" "visitor_experience_level",
        "crowd_level" "attraction_crowd_level",
        "has_programmed_activities" boolean DEFAULT false,
        "scheduled_activities" text,
        "has_educational_programs" boolean DEFAULT false,
        "educational_program_details" text,
        "has_regular_events" boolean DEFAULT false,
        "event_details" text,
        "has_staff_presence" boolean DEFAULT false,
        "staff_count" integer,
        "has_first_aid_trained_staff" boolean DEFAULT false,
        "supervisory_expectations" text,
        "maintenance_frequency" text,
        "maintenance_status" "maintenance_status",
        "cleaning_frequency" text,
        "cleaning_status" text,
        "annual_maintenance_cost_npr" numeric(14, 2),
        "tree_count" integer,
        "has_shade_trees" boolean DEFAULT false,
        "flower_bed_count" integer,
        "plant_species" text,
        "has_environmental_education" boolean DEFAULT false,
        "environmental_education_elements" text,
        "community_donations" boolean DEFAULT false,
        "community_volunteers" boolean DEFAULT false,
        "community_programming" text,
        "common_issues" text,
        "maintenance_challenges" text,
        "safety_incidents" text,
        "planned_upgrades" text,
        "requested_improvements" text,
        "funding_needs" text,
        "contact_person" text,
        "contact_phone" text,
        "contact_email" text,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_parks" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "garden_boundary" geometry (Polygon, 4326),
        "play_equipment_locations" geometry (MultiPoint, 4326),
        "paths" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_cave" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "cave_type" "cave_type" NOT NULL,
        "discovered_year" integer,
        "geological_formation" text,
        "geological_age_estimate" text,
        "ownership" "attraction_ownership" NOT NULL,
        "managing_authority" text,
        "status" "attraction_status" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "latitude" numeric(9, 6),
        "longitude" numeric(9, 6),
        "elevation_in_meters" numeric(7, 2),
        "accessibility_level" "accessibility_level",
        "access_routes" text,
        "distance_from_city_center_km" numeric(6, 2),
        "hiking_time_minutes" integer,
        "is_open" boolean DEFAULT true,
        "opening_time" time,
        "closing_time" time,
        "opening_days" text,
        "is_open_all_year" boolean DEFAULT true,
        "seasonal_availability" "tourism_season",
        "seasonal_opening_details" text,
        "total_length_meters" numeric(9, 2),
        "max_width_meters" numeric(7, 2),
        "max_height_meters" numeric(7, 2),
        "vertical_extent_meters" numeric(7, 2),
        "number_of_chambers" integer,
        "number_of_levels" integer,
        "has_underground_river" boolean DEFAULT false,
        "has_underground_lake" boolean DEFAULT false,
        "water_feature_details" text,
        "has_stalactites" boolean DEFAULT false,
        "has_stalagmites" boolean DEFAULT false,
        "has_columns" boolean DEFAULT false,
        "has_flowstone" boolean DEFAULT false,
        "has_helictites" boolean DEFAULT false,
        "has_crystals" boolean DEFAULT false,
        "geological_features" text,
        "mineral_deposits" text,
        "unique_formations" text,
        "has_bats" boolean DEFAULT false,
        "bat_species" text,
        "bat_colony_size" text,
        "cavernicolous_species" text,
        "biological_significance" text,
        "has_archaeological_finds" boolean DEFAULT false,
        "archaeological_details" text,
        "has_rock_art" boolean DEFAULT false,
        "rock_art_details" text,
        "cultural_significance" text,
        "traditional_beliefs" text,
        "historical_context" text,
        "difficulty_level" "difficulty_level",
        "requires_tour" boolean DEFAULT false,
        "requires_permission" boolean DEFAULT false,
        "permission_details" text,
        "required_equipment" text,
        "recommended_experience_level" text,
        "guides_available" boolean DEFAULT false,
        "guide_contact_details" text,
        "tour_duration_minutes" integer,
        "entrance_fee_type" "entrance_fee_type" NOT NULL,
        "adult_fee_npr" numeric(10, 2),
        "child_fee_npr" numeric(10, 2),
        "foreigner_fee_npr" numeric(10, 2),
        "guide_fees_npr" numeric(10, 2),
        "equipment_rental_fees_npr" numeric(10, 2),
        "has_lighting" boolean DEFAULT false,
        "lighting_details" text,
        "has_walkways" boolean DEFAULT false,
        "walkway_details" text,
        "has_handrails" boolean DEFAULT false,
        "has_visitor_center" boolean DEFAULT false,
        "visitor_center_details" text,
        "has_interpretive_displays" boolean DEFAULT false,
        "has_toilets" boolean DEFAULT false,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "food_available" boolean DEFAULT false,
        "food_details" text,
        "safety_precautions" text,
        "safety_equipment_provided" text,
        "safety_incidents" text,
        "rescue_protocols_exist" boolean DEFAULT false,
        "rescue_contact_details" text,
        "temperature_range_celsius" text,
        "humidity_percentage" integer,
        "air_quality_concerns" text,
        "flood_risk" text,
        "rockfall_risk" text,
        "average_daily_visitors" integer,
        "peak_daily_visitors" integer,
        "annual_visitor_count" integer,
        "visitor_satisfaction_level" "visitor_experience_level",
        "crowd_level" "attraction_crowd_level",
        "best_time_to_visit" text,
        "is_protected" boolean DEFAULT false,
        "protection_status" text,
        "conservation_challenges" text,
        "visitor_impacts" text,
        "conservation_measures" text,
        "restoration_efforts" text,
        "scientific_studies" text,
        "research_permit_required" boolean DEFAULT false,
        "educational_value" text,
        "has_educational_programs" boolean DEFAULT false,
        "educational_program_details" text,
        "maintenance_schedule" text,
        "maintenance_status" "maintenance_status",
        "monitoring_programs" text,
        "staff_count" integer,
        "management_challenges" text,
        "planned_improvements" text,
        "development_projects" text,
        "estimated_development_cost_npr" numeric(18, 2),
        "contact_person" text,
        "contact_phone" text,
        "contact_email" text,
        "has_map" boolean DEFAULT false,
        "has_3d_model" boolean DEFAULT false,
        "documentation_quality" text,
        "linked_nearby_attractions" jsonb DEFAULT '[]'::jsonb,
        "linked_accommodations" jsonb DEFAULT '[]'::jsonb,
        "linked_tour_operators" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "entrance_point" geometry (Point, 4326),
        "approximate_cave_extent" geometry (Polygon, 4326),
        "access_trail" geometry (LineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_lake_wetland" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "description" text,
        "type" "lake_wetland_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "directions" text,
        "nearest_landmark" text,
        "distance_from_city_center_km" numeric(6, 2),
        "area_sq_km" numeric(10, 4),
        "maximum_depth_m" numeric(6, 2),
        "average_depth_m" numeric(6, 2),
        "shoreline_km" numeric(6, 2),
        "elevation_m" numeric(6, 1),
        "water_source" "wetland_water_source",
        "water_color" text,
        "water_quality" "water_quality",
        "water_quality_details" text,
        "is_seasonal" boolean DEFAULT false,
        "seasonal_details" text,
        "water_level_fluctuation" text,
        "bottom_type" text,
        "surrounding_landscape" text,
        "major_flora_species" text,
        "major_fauna_species" text,
        "bird_species" text,
        "fish_species" text,
        "important_habitats" text,
        "invasive_species" text,
        "ecological_significance" text,
        "conservation_status" "conservation_status",
        "protected_since" date,
        "managing_authority" text,
        "conservation_efforts" text,
        "environmental_threats" text,
        "pollution_sources" text,
        "cultural_significance" text,
        "historical_information" text,
        "religious_significance" text,
        "associated_temples" text,
        "local_myths" text,
        "traditional_uses" text,
        "local_festivals" text,
        "economic_importance" text,
        "fishing_status" text,
        "irrigation_use" text,
        "water_supply_use" text,
        "hydroelectric_use" text,
        "agricultural_use" text,
        "livestock_use" text,
        "tourism_status" text,
        "tourism_potential" "tourism_potential",
        "visitor_count" integer,
        "visitation_pattern" text,
        "peak_season_months" text,
        "best_time_to_visit" text,
        "entrance_fee_npr" numeric(10, 2),
        "foreigner_entrance_fee_npr" numeric(10, 2),
        "operating_hours" text,
        "allows_boating" boolean DEFAULT false,
        "boating_facilities" text,
        "boat_types_available" text,
        "boat_rental_cost_npr" numeric(10, 2),
        "allows_fishing" boolean DEFAULT false,
        "fishing_permit_required" boolean DEFAULT false,
        "fishing_permit_cost_npr" numeric(10, 2),
        "allows_swimming" boolean DEFAULT false,
        "swimming_risk_level" text,
        "has_birdwatching" boolean DEFAULT false,
        "birdwatching_spots" text,
        "allows_camping" boolean DEFAULT false,
        "camping_facilities" text,
        "has_walking_trails" boolean DEFAULT false,
        "walking_trails_details" text,
        "other_recreational_activities" text,
        "has_viewing_deck" boolean DEFAULT false,
        "has_picnic_areas" boolean DEFAULT false,
        "picnic_facilities" text,
        "has_restaurants" boolean DEFAULT false,
        "restaurant_count" integer,
        "food_options" text,
        "has_accommodation" boolean DEFAULT false,
        "accommodation_details" text,
        "has_toilets" boolean DEFAULT false,
        "has_changing_rooms" boolean DEFAULT false,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_public_transport" boolean DEFAULT false,
        "public_transport_details" text,
        "has_information_center" boolean DEFAULT false,
        "has_signage" boolean DEFAULT false,
        "has_souvenirs_shops" boolean DEFAULT false,
        "accessibility_for_disabled" text,
        "safety_measures" text,
        "rescue_facilities" text,
        "warning_signs_posted" boolean DEFAULT false,
        "life_guards_available" boolean DEFAULT false,
        "lifeguard_count" integer,
        "safety_equipment" text,
        "emergency_contact_info" text,
        "recorded_accidents" text,
        "management_plan" text,
        "management_challenges" text,
        "community_involvement" text,
        "ngos_involved" text,
        "restoration_projects" text,
        "development_plans" text,
        "funding_sources" text,
        "water_quality_monitoring" boolean DEFAULT false,
        "monitoring_frequency" text,
        "monitoring_authority" text,
        "recent_findings" text,
        "biodiversity_assessments" text,
        "local_employment_generated" integer,
        "benefit_sharing_mechanism" text,
        "local_business_opportunities" text,
        "community_perceptions" text,
        "environmental_challenges" text,
        "sustainability_measures" text,
        "climate_change_impacts" text,
        "waste_management_system" text,
        "visitor_impacts" text,
        "contact_office" text,
        "contact_person" text,
        "contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "facebook_page" text,
        "instagram_handle" text,
        "twitter_handle" text,
        "youtube_channel" text,
        "trip_advisor_link" text,
        "google_maps_link" text,
        "has_virtual_tour" boolean DEFAULT false,
        "virtual_tour_link" text,
        "documentary_links" text,
        "research_conducted" boolean DEFAULT false,
        "research_topics" text,
        "published_papers" text,
        "research_institutions_involved" text,
        "nearby_attractions" text,
        "suggested_itineraries" text,
        "distance_to_nearest_tourist_spot_km" numeric(6, 2),
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "linked_parks" jsonb DEFAULT '[]'::jsonb,
        "linked_restaurants" jsonb DEFAULT '[]'::jsonb,
        "linked_accommodations" jsonb DEFAULT '[]'::jsonb,
        "linked_tours" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "water_body_area" geometry (Polygon, 4326),
        "catchment_area" geometry (Polygon, 4326),
        "access_roads" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_viewpoint" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "description" text,
        "type" "viewpoint_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "directions" text,
        "nearest_landmark" text,
        "distance_from_city_center_km" numeric(6, 2),
        "elevation_m" numeric(6, 1),
        "visibility_range_km" numeric(6, 1),
        "view_quality" "view_quality",
        "view_description" text,
        "visible_landmarks" text,
        "view_angle_degrees" integer,
        "compass_direction" text,
        "best_time_of_day" text,
        "best_season_to_visit" text,
        "weather_considerations" text,
        "accessibility_level" "view_point_accessibility_level",
        "hiking_time_minutes" integer,
        "trail_condition" text,
        "trail_length_km" numeric(6, 2),
        "vertical_climb_m" numeric(6, 1),
        "required_fitness" text,
        "is_suite_for_children" boolean DEFAULT true,
        "is_suitable_for_elderly" boolean DEFAULT false,
        "access_restrictions" text,
        "permit_required" boolean DEFAULT false,
        "permit_details" text,
        "has_platform" boolean DEFAULT false,
        "platform_material" text,
        "platform_condition" text,
        "platform_capacity" integer,
        "has_railings" boolean DEFAULT false,
        "has_seating" boolean DEFAULT false,
        "seating_capacity" integer,
        "has_shelter" boolean DEFAULT false,
        "shelter_details" text,
        "has_binoculars" boolean DEFAULT false,
        "has_coin_operated_binoculars" boolean DEFAULT false,
        "has_informational_signs" boolean DEFAULT false,
        "has_directional_markers" boolean DEFAULT false,
        "has_interpretation_panels" boolean DEFAULT false,
        "has_flagpole" boolean DEFAULT false,
        "has_lighting" boolean DEFAULT false,
        "has_restrooms" boolean DEFAULT false,
        "has_trash_bins" boolean DEFAULT false,
        "has_food_stalls" boolean DEFAULT false,
        "food_stall_count" integer,
        "has_souvenir_shops" boolean DEFAULT false,
        "souvenir_shop_count" integer,
        "has_parking_area" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_camping_facilities" boolean DEFAULT false,
        "camping_details" text,
        "estimated_visitors_daily" integer,
        "peak_visitation_times" text,
        "entrance_fee_npr" numeric(10, 2),
        "foreigner_entrance_fee_npr" numeric(10, 2),
        "operating_hours_start" time,
        "operating_hours_end" time,
        "is_open_24_hours" boolean DEFAULT false,
        "is_seasonal" boolean DEFAULT false,
        "seasonal_details" text,
        "cultural_significance" text,
        "historical_events" text,
        "religious_significance" text,
        "associated_temples" text,
        "traditional_uses" text,
        "local_festivals" text,
        "tourism_potential" "viewpoint_tourism_potential",
        "photography_value" text,
        "tour_packages_available" boolean DEFAULT false,
        "tour_package_details" text,
        "guide_services_available" boolean DEFAULT false,
        "guide_service_details" text,
        "development_status" "development_status",
        "managing_authority" text,
        "maintenance_responsibility" text,
        "last_renovation_year" integer,
        "development_plans" text,
        "community_involvement" text,
        "funding_sources" text,
        "environmental_concerns" text,
        "erosion_risk" text,
        "waste_management_system" text,
        "vegetation_management" text,
        "surrounding_ecosystem" text,
        "safety_measures" text,
        "known_hazards" text,
        "warning_signs_posted" boolean DEFAULT false,
        "has_accident_history" boolean DEFAULT false,
        "accident_history_details" text,
        "emergency_contact_info" text,
        "cell_phone_reception" text,
        "public_transport_available" boolean DEFAULT false,
        "public_transport_details" text,
        "nearest_bus_stop_km" numeric(6, 2),
        "taxi_accessible" boolean DEFAULT false,
        "recommended_transportation" text,
        "nearest_food_service_km" numeric(6, 2),
        "nearest_accommodation_km" numeric(6, 2),
        "nearest_medical_service_km" numeric(6, 2),
        "nearby_attractions" text,
        "suggested_itineraries" text,
        "average_time_spent_minutes" integer,
        "best_sunrise_time" text,
        "best_sunset_time" text,
        "stargazing_quality" text,
        "best_photography_spots" text,
        "visitor_reviews" text,
        "local_employment_generated" integer,
        "benefit_sharing_mechanism" text,
        "local_business_opportunities" text,
        "available_activities" text,
        "hiking_trails_available" boolean DEFAULT false,
        "hiking_trail_details" text,
        "paraglide_base_available" boolean DEFAULT false,
        "contact_office" text,
        "contact_person" text,
        "contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "facebook_page" text,
        "instagram_handle" text,
        "trip_advisor_link" text,
        "google_maps_link" text,
        "has_virtual_tour" boolean DEFAULT false,
        "virtual_tour_link" text,
        "panoramic_images_available" boolean DEFAULT false,
        "development_needs" text,
        "challenges_faced" text,
        "visitor_feedback_summary" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "linked_trails" jsonb DEFAULT '[]'::jsonb,
        "linked_accommodations" jsonb DEFAULT '[]'::jsonb,
        "linked_restaurants" jsonb DEFAULT '[]'::jsonb,
        "linked_tours" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "viewsheds" geometry (MultiPolygon, 4326),
        "access_routes" geometry (MultiLineString, 4326),
        "platform_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_community_building" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "building_type" "community_building_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "management_type" "management_type" NOT NULL,
        "managing_body" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "construction_material" "building_construction_material",
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "main_hall_capacity" integer,
        "has_stage" boolean DEFAULT false,
        "has_audio_system" boolean DEFAULT false,
        "has_projector" boolean DEFAULT false,
        "chairs_count" integer,
        "tables_count" integer,
        "has_kitchen" boolean DEFAULT false,
        "has_storage" boolean DEFAULT false,
        "has_office" boolean DEFAULT false,
        "has_children_area" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "electricity_source" text,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "has_heating_system" boolean DEFAULT false,
        "has_cooling_system" boolean DEFAULT false,
        "has_public_toilets" boolean DEFAULT true,
        "male_toilets_count" integer,
        "female_toilets_count" integer,
        "has_handicap_toilets" boolean DEFAULT false,
        "has_menstruation_facilities" boolean DEFAULT false,
        "has_drinking_water" boolean DEFAULT false,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_disabled_access" boolean DEFAULT false,
        "has_first_aid_kit" boolean DEFAULT false,
        "main_purposes" text,
        "usage_frequency" "usage_frequency",
        "average_monthly_users" integer,
        "major_events" text,
        "regular_activities" text,
        "services_offered" text,
        "is_open_to_public" boolean DEFAULT true,
        "access_restrictions" text,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "can_be_booked" boolean DEFAULT true,
        "booking_procedure" text,
        "rental_fee_structure" text,
        "average_daily_rental_fee_npr" numeric(10, 2),
        "discount_for_community_members" boolean DEFAULT false,
        "fee_waiver_conditions" text,
        "management_committee_size" integer,
        "women_in_management_committee" integer,
        "dalits_in_management_committee" integer,
        "janajatis_in_management_committee" integer,
        "youth_in_management_committee" integer,
        "pwd_in_management_committee" integer,
        "management_committee_formation_date" date,
        "management_committee_tenure_years" integer,
        "has_caretaker" boolean DEFAULT false,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "female_staff_count" integer,
        "annual_budget_npr" numeric(18, 2),
        "maintenance_fund_npr" numeric(14, 2),
        "income_sources" text,
        "major_expenses" text,
        "has_regular_audit" boolean DEFAULT false,
        "last_audit_date" date,
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources" text,
        "has_bank_account" boolean DEFAULT false,
        "bank_account_details" text,
        "accessibility_level" "accessibility_level",
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "facilities_for_women" text,
        "facilities_for_children" text,
        "facilities_for_elderly" text,
        "facilities_for_disabled" text,
        "gender_friendliness" text,
        "has_garden_area" boolean DEFAULT false,
        "garden_area_sq_m" numeric(10, 2),
        "has_tree_plantation" boolean DEFAULT false,
        "tree_count" integer,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_type" text,
        "has_rainwater_harvesting" boolean DEFAULT false,
        "has_solar_panels" boolean DEFAULT false,
        "solar_capacity_kw" numeric(8, 2),
        "environmental_initiatives" text,
        "has_security_personnel" boolean DEFAULT false,
        "security_personnel_count" integer,
        "has_boundary_wall" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_fire_safety_equipment" boolean DEFAULT false,
        "fire_safety_equipment_details" text,
        "has_emergency_exits" boolean DEFAULT false,
        "emergency_exit_count" integer,
        "has_disaster_management_plan" boolean DEFAULT false,
        "disaster_management_details" text,
        "offers_training_programs" boolean DEFAULT false,
        "training_program_types" text,
        "offers_community_meetings" boolean DEFAULT true,
        "offers_cultural_programs" boolean DEFAULT false,
        "offers_youth_activities" boolean DEFAULT false,
        "offers_women_activities" boolean DEFAULT false,
        "offers_elderly_activities" boolean DEFAULT false,
        "offers_children_activities" boolean DEFAULT false,
        "offers_library_services" boolean DEFAULT false,
        "book_count" integer,
        "has_computer_facility" boolean DEFAULT false,
        "computer_count" integer,
        "offers_public_internet" boolean DEFAULT false,
        "additional_service_details" text,
        "community_participation_level" text,
        "annual_event_count" integer,
        "major_annual_events" text,
        "community_contribution_type" text,
        "community_management_description" text,
        "volunteer_involvement" text,
        "has_operational_manual" boolean DEFAULT false,
        "has_public_notice_board" boolean DEFAULT false,
        "public_meetings_frequency" text,
        "decision_making_process" text,
        "transparency_measures" text,
        "has_complaint_box" boolean DEFAULT false,
        "grievance_handling_mechanism" text,
        "male_user_percentage" integer,
        "female_user_percentage" integer,
        "child_user_percentage" integer,
        "youth_user_percentage" integer,
        "adult_user_percentage" integer,
        "elderly_user_percentage" integer,
        "marginalized_group_percentage" integer,
        "historical_significance" text,
        "cultural_significance" text,
        "founding_organizations" text,
        "founding_members" text,
        "major_achievements" text,
        "community_impact" text,
        "future_development_plans" text,
        "maintenance_needs" text,
        "infrastructure_needs" text,
        "capacity_building_needs" text,
        "expand_in_future" boolean DEFAULT false,
        "expansion_plans" text,
        "contact_person_name" text,
        "contact_person_title" text,
        "contact_phone" text,
        "contact_email" text,
        "alternate_contact_name" text,
        "alternate_contact_phone" text,
        "facebook_page" text,
        "website_url" text,
        "other_social_media" text,
        "infrastructure_challenges" text,
        "management_challenges" text,
        "financial_challenges" text,
        "community_related_challenges" text,
        "conflict_issues" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_womens_group_building" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "building_type" "womens_group_building_type" NOT NULL,
        "group_focus_area" "women_group_focus_area" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "group_established_year" integer,
        "management_type" "management_type" NOT NULL,
        "registration_number" varchar(50),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "is_affiliated_with_federation" boolean DEFAULT false,
        "federation_affiliation_details" text,
        "total_member_count" integer,
        "active_member_count" integer,
        "dalit_member_count" integer,
        "janajati_member_count" integer,
        "brahmin_chhetri_member_count" integer,
        "madhesi_member_count" integer,
        "muslim_member_count" integer,
        "other_ethnicity_member_count" integer,
        "pwd_member_count" integer,
        "single_women_member_count" integer,
        "youth_member_count" integer,
        "senior_member_count" integer,
        "has_dedicated_building" boolean DEFAULT true,
        "building_ownership" text,
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "construction_material" "building_construction_material",
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "meeting_hall_capacity" integer,
        "has_training_hall" boolean DEFAULT false,
        "training_hall_capacity" integer,
        "has_office_space" boolean DEFAULT false,
        "has_storage" boolean DEFAULT false,
        "has_kitchen" boolean DEFAULT false,
        "has_childcare_space" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "has_water_supply" boolean DEFAULT true,
        "has_toilets" boolean DEFAULT true,
        "has_menstrual_hygiene_management" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "has_computers" boolean DEFAULT false,
        "computer_count" integer,
        "has_training_equipment" boolean DEFAULT false,
        "training_equipment_details" text,
        "has_production_equipment" boolean DEFAULT false,
        "production_equipment_details" text,
        "has_office_furniture" boolean DEFAULT false,
        "has_audio_visual_equipment" boolean DEFAULT false,
        "meeting_frequency" text,
        "regular_activities" text,
        "skill_training_offered" text,
        "awareness_programs_organized" text,
        "income_generation_activities" text,
        "health_activities" text,
        "education_activities" text,
        "advocacy_activities" text,
        "major_annual_events" text,
        "usage_frequency" "usage_frequency",
        "has_saving_credit_program" boolean DEFAULT false,
        "total_savings_npr" numeric(18, 2),
        "loan_portfolio_size_npr" numeric(18, 2),
        "interest_rate_percent" numeric(5, 2),
        "default_rate_percent" numeric(5, 2),
        "has_enterprise_activities" boolean DEFAULT false,
        "enterprise_activities_details" text,
        "annual_turnover_npr" numeric(18, 2),
        "major_products_produced" text,
        "market_linkages" text,
        "has_bank_account" boolean DEFAULT false,
        "bank_account_details" text,
        "annual_budget_npr" numeric(18, 2),
        "maintenance_fund_npr" numeric(14, 2),
        "funding_sources" text,
        "has_annual_audit" boolean DEFAULT false,
        "last_audit_date" date,
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources" text,
        "has_insurance" boolean DEFAULT false,
        "insurance_details" text,
        "has_written_constitution" boolean DEFAULT false,
        "has_strategic_plan" boolean DEFAULT false,
        "executive_committee_size" integer,
        "executive_committee_selection_process" text,
        "last_executive_election_date" date,
        "decision_making_process" text,
        "leadership_rotation_policy" text,
        "has_subcommittees" boolean DEFAULT false,
        "subcommittee_details" text,
        "has_operational_manual" boolean DEFAULT false,
        "record_keeping_system" text,
        "has_full_time_staff" boolean DEFAULT false,
        "full_time_staff_count" integer,
        "has_part_time_staff" boolean DEFAULT false,
        "part_time_staff_count" integer,
        "has_trained_facilitators" boolean DEFAULT false,
        "facilitator_count" integer,
        "staff_training_details" text,
        "volunteer_count" integer,
        "has_partnership_with_local_government" boolean DEFAULT false,
        "local_government_partnership_details" text,
        "has_ngo_partnerships" boolean DEFAULT false,
        "ngo_partnership_details" text,
        "has_private_sector_partnerships" boolean DEFAULT false,
        "private_sector_partnership_details" text,
        "network_memberships" text,
        "accessibility_level" "accessibility_level",
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "inclusion_policies" text,
        "inclusion_challenges" text,
        "major_achievements" text,
        "community_impact" text,
        "success_stories" text,
        "improvements_in_womens_lives" text,
        "advocacy_successes" text,
        "awards_and_recognition" text,
        "infrastructure_challenges" text,
        "capacity_challenges" text,
        "financial_challenges" text,
        "social_challenges" text,
        "maintenance_needs" text,
        "training_needs" text,
        "equipment_needs" text,
        "funding_needs" text,
        "strategic_priorities" text,
        "expansion_plans" text,
        "sustainability_plans" text,
        "future_projects_planned" text,
        "has_safety_protocol" boolean DEFAULT false,
        "safety_protocol_details" text,
        "has_gbv_response_mechanism" boolean DEFAULT false,
        "gbv_response_details" text,
        "security_challenges" text,
        "has_boundary_wall" boolean DEFAULT false,
        "chairperson_name" text,
        "secretary_name" text,
        "treasurer_name" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "has_social_media_presence" boolean DEFAULT false,
        "facebook_page" text,
        "website_url" text,
        "other_social_media" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_youth_club_building" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "building_type" "youth_club_building_type" NOT NULL,
        "club_focus_area" "youth_club_focus_area" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "club_established_year" integer,
        "management_type" "management_type" NOT NULL,
        "registration_number" varchar(50),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "is_affiliated_with_national_youth_council" boolean DEFAULT false,
        "affiliation_details" text,
        "total_member_count" integer,
        "active_member_count" integer,
        "male_member_count" integer,
        "female_member_count" integer,
        "other_gender_member_count" integer,
        "dalit_member_count" integer,
        "janajati_member_count" integer,
        "brahmin_chhetri_member_count" integer,
        "madhesi_member_count" integer,
        "muslim_member_count" integer,
        "other_ethnicity_member_count" integer,
        "pwd_member_count" integer,
        "age_group_15_18_count" integer,
        "age_group_19_24_count" integer,
        "age_group_25_30_count" integer,
        "age_group_31_plus_count" integer,
        "membership_fee_npr" numeric(10, 2),
        "membership_renewal_frequency" text,
        "has_dedicated_building" boolean DEFAULT true,
        "building_ownership" text,
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "construction_material" "building_construction_material",
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "meeting_hall_capacity" integer,
        "has_training_hall" boolean DEFAULT false,
        "training_hall_capacity" integer,
        "has_library_space" boolean DEFAULT false,
        "has_office_space" boolean DEFAULT false,
        "has_storage" boolean DEFAULT false,
        "has_indoor_sports_area" boolean DEFAULT false,
        "indoor_sports_area_details" text,
        "has_outdoor_sports_area" boolean DEFAULT false,
        "outdoor_sports_area_details" text,
        "has_recreation_area" boolean DEFAULT false,
        "recreation_area_details" text,
        "has_football_ground" boolean DEFAULT false,
        "has_volleyball_court" boolean DEFAULT false,
        "has_basketball_court" boolean DEFAULT false,
        "has_cricket_ground" boolean DEFAULT false,
        "has_table_tennis" boolean DEFAULT false,
        "has_carrom_board" boolean DEFAULT false,
        "has_chess_boards" boolean DEFAULT false,
        "has_gym" boolean DEFAULT false,
        "gym_equipment_details" text,
        "other_sports_facilities" text,
        "sporting_equipment_inventory" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "has_water_supply" boolean DEFAULT true,
        "has_toilets" boolean DEFAULT true,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_changing_rooms" boolean DEFAULT false,
        "has_showers" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "has_cafeteria" boolean DEFAULT false,
        "has_computers" boolean DEFAULT false,
        "computer_count" integer,
        "has_audio_visual_equipment" boolean DEFAULT false,
        "has_library_books" boolean DEFAULT false,
        "book_count" integer,
        "has_training_materials" boolean DEFAULT false,
        "training_materials_details" text,
        "meeting_frequency" text,
        "regular_activities" text,
        "sports_activities" text,
        "skill_training_offered" text,
        "awareness_programs_organized" text,
        "community_service_activities" text,
        "tournaments_organized" text,
        "cultural_activities" text,
        "major_annual_events" text,
        "usage_frequency" "usage_frequency",
        "has_bank_account" boolean DEFAULT false,
        "bank_account_details" text,
        "annual_budget_npr" numeric(18, 2),
        "maintenance_fund_npr" numeric(14, 2),
        "funding_sources" text,
        "membership_fees_income_npr" numeric(14, 2),
        "event_income_npr" numeric(14, 2),
        "donations_npr" numeric(14, 2),
        "local_government_funding_npr" numeric(14, 2),
        "has_annual_audit" boolean DEFAULT false,
        "last_audit_date" date,
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources" text,
        "income_sustainability_plans" text,
        "has_written_constitution" boolean DEFAULT false,
        "has_strategic_plan" boolean DEFAULT false,
        "executive_committee_size" integer,
        "female_in_executive_committee" integer,
        "marginalised_groups_in_executive_committee" integer,
        "executive_committee_selection_process" text,
        "last_executive_election_date" date,
        "executive_committee_term" integer,
        "decision_making_process" text,
        "has_subcommittees" boolean DEFAULT false,
        "subcommittee_details" text,
        "has_youth_participation_policy" boolean DEFAULT false,
        "record_keeping_system" text,
        "has_full_time_staff" boolean DEFAULT false,
        "full_time_staff_count" integer,
        "has_part_time_staff" boolean DEFAULT false,
        "part_time_staff_count" integer,
        "has_trainers" boolean DEFAULT false,
        "trainer_count" integer,
        "trainer_specialties" text,
        "has_youth_leadership_program" boolean DEFAULT false,
        "youth_leadership_details" text,
        "volunteer_management_system" text,
        "volunteer_count" integer,
        "has_partnership_with_local_government" boolean DEFAULT false,
        "local_government_partnership_details" text,
        "has_school_partnerships" boolean DEFAULT false,
        "school_partnership_details" text,
        "has_sports_association_affiliations" boolean DEFAULT false,
        "sports_association_details" text,
        "has_ngo_partnerships" boolean DEFAULT false,
        "ngo_partnership_details" text,
        "has_private_sector_partnerships" boolean DEFAULT false,
        "private_sector_partnership_details" text,
        "network_memberships" text,
        "accessibility_level" "accessibility_level",
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "inclusion_policies" text,
        "gender_equality_measures" text,
        "facilities_for_disabled" text,
        "inclusion_challenges" text,
        "major_achievements" text,
        "community_impact" text,
        "success_stories" text,
        "sports_achievements" text,
        "skill_development_outcomes" text,
        "youth_employment_contribution" text,
        "awards_and_recognition" text,
        "infrastructure_challenges" text,
        "capacity_challenges" text,
        "financial_challenges" text,
        "participation_challenges" text,
        "maintenance_needs" text,
        "training_needs" text,
        "equipment_needs" text,
        "funding_needs" text,
        "strategic_priorities" text,
        "expansion_plans" text,
        "sustainability_plans" text,
        "future_projects_planned" text,
        "youth_engagement_strategies" text,
        "has_safety_protocol" boolean DEFAULT false,
        "safety_protocol_details" text,
        "has_first_aid_facilities" boolean DEFAULT false,
        "first_aid_details" text,
        "has_sports_injury_management" boolean DEFAULT false,
        "injury_management_details" text,
        "has_boundary_wall" boolean DEFAULT false,
        "security_arrangements" text,
        "chairperson_name" text,
        "secretary_name" text,
        "treasurer_name" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "has_social_media_presence" boolean DEFAULT false,
        "facebook_page" text,
        "website_url" text,
        "other_social_media" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_sports_associations" jsonb DEFAULT '[]'::jsonb,
        "linked_youth_clubs" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "sports_fields_area" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ethnic_group_building" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "building_type" "ethnic_group_building_type" NOT NULL,
        "focus_area" "ethnic_group_focus_area" NOT NULL,
        "ethnic_group" text NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "group_established_year" integer,
        "management_type" "management_type" NOT NULL,
        "registration_number" varchar(50),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "is_affiliated_with_federation" boolean DEFAULT false,
        "federation_affiliation_details" text,
        "total_member_count" integer,
        "active_member_count" integer,
        "male_member_count" integer,
        "female_member_count" integer,
        "other_gender_member_count" integer,
        "youth_member_count" integer,
        "adult_member_count" integer,
        "elderly_member_count" integer,
        "pwd_member_count" integer,
        "has_dedicated_building" boolean DEFAULT true,
        "building_ownership" text,
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "construction_material" "building_construction_material",
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "meeting_hall_capacity" integer,
        "has_performance_space" boolean DEFAULT false,
        "performance_space_capacity" integer,
        "has_cultural_display_area" boolean DEFAULT false,
        "has_museum_section" boolean DEFAULT false,
        "has_library_space" boolean DEFAULT false,
        "has_training_space" boolean DEFAULT false,
        "has_office_space" boolean DEFAULT false,
        "has_storage" boolean DEFAULT false,
        "has_kitchen" boolean DEFAULT false,
        "has_traditional_architectural_elements" boolean DEFAULT false,
        "traditional_elements_details" text,
        "has_cultural_artifacts" boolean DEFAULT false,
        "artifact_collection_size" integer,
        "has_documented_history" boolean DEFAULT false,
        "has_audio_visual_archives" boolean DEFAULT false,
        "has_traditional_costume_collection" boolean DEFAULT false,
        "costume_collection_details" text,
        "has_traditional_instruments" boolean DEFAULT false,
        "instrument_collection_details" text,
        "has_manuscripts" boolean DEFAULT false,
        "manuscript_collection_details" text,
        "collection_preservation_status" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "has_water_supply" boolean DEFAULT true,
        "has_toilets" boolean DEFAULT true,
        "has_internet_connectivity" boolean DEFAULT false,
        "has_computers" boolean DEFAULT false,
        "computer_count" integer,
        "has_audio_recording_equipment" boolean DEFAULT false,
        "has_video_recording_equipment" boolean DEFAULT false,
        "has_projector" boolean DEFAULT false,
        "has_sound_system" boolean DEFAULT false,
        "has_traditional_craft_tools" boolean DEFAULT false,
        "traditional_tools_details" text,
        "has_production_equipment" boolean DEFAULT false,
        "production_equipment_details" text,
        "meeting_frequency" text,
        "regular_activities" text,
        "cultural_events_frequency" text,
        "offers_cultural_training" boolean DEFAULT false,
        "cultural_training_types" text,
        "offers_language_lessons" boolean DEFAULT false,
        "language_lesson_details" text,
        "offers_craft_training" boolean DEFAULT false,
        "craft_training_details" text,
        "has_oral_history_program" boolean DEFAULT false,
        "oral_history_program_details" text,
        "has_cultural_exchanges" boolean DEFAULT false,
        "major_annual_events" text,
        "usage_frequency" "usage_frequency",
        "produces_traditional_products" boolean DEFAULT false,
        "traditional_product_types" text,
        "has_sales_outlet" boolean DEFAULT false,
        "market_linkages" text,
        "annual_production_value_npr" numeric(14, 2),
        "has_bank_account" boolean DEFAULT false,
        "bank_account_details" text,
        "annual_budget_npr" numeric(18, 2),
        "maintenance_fund_npr" numeric(14, 2),
        "funding_sources" text,
        "has_annual_audit" boolean DEFAULT false,
        "last_audit_date" date,
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources" text,
        "receives_government_grants" boolean DEFAULT false,
        "government_grant_details" text,
        "receives_international_support" boolean DEFAULT false,
        "international_support_details" text,
        "has_written_constitution" boolean DEFAULT false,
        "has_strategic_plan" boolean DEFAULT false,
        "executive_committee_size" integer,
        "executive_committee_election_frequency_years" integer,
        "last_executive_election_date" date,
        "female_in_executive_committee" integer,
        "youth_in_executive_committee" integer,
        "has_elders_council" boolean DEFAULT false,
        "elders_council_details" text,
        "decision_making_process" text,
        "has_subcommittees" boolean DEFAULT false,
        "subcommittee_details" text,
        "has_full_time_staff" boolean DEFAULT false,
        "full_time_staff_count" integer,
        "has_part_time_staff" boolean DEFAULT false,
        "part_time_staff_count" integer,
        "has_traditional_knowledge_holders" boolean DEFAULT false,
        "traditional_knowledge_holder_count" integer,
        "has_language_teachers" boolean DEFAULT false,
        "language_teacher_count" integer,
        "has_master_artisans" boolean DEFAULT false,
        "master_artisan_count" integer,
        "has_cultural_performers" boolean DEFAULT false,
        "cultural_performer_count" integer,
        "volunteer_count" integer,
        "has_partnership_with_local_government" boolean DEFAULT false,
        "local_government_partnership_details" text,
        "has_partnership_with_schools" boolean DEFAULT false,
        "school_partnership_details" text,
        "has_partnership_with_universities" boolean DEFAULT false,
        "university_partnership_details" text,
        "has_partnership_with_museums" boolean DEFAULT false,
        "museum_partnership_details" text,
        "has_partnership_with_ngos" boolean DEFAULT false,
        "ngo_partnership_details" text,
        "network_memberships" text,
        "accessibility_level" "accessibility_level",
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "inclusion_policies" text,
        "inclusion_challenges" text,
        "major_achievements" text,
        "community_impact" text,
        "cultural_preservation_impact" text,
        "language_revitalization_efforts" text,
        "knowledge_documentation_achievements" text,
        "policy_influence_achievements" text,
        "awards_and_recognition" text,
        "publications_produced" text,
        "infrastructure_challenges" text,
        "cultural_preservation_challenges" text,
        "language_preservation_challenges" text,
        "financial_challenges" text,
        "social_challenges" text,
        "maintenance_needs" text,
        "training_needs" text,
        "documentation_needs" text,
        "funding_needs" text,
        "strategic_priorities" text,
        "expansion_plans" text,
        "sustainability_plans" text,
        "future_projects_planned" text,
        "next_generation_engagement_plans" text,
        "digital_preservation_plans" text,
        "chairperson_name" text,
        "secretary_name" text,
        "treasurer_name" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "has_social_media_presence" boolean DEFAULT false,
        "facebook_page" text,
        "website_url" text,
        "youtube_channel" text,
        "other_social_media" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_ethnic_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_community_based_organization_building" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "building_type" "cbo_building_type" NOT NULL,
        "focus_area" "cbo_focus_area" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "organization_established_year" integer,
        "management_type" "management_type" NOT NULL,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "is_affiliated_with_federation" boolean DEFAULT false,
        "federation_affiliation_details" text,
        "organizational_vision" text,
        "organizational_mission" text,
        "organizational_objectives" text,
        "target_beneficiaries" text,
        "geographical_coverage" text,
        "has_strategic_plan" boolean DEFAULT false,
        "strategic_plan_period" text,
        "legal_status" text,
        "annual_report_available" boolean DEFAULT false,
        "is_membership_based" boolean DEFAULT false,
        "total_member_count" integer,
        "active_member_count" integer,
        "male_member_count" integer,
        "female_member_count" integer,
        "other_gender_member_count" integer,
        "dalit_member_count" integer,
        "janajati_member_count" integer,
        "brahmin_chhetri_member_count" integer,
        "madhesi_member_count" integer,
        "muslim_member_count" integer,
        "other_ethnicity_member_count" integer,
        "pwd_member_count" integer,
        "youth_member_count" integer,
        "women_member_count" integer,
        "membership_fee_npr" numeric(10, 2),
        "has_dedicated_building" boolean DEFAULT true,
        "building_ownership" text,
        "monthly_rent_npr" numeric(10, 2),
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "construction_material" "building_construction_material",
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "meeting_hall_capacity" integer,
        "has_training_hall" boolean DEFAULT false,
        "training_hall_capacity" integer,
        "has_office_space" boolean DEFAULT false,
        "has_reception_area" boolean DEFAULT false,
        "has_waiting_area" boolean DEFAULT false,
        "has_storage" boolean DEFAULT false,
        "has_kitchen" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "has_toilets" boolean DEFAULT true,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_computers" boolean DEFAULT false,
        "computer_count" integer,
        "has_laptops" boolean DEFAULT false,
        "laptop_count" integer,
        "has_printers" boolean DEFAULT false,
        "printer_count" integer,
        "has_photocopiers" boolean DEFAULT false,
        "photocopier_count" integer,
        "has_projector" boolean DEFAULT false,
        "has_vehicles" boolean DEFAULT false,
        "vehicle_types" text,
        "vehicle_count" integer,
        "has_motorbikes" boolean DEFAULT false,
        "motorbike_count" integer,
        "has_technical_equipment" boolean DEFAULT false,
        "technical_equipment_details" text,
        "meeting_frequency" text,
        "regular_programs" text,
        "annual_program_count" integer,
        "beneficiaries_served_annually" integer,
        "major_services" text,
        "community_outreach_activities" text,
        "advocacy_activities" text,
        "skill_development_programs" text,
        "major_annual_events" text,
        "usage_frequency" "usage_frequency",
        "office_opening_time" time,
        "office_closing_time" time,
        "weekly_off_days" text,
        "has_bank_account" boolean DEFAULT true,
        "bank_account_details" text,
        "annual_budget_npr" numeric(18, 2),
        "annual_operating_cost_npr" numeric(18, 2),
        "annual_program_cost_npr" numeric(18, 2),
        "funding_sources" text,
        "has_multiple_year_funding" boolean DEFAULT false,
        "has_endowment_fund" boolean DEFAULT false,
        "endowment_fund_size_npr" numeric(18, 2),
        "has_emergency_fund" boolean DEFAULT false,
        "has_annual_audit" boolean DEFAULT true,
        "last_audit_date" date,
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources" text,
        "receives_government_funding" boolean DEFAULT false,
        "government_funding_details" text,
        "has_incoming_generating_activities" boolean DEFAULT false,
        "income_generating_activities_details" text,
        "has_saving_credit_program" boolean DEFAULT false,
        "total_savings_npr" numeric(18, 2),
        "loan_portfolio_size_npr" numeric(18, 2),
        "interest_rate_percent" numeric(5, 2),
        "default_rate_percent" numeric(5, 2),
        "active_borrower_count" integer,
        "female_borrower_percent" integer,
        "performing_loan_percent" integer,
        "has_written_constitution" boolean DEFAULT true,
        "has_operational_manual" boolean DEFAULT false,
        "has_human_resource_policy" boolean DEFAULT false,
        "has_financial_policy" boolean DEFAULT false,
        "has_procurement_policy" boolean DEFAULT false,
        "has_child_protection_policy" boolean DEFAULT false,
        "has_gender_policy" boolean DEFAULT false,
        "board_size" integer,
        "female_in_board" integer,
        "marginalised_groups_in_board" integer,
        "board_selection_process" text,
        "board_term_years" integer,
        "last_board_election_date" date,
        "has_general_assembly" boolean DEFAULT true,
        "general_assembly_frequency" text,
        "decision_making_process" text,
        "has_subcommittees" boolean DEFAULT false,
        "subcommittee_details" text,
        "has_conflict_of_interest_policy" boolean DEFAULT false,
        "has_full_time_staff" boolean DEFAULT false,
        "full_time_staff_count" integer,
        "has_part_time_staff" boolean DEFAULT false,
        "part_time_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "inclusive_staffing_policy" boolean DEFAULT false,
        "staff_turnover_rate_percent" numeric(5, 2),
        "staff_training_budget_percent" numeric(5, 2),
        "volunteer_count" integer,
        "uses_external_consultants" boolean DEFAULT false,
        "has_social_security" boolean DEFAULT false,
        "has_insurance_for_staff" boolean DEFAULT false,
        "ongoing_project_count" integer,
        "completed_project_count" integer,
        "has_logical_framework" boolean DEFAULT false,
        "has_monitoring_evaluation_system" boolean DEFAULT false,
        "monitoring_evaluation_details" text,
        "has_baseline_data" boolean DEFAULT false,
        "conducts_beneficiary_satisfaction_survey" boolean DEFAULT false,
        "has_external_evaluation" boolean DEFAULT false,
        "major_project_details" text,
        "project_success_rate" integer,
        "has_partnership_with_local_government" boolean DEFAULT false,
        "local_government_partnership_details" text,
        "has_partnership_with_provincial_government" boolean DEFAULT false,
        "provincial_government_partnership_details" text,
        "has_partnership_with_federal_government" boolean DEFAULT false,
        "federal_government_partnership_details" text,
        "has_partnership_with_ingos" boolean DEFAULT false,
        "ingo_partnership_details" text,
        "has_partnership_with_private_sector" boolean DEFAULT false,
        "private_sector_partnership_details" text,
        "has_partnership_with_academia" boolean DEFAULT false,
        "academia_partnership_details" text,
        "network_memberships" text,
        "accessibility_level" "accessibility_level",
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "inclusion_policies" text,
        "inclusion_challenges" text,
        "gender_mainstreaming" text,
        "disabled_accessibility" text,
        "major_achievements" text,
        "community_impact" text,
        "success_stories" text,
        "innovation_initiatives" text,
        "good_practices" text,
        "awards_and_recognition" text,
        "research_publications" text,
        "infrastructure_challenges" text,
        "technical_challenges" text,
        "financial_challenges" text,
        "social_challenges" text,
        "governance_challenges" text,
        "capacity_building_needs" text,
        "funding_needs" text,
        "strategic_priorities" text,
        "expansion_plans" text,
        "sustainability_plans" text,
        "future_projects_planned" text,
        "partnership_plans" text,
        "innovation_plans" text,
        "has_safety_protocol" boolean DEFAULT false,
        "safety_protocol_details" text,
        "has_first_aid_kit" boolean DEFAULT false,
        "has_fire_extinguisher" boolean DEFAULT false,
        "has_emergency_exits" boolean DEFAULT false,
        "has_security_guard" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "has_boundary_wall" boolean DEFAULT false,
        "contact_person_name" text,
        "contact_person_designation" text,
        "chairperson_name" text,
        "executive_director_name" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "official_email" text,
        "has_social_media_presence" boolean DEFAULT false,
        "facebook_page" text,
        "website_url" text,
        "other_social_media" text,
        "has_digital_database" boolean DEFAULT false,
        "uses_accounting_software" boolean DEFAULT false,
        "accounting_software_details" text,
        "uses_hr_software" boolean DEFAULT false,
        "uses_program_management_software" boolean DEFAULT false,
        "software_details" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_schools" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "linked_private_sector" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_assembly_hall" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "hall_type" "assembly_hall_type" NOT NULL,
        "primary_use" "event_type" NOT NULL,
        "size_category" "hall_size_category" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "established_year" integer,
        "management_type" "management_type" NOT NULL,
        "managing_body" text,
        "has_necessary_permits" boolean DEFAULT true,
        "permits_details" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "construction_material" "building_construction_material",
        "last_renovated_year" integer,
        "total_floors" integer,
        "number_of_halls" integer,
        "main_hall_capacity_sqm" numeric(10, 2),
        "main_hall_capacity_people" integer,
        "standing_capacity" integer,
        "max_occupancy_limit" integer,
        "has_stage" boolean DEFAULT true,
        "stage_size_sqm" numeric(10, 2),
        "has_backstage" boolean DEFAULT false,
        "has_dressing_rooms" boolean DEFAULT false,
        "chairs_count" integer,
        "tables_count" integer,
        "has_elevator" boolean DEFAULT false,
        "has_flexible_seating" boolean DEFAULT false,
        "seating_arrangements" text,
        "has_air_conditioning" boolean DEFAULT false,
        "has_heating" boolean DEFAULT false,
        "has_audio_system" boolean DEFAULT true,
        "audio_system_details" text,
        "has_lighting_system" boolean DEFAULT true,
        "lighting_system_details" text,
        "has_projection_system" boolean DEFAULT false,
        "projection_system_details" text,
        "has_wifi" boolean DEFAULT false,
        "internet_bandwidth_mbps" integer,
        "has_kitchen" boolean DEFAULT false,
        "kitchen_facilities" text,
        "has_dining_area" boolean DEFAULT false,
        "dining_area_capacity" integer,
        "has_bar" boolean DEFAULT false,
        "has_vip_lounge" boolean DEFAULT false,
        "has_green_room" boolean DEFAULT false,
        "has_control_room" boolean DEFAULT false,
        "has_ticketing_area" boolean DEFAULT false,
        "has_lobby" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "has_toilets" boolean DEFAULT true,
        "male_toilets_count" integer,
        "female_toilets_count" integer,
        "neutral_toilets_count" integer,
        "has_handicap_toilets" boolean DEFAULT false,
        "accessibility_level" "accessibility_level",
        "has_wheelchair_ramps" boolean DEFAULT false,
        "has_accessible_seating" boolean DEFAULT false,
        "has_parking" boolean DEFAULT true,
        "parking_capacity" integer,
        "has_bus_parking" boolean DEFAULT false,
        "bus_parking_capacity" integer,
        "distance_from_main_road_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "usage_frequency" "usage_frequency",
        "weekly_bookings_average" integer,
        "monthly_events_count" integer,
        "annual_events_count" integer,
        "peak_booking_months" text,
        "major_annual_events" text,
        "regular_activities" text,
        "allows_external_catering" boolean DEFAULT true,
        "allows_alcohol" boolean DEFAULT false,
        "has_noise_restrictions" boolean DEFAULT true,
        "noise_restrictions" text,
        "operating_hours" text,
        "booking_procedure" text,
        "has_online_booking" boolean DEFAULT false,
        "online_booking_url" text,
        "rental_fee_structure" text,
        "full_day_rate_npr" numeric(10, 2),
        "half_day_rate_npr" numeric(10, 2),
        "hourly_rate_npr" numeric(10, 2),
        "has_discount_rates" boolean DEFAULT false,
        "discount_categories" text,
        "security_deposit_required" boolean DEFAULT true,
        "security_deposit_amount_npr" numeric(10, 2),
        "cancellation_policy" text,
        "cancellation_fee_npr" numeric(10, 2),
        "additional_services_offered" text,
        "additional_services_rates" text,
        "has_full_time_manager" boolean DEFAULT false,
        "manager_contact_info" text,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "technical_staff_count" integer,
        "cleaning_staff_count" integer,
        "security_staff_count" integer,
        "event_staff_available" boolean DEFAULT false,
        "event_staff_rates_npr" numeric(10, 2),
        "has_fire_safety_system" boolean DEFAULT true,
        "fire_safety_details" text,
        "has_emergency_exits" boolean DEFAULT true,
        "emergency_exits_count" integer,
        "has_evacuation_plan" boolean DEFAULT false,
        "has_first_aid_facilities" boolean DEFAULT false,
        "has_defibrillator" boolean DEFAULT false,
        "has_security" boolean DEFAULT true,
        "security_type" text,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_insurance" boolean DEFAULT false,
        "insurance_type" text,
        "annual_operating_cost_npr" numeric(18, 2),
        "annual_revenue_npr" numeric(18, 2),
        "maintenance_budget_npr" numeric(14, 2),
        "utility_budget_npr" numeric(14, 2),
        "profitable_operation" boolean DEFAULT false,
        "receives_subsidies" boolean DEFAULT false,
        "subsidy_source_details" text,
        "has_endowment_fund" boolean DEFAULT false,
        "endowment_fund_size_npr" numeric(18, 2),
        "has_bank_account" boolean DEFAULT true,
        "bank_account_details" text,
        "has_regular_partners" boolean DEFAULT false,
        "regular_partner_details" text,
        "has_government_partnerships" boolean DEFAULT false,
        "government_partnership_details" text,
        "has_corporate_sponsors" boolean DEFAULT false,
        "corporate_sponsor_details" text,
        "has_community_partnerships" boolean DEFAULT false,
        "community_partnership_details" text,
        "provides_event_planning" boolean DEFAULT false,
        "provides_catering_services" boolean DEFAULT false,
        "catering_options" text,
        "provides_decor_services" boolean DEFAULT false,
        "provides_av_technician" boolean DEFAULT false,
        "provides_photography_services" boolean DEFAULT false,
        "provides_accommodation_info" boolean DEFAULT false,
        "nearby_accommodation_details" text,
        "maintenance_schedule" text,
        "last_major_renovation" date,
        "planned_upgrades" text,
        "current_condition_notes" text,
        "cleaning_schedule" text,
        "operational_challenges" text,
        "maintenance_challenges" text,
        "upgrade_needs" text,
        "competition_challenges" text,
        "expansion_plans" text,
        "technological_upgrade_plans" text,
        "service_improvement_plans" text,
        "sustainability_plans" text,
        "environmental_impact_measures" text,
        "energy_efficient_features" text,
        "waste_management_system" text,
        "has_green_certification" boolean DEFAULT false,
        "green_certification_details" text,
        "marketing_strategy" text,
        "has_dedicated_website" boolean DEFAULT false,
        "website_url" text,
        "social_media_presence" boolean DEFAULT false,
        "facebook_page" text,
        "instagram_handle" text,
        "other_social_media" text,
        "listed_on_booking_platforms" boolean DEFAULT false,
        "booking_platforms_list" text,
        "average_rating" numeric(3, 1),
        "review_sources" text,
        "has_testimonials" boolean DEFAULT false,
        "notable_events" text,
        "awards_received" text,
        "booking_contact_name" text,
        "booking_contact_phone" text,
        "booking_email_address" text,
        "manager_name" text,
        "manager_phone" text,
        "manager_email" text,
        "alternate_contact_name" text,
        "alternate_contact_phone" text,
        "emergency_contact_details" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_cultural_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_hotels" jsonb DEFAULT '[]'::jsonb,
        "linked_catering_services" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "compound_area" geometry (Polygon, 4326),
        "parking_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_customs_office" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "type" "customs_office_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "status" "customs_office_status" NOT NULL,
        "established_year" integer,
        "border_connection" "border_connection",
        "border_country_name" text,
        "border_point_name" text,
        "distance_from_border_km" numeric(6, 2),
        "head_officer_title" text,
        "office_code" text,
        "parent_customs_office_id" varchar(36),
        "jurisdiction_area" text,
        "administrative_hierarchy" text,
        "phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "po_box_number" text,
        "opening_time" time,
        "closing_time" time,
        "is_open_all_day" boolean DEFAULT false,
        "is_24_hour_operation" boolean DEFAULT false,
        "weekly_off_days" text,
        "holiday_schedule" text,
        "has_seasonal_hours" boolean DEFAULT false,
        "seasonal_hours_details" text,
        "facility_condition" "facility_condition",
        "year_last_renovated" integer,
        "building_count" integer,
        "has_warehouse" boolean DEFAULT false,
        "warehouse_area_square_meters" numeric(10, 2),
        "has_laboratory" boolean DEFAULT false,
        "laboratory_type" text,
        "has_scanners" boolean DEFAULT false,
        "scanner_types" text,
        "has_detection_equipment" boolean DEFAULT false,
        "detection_equipment_types" text,
        "has_weighbridge" boolean DEFAULT false,
        "weighbridge_capacity" text,
        "has_quarantine_facility" boolean DEFAULT false,
        "quarantine_facility_type" text,
        "has_customs_laboratory" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "has_water_supply" boolean DEFAULT true,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_speed" text,
        "has_edi" boolean DEFAULT false,
        "has_asycuda" boolean DEFAULT false,
        "customs_software_details" text,
        "has_public_toilets" boolean DEFAULT false,
        "has_waiting_area" boolean DEFAULT false,
        "waiting_area_capacity" integer,
        "has_information_desk" boolean DEFAULT false,
        "has_public_display_system" boolean DEFAULT false,
        "has_payment_counter" boolean DEFAULT false,
        "access_road_condition" text,
        "nearest_highway_name" text,
        "distance_to_highway_km" numeric(6, 2),
        "nearest_city_name" text,
        "distance_to_city_km" numeric(6, 2),
        "nearest_port_name" text,
        "distance_to_port_km" numeric(6, 2),
        "has_public_transport" boolean DEFAULT false,
        "public_transport_details" text,
        "has_parking" boolean DEFAULT false,
        "parking_capacity_vehicles" integer,
        "has_truck_yard" boolean DEFAULT false,
        "truck_yard_capacity" integer,
        "total_staff_count" integer,
        "customs_officer_count" integer,
        "support_staff_count" integer,
        "security_personnel_count" integer,
        "has_customs_police" boolean DEFAULT false,
        "customs_police_count" integer,
        "has_female_staff" boolean DEFAULT false,
        "female_staff_percentage" integer,
        "staffing_adequacy" text,
        "annual_trade_volume_npr" numeric(18, 2),
        "import_volume_npr" numeric(18, 2),
        "export_volume_npr" numeric(18, 2),
        "recorded_fiscal_year" varchar(9),
        "average_monthly_declarations" integer,
        "main_import_items" text,
        "main_export_items" text,
        "trade_volume" "trade_volume",
        "seasonal_trade_patterns" text,
        "annual_revenue_collection_npr" numeric(18, 2),
        "import_duty_collection_npr" numeric(18, 2),
        "excise_duty_collection_npr" numeric(18, 2),
        "vat_collection_npr" numeric(18, 2),
        "other_tax_collection_npr" numeric(18, 2),
        "revenue_collection_growth_rate" numeric(5, 2),
        "average_customs_clearance_time_hours" numeric(6, 2),
        "expedited_service_available" boolean DEFAULT false,
        "expedited_service_details" text,
        "electronic_filing_available" boolean DEFAULT false,
        "electronic_payment_available" boolean DEFAULT false,
        "payment_methods_accepted" text,
        "has_automated_risk_management" boolean DEFAULT false,
        "has_single_window_system" boolean DEFAULT false,
        "has_post_clearance_audit" boolean DEFAULT false,
        "has_advance_ruling" boolean DEFAULT false,
        "has_authorized_economic_operator" boolean DEFAULT false,
        "available_services" text,
        "modernization_level" "modernization_level",
        "ongoing_modernization_projects" text,
        "planned_upgrades" text,
        "recent_improvements" text,
        "has_iso_quality_certification" boolean DEFAULT false,
        "iso_certification_details" text,
        "implements_wco_standards" boolean DEFAULT false,
        "implements_wto_tfa" boolean DEFAULT false,
        "trade_agreements_honored" text,
        "infrastructure_challenges" text,
        "staffing_challenges" text,
        "technological_challenges" text,
        "development_needs" text,
        "coordinating_agencies" text,
        "has_immigration" boolean DEFAULT false,
        "has_quarantine" boolean DEFAULT false,
        "has_bank_branch" boolean DEFAULT false,
        "bank_branch_details" text,
        "has_clearing_agents" boolean DEFAULT false,
        "clearing_agent_count" integer,
        "security_measures" text,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_armed_security" boolean DEFAULT false,
        "has_perimeter_fence" boolean DEFAULT false,
        "has_security_scanning" boolean DEFAULT false,
        "has_help_desk" boolean DEFAULT false,
        "has_public_information_system" boolean DEFAULT false,
        "has_grievance_system" boolean DEFAULT false,
        "public_feedback_mechanism" text,
        "transparency_measures" text,
        "anti_corruption_measures" text,
        "has_public_service_standards" boolean DEFAULT false,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_parking_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_government_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "facility_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_public_toilet" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "toilet_type" "public_toilet_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "location_type" text,
        "established_year" integer,
        "management_type" "toilet_management_type" NOT NULL,
        "managing_body" text,
        "total_area_sq_m" numeric(10, 2),
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "male_section_available" boolean DEFAULT true,
        "female_section_available" boolean DEFAULT true,
        "third_gender_section_available" boolean DEFAULT false,
        "gender_neutral_available" boolean DEFAULT false,
        "male_toilet_count" integer,
        "female_toilet_count" integer,
        "urinal_count" integer,
        "handicap_accessible_toilet_count" integer,
        "family_toilet_count" integer,
        "children_toilet_count" integer,
        "has_sinks" boolean DEFAULT true,
        "sink_count" integer,
        "has_hand_dryers" boolean DEFAULT false,
        "hand_dryer_count" integer,
        "has_mirrors" boolean DEFAULT false,
        "mirror_count" integer,
        "has_baby_changing_station" boolean DEFAULT false,
        "baby_changing_station_count" integer,
        "has_showers" boolean DEFAULT false,
        "shower_count" integer,
        "has_sanitary_napkin_vending_machine" boolean DEFAULT false,
        "has_sanitary_napkin_disposal" boolean DEFAULT false,
        "has_toilet_paper_dispenser" boolean DEFAULT false,
        "has_soap_dispenser" boolean DEFAULT false,
        "has_water_supply" boolean DEFAULT true,
        "water_supply_type" text,
        "water_storage_facility" boolean DEFAULT false,
        "water_storage_capacity_liters" integer,
        "sewage_management_system" "sewage_management_system",
        "septic_tank_cleaning_frequency" text,
        "last_septic_tank_cleaning_date" date,
        "has_electricity" boolean DEFAULT true,
        "has_proper_lighting" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "has_proper_ventilation" boolean DEFAULT true,
        "has_waste_management_system" boolean DEFAULT true,
        "waste_management_details" text,
        "operating_hours" text,
        "opening_time" time,
        "closing_time" time,
        "is_24_hours" boolean DEFAULT false,
        "usage_frequency" "toilet_usage_frequency",
        "average_daily_users" integer,
        "accessibility_level" "accessibility_level",
        "has_ramp" boolean DEFAULT false,
        "has_wheelchair_access" boolean DEFAULT false,
        "has_handrails" boolean DEFAULT false,
        "has_wide_entrance_doors" boolean DEFAULT false,
        "has_adequate_maneuvering_space" boolean DEFAULT false,
        "has_visual_signage" boolean DEFAULT false,
        "has_braille_signage" boolean DEFAULT false,
        "distance_from_main_road_meters" integer,
        "has_usage_fee" boolean DEFAULT false,
        "usage_fee_npr" numeric(10, 2),
        "fee_differentiated_by_gender" boolean DEFAULT false,
        "fee_collection_method" text,
        "monthly_maintenance_cost_npr" numeric(10, 2),
        "annual_operating_cost_npr" numeric(14, 2),
        "funding_source" text,
        "is_financially_sustainable" boolean DEFAULT false,
        "daily_cleaning_frequency" integer,
        "cleaning_schedule" text,
        "has_cleaning_staff" boolean DEFAULT false,
        "cleaning_staff_count" integer,
        "cleanliness_level" "cleanliness_level",
        "maintenance_responsibility" text,
        "has_complaint_system" boolean DEFAULT false,
        "complaint_resolution_process" text,
        "has_caretaker" boolean DEFAULT false,
        "caretaker_presence_hours" text,
        "security_measures" text,
        "has_dedicated_security" boolean DEFAULT false,
        "has_emergency_light" boolean DEFAULT false,
        "has_emergency_contact" boolean DEFAULT false,
        "emergency_contact_details" text,
        "has_first_aid_kit" boolean DEFAULT false,
        "has_handwashing_instructions" boolean DEFAULT false,
        "has_hygiene_promotion_materials" boolean DEFAULT false,
        "conduct_awareness_programs" boolean DEFAULT false,
        "awareness_frequency" text,
        "has_eco_friendly_features" boolean DEFAULT false,
        "eco_friendly_feature_details" text,
        "has_water_conservation_measures" boolean DEFAULT false,
        "water_conservation_details" text,
        "infrastructure_challenges" text,
        "maintenance_challenges" text,
        "user_behavior_challenges" text,
        "financial_challenges" text,
        "future_improvement_plans" text,
        "necessary_upgrades" text,
        "community_sensitization_efforts" text,
        "feedback_mechanism" text,
        "user_satisfaction_level" text,
        "community_contribution" text,
        "contact_person_name" text,
        "contact_person_designation" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_public_spaces" jsonb DEFAULT '[]'::jsonb,
        "linked_bus_stands" jsonb DEFAULT '[]'::jsonb,
        "linked_markets" jsonb DEFAULT '[]'::jsonb,
        "linked_parking_areas" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_resting_place" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "resting_place_type" "resting_place_type" NOT NULL,
        "local_name" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "location_type" text,
        "established_year" integer,
        "construction_type" "resting_place_construction_type" NOT NULL,
        "management_type" "resting_place_management_type",
        "managing_body" text,
        "has_dedicated_caretaker" boolean DEFAULT false,
        "historical_background" text,
        "cultural_significance" "cultural_significance",
        "associated_stories" text,
        "design_significance" text,
        "is_heritage_structure" boolean DEFAULT false,
        "heritage_designation_details" text,
        "total_area_sq_m" numeric(10, 2),
        "platform_height_cm" integer,
        "seating_capacity" integer,
        "shade_type" "shade_type",
        "has_tree_plantation" boolean DEFAULT false,
        "tree_count" integer,
        "tree_species" text,
        "tree_age_estimate_years" integer,
        "building_condition" "building_condition",
        "construction_year" integer,
        "last_renovated_year" integer,
        "has_seating_benches" boolean DEFAULT true,
        "bench_count" integer,
        "bench_material" text,
        "has_water_facility" boolean DEFAULT false,
        "water_facility_type" text,
        "has_trash_bins" boolean DEFAULT false,
        "trash_bin_count" integer,
        "has_information_board" boolean DEFAULT false,
        "information_board_details" text,
        "has_electricity" boolean DEFAULT false,
        "has_lighting" boolean DEFAULT false,
        "lighting_type" text,
        "has_wifi" boolean DEFAULT false,
        "has_mobile_charging_station" boolean DEFAULT false,
        "has_toilet_nearby" boolean DEFAULT false,
        "distance_to_nearest_toilet_meters" integer,
        "has_shops_nearby" boolean DEFAULT false,
        "shop_types" text,
        "has_public_phone" boolean DEFAULT false,
        "has_emergency_contact_info" boolean DEFAULT false,
        "has_shelter_from_rain" boolean DEFAULT false,
        "has_view_point" boolean DEFAULT false,
        "view_description" text,
        "has_garden_area" boolean DEFAULT false,
        "garden_area_sq_m" numeric(10, 2),
        "has_public_art" boolean DEFAULT false,
        "public_art_description" text,
        "accessibility_level" "accessibility_level",
        "distance_from_main_road_meters" integer,
        "has_wheelchair_access" boolean DEFAULT false,
        "has_clear_directional_signs" boolean DEFAULT false,
        "public_transport_accessibility" text,
        "usage_frequency" "resting_place_usage_frequency",
        "primary_user_groups" text,
        "used_for_community_gatherings" boolean DEFAULT false,
        "community_gathering_types" text,
        "used_for_commercial_purposes" boolean DEFAULT false,
        "commercial_use_details" text,
        "seasonal_usage_pattern" text,
        "maintenance_responsibility" text,
        "maintenance_frequency" text,
        "last_maintenance_date" date,
        "cleanliness_level" text,
        "has_regular_cleaning" boolean DEFAULT false,
        "cleaning_schedule" text,
        "annual_maintenance_budget_npr" numeric(10, 2),
        "maintenance_funding_source" text,
        "safety_rating" text,
        "lighting_after_dark" boolean DEFAULT false,
        "security_concerns" text,
        "has_nearby_police_post" boolean DEFAULT false,
        "distance_to_nearest_police_post_km" numeric(5, 2),
        "environmental_concerns" text,
        "drainage_facility" boolean DEFAULT false,
        "drainage_condition" text,
        "flood_risk_level" text,
        "has_antilittering_measures" boolean DEFAULT false,
        "infrastructure_challenges" text,
        "maintenance_challenges" text,
        "user_challenges" text,
        "improvement_needs" text,
        "planned_upgrades" text,
        "community_recommendations" text,
        "local_government_plans" text,
        "nearby_attractions" text,
        "distance_to_nearest_tourist_spot_km" numeric(5, 2),
        "part_of_trail_network" boolean DEFAULT false,
        "trail_network_details" text,
        "contact_person_name" text,
        "contact_phone" text,
        "alternate_contact_details" text,
        "community_contribution_history" text,
        "volunteer_involvement" text,
        "local_support_level" text,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_trails" jsonb DEFAULT '[]'::jsonb,
        "linked_tourist_sites" jsonb DEFAULT '[]'::jsonb,
        "linked_public_toilets" jsonb DEFAULT '[]'::jsonb,
        "linked_transport_stops" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "structure_footprint" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_community_forest" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_numbers" jsonb DEFAULT '[]'::jsonb,
        "location" text,
        "address" text,
        "registration_number" varchar(50),
        "registration_date" date,
        "handover_date" date,
        "forest_office_registered_with" text,
        "certificate_number" varchar(50),
        "forest_management_plan" boolean DEFAULT false,
        "management_plan_period" text,
        "renewal_date" date,
        "has_forest_user_group" boolean DEFAULT true,
        "user_group_name" text,
        "user_group_registration_number" varchar(50),
        "user_group_formation_date" date,
        "total_user_households" integer,
        "total_beneficiaries" integer,
        "male_members" integer,
        "female_members" integer,
        "dalit_households" integer,
        "janajati_households" integer,
        "brahmin_chhetri_households" integer,
        "other_ethnic_households" integer,
        "executive_committee_size" integer,
        "females_in_executive" integer,
        "executive_committee_formation_date" date,
        "executive_committee_election_frequency_years" integer,
        "chairperson_name" text,
        "secretary_name" text,
        "treasurer_name" text,
        "total_area_hectares" numeric(10, 2),
        "forest_coverage_percent" numeric(5, 2),
        "open_area_percent" numeric(5, 2),
        "encroachment_area_hectares" numeric(10, 2),
        "forest_condition" "forest_condition",
        "forest_density" "forest_density",
        "forest_management_status" "forest_management_status",
        "biodiversity_level" "biodiversity_level",
        "fire_risk_level" "fire_risk_level",
        "elevation_range_meters" text,
        "slope_percent" numeric(5, 2),
        "aspect_direction" text,
        "topography" "topography_type",
        "soil_type" text,
        "ecosystem_type" "ecosystem_type",
        "watershed_name" text,
        "nearest_water_body_name" text,
        "distance_to_water_body_km" numeric(6, 2),
        "dominant_tree_species" jsonb DEFAULT '[]'::jsonb,
        "dominant_shrub_species" jsonb DEFAULT '[]'::jsonb,
        "native_species_count" integer,
        "invasive_species_count" integer,
        "invasive_species_names" jsonb DEFAULT '[]'::jsonb,
        "medicinal_plant_species_count" integer,
        "notable_medicinal_plants" jsonb DEFAULT '[]'::jsonb,
        "endangered_flora_count" integer,
        "endangered_fauna_count" integer,
        "endangered_species" jsonb DEFAULT '[]'::jsonb,
        "wildlife_present" jsonb DEFAULT '[]'::jsonb,
        "last_inventory_year" integer,
        "estimated_annual_growth_percent" numeric(5, 2),
        "estimated_carbon_stock_tonnes" numeric(10, 2),
        "total_tree_count" integer,
        "average_tree_age" integer,
        "average_tree_height_meters" numeric(6, 2),
        "average_dbh_cm" numeric(6, 2),
        "timber_volume_estimate_cubic_meters" numeric(10, 2),
        "allows_harvesting" boolean DEFAULT true,
        "annual_allowable_harvest_cubic_meters" numeric(10, 2),
        "last_harvest_date" date,
        "last_harvest_volume_cubic_meters" numeric(10, 2),
        "harvesting_system" text,
        "major_forest_products" jsonb DEFAULT '[]'::jsonb,
        "annual_timber_production_cubic_meters" numeric(10, 2),
        "annual_firewood_production_kg" numeric(10, 2),
        "annual_fodder_production_kg" numeric(10, 2),
        "other_forest_products_harvested" text,
        "annual_revenue_npr" numeric(14, 2),
        "timber_revenue_npr" numeric(14, 2),
        "ntfp_revenue_npr" numeric(14, 2),
        "other_income_sources_npr" numeric(14, 2),
        "annual_operational_cost_npr" numeric(14, 2),
        "has_bank_account" boolean DEFAULT true,
        "bank_account_details" text,
        "total_savings_npr" numeric(14, 2),
        "receives_external_funding" boolean DEFAULT false,
        "external_funding_sources_npr" numeric(14, 2),
        "funding_organizations" jsonb DEFAULT '[]'::jsonb,
        "has_silvicultural_activities" boolean DEFAULT false,
        "silvicultural_activities_details" text,
        "has_plantation_activities" boolean DEFAULT false,
        "plantation_area_hectares" numeric(10, 2),
        "plantation_year" integer,
        "planted_species" jsonb DEFAULT '[]'::jsonb,
        "planting_survival_rate_percent" numeric(5, 2),
        "has_nursery" boolean DEFAULT false,
        "nursery_capacity_seedlings" integer,
        "has_firelines" boolean DEFAULT false,
        "fireline_length_km" numeric(6, 2),
        "has_watch_tower" boolean DEFAULT false,
        "watch_tower_count" integer,
        "forest_fire_incidents_last_five_years" integer,
        "last_forest_fire_date" date,
        "employes_forest_guards" boolean DEFAULT false,
        "forest_guard_count" integer,
        "has_encroachment_issues" boolean DEFAULT false,
        "encroachment_details" text,
        "illegal_logging_incidents_last_year" integer,
        "has_community_development_fund" boolean DEFAULT false,
        "development_fund_allocation_percent" numeric(5, 2),
        "develops_local_infrastructure" boolean DEFAULT false,
        "infrastructure_development_details" text,
        "provides_educational_support" boolean DEFAULT false,
        "educational_support_details" text,
        "livelihood_support_activities" text,
        "has_equitable_distribution_system" boolean DEFAULT false,
        "distribution_system_details" text,
        "has_constitution" boolean DEFAULT true,
        "has_operational_plan" boolean DEFAULT true,
        "operational_plan_period_years" integer,
        "has_harvesting_rules" boolean DEFAULT true,
        "harvesting_rules_details" text,
        "has_monitoring_system" boolean DEFAULT false,
        "monitoring_system_details" text,
        "has_conflict_resolution_mechanism" boolean DEFAULT false,
        "conflict_resolution_details" text,
        "major_conflict_types" jsonb DEFAULT '[]'::jsonb,
        "receives_government_support" boolean DEFAULT false,
        "government_support_details" text,
        "receives_ngo_support" boolean DEFAULT false,
        "ngo_support_details" text,
        "coordinates_with_local_government" boolean DEFAULT true,
        "coordination_mechanisms" text,
        "major_challenges" jsonb DEFAULT '[]'::jsonb,
        "technical_needs" text,
        "capacity_building_needs" text,
        "financial_needs" text,
        "has_expansion_plan" boolean DEFAULT false,
        "expansion_plan_details" text,
        "sustainability_measures" text,
        "climate_change_adaptation_measures" text,
        "accessibility" "forest_accessibility",
        "distance_from_road_km" numeric(6, 2),
        "distance_from_settlement_km" numeric(6, 2),
        "has_foot_trails" boolean DEFAULT false,
        "foot_trail_length_km" numeric(6, 2),
        "has_ecotourism_activities" boolean DEFAULT false,
        "ecotourism_activities_details" text,
        "annual_visitors_count" integer,
        "contact_person_name" text,
        "contact_person_role" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "email_address" text,
        "land_tenure" "land_tenure",
        "has_boundary_disputes" boolean DEFAULT false,
        "boundary_dispute_details" text,
        "has_boundary_markers" boolean DEFAULT false,
        "boundary_marker_type" text,
        "last_boundary_verification_date" date,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_waterbodies" jsonb DEFAULT '[]'::jsonb,
        "linked_protected_areas" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "forest_boundary" geometry (MultiPolygon, 4326),
        "guard_post_locations" geometry (MultiPoint, 4326),
        "access_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_private_forest" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "registration_number" varchar(50),
        "registration_date" date,
        "registered_with_office" text,
        "certificate_number" varchar(50),
        "ownership_type" text,
        "owner_name" text,
        "ownership_document_type" text,
        "land_certificate_number" varchar(50),
        "has_management_plan" boolean DEFAULT false,
        "management_plan_period" text,
        "management_objectives" jsonb DEFAULT '[]'::jsonb,
        "forest_management_status" "forest_management_status",
        "receives_expert_support" boolean DEFAULT false,
        "expert_support_details" text,
        "total_area_hectares" numeric(10, 2),
        "forest_coverage_percent" numeric(5, 2),
        "open_area_percent" numeric(5, 2),
        "forest_condition" "forest_condition",
        "forest_density" "forest_density",
        "forest_type" text,
        "forest_establishment_year" integer,
        "is_plantation" boolean DEFAULT false,
        "plantation_year" integer,
        "biodiversity_level" "biodiversity_level",
        "fire_risk_level" "fire_risk_level",
        "elevation_range_meters" text,
        "slope_percent" numeric(5, 2),
        "aspect_direction" text,
        "topography" "topography_type",
        "soil_type" text,
        "ecosystem_type" "ecosystem_type",
        "watershed_name" text,
        "nearest_water_body_name" text,
        "distance_to_water_body_km" numeric(6, 2),
        "dominant_tree_species" jsonb DEFAULT '[]'::jsonb,
        "dominant_shrub_species" jsonb DEFAULT '[]'::jsonb,
        "tree_species_count" integer,
        "planted_species" jsonb DEFAULT '[]'::jsonb,
        "native_species_count" integer,
        "invasive_species_count" integer,
        "invasive_species_names" jsonb DEFAULT '[]'::jsonb,
        "medicinal_plants_present" boolean DEFAULT false,
        "medicinal_plant_details" text,
        "wildlife_present" jsonb DEFAULT '[]'::jsonb,
        "last_inventory_year" integer,
        "estimated_annual_growth_percent" numeric(5, 2),
        "estimated_carbon_stock_tonnes" numeric(10, 2),
        "total_tree_count" integer,
        "average_tree_age" integer,
        "average_tree_height_meters" numeric(6, 2),
        "timber_volume_estimate_cubic_meters" numeric(10, 2),
        "harvest_for_personal_use" boolean DEFAULT true,
        "harvest_for_commercial_use" boolean DEFAULT false,
        "annual_harvest_volume_cubic_meters" numeric(10, 2),
        "last_harvest_date" date,
        "harvesting_system" text,
        "major_forest_products" jsonb DEFAULT '[]'::jsonb,
        "has_permit_for_timber_harvest" boolean DEFAULT false,
        "permit_details" text,
        "annual_revenue_npr" numeric(14, 2),
        "annual_operational_cost_npr" numeric(14, 2),
        "receives_subsidies" boolean DEFAULT false,
        "subsidy_details" text,
        "has_loan_for_forestry" boolean DEFAULT false,
        "loan_details" text,
        "has_silvicultural_activities" boolean DEFAULT false,
        "silvicultural_activities_details" text,
        "has_thinning_activities" boolean DEFAULT false,
        "thinning_frequency" text,
        "has_pruning_activities" boolean DEFAULT false,
        "pruning_frequency" text,
        "has_nursery" boolean DEFAULT false,
        "nursery_capacity_seedlings" integer,
        "seedlings_sold_annually" integer,
        "has_fire_protection_measures" boolean DEFAULT false,
        "fire_protection_details" text,
        "has_pest_disease_control_measures" boolean DEFAULT false,
        "pest_disease_control_details" text,
        "fencing_type" text,
        "has_watchman" boolean DEFAULT false,
        "watchman_count" integer,
        "forest_fire_incidents_last_five_years" integer,
        "last_forest_fire_date" date,
        "has_land_use_change_permit" boolean DEFAULT false,
        "land_use_change_details" text,
        "has_legal_challenges" boolean DEFAULT false,
        "legal_challenges_details" text,
        "tax_exempt_status" boolean DEFAULT false,
        "tax_exemption_details" text,
        "receives_government_support" boolean DEFAULT false,
        "government_support_details" text,
        "receives_ngo_support" boolean DEFAULT false,
        "ngo_support_details" text,
        "participates_in_forestry_programs" boolean DEFAULT false,
        "forestry_program_details" text,
        "major_challenges" jsonb DEFAULT '[]'::jsonb,
        "technical_needs" text,
        "financial_needs" text,
        "has_expansion_plan" boolean DEFAULT false,
        "expansion_plan_details" text,
        "future_harvesting_plans" text,
        "successor_plan" text,
        "accessibility" "forest_accessibility",
        "distance_from_road_km" numeric(6, 2),
        "distance_from_settlement_km" numeric(6, 2),
        "has_ecotourism_activities" boolean DEFAULT false,
        "ecotourism_activities_details" text,
        "contact_person_name" text,
        "contact_person_role" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "email_address" text,
        "land_tenure" "land_tenure",
        "has_boundary_disputes" boolean DEFAULT false,
        "boundary_dispute_details" text,
        "has_boundary_markers" boolean DEFAULT false,
        "boundary_marker_type" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_waterbodies" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "forest_boundary" geometry (MultiPolygon, 4326),
        "access_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_religious_forest" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "religious_forest_type" "religious_forest_type" NOT NULL,
        "associated_religion" text,
        "religious_significance" "forest_religious_significance",
        "religious_significance_details" text,
        "associated_deity" text,
        "religious_practices" text,
        "religious_history_details" text,
        "historical_period" text,
        "estimated_age" text,
        "annual_festivals_count" integer,
        "major_festivals_details" text,
        "pilgrimage_importance" text,
        "annual_visitors_count" integer,
        "peak_visitation_periods" text,
        "religious_structures_present" boolean DEFAULT false,
        "religious_structures_details" text,
        "registration_number" varchar(50),
        "registration_date" date,
        "handover_date" date,
        "registered_with_office" text,
        "certificate_number" varchar(50),
        "has_management_plan" boolean DEFAULT false,
        "management_plan_period" text,
        "managing_institution" text,
        "management_committee_exists" boolean DEFAULT true,
        "management_committee_size" integer,
        "chairperson_name" text,
        "secretary_name" text,
        "religious_leader_name" text,
        "religious_leader_title" text,
        "management_committee_formation_date" date,
        "total_area_hectares" numeric(10, 2),
        "forest_coverage_percent" numeric(5, 2),
        "open_area_percent" numeric(5, 2),
        "forest_condition" "forest_condition",
        "forest_density" "forest_density",
        "forest_management_status" "forest_management_status",
        "forest_type" text,
        "forest_establishment_year" integer,
        "biodiversity_level" "biodiversity_level",
        "fire_risk_level" "fire_risk_level",
        "elevation_range_meters" text,
        "slope_percent" numeric(5, 2),
        "aspect_direction" text,
        "topography" "topography_type",
        "soil_type" text,
        "ecosystem_type" "ecosystem_type",
        "watershed_name" text,
        "nearest_water_body_name" text,
        "distance_to_water_body_km" numeric(6, 2),
        "dominant_tree_species" jsonb DEFAULT '[]'::jsonb,
        "dominant_shrub_species" jsonb DEFAULT '[]'::jsonb,
        "native_species_count" integer,
        "invasive_species_count" integer,
        "invasive_species_names" jsonb DEFAULT '[]'::jsonb,
        "medicinal_plant_species_count" integer,
        "notable_medicinal_plants" jsonb DEFAULT '[]'::jsonb,
        "sacred_plant_species" jsonb DEFAULT '[]'::jsonb,
        "endangered_flora_count" integer,
        "endangered_fauna_count" integer,
        "wildlife_present" jsonb DEFAULT '[]'::jsonb,
        "sacred_animal_species" jsonb DEFAULT '[]'::jsonb,
        "has_sacred_groves" boolean DEFAULT false,
        "sacred_groves_details" text,
        "has_sacred_trees" boolean DEFAULT false,
        "sacred_trees_details" text,
        "has_sacred_water_bodies" boolean DEFAULT false,
        "sacred_water_bodies_details" text,
        "has_prayer_sites" boolean DEFAULT false,
        "prayer_sites_details" text,
        "traditional_practices" text,
        "cultural_importance" text,
        "community_involvement" text,
        "local_belief_systems" text,
        "rituals_performed" text,
        "conservation_status" text,
        "conservation_measures" text,
        "has_protected_species" boolean DEFAULT false,
        "protected_species_details" text,
        "restrictions_on_resource_use" text,
        "has_taboos" boolean DEFAULT true,
        "taboos_details" text,
        "allows_harvesting" boolean DEFAULT false,
        "harvesting_restrictions" text,
        "allowed_harvest_products" jsonb DEFAULT '[]'::jsonb,
        "harvesting_for_religious_purposes" boolean DEFAULT true,
        "harvesting_for_religious_purposes_details" text,
        "has_dedicated_fund" boolean DEFAULT false,
        "annual_budget_npr" numeric(14, 2),
        "funding_sources_details" text,
        "has_donation_box" boolean DEFAULT true,
        "estimated_annual_donations_npr" numeric(14, 2),
        "has_silvicultural_activities" boolean DEFAULT false,
        "silvicultural_activities_details" text,
        "has_plantation_activities" boolean DEFAULT false,
        "plantation_area_hectares" numeric(10, 2),
        "plantation_year" integer,
        "planted_species" jsonb DEFAULT '[]'::jsonb,
        "has_fire_protection_measures" boolean DEFAULT false,
        "fire_protection_details" text,
        "employs_forest_guards" boolean DEFAULT false,
        "forest_guard_count" integer,
        "has_boundary_fencing" boolean DEFAULT false,
        "boundary_fencing_type" text,
        "major_threats" jsonb DEFAULT '[]'::jsonb,
        "encroachment_issues" boolean DEFAULT false,
        "encroachment_details" text,
        "illegal_activities_reported" boolean DEFAULT false,
        "illegal_activities_details" text,
        "receives_government_support" boolean DEFAULT false,
        "government_support_details" text,
        "receives_ngo_support" boolean DEFAULT false,
        "ngo_support_details" text,
        "has_research_studies" boolean DEFAULT false,
        "research_study_details" text,
        "has_documented_history" boolean DEFAULT false,
        "documented_history_details" text,
        "has_digitized_records" boolean DEFAULT false,
        "promoted_as_tourist_destination" boolean DEFAULT false,
        "annual_tourist_count" integer,
        "has_tourist_facilities" boolean DEFAULT false,
        "tourist_facilities_details" text,
        "tourism_impacts" text,
        "accessibility" "forest_accessibility",
        "distance_from_road_km" numeric(6, 2),
        "distance_from_settlement_km" numeric(6, 2),
        "public_transport_availability" boolean DEFAULT false,
        "access_restrictions_details" text,
        "contact_person_name" text,
        "contact_person_role" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "email_address" text,
        "land_tenure" "land_tenure",
        "has_boundary_disputes" boolean DEFAULT false,
        "boundary_dispute_details" text,
        "has_boundary_markers" boolean DEFAULT false,
        "boundary_marker_type" text,
        "linked_religious_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_waterbodies" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "forest_boundary" geometry (MultiPolygon, 4326),
        "sacred_sites" geometry (MultiPoint, 4326),
        "access_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_leasehold_forest" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "forest_type" "leasehold_forest_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "forest_registration_number" varchar(50),
        "lease_agreement_number" varchar(50),
        "lease_start_date" date,
        "lease_duration_years" integer,
        "lease_end_date" date,
        "is_renewable" boolean DEFAULT true,
        "renewal_conditions" text,
        "last_renewal_date" date,
        "next_renewal_date" date,
        "administered_by" text,
        "issuing_authority" text,
        "renter_group_name" text,
        "renter_group_registration_number" varchar(50),
        "renter_group_formation_date" date,
        "total_area_hectares" numeric(10, 2),
        "boundary_length" numeric(10, 2),
        "elevation_range_min" integer,
        "elevation_range_max" integer,
        "terrain_type" "forest_terrain_type",
        "slope_percentage" numeric(5, 2),
        "soil_type" text,
        "major_watershed" text,
        "forest_condition" "leasehold_forest_condition",
        "canopy_cover_percentage" numeric(5, 2),
        "has_encroachment" boolean DEFAULT false,
        "encroachment_details" text,
        "has_boundary_disputes" boolean DEFAULT false,
        "boundary_dispute_details" text,
        "dominant_tree_species" text,
        "dominant_shrub_species" text,
        "dominant_herb_species" text,
        "endangered_species" text,
        "medicinal_plants" text,
        "wildlife_diversity" text,
        "biodiversity_index" numeric(5, 2),
        "tree_count" integer,
        "tree_count_year" integer,
        "tree_count_method" text,
        "estimated_timber_volume_cubic_meter" numeric(10, 2),
        "has_operational_plan" boolean DEFAULT true,
        "operational_plan_start_date" date,
        "operational_plan_end_date" date,
        "annual_allowable_cut_cubic_meter" numeric(10, 2),
        "management_system" "forest_management_system",
        "has_forestry_technical_staff" boolean DEFAULT false,
        "technical_staff_details" text,
        "cutting_cycle" integer,
        "has_fire_protection" boolean DEFAULT false,
        "fire_protection_measures" text,
        "has_pest_disease_control" boolean DEFAULT false,
        "pest_disease_control_measures" text,
        "monitoring_frequency" text,
        "last_inventory_date" date,
        "last_monitoring_date" date,
        "total_group_members" integer,
        "male_members" integer,
        "female_members" integer,
        "other_gender_members" integer,
        "households_represented" integer,
        "dalit_households" integer,
        "janajati_households" integer,
        "brahmin_chhetri_households" integer,
        "muslim_households" integer,
        "other_ethnicity_households" integer,
        "poor_households" integer,
        "executive_committee_size" integer,
        "women_in_executive_committee" integer,
        "marginalised_groups_in_committee" integer,
        "has_constitution" boolean DEFAULT true,
        "has_equitable_benefit_sharing" boolean DEFAULT true,
        "benefit_sharing_mechanism" "benefit_sharing_mechanism",
        "conflict_resolution_mechanism" text,
        "annual_revenue_low" numeric(12, 2),
        "annual_revenue_high" numeric(12, 2),
        "annual_investment_amount" numeric(12, 2),
        "has_saving_credit_scheme" boolean DEFAULT false,
        "total_savings_npr" numeric(12, 2),
        "annual_lease_payment_npr" numeric(12, 2),
        "has_bank_account" boolean DEFAULT true,
        "bank_name" text,
        "account_number" text,
        "forest_development_fund_npr" numeric(12, 2),
        "last_audit_date" date,
        "timber_production_cubic_meter_per_year" numeric(10, 2),
        "firewood_production_ton_per_year" numeric(10, 2),
        "fodder_production_ton_per_year" numeric(10, 2),
        "ntfp_production" text,
        "ntfp_species" text,
        "ntfp_harvesting_rules" text,
        "medicinal_plant_utilization" text,
        "ecotourism_activities" text,
        "timber_sales_policy_rules" text,
        "grazing_rules" text,
        "has_conservation_plan" boolean DEFAULT false,
        "conservation_activities" text,
        "conservation_challenges" text,
        "has_watershed_conservation" boolean DEFAULT false,
        "watershed_conservation_activities" text,
        "has_seedlings_nursery" boolean DEFAULT false,
        "seedlings_nursery_details" text,
        "annual_planting_area_hectare" numeric(10, 2),
        "planting_survival_rate_percent" numeric(5, 2),
        "tree_planting_since_establishment" integer,
        "community_development_activities" text,
        "skill_development_activities" text,
        "poverty_alleviation_measures" text,
        "women_empowerment_activities" text,
        "conflicts_within_group" text,
        "conflicts_with_other_communities" text,
        "improved_livelihood_count" integer,
        "enterprise_development" text,
        "livelihood_diversification" text,
        "employment_generated" integer,
        "income_level_change_percent" numeric(5, 2),
        "food_security_impact" text,
        "major_challenges" text,
        "technical_needs" text,
        "financial_needs" text,
        "policy_constraints" text,
        "natural_disaster_vulnerability" text,
        "climate_change_impacts" text,
        "expansion_plans" text,
        "sustainability_measures" text,
        "value_addition_plans" text,
        "market_linkage_plans" text,
        "technology_adoption_plans" text,
        "chairperson_name" text,
        "chairperson_contact" text,
        "secretary_name" text,
        "secretary_contact" text,
        "treasurer_name" text,
        "treasurer_contact" text,
        "forestry_officer_name" text,
        "forestry_officer_contact" text,
        "government_support" text,
        "ngo_support_details" text,
        "research_collaboration" text,
        "training_received" text,
        "certifications_achieved" text,
        "awards_recognition" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_forestry_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_ngos" jsonb DEFAULT '[]'::jsonb,
        "linked_rural_municipalities" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "forest_boundary" geometry (Polygon, 4326),
        "waters_points" geometry (MultiPoint, 4326),
        "infrastructure_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_government_forest" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "forest_type" "government_forest_type" NOT NULL,
        "description" text,
        "forest_area_hectares" numeric(12, 2),
        "gazette_notification_number" varchar(50),
        "gazette_notification_date" date,
        "notified_area_hectares" numeric(12, 2),
        "ward_numbers" jsonb DEFAULT '[]'::jsonb,
        "location" text,
        "boundary_description" text,
        "elevation_range_meters" text,
        "min_elevation_meters" integer,
        "max_elevation_meters" integer,
        "managing_division" text,
        "division_office_location" text,
        "management_status" "management_status",
        "has_management_plan" boolean DEFAULT false,
        "management_plan_period" text,
        "last_inventory_year" integer,
        "forest_officer_in_charge" text,
        "forest_guard_count" integer,
        "forest_ranger_count" integer,
        "total_staff_count" integer,
        "annual_budget_npr" numeric(14, 2),
        "implementing_partners" text,
        "forest_condition" "forest_condition",
        "dominant_species" jsonb DEFAULT '[]'::jsonb,
        "key_flora_species" jsonb DEFAULT '[]'::jsonb,
        "key_fauna_species" jsonb DEFAULT '[]'::jsonb,
        "has_endangered_species" boolean DEFAULT false,
        "endangered_species_list" jsonb DEFAULT '[]'::jsonb,
        "forest_density_percent" numeric(5, 2),
        "age_structure" text,
        "soil_type" text,
        "watershed_details" text,
        "has_water_bodies" boolean DEFAULT false,
        "water_bodies_details" text,
        "biodiversity_richness" text,
        "ecological_significance" text,
        "ecosystem_services" text,
        "carbon_stock_assessment" text,
        "research_value" text,
        "has_rare_habitats" boolean DEFAULT false,
        "rare_habitats_details" text,
        "encroachment_status" text,
        "encroachment_area_hectares" numeric(10, 2),
        "illegal_logging_intensity" text,
        "poaching_intensity" text,
        "fire_risk_level" "fire_risk_level",
        "fire_incidents_last_five_years" integer,
        "diseases_and_pests" text,
        "invasive_species" text,
        "grazing" boolean DEFAULT false,
        "grazing_intensity" text,
        "other_threats" text,
        "has_firelines" boolean DEFAULT false,
        "fireline_kilometers" numeric(8, 2),
        "has_firewatchers" boolean DEFAULT false,
        "firewatcher_count" integer,
        "has_firefighting_equipment" boolean DEFAULT false,
        "firefighting_equipment_details" text,
        "annual_plantation_hectares" numeric(10, 2),
        "soil_conservation_measures" text,
        "watershed_conservation_activities" text,
        "wildlife_conservation_measures" text,
        "has_roads_within" boolean DEFAULT false,
        "road_kilometers" numeric(8, 2),
        "has_checkposts" boolean DEFAULT false,
        "checkpost_count" integer,
        "has_watchtowers" boolean DEFAULT false,
        "watchtower_count" integer,
        "has_nursery" boolean DEFAULT false,
        "nursery_capacity" integer,
        "has_ranger_post" boolean DEFAULT false,
        "ranger_post_count" integer,
        "infrastructure_needs" text,
        "annual_timber_harvest_cubic_meters" numeric(10, 2),
        "annual_firewood_collection_cubic_meters" numeric(10, 2),
        "ntfp_collection" boolean DEFAULT false,
        "ntfp_details" text,
        "medicinal_herb_collection" boolean DEFAULT false,
        "medicinal_herb_details" text,
        "annual_revenue_npr" numeric(14, 2),
        "revenue_sharing" text,
        "adjacent_communities" jsonb DEFAULT '[]'::jsonb,
        "community_access_rights" text,
        "has_resource_dependent_communities" boolean DEFAULT false,
        "resource_dependent_community_details" text,
        "community_conflicts" text,
        "has_community_outreach" boolean DEFAULT false,
        "community_outreach_activities" text,
        "governing_legislation" text,
        "has_legal_disputes" boolean DEFAULT false,
        "legal_dispute_details" text,
        "policy_issues" text,
        "cultural_significance" text,
        "religious_significance" text,
        "historical_significance" text,
        "indigenous_knowledge" text,
        "has_tourism_potential" boolean DEFAULT false,
        "tourism_activities" text,
        "annual_visitor_count" integer,
        "tourist_facilities" text,
        "trekking_routes" boolean DEFAULT false,
        "trekking_route_details" text,
        "development_plans" text,
        "restoration_plans" text,
        "expansion_plans" text,
        "research_priorities" text,
        "contact_office_name" text,
        "contact_office_address" text,
        "contact_officer_name" text,
        "contact_officer_designation" text,
        "contact_phone" text,
        "contact_email" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_waterbodies" jsonb DEFAULT '[]'::jsonb,
        "linked_community_forests" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "forest_boundary" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_natural_pasture" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "description" text,
        "pasture_type" "natural_pasture_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation_min_meters" numeric(8, 2),
        "elevation_max_meters" numeric(8, 2),
        "aspect" text,
        "slope" text,
        "total_area_hectares" numeric(10, 2),
        "grassland_area_percentage" numeric(5, 2),
        "shrubland_area_percentage" numeric(5, 2),
        "wetland_area_percentage" numeric(5, 2),
        "rocky_area_percentage" numeric(5, 2),
        "forest_cover_percentage" numeric(5, 2),
        "vegetation_condition" "vegetation_condition",
        "soil_type" text,
        "water_sources_present" text,
        "natural_water_bodies_count" integer,
        "dominant_grass_species" text,
        "dominant_shrub_species" text,
        "dominant_herb_species" text,
        "invasive_species_present" text,
        "endemic_plant_species_present" text,
        "species_richness" text,
        "biodiversity_value" text,
        "ecosystem_services" text,
        "flora_study_conducted" boolean DEFAULT false,
        "flora_diversity" text,
        "wildlife_present" text,
        "endangered_species_present" text,
        "migratory_corridor" boolean DEFAULT false,
        "migratory_species" text,
        "fauna_study_conducted" boolean DEFAULT false,
        "fauna_diversity" text,
        "management_type" "pasture_management_type" NOT NULL,
        "managing_authority" text,
        "management_plan_exists" boolean DEFAULT false,
        "management_plan_details" text,
        "management_committee_exists" boolean DEFAULT false,
        "committee_member_count" integer,
        "women_in_committee_count" integer,
        "registration_status" text,
        "registration_number" text,
        "registration_date" date,
        "renewal_date" date,
        "access_restrictions" text,
        "seasonal_accessibility" text,
        "distance_from_settlement_km" numeric(6, 2),
        "access_road_available" boolean DEFAULT false,
        "trails_available" boolean DEFAULT false,
        "seasonal_availability" "seasonal_availability",
        "grazing_restrictions" text,
        "grazing_permit_required" boolean DEFAULT false,
        "grazing_permit_cost" numeric(10, 2),
        "grazing_tax_collected" boolean DEFAULT false,
        "annual_grazing_tax_npr" numeric(12, 2),
        "current_uses" text,
        "grazing_pressure" "grazing_pressure",
        "grazing_unit_capacity" integer,
        "annual_grazing_days" integer,
        "average_annual_livestock_count" integer,
        "cattle_percentage" numeric(5, 2),
        "buffalo_percentage" numeric(5, 2),
        "sheep_percentage" numeric(5, 2),
        "goat_percentage" numeric(5, 2),
        "horse_percentage" numeric(5, 2),
        "yak_percentage" numeric(5, 2),
        "chauri_percentage" numeric(5, 2),
        "other_livestock_percentage" numeric(5, 2),
        "other_livestock_types" text,
        "annual_fodder_production_kg" numeric(12, 2),
        "beneficiary_household_count" integer,
        "beneficiary_population" integer,
        "primary_user_groups" text,
        "traditional_usage_rights" text,
        "indigenous_people_dependence" text,
        "livelihood_dependency" text,
        "economic_value_npr" numeric(14, 2),
        "annual_fodder_value_npr" numeric(14, 2),
        "annual_medicinal_herbs_value_npr" numeric(14, 2),
        "annual_ecotourism_value_npr" numeric(14, 2),
        "other_economic_benefits_npr" numeric(14, 2),
        "other_economic_benefit_details" text,
        "conservation_status" text,
        "conservation_measures" text,
        "has_fire_control_measures" boolean DEFAULT false,
        "fire_control_measures_details" text,
        "improvement_activities" text,
        "invasive_control_measures" text,
        "seeding_practices" text,
        "fencing_status" text,
        "water_development_measures" text,
        "fodder_development_activities" text,
        "rotational_grazing_practiced" boolean DEFAULT false,
        "rotational_grazing_details" text,
        "major_threats" text,
        "invasive_species_threats" text,
        "natural_disaster_threats" text,
        "land_use_change_threats" text,
        "climate_change_impacts" text,
        "conflicts_encountered" text,
        "conflict_resolution_mechanisms" text,
        "sustainability_challenges" text,
        "research_conducted" boolean DEFAULT false,
        "research_details" text,
        "monitoring_activities" text,
        "traditional_knowledge" text,
        "documented_knowledge" text,
        "development_plans" text,
        "sustainability_plans" text,
        "required_support" text,
        "improvement_priorities" text,
        "future_threats" text,
        "cultural_importance" text,
        "spiritual_significance" text,
        "traditions_practiced" text,
        "festivals_celebrated" text,
        "historical_significance" text,
        "annual_rainfall_mm" numeric(8, 2),
        "average_temperature_c" numeric(5, 2),
        "carbon_sequestration_potential" text,
        "watershed_value" text,
        "climate_resilience_value" text,
        "environmental_significance" text,
        "contact_person" text,
        "contact_phone" text,
        "management_contact_email" text,
        "nearest_government_office" text,
        "linked_forest_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_water_bodies" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "pasture_area" geometry (Polygon, 4326),
        "trails_network" geometry (MultiLineString, 4326),
        "water_sources" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_protected_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "area_type" "protected_area_type" NOT NULL,
        "province" text,
        "district" text,
        "municipality" text,
        "ward_numbers" jsonb DEFAULT '[]'::jsonb,
        "nearest_settlement" text,
        "total_area_hectares" numeric(12, 2) NOT NULL,
        "boundary_description" text,
        "is_gps_marked" boolean DEFAULT false,
        "has_demarcation_pillars" boolean DEFAULT false,
        "pillar_count" integer,
        "establishment_year" integer,
        "legal_status" text,
        "gazette_notification_date" date,
        "gazette_reference" text,
        "management_authority" "management_authority",
        "managing_office_location" text,
        "protection_status" "protection_status",
        "annual_budget_npr" numeric(14, 2),
        "has_dedicated_staff" boolean DEFAULT true,
        "staff_count" integer,
        "ranger_count" integer,
        "biodiversity_level" "biodiversity_level",
        "ecosystem_type" "ecosystem_type",
        "forest_density" "forest_density",
        "topography_type" "topography_type",
        "elevation_range_low" numeric(8, 2),
        "elevation_range_high" numeric(8, 2),
        "major_vegetation_types" text,
        "key_flora_species" text,
        "key_fauna_species" text,
        "endangered_species_count" integer,
        "watershed_area" boolean DEFAULT false,
        "watershed_details" text,
        "has_management_plan" boolean DEFAULT false,
        "management_plan_period" text,
        "zonation_system" boolean DEFAULT false,
        "zonation_details" text,
        "has_visitor_center" boolean DEFAULT false,
        "has_interpretation_center" boolean DEFAULT false,
        "has_ranger_posts" boolean DEFAULT false,
        "ranger_post_count" integer,
        "has_watch_towers" boolean DEFAULT false,
        "watch_tower_count" integer,
        "has_firelines" boolean DEFAULT false,
        "fireline_kilometers" numeric(8, 2),
        "fire_risk_level" "fire_risk_level",
        "fire_prevention" text,
        "fire_incidents_five_years" integer,
        "has_patrolling_system" boolean DEFAULT true,
        "patrolling_frequency" text,
        "has_research_program" boolean DEFAULT false,
        "current_research_projects" text,
        "has_monitoring_system" boolean DEFAULT false,
        "monitoring_parameters" text,
        "research_collaborators" text,
        "has_wildlife_monitoring" boolean DEFAULT false,
        "is_open_for_tourism" boolean DEFAULT true,
        "annual_visitor_count" integer,
        "entry_fee_npr" numeric(8, 2),
        "foreign_visitor_charge" numeric(8, 2),
        "tourism_infrastructure" text,
        "has_designated_trails" boolean DEFAULT false,
        "trail_kilometers" numeric(8, 2),
        "buffer_zone_area_hectares" numeric(12, 2),
        "has_buffer_zone_management" boolean DEFAULT false,
        "buffer_zone_management_details" text,
        "community_involvement" text,
        "local_communities_count" integer,
        "has_benefit_sharing_mechanism" boolean DEFAULT false,
        "benefit_sharing_details" text,
        "has_conflict_with_communities" boolean DEFAULT false,
        "conflict_nature" text,
        "major_threats" text,
        "encroachment_level" text,
        "illegal_logging_cases" integer,
        "poaching_incidents" integer,
        "human_wildlife_conflict_incidents" integer,
        "conservation_challenges" text,
        "climate_change_impacts" text,
        "adaptation_measures" text,
        "carbon_sequestration_data" text,
        "has_redd_plus" boolean DEFAULT false,
        "has_international_designation" boolean DEFAULT false,
        "iucn_category" text,
        "world_heritage_status" boolean DEFAULT false,
        "ramsar_status" boolean DEFAULT false,
        "biosphere_reserve_status" boolean DEFAULT false,
        "international_designation_details" text,
        "designation_year" integer,
        "expansion_plans" text,
        "conservation_plans" text,
        "research_priorities" text,
        "additional_notes" text,
        "office_name" text,
        "office_address" text,
        "contact_person" text,
        "contact_person_title" text,
        "phone_number" text,
        "email_address" text,
        "website_url" text,
        "linked_municipalities" jsonb DEFAULT '[]'::jsonb,
        "linked_water_bodies" jsonb DEFAULT '[]'::jsonb,
        "linked_forest_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_buffer_zones" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "boundary_polygon" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_hunting_conservation_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "area_type" "hunting_area_type" NOT NULL,
        "province" text,
        "district" text,
        "municipality" text,
        "ward_numbers" jsonb DEFAULT '[]'::jsonb,
        "nearest_settlement" text,
        "total_area_hectares" numeric(12, 2) NOT NULL,
        "boundary_description" text,
        "is_gps_marked" boolean DEFAULT false,
        "has_demarcation_markers" boolean DEFAULT false,
        "marker_count" integer,
        "establishment_year" integer,
        "legal_status" text,
        "gazette_notification_date" date,
        "gazette_reference" text,
        "management_type" "hunting_management",
        "managing_entity_name" text,
        "managing_office_location" text,
        "concession_period_years" integer,
        "concession_start_date" date,
        "concession_end_date" date,
        "annual_revenue_npr" numeric(14, 2),
        "annual_operating_budget_npr" numeric(14, 2),
        "staff_count" integer,
        "game_warden_count" integer,
        "biodiversity_level" "biodiversity_level",
        "ecosystem_type" "ecosystem_type",
        "forest_density" "forest_density",
        "topography_type" "topography_type",
        "elevation_range_low" numeric(8, 2),
        "elevation_range_high" numeric(8, 2),
        "major_vegetation_types" text,
        "major_wildlife_species" text,
        "endangered_species_present" boolean DEFAULT false,
        "endangered_species_list" text,
        "hunting_season" "hunting_season",
        "season_start_month" text,
        "season_end_month" text,
        "hunting_days_per_year" integer,
        "allowed_hunting_methods" text,
        "prohibited_hunting_methods" text,
        "permit_system" boolean DEFAULT true,
        "permit_issuing_authority" text,
        "local_hunting_permit_fee_npr" numeric(10, 2),
        "foreign_hunting_permit_fee_npr" numeric(10, 2),
        "target_species_list" text,
        "annual_harvest_quota" jsonb DEFAULT '{}'::jsonb,
        "has_annual_game_count" boolean DEFAULT false,
        "last_game_count_date" date,
        "major_game_population_trends" text,
        "has_species_management_plan" boolean DEFAULT false,
        "species_introduced" boolean DEFAULT false,
        "introduced_species_list" text,
        "trophy_handling_procedures" text,
        "taxidermy_facilities" boolean DEFAULT false,
        "has_management_plan" boolean DEFAULT false,
        "management_plan_period" text,
        "has_hunting_camps" boolean DEFAULT false,
        "hunting_camp_count" integer,
        "hunting_camp_capacity" integer,
        "has_lodge_facilities" boolean DEFAULT false,
        "lodge_capacity" integer,
        "has_roads" boolean DEFAULT false,
        "road_kilometers" numeric(8, 2),
        "has_watch_towers" boolean DEFAULT false,
        "watch_tower_count" integer,
        "has_tracking_facilities" boolean DEFAULT false,
        "has_guide_facilities" boolean DEFAULT false,
        "guide_count" integer,
        "has_shooting_ranges" boolean DEFAULT false,
        "fire_risk_level" "fire_risk_level",
        "allows_non_hunting_tourism" boolean DEFAULT false,
        "non_hunting_activities" text,
        "photo_tourism_facilities" text,
        "annual_visitor_count" integer,
        "visitor_facilities" text,
        "sustainability_measures" text,
        "habitat_management_practices" text,
        "conservation_projects" text,
        "population_monitoring_methods" text,
        "illegal_hunting_prevention_measures" text,
        "poaching_incidents" integer,
        "has_conservation_fund" boolean DEFAULT false,
        "conservation_fund_details" text,
        "local_community_involvement" text,
        "community_benefit_sharing_percent" numeric(5, 2),
        "local_employment_count" integer,
        "has_conflict_with_communities" boolean DEFAULT false,
        "conflict_nature" text,
        "conflict_resolution_mechanisms" text,
        "has_research_program" boolean DEFAULT false,
        "current_research_projects" text,
        "has_monitoring_system" boolean DEFAULT false,
        "monitoring_parameters" text,
        "research_collaborators" text,
        "publications_list" text,
        "major_challenges" text,
        "future_management_plans" text,
        "expansion_plans" boolean DEFAULT false,
        "expansion_details" text,
        "sustainability_issues" text,
        "has_certification" boolean DEFAULT false,
        "certification_types" text,
        "international_standards_compliance" text,
        "sustainable_practices_rating" text,
        "office_name" text,
        "office_address" text,
        "contact_person" text,
        "contact_person_title" text,
        "phone_number" text,
        "email_address" text,
        "website_url" text,
        "booking_information" text,
        "linked_protected_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_forest_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_water_bodies" jsonb DEFAULT '[]'::jsonb,
        "linked_tourism_services" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "boundary_polygon" geometry (MultiPolygon, 4326),
        "hunting_zones" geometry (MultiPolygon, 4326),
        "facilities_locations" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_buffer_zone" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "buffer_zone_type" "buffer_zone_type" NOT NULL,
        "province" text,
        "district" text,
        "municipality" text,
        "ward_numbers" jsonb DEFAULT '[]'::jsonb,
        "adjacent_protected_area_id" varchar(36),
        "adjacent_protected_area_name" text,
        "total_area_hectares" numeric(12, 2) NOT NULL,
        "boundary_description" text,
        "is_gps_marked" boolean DEFAULT false,
        "has_demarcation_markers" boolean DEFAULT false,
        "establishment_year" integer,
        "legal_status" text,
        "gazette_notification_date" date,
        "gazette_reference" text,
        "management_type" "buffer_zone_management",
        "management_body_name" text,
        "management_office_location" text,
        "annual_budget_npr" numeric(14, 2),
        "has_management_committee" boolean DEFAULT true,
        "committee_formation_date" date,
        "committee_members_count" integer,
        "committee_female_count" integer,
        "committee_marginalized_count" integer,
        "committee_meeting_frequency" text,
        "villages_count" integer,
        "household_count" integer,
        "population_total" integer,
        "population_female" integer,
        "population_male" integer,
        "dependency_on_forest_resources_percent" numeric(5, 2),
        "forest_area_hectares" numeric(12, 2),
        "agriculture_area_hectares" numeric(12, 2),
        "settlement_area_hectares" numeric(12, 2),
        "other_land_use_area_hectares" numeric(12, 2),
        "land_use_composition" jsonb DEFAULT '{}'::jsonb,
        "dominant_land_use_type" "land_use_type",
        "forest_density" "forest_density",
        "major_vegetation_types" text,
        "community_forest_groups_count" integer,
        "community_forest_area_hectares" numeric(12, 2),
        "cfug_member_households" integer,
        "biodiversity_level" "biodiversity_level",
        "ecosystem_type" "ecosystem_type",
        "topography_type" "topography_type",
        "elevation_range_low" numeric(8, 2),
        "elevation_range_high" numeric(8, 2),
        "key_flora_species" text,
        "key_fauna_species" text,
        "wildlife_corridor_present" boolean DEFAULT false,
        "corridor_details" text,
        "allowed_resource_collection_types" text,
        "restricted_activities" text,
        "has_permit_system" boolean DEFAULT true,
        "permit_issuing_authority" text,
        "resource_harvest_schedule" text,
        "sustainable_harvest_guidelines" text,
        "human_wildlife_conflict_level" text,
        "conflict_incidents_annually" integer,
        "major_conflict_species" text,
        "mitigation_measures" text,
        "compensation_scheme_exists" boolean DEFAULT false,
        "compensation_details" text,
        "annual_compensation_amount_npr" numeric(12, 2),
        "conservation_activities" text,
        "afforestation_programmes" text,
        "habitat_restoration_activities" text,
        "alternate_livelihood_programs" text,
        "skill_development_trainings" text,
        "micro_finance_initiatives" text,
        "energy_alternatives_provided" text,
        "revenue_source_types" text,
        "annual_revenue_npr" numeric(14, 2),
        "tourism_contribution_percent" numeric(5, 2),
        "forest_product_contribution_percent" numeric(5, 2),
        "other_income_sources_percent" numeric(5, 2),
        "annual_tourist_count" integer,
        "homestay_facilities" integer,
        "nature_tourism_activities" text,
        "ecotourism_initiatives" text,
        "school_count" integer,
        "health_facility_count" integer,
        "road_access_kilometers" numeric(8, 2),
        "irrigation_schemes_count" integer,
        "drinking_water_schemes_count" integer,
        "has_monitoring_system" boolean DEFAULT false,
        "monitoring_parameters" text,
        "monitoring_frequency" text,
        "has_baseline" boolean DEFAULT false,
        "baseline_year" integer,
        "monitoring_responsibility" text,
        "has_management_plan" boolean DEFAULT true,
        "management_plan_period" text,
        "last_management_plan_review_date" date,
        "operational_plans_exist" boolean DEFAULT false,
        "bye_laws_exist" boolean DEFAULT false,
        "bye_law_details" text,
        "major_challenges" text,
        "resource_needs" text,
        "capacity_development_needs" text,
        "major_achievements" text,
        "success_stories" text,
        "innovative_practices" text,
        "future_development_plans" text,
        "future_conservation_plans" text,
        "office_name" text,
        "office_address" text,
        "chairperson_name" text,
        "secretary_name" text,
        "phone_number" text,
        "email_address" text,
        "linked_protected_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_community_forests" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_infrastructure" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "boundary_polygon" geometry (MultiPolygon, 4326),
        "settlement_locations" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_river" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "alternative_names" text,
        "description" text,
        "river_type" "river_type" NOT NULL,
        "flow_status" "river_flow_status",
        "total_length_km" numeric(10, 2),
        "length_within_municipality_km" numeric(10, 2),
        "average_width_m" numeric(8, 2),
        "maximum_width_m" numeric(8, 2),
        "minimum_width_m" numeric(8, 2),
        "average_depth_m" numeric(8, 2),
        "maximum_depth_m" numeric(8, 2),
        "drainage_area_sq_km" numeric(12, 2),
        "average_discharge_m3s" numeric(10, 2),
        "highest_recorded_discharge_m3s" numeric(10, 2),
        "lowest_recorded_discharge_m3s" numeric(10, 2),
        "begin_elevation_m" numeric(8, 2),
        "end_elevation_m" numeric(8, 2),
        "gradient_percent" numeric(6, 3),
        "main_source_type" text,
        "source_location" text,
        "river_mouth_location" text,
        "major_tributaries" text,
        "catchment_area" text,
        "annual_rainfall_mm" numeric(8, 2),
        "peak_flow_month" text,
        "low_flow_month" text,
        "flood_risk_level" "flood_risk_level",
        "last_major_flood_date" date,
        "flood_history_details" text,
        "has_flood_control_measures" boolean DEFAULT false,
        "flood_control_details" text,
        "has_early_warning_system" boolean DEFAULT false,
        "early_warning_system_details" text,
        "sediment_transport_rate_tons_year" numeric(12, 2),
        "is_subject_to_riverbed_extraction" boolean DEFAULT false,
        "riverbed_extraction_details" text,
        "water_quality_status" "water_quality_status",
        "water_quality_testing_frequency" text,
        "last_water_quality_test_date" date,
        "dissolved_oxygen_mg_l" numeric(6, 2),
        "ph_level" numeric(4, 2),
        "turbidity_ntu" numeric(8, 2),
        "electrical_conductivity_micro_s_cm" numeric(8, 2),
        "total_dissolved_solids_mg_l" numeric(8, 2),
        "pollution_level" "pollution_level",
        "pollution_sources" text,
        "pollution_impacts" text,
        "aquatic_ecosystem_type" text,
        "native_fish_species" text,
        "endangered_species" text,
        "invasive_species" text,
        "riparian_vegetation" text,
        "riparian_buffer_width_m" numeric(6, 2),
        "conservation_status" "water_body_conservation_status",
        "conservation_efforts" text,
        "conserved_by_organization" text,
        "restoration_projects" text,
        "has_wildlife_corridors" boolean DEFAULT false,
        "wildlife_corridor_details" text,
        "main_usage" text,
        "is_drinking_water_source" boolean DEFAULT false,
        "drinking_water_extraction_location_details" text,
        "is_irrigation_source" boolean DEFAULT false,
        "irrigation_area_hectares" numeric(10, 2),
        "has_fishing_activities" boolean DEFAULT false,
        "fishing_details" text,
        "has_religious_significance" boolean DEFAULT false,
        "religious_significance_details" text,
        "has_recreational_use" boolean DEFAULT false,
        "recreational_activities" text,
        "has_cultural_significance" boolean DEFAULT false,
        "cultural_significance_details" text,
        "has_riverbed_mining" boolean DEFAULT false,
        "riverbed_mining_details" text,
        "settlement_near_river" text,
        "has_bridges" boolean DEFAULT false,
        "bridge_count" integer,
        "bridge_details" text,
        "has_dams" boolean DEFAULT false,
        "dam_count" integer,
        "dam_details" text,
        "has_weirs" boolean DEFAULT false,
        "weir_count" integer,
        "has_dredging" boolean DEFAULT false,
        "has_riverbank_stabilization" boolean DEFAULT false,
        "riverbank_stabilization_details" text,
        "has_flood_defenses" boolean DEFAULT false,
        "flood_defense_details" text,
        "has_hydropower_plants" boolean DEFAULT false,
        "hydropower_plant_count" integer,
        "hydropower_details" text,
        "total_hydropower_capacity_mw" numeric(10, 2),
        "administrative_jurisdiction" text,
        "local_administration_authority" text,
        "managed_by_organization" text,
        "management_plan" text,
        "has_river_basin_management_plan" boolean DEFAULT false,
        "basin_management_details" text,
        "has_water_user_groups" boolean DEFAULT false,
        "water_user_group_details" text,
        "environmental_threats" text,
        "major_hazards" text,
        "flood_risk_management" text,
        "drought_risks" text,
        "climate_change_impacts" text,
        "encroachment_issues" text,
        "invasive_species_threats" text,
        "historical_significance" text,
        "historical_events" text,
        "ancient_uses" text,
        "has_monitoring_stations" boolean DEFAULT false,
        "monitoring_station_count" integer,
        "monitoring_station_details" text,
        "research_studies" text,
        "ongoing_research_projects" text,
        "restoration_plans" text,
        "conservation_plans" text,
        "future_projects" text,
        "community_stewardship_programs" text,
        "protected_status" text,
        "relevant_legislation" text,
        "water_right_settings" text,
        "dispute_resolution_mechanism" text,
        "additional_notes" text,
        "data_source" text,
        "last_survey_date" date,
        "surveyed_by" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "river_source" geometry (Point, 4326),
        "river_mouth" geometry (Point, 4326),
        "river_centerline" geometry (LineString, 4326),
        "river_polygon" geometry (MultiPolygon, 4326),
        "drainage_basin" geometry (MultiPolygon, 4326),
        "floodplain" geometry (MultiPolygon, 4326),
        "linked_watersheds" jsonb DEFAULT '[]'::jsonb,
        "linked_tributaries" jsonb DEFAULT '[]'::jsonb,
        "linked_dams" jsonb DEFAULT '[]'::jsonb,
        "linked_irrigation_canals" jsonb DEFAULT '[]'::jsonb,
        "linked_water_projects" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_stream" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "description" text,
        "stream_type" "stream_type" NOT NULL,
        "total_length_km" numeric(8, 2),
        "length_within_municipality_km" numeric(8, 2),
        "average_width_m" numeric(6, 2),
        "maximum_width_m" numeric(6, 2),
        "average_depth_m" numeric(6, 2),
        "maximum_depth_m" numeric(6, 2),
        "drainage_area_sq_km" numeric(10, 2),
        "average_flow_rate_m3s" numeric(8, 3),
        "begin_elevation_m" numeric(8, 2),
        "end_elevation_m" numeric(8, 2),
        "gradient_percent" numeric(6, 3),
        "main_source_type" text,
        "source_location" text,
        "flows_into" text,
        "is_flow_permanent" boolean DEFAULT false,
        "flow_months_count" integer,
        "flow_season_description" text,
        "stream_bed_composition" text,
        "bank_stability" text,
        "catchment_description" text,
        "annual_rainfall_mm" numeric(8, 2),
        "peak_flow_month" text,
        "low_flow_month" text,
        "flood_risk_level" "flood_risk_level",
        "last_flooding_event" date,
        "flooding_history" text,
        "has_flood_control_measures" boolean DEFAULT false,
        "flood_control_details" text,
        "water_quality_status" "water_quality_status",
        "last_water_quality_test_date" date,
        "water_quality_parameters" text,
        "pollution_level" "pollution_level",
        "pollution_sources" text,
        "pollution_impacts" text,
        "has_pollution_prevention" boolean DEFAULT false,
        "pollution_prevention_measures" text,
        "aquatic_species" text,
        "endangered_species" text,
        "invasive_species" text,
        "riparian_vegetation" text,
        "riparian_buffer_width_m" numeric(6, 2),
        "conservation_status" "water_body_conservation_status",
        "conservation_efforts" text,
        "conserved_by_organization" text,
        "restoration_projects" text,
        "has_wildlife_corridors" boolean DEFAULT false,
        "wildlife_significance" text,
        "main_usage" text,
        "is_drinking_water_source" boolean DEFAULT false,
        "drinking_water_details" text,
        "is_irrigation_source" boolean DEFAULT false,
        "irrigation_area_hectares" numeric(8, 2),
        "water_extraction_systems" text,
        "water_harvesting_details" text,
        "has_fishing_activities" boolean DEFAULT false,
        "fishing_details" text,
        "has_religious_significance" boolean DEFAULT false,
        "religious_significance_details" text,
        "has_recreational_use" boolean DEFAULT false,
        "recreational_activities" text,
        "has_cultural_significance" boolean DEFAULT false,
        "cultural_significance_details" text,
        "settlement_proximity" text,
        "has_bridges" boolean DEFAULT false,
        "bridge_count" integer,
        "bridge_details" text,
        "has_check_dams" boolean DEFAULT false,
        "check_dam_count" integer,
        "check_dam_purpose" text,
        "has_water_mills" boolean DEFAULT false,
        "water_mill_count" integer,
        "has_stream_channelization" boolean DEFAULT false,
        "channelization_details" text,
        "has_bank_stabilization" boolean DEFAULT false,
        "bank_stabilization_details" text,
        "has_water_diversion_structures" boolean DEFAULT false,
        "water_diversion_details" text,
        "administrative_jurisdiction" text,
        "local_administration_authority" text,
        "managed_by_organization" text,
        "management_approach" text,
        "has_water_user_groups" boolean DEFAULT false,
        "water_user_group_details" text,
        "community_involvement_description" text,
        "environmental_threats" text,
        "encroachment_issues" text,
        "waste_dumping_issues" text,
        "deforestation_impacts" text,
        "climate_change_impacts" text,
        "land_use_change_impacts" text,
        "historical_significance" text,
        "historical_uses" text,
        "has_monitoring_program" boolean DEFAULT false,
        "monitoring_frequency" text,
        "monitored_by" text,
        "research_studies" text,
        "restoration_needs" text,
        "conservation_priority" text,
        "restoration_plans" text,
        "community_based_conservation" text,
        "traditional_management_practices" text,
        "indigenous_knowledge" text,
        "local_beliefs_surrounding_stream" text,
        "main_challenges" text,
        "conflict_issues" text,
        "proposed_solutions" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "stream_source" geometry (Point, 4326),
        "stream_outlet" geometry (Point, 4326),
        "stream_centerline" geometry (LineString, 4326),
        "stream_polygon" geometry (MultiPolygon, 4326),
        "catchment_area" geometry (MultiPolygon, 4326),
        "linked_rivers" jsonb DEFAULT '[]'::jsonb,
        "linked_springs" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_irrigation_canals" jsonb DEFAULT '[]'::jsonb,
        "linked_water_projects" jsonb DEFAULT '[]'::jsonb,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_pond_lake" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "alternative_names" text,
        "description" text,
        "water_body_type" "water_body_type" NOT NULL,
        "origin_type" "water_body_origin" NOT NULL,
        "formation_type" "water_body_formation",
        "permanence_type" "water_body_permanence" NOT NULL,
        "ward_number" integer,
        "location" text,
        "nearest_settlement" text,
        "ownership_type" "water_body_ownership" NOT NULL,
        "owner_details" text,
        "managed_by" text,
        "surface_area_sq_m" numeric(12, 2),
        "maximum_length_m" numeric(8, 2),
        "maximum_width_m" numeric(8, 2),
        "shore_length_m" numeric(10, 2),
        "average_depth_m" numeric(6, 2),
        "maximum_depth_m" numeric(6, 2),
        "water_volume_m3" numeric(14, 2),
        "elevation_m" numeric(8, 2),
        "catchment_area_sq_km" numeric(10, 2),
        "water_source_type" text,
        "water_source_details" text,
        "has_inflow" boolean DEFAULT false,
        "inflow_details" text,
        "has_outflow" boolean DEFAULT false,
        "outflow_details" text,
        "water_level_fluctuation_m" numeric(6, 2),
        "highest_water_level_month" text,
        "lowest_water_level_month" text,
        "is_subject_to_flooding" boolean DEFAULT false,
        "flooding_details" text,
        "is_drying" boolean DEFAULT false,
        "drying_details" text,
        "has_water_level_monitoring" boolean DEFAULT false,
        "water_level_monitoring_details" text,
        "evaporation_rate" text,
        "water_quality_status" "water_quality_status",
        "water_quality_testing_frequency" text,
        "last_water_quality_test_date" date,
        "dissolved_oxygen_mg_l" numeric(6, 2),
        "ph_level" numeric(4, 2),
        "turbidity_ntu" numeric(8, 2),
        "electrical_conductivity_micro_s_cm" numeric(8, 2),
        "total_dissolved_solids_mg_l" numeric(8, 2),
        "water_temperature_c" numeric(5, 2),
        "pollution_level" "pollution_level",
        "pollution_sources" text,
        "pollution_impacts" text,
        "eutrophication_status" text,
        "algal_bloom_frequency" text,
        "aquatic_ecosystem_type" text,
        "dominant_flora_species" text,
        "dominant_fauna_species" text,
        "fish_species" text,
        "endangered_species" text,
        "invasive_species" text,
        "microbial_diversity" text,
        "shoreline_vegetation" text,
        "conservation_status" "water_body_conservation_status",
        "conservation_efforts" text,
        "conserved_by_organization" text,
        "restoration_projects" text,
        "has_wetland_features" boolean DEFAULT false,
        "wetland_description" text,
        "primary_use" text,
        "secondary_uses" text,
        "irrigation_area_hectares" numeric(10, 2),
        "water_extraction_rate_m3_day" numeric(10, 2),
        "is_drinking_water_source" boolean DEFAULT false,
        "drinking_water_details" text,
        "population_served" integer,
        "has_fish_farming" boolean DEFAULT false,
        "fish_farming_details" text,
        "annual_fish_production_kg" numeric(10, 2),
        "fish_species_cultivated" text,
        "has_recreational_use" boolean DEFAULT false,
        "recreational_activities" text,
        "tourism_significance" text,
        "visitor_statistics" text,
        "has_religious_significance" boolean DEFAULT false,
        "religious_significance_details" text,
        "has_cultural_significance" boolean DEFAULT false,
        "cultural_significance_details" text,
        "traditional_practices" text,
        "local_beliefs" text,
        "has_dams" boolean DEFAULT false,
        "dam_details" text,
        "has_embankments" boolean DEFAULT false,
        "embankment_details" text,
        "has_water_supply_infrastructure" boolean DEFAULT false,
        "water_supply_infrastructure_details" text,
        "has_recreational_infrastructure" boolean DEFAULT false,
        "recreational_infrastructure_details" text,
        "has_water_treatment_facilities" boolean DEFAULT false,
        "water_treatment_details" text,
        "has_boating_facilities" boolean DEFAULT false,
        "boating_facilities_details" text,
        "has_fishing_platforms" boolean DEFAULT false,
        "fishing_platforms_details" text,
        "accessibility_details" text,
        "has_management_committee" boolean DEFAULT false,
        "management_committee_details" text,
        "has_management_plan" boolean DEFAULT false,
        "management_plan_details" text,
        "annual_maintenance_cost_npr" numeric(12, 2),
        "funding_source" text,
        "community_involvement_description" text,
        "regular_monitoring" boolean DEFAULT false,
        "monitoring_details" text,
        "has_dredging_program" boolean DEFAULT false,
        "dredging_frequency" text,
        "water_quality_management_practices" text,
        "major_threats" text,
        "encroachment_issues" text,
        "waste_dumping_issues" text,
        "siltation_rate" text,
        "climate_change_impacts" text,
        "eutrophication_issues" text,
        "water_hyacinth_issues" text,
        "invasive_species_management" text,
        "drought_vulnerability" text,
        "formation_year" integer,
        "age_estimate_years" integer,
        "historical_events" text,
        "origin_story" text,
        "historical_significance" text,
        "traditional_name_origin" text,
        "construction_details" text,
        "economic_importance" text,
        "jobs_created" integer,
        "annual_economic_value_npr" numeric(12, 2),
        "tourist_revenue_npr" numeric(12, 2),
        "fishery_revenue_npr" numeric(12, 2),
        "irrigation_economic_benefit_npr" numeric(12, 2),
        "restoration_needs" text,
        "planned_improvements" text,
        "expansion_plans" text,
        "community_vision" text,
        "proposed_projects" text,
        "research_studies" text,
        "educational_value" text,
        "educational_programs_offered" text,
        "legal_protection_status" text,
        "relevant_legislation" text,
        "water_rights_issues" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "water_body_polygon" geometry (Polygon, 4326),
        "catchment_area_polygon" geometry (MultiPolygon, 4326),
        "water_level_high_polygon" geometry (Polygon, 4326),
        "water_level_low_polygon" geometry (Polygon, 4326),
        "linked_watersheds" jsonb DEFAULT '[]'::jsonb,
        "linked_rivers" jsonb DEFAULT '[]'::jsonb,
        "linked_streams" jsonb DEFAULT '[]'::jsonb,
        "linked_irrigation_canals" jsonb DEFAULT '[]'::jsonb,
        "linked_wetlands" jsonb DEFAULT '[]'::jsonb,
        "linked_water_projects" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "image_gallery" jsonb DEFAULT '[]'::jsonb,
        "videos" jsonb DEFAULT '[]'::jsonb,
        "documents" jsonb DEFAULT '[]'::jsonb,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_irrigation_canal" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "local_name" text,
        "description" text,
        "canal_type" "canal_type" NOT NULL,
        "total_length_km" numeric(8, 3),
        "average_width_m" numeric(6, 2),
        "maximum_width_m" numeric(6, 2),
        "minimum_width_m" numeric(6, 2),
        "average_depth_m" numeric(6, 2),
        "maximum_depth_m" numeric(6, 2),
        "construction_type" "canal_construction_type" NOT NULL,
        "canal_condition" "canal_condition",
        "canal_gradient" numeric(6, 4),
        "bed_material" text,
        "bank_material" text,
        "has_lining" boolean DEFAULT false,
        "lining_type" text,
        "lining_condition" text,
        "lining_thickness_m" numeric(5, 3),
        "percent_lined_section" integer,
        "design_discharge_m3s" numeric(8, 3),
        "actual_discharge_m3s" numeric(8, 3),
        "water_source_name" text,
        "water_source_type" text,
        "source_location_description" text,
        "flow_control_mechanism" "flow_control_mechanism",
        "flow_control_details" text,
        "cross_section_type" text,
        "cross_section_details" text,
        "water_loss_percent" numeric(5, 2),
        "water_loss_reasons" text,
        "construction_year" integer,
        "last_major_rehabilitation_year" integer,
        "constructed_by" text,
        "construction_project_name" text,
        "construction_cost_npr" numeric(14, 2),
        "funding_source" text,
        "design_life_years" integer,
        "last_maintenance_date" date,
        "maintenance_frequency" text,
        "annual_maintenance_cost_npr" numeric(12, 2),
        "maintenance_funding_source" text,
        "total_irrigated_area_hectares" numeric(12, 2),
        "command_area_hectares" numeric(12, 2),
        "actual_irrigated_area_rainy" numeric(12, 2),
        "actual_irrigated_area_winter" numeric(12, 2),
        "actual_irrigated_area_spring" numeric(12, 2),
        "beneficiary_household_count" integer,
        "beneficiary_population" integer,
        "major_crops_irrigated" text,
        "cropping_intensity_percent" integer,
        "water_availability_status" text,
        "water_distribution_method" text,
        "irrigation_schedule_details" text,
        "water_use_efficiency_percent" integer,
        "secondary_usage" text,
        "management_type" "irrigation_management_type" NOT NULL,
        "managing_authority" text,
        "water_user_association_name" text,
        "water_user_committee_size" integer,
        "women_in_committee_count" integer,
        "year_of_wua_formation" integer,
        "wua_registration_number" text,
        "wua_registration_date" date,
        "has_water_fee_system" boolean DEFAULT false,
        "water_fee_structure" text,
        "annual_water_fee_collection_npr" numeric(12, 2),
        "fee_collection_rate" numeric(5, 2),
        "has_operation_plan" boolean DEFAULT false,
        "operation_plan_details" text,
        "has_meetings" boolean DEFAULT false,
        "meeting_frequency" text,
        "water_quality_status" "water_quality_status",
        "last_water_quality_test_date" date,
        "water_quality_issues" text,
        "water_quality_monitoring" boolean DEFAULT false,
        "monitoring_frequency" text,
        "environmental_flow_provision" boolean DEFAULT false,
        "environmental_flow_details" text,
        "has_aquatic_life" boolean DEFAULT false,
        "aquatic_life_details" text,
        "sedimentation_issues" text,
        "erosion_issues" text,
        "waterlogging_issues" text,
        "salinity_issues" text,
        "has_bioengineering" boolean DEFAULT false,
        "bioengineering_details" text,
        "has_intakes" boolean DEFAULT true,
        "intake_count" integer,
        "intake_type" text,
        "has_diverting_dam" boolean DEFAULT false,
        "diverting_dam_details" text,
        "has_aqueducts" boolean DEFAULT false,
        "aqueduct_count" integer,
        "has_culverts" boolean DEFAULT false,
        "culvert_count" integer,
        "has_syphons" boolean DEFAULT false,
        "syphon_count" integer,
        "has_escapes" boolean DEFAULT false,
        "escape_count" integer,
        "has_drop_structures" boolean DEFAULT false,
        "drop_structure_count" integer,
        "has_desilting" boolean DEFAULT false,
        "desilting_details" text,
        "has_measuring_devices" boolean DEFAULT false,
        "measuring_device_details" text,
        "has_road_crossings" boolean DEFAULT false,
        "road_crossing_count" integer,
        "structure_condition" text,
        "irrigation_efficiency_percent" integer,
        "conveyance_efficiency_percent" integer,
        "application_efficiency_percent" integer,
        "major_problems" text,
        "water_scarcity_issues" text,
        "conflict_issues" text,
        "conflict_resolution_mechanism" text,
        "missing_infrastructure" text,
        "pre_irrigation_yield_data" text,
        "post_irrigation_yield_data" text,
        "cropping_pattern_changes" text,
        "agricultural_income_impact" text,
        "farm_gate_value_increase" text,
        "rehabilitation_needs" text,
        "modernization_plans" text,
        "upgrade_proposals" text,
        "proposed_expansion_area_ha" numeric(10, 2),
        "estimated_upgrade_cost_npr" numeric(14, 2),
        "has_pressurized_irrigation_systems" boolean DEFAULT false,
        "pressurized_irrigation_details" text,
        "historical_significance" text,
        "traditional_management_practices" text,
        "changes_in_management" text,
        "has_improved_livelihood" boolean DEFAULT false,
        "livelihood_impact_details" text,
        "social_changes" text,
        "gender_participation" text,
        "inclusive_participation" text,
        "climate_vulnerability" text,
        "adaptation_measures" text,
        "drought_resilience_rating" text,
        "flood_resilience_rating" text,
        "legal_status" text,
        "water_rights_issues" text,
        "policy_implementation" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "canal_start_point" geometry (Point, 4326),
        "canal_end_point" geometry (Point, 4326),
        "canal_alignment" geometry (LineString, 4326),
        "canal_width_line" geometry (MultiLineString, 4326),
        "command_area" geometry (MultiPolygon, 4326),
        "irrigation_network_area" geometry (MultiPolygon, 4326),
        "linked_water_source" jsonb DEFAULT '[]'::jsonb,
        "linked_subcanals" jsonb DEFAULT '[]'::jsonb,
        "linked_parent_canal" jsonb DEFAULT '[]'::jsonb,
        "linked_water_projects" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_agriculture_lands" jsonb DEFAULT '[]'::jsonb,
        "is_active" boolean DEFAULT true,
        "is_operational" boolean DEFAULT true,
        "operational_status" text,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_dam" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "dam_type" "dam_type" NOT NULL,
        "primary_purpose" "dam_purpose" NOT NULL,
        "secondary_purposes" jsonb DEFAULT '[]'::jsonb,
        "condition" "dam_condition",
        "ward_number" integer,
        "location" text,
        "address" text,
        "nearest_settlement" text,
        "height_meters" numeric(10, 2),
        "length_meters" numeric(10, 2),
        "crown_width_meters" numeric(10, 2),
        "base_width_meters" numeric(10, 2),
        "reservoir_capacity_cubic_meters" numeric(18, 2),
        "surface_area_square_meters" numeric(18, 2),
        "drainage_area_square_kilometers" numeric(10, 2),
        "normal_water_level_meters" numeric(10, 2),
        "maximum_water_level_meters" numeric(10, 2),
        "minimum_operating_level_meters" numeric(10, 2),
        "construction_start_date" date,
        "construction_completion_date" date,
        "construction_materials" text,
        "design_life_years" integer,
        "operational_status" text,
        "commissioning_date" date,
        "operator_name" text,
        "operator_contact_info" text,
        "annual_maintenance_budget_npr" numeric(14, 2),
        "last_major_maintenance_date" date,
        "next_scheduled_maintenance_date" date,
        "ownership_type" "dam_ownership_type",
        "owner_name" text,
        "owner_contact_info" text,
        "regulatory_status" "dam_regulatory_status",
        "regulatory_authority" text,
        "permit_number" text,
        "permit_issue_date" date,
        "permit_expiry_date" date,
        "hazard_classification" "dam_hazard_classification",
        "emergency_action_plan" boolean DEFAULT false,
        "emergency_contact_info" text,
        "last_inspection_date" date,
        "inspection_frequency_months" integer,
        "safety_issues" text,
        "remediation_plans" text,
        "water_source_type" text,
        "water_source_name" text,
        "average_inflow_cubic_meters_per_second" numeric(10, 3),
        "design_flood_cubic_meters_per_second" numeric(10, 3),
        "spillway_type" text,
        "spillway_capacity_cubic_meters_per_second" numeric(10, 3),
        "flood_control_measures" text,
        "water_release_schedule" text,
        "environmental_flow_requirements_cubic_meters_per_second" numeric(10, 3),
        "fish_passage_type" text,
        "environmental_impact_study" boolean DEFAULT false,
        "environmental_mitigation_measures" text,
        "sediment_management_practices" text,
        "irrigation_command_area_hectares" numeric(10, 2),
        "irrigation_canal_length_kilometers" numeric(10, 2),
        "irrigation_beneficiaries" integer,
        "crops_irrigated" text,
        "installed_capacity_mw" numeric(10, 2),
        "annual_generation_gwh" numeric(10, 2),
        "turbine_type" text,
        "turbine_count" integer,
        "minimum_operational_flow_cubic_meters_per_second" numeric(10, 3),
        "generation_efficiency_percent" numeric(5, 2),
        "water_supply_population_served" integer,
        "water_treatment_capacity_liters_per_day" numeric(14, 2),
        "water_quality_monitoring" boolean DEFAULT false,
        "water_quality_parameters" text,
        "allows_recreation" boolean DEFAULT false,
        "recreational_activities" text,
        "visitor_facilities" text,
        "annual_visitor_count" integer,
        "population_displaced" integer,
        "resettlement_plan" boolean DEFAULT false,
        "compensation_details" text,
        "community_benefit_programs" text,
        "local_employment_generated" integer,
        "construction_cost_npr" numeric(18, 2),
        "annual_operating_cost_npr" numeric(14, 2),
        "revenue_source_details" text,
        "annual_revenue_npr" numeric(14, 2),
        "financial_sustainability" text,
        "current_challenges" text,
        "future_development_plans" text,
        "rehabilitation_needs" text,
        "climate_change_adaptation_measures" text,
        "management_committee_details" text,
        "community_involvement_level" text,
        "conflict_resolution_mechanism" text,
        "water_user_associations" text,
        "linked_rivers" jsonb DEFAULT '[]'::jsonb,
        "linked_irrigation_canals" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_hydropower_plants" jsonb DEFAULT '[]'::jsonb,
        "has_photos" boolean DEFAULT false,
        "has_design_documents" boolean DEFAULT false,
        "has_operation_manual" boolean DEFAULT false,
        "documentation_notes" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "dam_footprint" geometry (LineString, 4326),
        "reservoir_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_spring" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "spring_type" "spring_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation_m" numeric(8, 2),
        "flow_rate_liters_per_minute" numeric(10, 2),
        "flow_consistency" "spring_flow_consistency",
        "water_temperature_c" numeric(5, 2),
        "catchment_area_sq_km" numeric(10, 2),
        "has_visible_source" boolean DEFAULT true,
        "water_color" text,
        "water_clarity" text,
        "has_mineral_content" boolean DEFAULT false,
        "mineral_content_details" text,
        "has_medicinal_properties" boolean DEFAULT false,
        "medicinal_properties_details" text,
        "surrounding_ecosystem" text,
        "surrounding_vegetation" text,
        "geological_formation" text,
        "biodiversity_notes" text,
        "associated_wildlife" text,
        "current_status" "spring_status",
        "water_quality" "water_quality",
        "is_water_tested" boolean DEFAULT false,
        "last_tested_date" date,
        "water_test_results" text,
        "contamination_issues" text,
        "environmental_threats" text,
        "is_protected" boolean DEFAULT false,
        "protection_method" text,
        "has_tap_system" boolean DEFAULT false,
        "tap_system_details" text,
        "has_water_collection" boolean DEFAULT false,
        "collection_structure" text,
        "has_distribution_system" boolean DEFAULT false,
        "distribution_system_details" text,
        "primary_usage" text,
        "estimated_beneficiaries" integer,
        "households_served" integer,
        "is_used_for_drinking" boolean DEFAULT true,
        "is_used_for_irrigation" boolean DEFAULT false,
        "irrigation_area_hectares" numeric(10, 2),
        "is_used_for_livestock" boolean DEFAULT false,
        "is_used_for_religious" boolean DEFAULT false,
        "religious_significance" text,
        "cultural_importance" text,
        "managed_by" text,
        "management_system" text,
        "has_water_user_committee" boolean DEFAULT false,
        "water_user_committee_details" text,
        "has_fees" boolean DEFAULT false,
        "fee_structure" text,
        "restoration_efforts" text,
        "restoration_date" date,
        "restoration_organization" text,
        "conservation_measures" text,
        "has_local_regulations" boolean DEFAULT false,
        "local_regulations_details" text,
        "accessibility_notes" text,
        "distance_from_nearest_road_km" numeric(6, 2),
        "has_access_path" boolean DEFAULT true,
        "access_path_condition" text,
        "has_resting_place" boolean DEFAULT false,
        "has_sanitation_facilities" boolean DEFAULT false,
        "historical_notes" text,
        "estimated_age_years" integer,
        "has_traditional_knowledge" boolean DEFAULT false,
        "traditional_knowledge_details" text,
        "local_myths" text,
        "seasonal_variations" text,
        "rainfall_dependency" text,
        "affected_by_climate_change" boolean DEFAULT false,
        "climate_change_impacts" text,
        "has_monitoring_system" boolean DEFAULT false,
        "monitoring_frequency" text,
        "monitoring_organization" text,
        "research_conducted" boolean DEFAULT false,
        "research_details" text,
        "community_involvement" text,
        "awareness_programs" text,
        "local_practices" text,
        "ownership_type" text,
        "legal_protection_status" text,
        "protection_date" date,
        "government_recognition" boolean DEFAULT false,
        "development_plans" text,
        "conservation_plans" text,
        "contact_person" text,
        "contact_phone" text,
        "alternate_contact_person" text,
        "alternate_contact_phone" text,
        "has_photos" boolean DEFAULT false,
        "has_video_documentation" boolean DEFAULT false,
        "has_scientific_studies" boolean DEFAULT false,
        "linked_water_systems" jsonb DEFAULT '[]'::jsonb,
        "linked_communities" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "catchment_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_wetland" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "wetland_type" "wetland_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation_range_min_m" numeric(8, 2),
        "elevation_range_max_m" numeric(8, 2),
        "total_area_hectares" numeric(10, 2),
        "water_surface_area_hectares" numeric(10, 2),
        "average_depth_m" numeric(6, 2),
        "maximum_depth_m" numeric(6, 2),
        "seasonality" "wetland_seasonality",
        "water_source" text,
        "water_color" text,
        "water_ph" numeric(4, 2),
        "water_temperature_range_c" text,
        "has_fluctuating_water_levels" boolean DEFAULT true,
        "water_level_fluctuation_m" numeric(4, 2),
        "sediment_type" text,
        "soil_type" text,
        "hydrology_notes" text,
        "dominant_vegetation" text,
        "vegetation_cover_percent" integer,
        "significant_flora_species" text,
        "significant_fauna_species" text,
        "fish_species" text,
        "bird_species" text,
        "reptile_amphibian_species" text,
        "mammal_species" text,
        "invertebrate_species" text,
        "endangered_species" text,
        "invasive_species" text,
        "migratory_site_for" text,
        "habitat_types" text,
        "ecological_succession_stage" text,
        "ecosystem_services" text,
        "biodiversity_assessment_date" date,
        "biodiversity_assessment_by" text,
        "conservation_status" "water_body_conservation_status",
        "protection_year" integer,
        "protection_legal_status" text,
        "managed_by" text,
        "management_plan_exists" boolean DEFAULT false,
        "management_plan_details" text,
        "has_buffer_zone" boolean DEFAULT false,
        "buffer_zone_size_hectares" numeric(10, 2),
        "is_ramsar_site" boolean DEFAULT false,
        "ramsar_site_number" text,
        "ramsar_designation_date" date,
        "conservation_challenges" text,
        "ecosystem_health" "ecosystem_health",
        "threats_and_pressures" text,
        "pollution_sources" text,
        "human_impacts" text,
        "invasive_species_impacts" text,
        "climate_change_impacts" text,
        "drainage_issues" text,
        "encroachment_issues" text,
        "waste_dumping_issues" text,
        "restoration_activities" text,
        "restoration_start_date" date,
        "restoration_organization" text,
        "restoration_cost_npr" numeric(14, 2),
        "conservation_measures" text,
        "community_conservation_efforts" text,
        "primary_uses" text,
        "community_dependence" text,
        "economic_activities" text,
        "resource_harvesting" text,
        "fishing_activities" text,
        "agriculture_around" text,
        "tourism_value" text,
        "annual_visitor_count" integer,
        "local_beneficiaries" integer,
        "cultural_importance" text,
        "cultural_practices" text,
        "religious_significance" text,
        "historical_significance" text,
        "traditional_uses" text,
        "local_myths" text,
        "archaeological_findings" text,
        "accessibility_notes" text,
        "distance_from_nearest_road_km" numeric(6, 2),
        "has_access_path" boolean DEFAULT true,
        "access_path_condition" text,
        "has_tourism_infrastructure" boolean DEFAULT false,
        "tourism_infrastructure_details" text,
        "has_viewing_platforms" boolean DEFAULT false,
        "has_boardwalks" boolean DEFAULT false,
        "has_information_centers" boolean DEFAULT false,
        "has_visitor_facilities" boolean DEFAULT false,
        "visitor_facilities_details" text,
        "educational_value" text,
        "educational_programs_offered" text,
        "research_conducted" boolean DEFAULT false,
        "research_institutions" text,
        "significant_research_findings" text,
        "monitoring_programs" text,
        "monitoring_frequency" text,
        "government_policies" text,
        "local_regulations" text,
        "included_in_land_use_plans" boolean DEFAULT false,
        "land_use_plan_details" text,
        "ongoing_projects" text,
        "funding_sources_for_conservation" text,
        "annual_budget_for_management_npr" numeric(14, 2),
        "has_endowment_fund" boolean DEFAULT false,
        "endowment_fund_value_npr" numeric(14, 2),
        "climatic_conditions" text,
        "average_annual_rainfall_mm" numeric(8, 2),
        "flood_frequency" text,
        "drought_frequency" text,
        "natural_disturbance_history" text,
        "water_quality_status" text,
        "water_quality_parameters" text,
        "last_water_quality_test_date" date,
        "water_quality_testing_frequency" text,
        "pollutant_levels" text,
        "community_awareness_level" text,
        "community_participation" text,
        "stakeholder_groups" text,
        "conflict_issues" text,
        "future_plans" text,
        "sustainability_strategy" text,
        "adaptation_to_climate_change" text,
        "management_contact_person" text,
        "management_contact_phone" text,
        "local_contact_person" text,
        "local_contact_phone" text,
        "has_photos" boolean DEFAULT false,
        "has_videos" boolean DEFAULT false,
        "has_maps" boolean DEFAULT false,
        "has_research_publications" boolean DEFAULT false,
        "carbon_sequestration_data" text,
        "climate_regulation_value" text,
        "linked_water_bodies" jsonb DEFAULT '[]'::jsonb,
        "linked_conservation_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_communities" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "wetland_area" geometry (MultiPolygon, 4326),
        "buffer_zone_area" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_drinking_water_source" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "source_type" "drinking_water_source_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation_meters" numeric(9, 2),
        "source_code" text,
        "average_yield_lpm" numeric(10, 2),
        "minimum_yield_lpm" numeric(10, 2),
        "maximum_yield_lpm" numeric(10, 2),
        "yield_measurement_date" date,
        "reliability" "source_reliability",
        "seasonal_variation" text,
        "catchment_area_sq_km" numeric(10, 2),
        "water_quality" "water_quality",
        "last_tested_date" date,
        "testing_frequency" text,
        "testing_parameters" text,
        "e_coli_present" boolean,
        "turbidity_ntu" numeric(7, 2),
        "ph_level" numeric(4, 2),
        "tds_level_ppm" integer,
        "arsenic_level_ppb" numeric(7, 2),
        "iron_content_ppm" numeric(7, 2),
        "fluoride_content_ppm" numeric(7, 2),
        "nitrate_content_ppm" numeric(7, 2),
        "hardness_ppm" numeric(7, 2),
        "chlorine_residual_ppm" numeric(7, 2),
        "other_contaminants" text,
        "quality_issues" text,
        "has_treatment_system" boolean DEFAULT false,
        "treatment_methods" jsonb DEFAULT '[]'::jsonb,
        "treatment_capacity_lpm" numeric(10, 2),
        "treatment_efficiency" text,
        "treatment_system_install_date" date,
        "treatment_system_condition" text,
        "protection_status" "water_source_protection_status",
        "protection_measures" text,
        "has_source_fencing" boolean DEFAULT false,
        "has_vegetation_buffer" boolean DEFAULT false,
        "buffer_zone_radius_m" numeric(7, 2),
        "contamination_risks" text,
        "conservation_efforts" text,
        "watershed_management_practices" text,
        "has_intake_dam" boolean DEFAULT false,
        "intake_construction_year" integer,
        "intake_structure_details" text,
        "has_screening" boolean DEFAULT false,
        "has_sedimentation" boolean DEFAULT false,
        "has_collection_chamber" boolean DEFAULT false,
        "collection_chamber_capacity_litres" numeric(10, 2),
        "has_metering_system" boolean DEFAULT false,
        "meter_type" text,
        "ownership" "water_source_ownership",
        "managed_by" text,
        "year_identified" integer,
        "year_developed" integer,
        "developed_by" text,
        "has_water_user_committee" boolean DEFAULT false,
        "water_user_committee_name" text,
        "committee_formation_date" date,
        "committee_member_count" integer,
        "female_committee_members" integer,
        "access_rights" text,
        "water_rights_certificate" boolean DEFAULT false,
        "serves_population" integer,
        "serves_households" integer,
        "primary_use" text,
        "secondary_uses" text,
        "is_shared_resource" boolean DEFAULT false,
        "sharing_arrangement" text,
        "has_usage_conflicts" boolean DEFAULT false,
        "conflict_details" text,
        "maintenance_responsibility" text,
        "maintenance_frequency" text,
        "last_maintenance_date" date,
        "maintenance_challenges" text,
        "annual_maintenance_cost_npr" numeric(14, 2),
        "is_connected_to_network" boolean DEFAULT false,
        "connected_network_details" text,
        "transports_water_to" text,
        "transport_method_type" text,
        "distance_to_nearest_tank_m" numeric(10, 2),
        "distance_to_nearest_user_m" numeric(10, 2),
        "has_pumping_system" boolean DEFAULT false,
        "pump_type" text,
        "pump_capacity_lps" numeric(8, 2),
        "pump_power_source_type" text,
        "pump_installation_year" integer,
        "pump_brand" text,
        "pump_condition" text,
        "water_table_depth_m" numeric(8, 2),
        "water_table_fluctuation_m" numeric(7, 2),
        "affected_by_drought" boolean DEFAULT false,
        "drought_impact_details" text,
        "affected_by_flooding" boolean DEFAULT false,
        "flooding_impact_details" text,
        "climate_change_impacts" text,
        "development_cost_npr" numeric(14, 2),
        "funding_source" text,
        "operating_cost_monthly_npr" numeric(14, 2),
        "revenue_sources" text,
        "has_maintenance_fund" boolean DEFAULT false,
        "maintenance_fund_size_npr" numeric(14, 2),
        "water_pricing_structure" text,
        "current_challenges" text,
        "water_scarcity_issues" text,
        "quality_challenges" text,
        "infrastructure_needs" text,
        "management_challenges" text,
        "upgrade_plans" text,
        "expansion_plans" text,
        "protection_plans" text,
        "sustainability_measures" text,
        "contact_person_name" text,
        "contact_person_role" text,
        "contact_phone" text,
        "alternate_contact_name" text,
        "alternate_contact_phone" text,
        "linked_water_tanks" jsonb DEFAULT '[]'::jsonb,
        "linked_treatment_plants" jsonb DEFAULT '[]'::jsonb,
        "linked_distribution_networks" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "has_source_documentation" boolean DEFAULT false,
        "documentation_details" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "source_area" geometry (Polygon, 4326),
        "catchment_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_drinking_water_tank" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "tank_type" "water_tank_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation_meters" numeric(9, 2),
        "capacity_litres" numeric(12, 2),
        "length_m" numeric(6, 2),
        "width_m" numeric(6, 2),
        "height_m" numeric(6, 2),
        "diameter_m" numeric(6, 2),
        "construction_material" "tank_construction_material",
        "tank_condition" "tank_condition",
        "construction_year" integer,
        "last_rehabilitation_year" integer,
        "tank_shape" text,
        "compartment_count" integer,
        "wall_thickness_cm" numeric(5, 2),
        "is_elevated" boolean DEFAULT false,
        "height_above_ground_m" numeric(6, 2),
        "support_structure_type" text,
        "is_underground" boolean DEFAULT false,
        "depth_below_ground_m" numeric(6, 2),
        "has_roof" boolean DEFAULT true,
        "roof_material" text,
        "has_fencing" boolean DEFAULT false,
        "compound_area_sq_m" numeric(8, 2),
        "inlet_count" integer,
        "inlet_size_inches" text,
        "outlet_count" integer,
        "outlet_size_inches" text,
        "has_overflow" boolean DEFAULT true,
        "overflow_size_inches" text,
        "overflow_discharge_location" text,
        "has_washout" boolean DEFAULT true,
        "washout_size_inches" text,
        "washout_discharge_location" text,
        "has_ventilation" boolean DEFAULT true,
        "ventilation_type" text,
        "has_water_level_indicator" boolean DEFAULT false,
        "water_level_indicator_type" text,
        "is_part_of_network" boolean DEFAULT true,
        "network_name" text,
        "network_role" text,
        "water_source" text,
        "water_source_distance_m" numeric(10, 2),
        "service_area_coverage" text,
        "serves_population" integer,
        "serves_households" integer,
        "average_inflow_lpm" numeric(10, 2),
        "peak_inflow_lpm" numeric(10, 2),
        "average_outflow_lpm" numeric(10, 2),
        "peak_outflow_lpm" numeric(10, 2),
        "flow_measurement_date" date,
        "has_flow_meters" boolean DEFAULT false,
        "inflow_meter_type" text,
        "outflow_meter_type" text,
        "has_treatment_system" boolean DEFAULT false,
        "treatment_system_type" text,
        "has_chlorination" boolean DEFAULT false,
        "chlorination_type" text,
        "chlorination_frequency" text,
        "other_treatment_methods" text,
        "has_water_quality_testing" boolean DEFAULT false,
        "testing_frequency" text,
        "last_tested_date" date,
        "has_automated_controls" boolean DEFAULT false,
        "control_system_details" text,
        "has_remote_monitoring" boolean DEFAULT false,
        "monitoring_parameters" text,
        "has_alarm_system" boolean DEFAULT false,
        "alarm_system_details" text,
        "ownership" "tank_ownership",
        "managed_by" text,
        "managing_group_name" text,
        "year_constructed" integer,
        "constructed_by" text,
        "funding_source" text,
        "project_name" text,
        "construction_cost_npr" numeric(14, 2),
        "rehabilitation_cost_npr" numeric(14, 2),
        "maintenance_responsibility" text,
        "maintenance_frequency" text,
        "cleaning_frequency" text,
        "last_maintenance_date" date,
        "last_cleaning_date" date,
        "maintenance_challenges" text,
        "annual_maintenance_cost_npr" numeric(14, 2),
        "has_security_system" boolean DEFAULT false,
        "security_system_type" text,
        "has_access_control" boolean DEFAULT false,
        "access_control_method" text,
        "has_lighting" boolean DEFAULT false,
        "lighting_type" text,
        "has_cctv" boolean DEFAULT false,
        "has_caretaker" boolean DEFAULT false,
        "caretaker_name" text,
        "caretaker_contact_number" text,
        "requires_electricity" boolean DEFAULT false,
        "power_source" text,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "monthly_energy_consumption_kwh" numeric(10, 2),
        "monthly_energy_cost_npr" numeric(10, 2),
        "environmental_concerns" text,
        "drainage_system" text,
        "landscaping_features" text,
        "has_erosion_control" boolean DEFAULT false,
        "erosion_control_measures" text,
        "structural_issues" text,
        "leakage_issues" text,
        "operational_challenges" text,
        "contamination_risks" text,
        "reported_problems" text,
        "planned_upgrades" text,
        "expansion_plans" text,
        "replacement_plans" text,
        "estimated_remaining_life_years" integer,
        "contact_person_name" text,
        "contact_person_role" text,
        "contact_phone" text,
        "alternate_contact_name" text,
        "alternate_contact_phone" text,
        "linked_water_sources" jsonb DEFAULT '[]'::jsonb,
        "linked_distribution_networks" jsonb DEFAULT '[]'::jsonb,
        "linked_treatment_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "tank_footprint" geometry (Polygon, 4326),
        "compound_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_landfill_site" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "landfill_type" "landfill_site_type" NOT NULL,
        "status" "landfill_site_status" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "planned_closure_year" integer,
        "actual_closure_year" integer,
        "operator_name" text,
        "operator_type" text,
        "license_number" varchar(100),
        "licensing_authority" text,
        "license_issue_date" date,
        "license_expiry_date" date,
        "environmental_clearance_number" varchar(100),
        "environmental_clearance_date" date,
        "has_eia" boolean DEFAULT false,
        "eia_details" text,
        "total_area_sq_m" numeric(14, 2),
        "total_active_area_sq_m" numeric(14, 2),
        "total_cell_count" integer,
        "active_cell_count" integer,
        "closed_cell_count" integer,
        "total_capacity_tons" numeric(14, 2),
        "remaining_capacity_tons" numeric(14, 2),
        "estimated_remaining_life_years" numeric(5, 2),
        "maximum_height_m" numeric(8, 2),
        "waste_depth_m" numeric(8, 2),
        "accepted_waste_types" jsonb DEFAULT '[]'::jsonb,
        "primary_waste_type" "waste_type",
        "daily_waste_receipt_tons" numeric(10, 2),
        "annual_waste_receipt_tons" numeric(14, 2),
        "waste_compaction_density_kg_m3" numeric(8, 2),
        "waste_diversion_percentage" numeric(5, 2),
        "has_waste_sorting" boolean DEFAULT false,
        "waste_sorting_method" text,
        "has_recycling_program" boolean DEFAULT false,
        "recycling_details" text,
        "has_composting_program" boolean DEFAULT false,
        "composting_details" text,
        "has_liner" boolean DEFAULT false,
        "liner_type" "liner_type",
        "liner_thickness_mm" numeric(6, 2),
        "has_leachate_collection" boolean DEFAULT false,
        "leachate_collection_system" text,
        "leachate_treatment_method" text,
        "leachate_generation_litres_day" numeric(10, 2),
        "has_gas_collection" boolean DEFAULT false,
        "gas_collection_system" text,
        "gas_utilization_method" text,
        "methane_generation_estimate_m3_day" numeric(10, 2),
        "has_energy_generation" boolean DEFAULT false,
        "energy_generation_capacity_kw" numeric(10, 2),
        "has_groundwater_monitoring" boolean DEFAULT false,
        "monitoring_well_count" integer,
        "has_surface_water_monitoring" boolean DEFAULT false,
        "has_gas_monitoring" boolean DEFAULT false,
        "has_settlement_monitoring" boolean DEFAULT false,
        "has_final_cover" boolean DEFAULT false,
        "final_cover_type" text,
        "final_cover_thickness_cm" numeric(6, 2),
        "has_daily_cover" boolean DEFAULT false,
        "daily_cover_material" text,
        "distance_to_nearest_settlement_m" numeric(10, 2),
        "distance_to_nearest_water_body_m" numeric(10, 2),
        "distance_to_nearest_aquifer_m" numeric(10, 2),
        "depth_to_groundwater_m" numeric(8, 2),
        "annual_rainfall_mm" numeric(8, 2),
        "flood_risk" text,
        "has_flood_control" boolean DEFAULT false,
        "flood_control_measures" text,
        "soil_type" text,
        "geological_formation" text,
        "environmental_impact_level" "environmental_impact_level",
        "known_contamination_issues" text,
        "remediation_efforts" text,
        "operating_hours" text,
        "operation_frequency" "operation_frequency",
        "equipment_on_site" text,
        "vehicle_count" integer,
        "staff_count" integer,
        "has_weighbridge" boolean DEFAULT false,
        "weighbridge_details" text,
        "waste_tracking_system" text,
        "maintenance_schedule" text,
        "operational_challenges" text,
        "has_fencing" boolean DEFAULT false,
        "fencing_type" text,
        "has_gate" boolean DEFAULT false,
        "has_security_personnel" boolean DEFAULT false,
        "security_personnel_count" integer,
        "has_fire_control_system" boolean DEFAULT false,
        "fire_control_details" text,
        "has_emergency_response_plan" boolean DEFAULT false,
        "emergency_response_details" text,
        "has_health_safety_procedures" boolean DEFAULT false,
        "onsite_accident_history" text,
        "has_pest_control" boolean DEFAULT false,
        "pest_control_measures" text,
        "distance_to_nearest_community_km" numeric(6, 2),
        "community_consultation_process" text,
        "has_received_complaints" boolean DEFAULT false,
        "complaint_types" text,
        "complaint_resolution_process" text,
        "community_benefit_programs" text,
        "public_access_status" text,
        "public_awareness_programs" text,
        "establishment_cost_npr" numeric(18, 2),
        "annual_operating_cost_npr" numeric(14, 2),
        "cost_per_ton_npr" numeric(10, 2),
        "funding_source" text,
        "has_tipping_fee" boolean DEFAULT false,
        "tipping_fee_structure" text,
        "average_tipping_fee_per_ton_npr" numeric(10, 2),
        "annual_revenue_npr" numeric(14, 2),
        "has_closure_fund" boolean DEFAULT false,
        "closure_fund_amount_npr" numeric(14, 2),
        "post_closure_maintenance_plan_exists" boolean DEFAULT false,
        "post_closure_budget_npr" numeric(14, 2),
        "compliance_status" text,
        "regulatory_inspection_frequency" text,
        "last_inspection_date" date,
        "inspection_findings" text,
        "environmental_monitoring_frequency" text,
        "environmental_monitoring_parameters" text,
        "air_quality_monitoring" text,
        "water_quality_monitoring" text,
        "compliance_reporting" text,
        "violation_history" text,
        "expansion_plans" text,
        "expected_closure_date" date,
        "post_closure_land_use_plan" text,
        "improvement_plans" text,
        "waste_reduction_targets" text,
        "long_term_management_strategy" text,
        "contact_person" text,
        "contact_designation" text,
        "contact_phone" text,
        "contact_email" text,
        "alternate_contact_info" text,
        "linked_waste_collection_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_recycling_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_transfer_stations" jsonb DEFAULT '[]'::jsonb,
        "linked_waste_treatment_facilities" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "site_perimeter" geometry (Polygon, 4326),
        "cell_boundaries" geometry (MultiPolygon, 4326),
        "access_roads" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_dumping_site" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "dumping_type" "dumping_site_type" NOT NULL,
        "status" "dumping_site_status" NOT NULL,
        "management_level" "site_management_level" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "nearest_landmark" text,
        "started_year" integer,
        "ownership_type" "wate_mgmt_ownership_type" NOT NULL,
        "operator_name" text,
        "has_legal_permission" boolean DEFAULT false,
        "permission_details" text,
        "is_designated_site" boolean DEFAULT false,
        "is_temporary" boolean DEFAULT false,
        "planned_end_date" date,
        "has_closure" boolean DEFAULT false,
        "closure_year" integer,
        "total_area_sq_m" numeric(14, 2),
        "active_area_sq_m" numeric(14, 2),
        "estimated_waste_volume_cubic_m" numeric(14, 2),
        "estimated_waste_height_m" numeric(8, 2),
        "estimated_waste_weight_tons" numeric(14, 2),
        "waste_accumulation_rate" numeric(10, 2),
        "waste_types" jsonb DEFAULT '[]'::jsonb,
        "predominant_waste_type" "waste_type",
        "has_domestic_waste" boolean DEFAULT true,
        "has_commercial_waste" boolean DEFAULT false,
        "has_construction_waste" boolean DEFAULT false,
        "has_industrial_waste" boolean DEFAULT false,
        "has_hazardous_waste" boolean DEFAULT false,
        "hazardous_waste_details" text,
        "has_medical_waste" boolean DEFAULT false,
        "medical_waste_details" text,
        "has_electronic_waste" boolean DEFAULT false,
        "has_waste_sorting" boolean DEFAULT false,
        "waste_sorting_details" text,
        "has_informal_recycling" boolean DEFAULT false,
        "informal_recycling_details" text,
        "has_waste_picking" boolean DEFAULT false,
        "waste_picker_count" integer,
        "environmental_impact_level" "environmental_impact_level",
        "has_contamination_evidence" boolean DEFAULT false,
        "contamination_details" text,
        "has_leachate_generation" boolean DEFAULT false,
        "leachate_management" text,
        "has_leachate_collection_system" boolean DEFAULT false,
        "has_visible_water_pollution" boolean DEFAULT false,
        "water_pollution_details" text,
        "has_off_site_leachate_flow" boolean DEFAULT false,
        "has_odor_issues" boolean DEFAULT false,
        "odor_description" text,
        "odor_range" text,
        "has_vermin_presence" boolean DEFAULT false,
        "vermin_types" text,
        "has_dust_issues" boolean DEFAULT false,
        "has_visual_impact" boolean DEFAULT false,
        "visual_impact_details" text,
        "has_waste_burning" boolean DEFAULT false,
        "waste_burning_frequency" text,
        "topography_type" text,
        "soil_type" text,
        "land_use_before_dumping" text,
        "surrounding_land_use" text,
        "distance_to_nearest_residence_m" numeric(10, 2),
        "distance_to_nearest_water_body_m" numeric(10, 2),
        "water_body_type" text,
        "distance_to_nearest_farmland_m" numeric(10, 2),
        "distance_to_nearest_road_m" numeric(10, 2),
        "distance_to_nearest_protected_area_m" numeric(10, 2),
        "is_in_flood_prone_area" boolean DEFAULT false,
        "is_in_landslide_prone_area" boolean DEFAULT false,
        "groundwater_table_depth_m" numeric(8, 2),
        "flood_history" text,
        "operating_status" text,
        "operation_frequency" "operation_frequency",
        "operating_days" text,
        "access_control" boolean DEFAULT false,
        "access_control_type" text,
        "has_waste_compaction" boolean DEFAULT false,
        "compaction_method" text,
        "has_cover_material" boolean DEFAULT false,
        "cover_material_type" text,
        "cover_frequency" text,
        "access_road_exists" boolean DEFAULT false,
        "access_road_condition" text,
        "equipment_used" text,
        "vehicle_movements_per_day" integer,
        "major_waste_sources" text,
        "average_daily_waste_receipt_tons" numeric(10, 2),
        "has_fencing" boolean DEFAULT false,
        "fencing_condition" text,
        "fencing_type" text,
        "has_gate" boolean DEFAULT false,
        "has_security_personnel" boolean DEFAULT false,
        "security_schedule" text,
        "has_safety_signage" boolean DEFAULT false,
        "has_fire_prevention" boolean DEFAULT false,
        "fire_prevention_details" text,
        "has_fire_incidents" boolean DEFAULT false,
        "fire_incidents_frequency" text,
        "last_fire_incident_date" date,
        "community_complaints_received" boolean DEFAULT false,
        "complaint_types" text,
        "complaint_frequency" text,
        "complaint_resolution_process" text,
        "community_awareness_programs" text,
        "community_consultation_process" text,
        "affected_communities" text,
        "public_perception_level" text,
        "maintenance_cost_npr" numeric(14, 2),
        "funding_source" text,
        "funds_allocated_npr" numeric(14, 2),
        "actual_expenditure_npr" numeric(14, 2),
        "user_fees_collected" boolean DEFAULT false,
        "user_fee_details" text,
        "has_formal_budget" boolean DEFAULT false,
        "has_designated_manager" boolean DEFAULT false,
        "manager_details" text,
        "has_waste_management_plan" boolean DEFAULT false,
        "management_plan_details" text,
        "has_monitoring_system" boolean DEFAULT false,
        "monitoring_frequency" text,
        "monitoring_parameters" text,
        "has_reporting_system" boolean DEFAULT false,
        "reporting_frequency" text,
        "governance_structure" text,
        "has_remediation_plan" boolean DEFAULT false,
        "remediation_plan_details" text,
        "remediation_start_date" date,
        "remediation_completion_date" date,
        "estimated_remediation_cost_npr" numeric(18, 2),
        "future_site_plans" text,
        "planned_upgrades" text,
        "conversion_plans" text,
        "timeline_for_improvements" text,
        "reported_health_issues" boolean DEFAULT false,
        "health_issues_details" text,
        "has_health_studies" boolean DEFAULT false,
        "health_study_findings" text,
        "has_health_protection_measures" boolean DEFAULT false,
        "health_protection_details" text,
        "contact_person" text,
        "contact_designation" text,
        "contact_phone" text,
        "contact_email" text,
        "ward_contact_person" text,
        "ward_contact_phone" text,
        "ward_awareness_level" text,
        "ward_intervention_level" text,
        "ward_action_taken" text,
        "municipal_action_taken" text,
        "received_technical_support" boolean DEFAULT false,
        "technical_support_source" text,
        "technical_support_details" text,
        "requested_support" text,
        "linked_waste_collection_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_transfer_stations" jsonb DEFAULT '[]'::jsonb,
        "linked_landfills" jsonb DEFAULT '[]'::jsonb,
        "linked_waste_pickers" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "site_perimeter" geometry (Polygon, 4326),
        "waste_extent" geometry (Polygon, 4326),
        "access_routes" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_metal_mine" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "metal_type" "metal_type" NOT NULL,
        "other_metal_types" jsonb DEFAULT '[]'::jsonb,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation" numeric(10, 2),
        "operational_status" "mine_operational_status" NOT NULL,
        "discovery_year" integer,
        "operation_start_year" integer,
        "estimated_lifespan_years" integer,
        "mining_method" "mining_method" NOT NULL,
        "ore_grade" "ore_grade",
        "ownership_type" "ownership_type" NOT NULL,
        "owner_organization" text,
        "operator_organization" text,
        "license_number" varchar(50),
        "license_issue_date" date,
        "license_expiry_date" date,
        "licensing_authority" text,
        "foreign_investment_percentage" numeric(5, 2),
        "foreign_investor_country" text,
        "in_production" boolean DEFAULT false,
        "annual_production_tons" numeric(12, 2),
        "production_capacity_tons" numeric(12, 2),
        "total_reserve_estimate_tons" numeric(14, 2),
        "metal_content_percentage" numeric(6, 3),
        "recovery_rate_percentage" numeric(6, 2),
        "annual_output_value_npr" numeric(18, 2),
        "has_on_site_processing" boolean DEFAULT false,
        "processing_method_details" text,
        "transportation_methods" text,
        "export_destinations" text,
        "total_employee_count" integer,
        "local_employee_count" integer,
        "female_employee_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "laborer_count" integer,
        "average_monthly_wage_npr" numeric(10, 2),
        "has_power_supply" boolean DEFAULT false,
        "power_supply_source" text,
        "power_usage_kwh" numeric(12, 2),
        "has_water_supply" boolean DEFAULT false,
        "water_source_type" text,
        "water_usage_liters_per_day" numeric(14, 2),
        "has_admin_building" boolean DEFAULT false,
        "has_workshops" boolean DEFAULT false,
        "has_storage_facilities" boolean DEFAULT false,
        "has_miner_accommodation" boolean DEFAULT false,
        "accommodation_capacity" integer,
        "access_road_type" text,
        "distance_from_highway_km" numeric(8, 2),
        "major_equipment_types" text,
        "drilling_equipment_count" integer,
        "excavation_equipment_count" integer,
        "transportation_equipment_count" integer,
        "processing_equipment_details" text,
        "uses_explosives" boolean DEFAULT false,
        "explosive_storage_details" text,
        "environmental_impact_level" "environmental_impact_level",
        "has_environmental_permit" boolean DEFAULT false,
        "environmental_permit_details" text,
        "last_environmental_assessment_date" date,
        "water_pollution_mitigation_measures" text,
        "air_pollution_mitigation_measures" text,
        "noise_pollution_mitigation_measures" text,
        "land_reclamation_plan" text,
        "has_waste_management_plan" boolean DEFAULT false,
        "waste_management_details" text,
        "tailings_management_method" text,
        "annual_environmental_compliance_budget_npr" numeric(14, 2),
        "safety_record" "safety_record",
        "accident_count_last_year" integer,
        "fatalities_count_last_year" integer,
        "has_safety_management_system" boolean DEFAULT false,
        "safety_training_frequency" text,
        "has_emergency_response_plan" boolean DEFAULT false,
        "has_on_site_medical_facilities" boolean DEFAULT false,
        "occupational_health_monitoring" boolean DEFAULT false,
        "local_community_engagement" text,
        "community_development_initiatives" text,
        "annual_csr_budget_npr" numeric(14, 2),
        "employment_opportunities_for_locals" text,
        "community_complaints_mechanism" text,
        "displaced_families_count" integer,
        "compensation_measures" text,
        "annual_royalty_paid_npr" numeric(14, 2),
        "annual_taxes_paid_npr" numeric(14, 2),
        "contribution_to_local_economy" text,
        "expansion_plans" text,
        "investment_plans_npr" numeric(18, 2),
        "expected_future_production" text,
        "operational_challenges" text,
        "technological_challenges" text,
        "regulatory_challenges" text,
        "infrastructure_needs" text,
        "contact_person_name" text,
        "contact_person_position" text,
        "contact_phone" text,
        "contact_email" text,
        "geological_studies" text,
        "research_partnerships" text,
        "linked_transportation_routes" jsonb DEFAULT '[]'::jsonb,
        "linked_processing_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_centers" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "mining_area" geometry (Polygon, 4326),
        "concession_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_precious_gemstone_mine" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "gemstone_type" "gemstone_type" NOT NULL,
        "other_gemstone_types" jsonb DEFAULT '[]'::jsonb,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation" numeric(10, 2),
        "terrain_type" text,
        "operational_status" "mine_operational_status" NOT NULL,
        "discovery_year" integer,
        "operation_start_year" integer,
        "estimated_lifespan_years" integer,
        "mining_method" "mining_method" NOT NULL,
        "extraction_scale" "extraction_scale" NOT NULL,
        "gemstone_quality" "gemstone_quality",
        "geological_formation" text,
        "deposit_type" text,
        "ownership_type" "fish_farm_ownership_type" NOT NULL,
        "owner_organization" text,
        "operator_organization" text,
        "license_number" varchar(50),
        "license_issue_date" date,
        "license_expiry_date" date,
        "licensing_authority" text,
        "artisanal_miners_count" integer,
        "foreign_investment_percentage" numeric(5, 2),
        "foreign_investor_country" text,
        "in_production" boolean DEFAULT false,
        "annual_production_carats" numeric(12, 2),
        "annual_production_kg" numeric(12, 2),
        "annual_production_pieces" integer,
        "production_capacity" text,
        "total_reserve_estimate" text,
        "gemstone_characteristics" text,
        "annual_output_value_npr" numeric(18, 2),
        "has_on_site_processing" boolean DEFAULT false,
        "processing_method_details" text,
        "cutting_facilities" boolean DEFAULT false,
        "polishing_facilities" boolean DEFAULT false,
        "grading_facilities" boolean DEFAULT false,
        "marketing_channels" text,
        "export_destinations" text,
        "total_employee_count" integer,
        "local_employee_count" integer,
        "female_employee_count" integer,
        "technical_staff_count" integer,
        "artisans_count" integer,
        "laborer_count" integer,
        "average_monthly_wage_npr" numeric(10, 2),
        "traditional_skills" text,
        "has_power_supply" boolean DEFAULT false,
        "power_supply_source" text,
        "has_water_supply" boolean DEFAULT false,
        "water_source_type" text,
        "water_usage_liters_per_day" numeric(14, 2),
        "has_admin_building" boolean DEFAULT false,
        "has_workshops" boolean DEFAULT false,
        "has_security_infrastructure" boolean DEFAULT false,
        "security_measures" text,
        "access_road_type" text,
        "distance_from_highway_km" numeric(8, 2),
        "major_equipment_types" text,
        "specialized_tools_used" text,
        "traditional_tools_used" text,
        "processing_equipment_details" text,
        "environmental_impact_level" "environmental_impact_level",
        "has_environmental_permit" boolean DEFAULT false,
        "environmental_permit_details" text,
        "last_environmental_assessment_date" date,
        "water_pollution_impact" text,
        "land_degradation_impact" text,
        "has_reclamation_plan" boolean DEFAULT false,
        "reclamation_plan_details" text,
        "uses_hazardous_chemicals" boolean DEFAULT false,
        "chemical_usage_details" text,
        "safety_record" "safety_record",
        "accident_count_last_year" integer,
        "fatalities_count_last_year" integer,
        "has_safety_training" boolean DEFAULT false,
        "has_personal_protective_equipment" boolean DEFAULT false,
        "common_health_issues" text,
        "has_fair_trade_compliance" boolean DEFAULT false,
        "has_sustainable_mining_certification" boolean DEFAULT false,
        "certification_details" text,
        "has_formalized_artisanal_mining" boolean DEFAULT false,
        "formalization_details" text,
        "has_traceability_system" boolean DEFAULT false,
        "traceability_system_details" text,
        "local_community_engagement" text,
        "community_development_initiatives" text,
        "annual_csr_budget_npr" numeric(14, 2),
        "employment_opportunities_for_locals" text,
        "community_complaints_mechanism" text,
        "traditional_rights_maintenance" text,
        "impact_on_local_culture" text,
        "annual_royalty_paid_npr" numeric(14, 2),
        "annual_taxes_paid_npr" numeric(14, 2),
        "contribution_to_local_economy" text,
        "value_addition_in_country" text,
        "value_chain_development" text,
        "typical_gemstone_value" text,
        "largest_gemstone_found" text,
        "most_valuable_gemstone_found" text,
        "marketing_strategy" text,
        "has_direct_sales" boolean DEFAULT false,
        "has_tourist_visits" boolean DEFAULT false,
        "tourist_visit_details" text,
        "expansion_plans" text,
        "investment_plans_npr" numeric(18, 2),
        "expected_future_production" text,
        "value_addition_plans" text,
        "operational_challenges" text,
        "technological_challenges" text,
        "market_access_challenges" text,
        "illegal_mining_issues" text,
        "training_needs" text,
        "contact_person_name" text,
        "contact_person_position" text,
        "contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "historical_significance" text,
        "cultural_significance" text,
        "traditional_beliefs" text,
        "linked_transportation_routes" jsonb DEFAULT '[]'::jsonb,
        "linked_processing_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_markets_and_bazaars" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "mining_area" geometry (Polygon, 4326),
        "concession_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_quarry" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "material_type" "quarry_material_type" NOT NULL,
        "other_material_types" jsonb DEFAULT '[]'::jsonb,
        "ward_number" integer,
        "location" text,
        "address" text,
        "elevation" numeric(10, 2),
        "terrain_type" text,
        "operational_status" "mine_operational_status" NOT NULL,
        "operation_start_year" integer,
        "estimated_lifespan_years" integer,
        "extraction_method" "quarry_extraction_method" NOT NULL,
        "material_quality" "material_quality",
        "primary_use" "material_use" NOT NULL,
        "secondary_uses" jsonb DEFAULT '[]'::jsonb,
        "geological_formation" text,
        "ownership_type" "fish_farm_ownership_type" NOT NULL,
        "owner_organization" text,
        "operator_organization" text,
        "license_number" varchar(50),
        "license_issue_date" date,
        "license_expiry_date" date,
        "licensing_authority" text,
        "is_local_government_approved" boolean DEFAULT false,
        "operation_schedule" text,
        "in_production" boolean DEFAULT false,
        "annual_production_cubic_meters" numeric(12, 2),
        "annual_production_tons" numeric(12, 2),
        "production_capacity_cubic_meters" numeric(12, 2),
        "total_reserve_estimate_cubic_meters" numeric(14, 2),
        "material_specifications" text,
        "annual_output_value_npr" numeric(18, 2),
        "has_on_site_processing" boolean DEFAULT false,
        "processing_method_details" text,
        "has_crusher" boolean DEFAULT false,
        "has_screening_unit" boolean DEFAULT false,
        "has_washing_unit" boolean DEFAULT false,
        "has_sorter" boolean DEFAULT false,
        "transportation_methods" text,
        "average_haul_distance_km" numeric(8, 2),
        "market_distribution_areas" text,
        "total_employee_count" integer,
        "local_employee_count" integer,
        "female_employee_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "laborer_count" integer,
        "seasonal_worker_count" integer,
        "average_monthly_wage_npr" numeric(10, 2),
        "has_power_supply" boolean DEFAULT false,
        "power_supply_source" text,
        "power_usage_kwh" numeric(12, 2),
        "has_water_supply" boolean DEFAULT false,
        "water_source_type" text,
        "water_usage_liters_per_day" numeric(14, 2),
        "has_admin_building" boolean DEFAULT false,
        "has_workshops" boolean DEFAULT false,
        "has_weighbridge" boolean DEFAULT false,
        "has_material_storage_yard" boolean DEFAULT false,
        "storage_capacity_cubic_meters" numeric(12, 2),
        "access_road_type" text,
        "access_road_condition" text,
        "distance_from_highway_km" numeric(8, 2),
        "major_equipment_types" text,
        "excavator_count" integer,
        "loader_count" integer,
        "dump_truck_count" integer,
        "crusher_capacity_tons_per_hour" numeric(10, 2),
        "uses_explosives" boolean DEFAULT false,
        "explosive_usage_details" text,
        "environmental_impact_level" "environmental_impact_level",
        "has_environmental_permit" boolean DEFAULT false,
        "environmental_permit_details" text,
        "last_environmental_assessment_date" date,
        "dust_suppression_measures" text,
        "noise_control_measures" text,
        "water_pollution_control_measures" text,
        "has_reclamation_plan" boolean DEFAULT false,
        "reclamation_plan_details" text,
        "has_progressive_rehabilitation" boolean DEFAULT false,
        "erosion_control_measures" text,
        "annual_environmental_compliance_budget_npr" numeric(14, 2),
        "safety_record" "safety_record",
        "accident_count_last_year" integer,
        "fatalities_count_last_year" integer,
        "has_safety_management_system" boolean DEFAULT false,
        "safety_training_frequency" text,
        "has_emergency_response_plan" boolean DEFAULT false,
        "has_dust_protection_measures" boolean DEFAULT false,
        "dust_protection_details" text,
        "has_noise_protection_measures" boolean DEFAULT false,
        "noise_protection_details" text,
        "distance_to_nearest_settlement_km" numeric(6, 2),
        "impact_on_local_community" text,
        "community_engagement_activities" text,
        "community_benefit_sharing" text,
        "local_complaints_recorded" integer,
        "complaint_resolution_mechanism" text,
        "annual_royalty_paid_npr" numeric(14, 2),
        "annual_taxes_paid_npr" numeric(14, 2),
        "contribution_to_local_infrastructure" text,
        "local_procurement_percentage" numeric(5, 2),
        "subsidiary_business_created" text,
        "major_customers" text,
        "average_selling_price_per_cubic_meter_npr" numeric(10, 2),
        "average_selling_price_per_ton_npr" numeric(10, 2),
        "seasonal_price_variation" text,
        "market_demand_trends" text,
        "expansion_plans" text,
        "investment_plans_npr" numeric(18, 2),
        "expected_future_production" text,
        "value_addition_plans" text,
        "operational_challenges" text,
        "technological_challenges" text,
        "regulatory_challenges" text,
        "market_challenges" text,
        "infrastructure_needs" text,
        "contact_person_name" text,
        "contact_person_position" text,
        "contact_phone" text,
        "contact_email" text,
        "operation_office_address" text,
        "quality_testing_procedures" text,
        "certification_standards" text,
        "sustainability_measures" text,
        "linked_transportation_routes" jsonb DEFAULT '[]'::jsonb,
        "linked_construction_sites" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_community_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_rivers" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "quarry_area" geometry (Polygon, 4326),
        "concession_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_khajura_individual_edit_requests" (
        "id" varchar(48) PRIMARY KEY NOT NULL,
        "individual_id" varchar(48),
        "message" text NOT NULL,
        "requested_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_khajura_individuals" (
        "id" text PRIMARY KEY NOT NULL,
        "tenant_id" text,
        "parent_id" text NOT NULL,
        "ward_no" integer NOT NULL,
        "device_id" text,
        "name" text NOT NULL,
        "gender" text NOT NULL,
        "age" integer,
        "family_role" text,
        "citizen_of" text,
        "citizen_of_other" text,
        "caste" text,
        "caste_other" text,
        "ancestor_language" text,
        "ancestor_language_other" text,
        "primary_mother_tongue" text,
        "primary_mother_tongue_other" text,
        "religion" text,
        "religion_other" text,
        "marital_status" text,
        "married_age" integer,
        "has_chronic_disease" text,
        "primary_chronic_disease" text,
        "is_sanitized" text,
        "is_disabled" text,
        "disability_type" text,
        "disability_type_other" text,
        "disability_cause" text,
        "has_birth_certificate" text,
        "gave_live_birth" text,
        "alive_sons" integer,
        "alive_daughters" integer,
        "total_born_children" integer,
        "has_dead_children" text,
        "dead_sons" integer,
        "dead_daughters" integer,
        "total_dead_children" integer,
        "gave_recent_live_birth" text,
        "recent_born_sons" integer,
        "recent_born_daughters" integer,
        "total_recent_children" integer,
        "recent_delivery_location" text,
        "prenatal_checkups" integer,
        "first_delivery_age" integer,
        "is_present" text,
        "absentee_age" integer,
        "absentee_educational_level" text,
        "absence_reason" text,
        "absentee_location" text,
        "absentee_province" text,
        "absentee_district" text,
        "absentee_country" text,
        "absentee_has_sent_cash" text,
        "absentee_cash_amount" integer,
        "literacy_status" text,
        "school_presence_status" text,
        "educational_level" text,
        "primary_subject" text,
        "goes_school" text,
        "school_barrier" text,
        "has_training" text,
        "training" text,
        "months_trained" integer,
        "primary_skill" text,
        "has_internet_access" text,
        "financial_work_duration" text,
        "primary_occupation" text,
        "work_barrier" text,
        "work_availability" text,
        "geom" geometry (Point, 4326)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "staging_acme_khajura_individuals" (
        "id" text PRIMARY KEY NOT NULL,
        "tenant_id" text,
        "parent_id" text NOT NULL,
        "ward_no" integer NOT NULL,
        "device_id" text,
        "name" text NOT NULL,
        "gender" text NOT NULL,
        "age" integer,
        "family_role" text,
        "citizen_of" text,
        "citizen_of_other" text,
        "caste" text,
        "caste_other" text,
        "ancestor_language" text,
        "ancestor_language_other" text,
        "primary_mother_tongue" text,
        "primary_mother_tongue_other" text,
        "religion" text,
        "religion_other" text,
        "marital_status" text,
        "married_age" integer,
        "has_chronic_disease" text,
        "primary_chronic_disease" text,
        "is_sanitized" text,
        "is_disabled" text,
        "disability_type" text,
        "disability_type_other" text,
        "disability_cause" text,
        "has_birth_certificate" text,
        "gave_live_birth" text,
        "alive_sons" integer,
        "alive_daughters" integer,
        "total_born_children" integer,
        "has_dead_children" text,
        "dead_sons" integer,
        "dead_daughters" integer,
        "total_dead_children" integer,
        "gave_recent_live_birth" text,
        "recent_born_sons" integer,
        "recent_born_daughters" integer,
        "total_recent_children" integer,
        "recent_delivery_location" text,
        "prenatal_checkups" integer,
        "first_delivery_age" integer,
        "is_present" text,
        "absentee_age" integer,
        "absentee_educational_level" text,
        "absence_reason" text,
        "absentee_location" text,
        "absentee_province" text,
        "absentee_district" text,
        "absentee_country" text,
        "absentee_has_sent_cash" text,
        "absentee_cash_amount" integer,
        "literacy_status" text,
        "school_presence_status" text,
        "educational_level" text,
        "primary_subject" text,
        "goes_school" text,
        "school_barrier" text,
        "has_training" text,
        "training" text,
        "months_trained" integer,
        "primary_skill" text,
        "has_internet_access" text,
        "financial_work_duration" text,
        "primary_occupation" text,
        "work_barrier" text,
        "work_availability" text,
        "geom" geometry (Point, 4326)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_absentee_educational_level" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "educational_level" "educational_level" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_death_cause" (
        "id" uuid PRIMARY KEY DEFAULT gen_random_uuid () NOT NULL,
        "ward_number" integer NOT NULL,
        "death_cause" text NOT NULL,
        "population" integer DEFAULT 0 NOT NULL,
        "created_at" timestamp DEFAULT now(),
        "updated_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_educational_level" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "educational_level_type" "educational_level_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_school_dropout" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "cause" "school_dropout_cause_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_major_subject" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "subject_type" "major_subject_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_literacy_status" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "literacy_type" "literacy_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_immunization_indicators" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "fiscal_year" "immunization_fiscal_year" NOT NULL,
        "indicator" "immunization_indicator" NOT NULL,
        "value" double precision,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_safe_motherhood_indicators" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "indicator" "safe_motherhood_indicator_type" NOT NULL,
        "year" integer NOT NULL,
        "value" real NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_wise_first_child_birth_age" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "first_child_birth_age_group" "first_child_birth_age_group" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_child_bearers" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "age_15_to_49_child_bearers" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now(),
        CONSTRAINT "acme_ward_wise_child_bearers_ward_number_unique" UNIQUE ("ward_number")
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_delivery_places" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "delivery_place" "delivery_place_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_time_to_health_organization" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "time_to_health_organization" "time_to_health_organization_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_health_insured_households" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "insured_households" integer NOT NULL,
        "non_insured_households" integer DEFAULT 0 NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now(),
        CONSTRAINT "acme_ward_wise_health_insured_households_ward_number_unique" UNIQUE ("ward_number")
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_chronic_diseases" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "chronic_disease" "chronic_disease_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_auto_showroom" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "showroom_type" "showroom_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "nearest_landmark" text,
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "gps_coordinates" text,
        "established_year" integer,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_vat_number" varchar(20),
        "size_category" "showroom_size_category",
        "is_franchise" boolean DEFAULT false,
        "franchise_details" text,
        "is_authorized_dealer" boolean DEFAULT false,
        "parent_company_distributor" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "customer_service_number" text,
        "email" text,
        "sales_email" text,
        "service_email" text,
        "website_url" text,
        "facebook_page" text,
        "instagram_handle" text,
        "twitter_handle" text,
        "youtube_channel" text,
        "other_social_media" text,
        "owner_name" text,
        "owner_contact_details" text,
        "managing_director_name" text,
        "parent_company_name" text,
        "ownership_type" text,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "is_open_on_public_holidays" boolean DEFAULT false,
        "special_operating_hours_notes" text,
        "total_area_sq_m" numeric(10, 2),
        "showroom_area_sq_m" numeric(10, 2),
        "display_capacity_vehicles" integer,
        "facility_condition" "facility_condition",
        "last_renovation_year" integer,
        "has_multiple_floors" boolean DEFAULT false,
        "total_floors" integer,
        "has_display_windows" boolean DEFAULT true,
        "has_waiting_area" boolean DEFAULT true,
        "waiting_area_capacity" integer,
        "has_customer_lounge" boolean DEFAULT false,
        "has_refreshment_area" boolean DEFAULT false,
        "has_kids_play_area" boolean DEFAULT false,
        "has_digital_display" boolean DEFAULT false,
        "has_product_info_desk" boolean DEFAULT false,
        "vehicle_brands" jsonb DEFAULT '[]'::jsonb,
        "primary_vehicle_brand" text,
        "vehicle_types" jsonb DEFAULT '[]'::jsonb,
        "vehicle_segments" jsonb DEFAULT '[]'::jsonb,
        "new_vehicle_display_count" integer,
        "used_vehicle_display_count" integer,
        "top_selling_models" jsonb DEFAULT '[]'::jsonb,
        "price_range_minimum_npr" numeric(14, 2),
        "price_range_maximum_npr" numeric(14, 2),
        "has_electric_vehicles" boolean DEFAULT false,
        "electric_vehicle_count" integer,
        "has_sales_consultants" boolean DEFAULT true,
        "sales_consultant_count" integer,
        "has_test_drive_facility" boolean DEFAULT true,
        "test_drive_vehicle_count" integer,
        "offers_trading_facility" boolean DEFAULT false,
        "has_financing_options" boolean DEFAULT true,
        "financing_partners" jsonb DEFAULT '[]'::jsonb,
        "has_insurance_services" boolean DEFAULT true,
        "insurance_partners" jsonb DEFAULT '[]'::jsonb,
        "has_vehicle_registration_assistance" boolean DEFAULT true,
        "has_warranty_services" boolean DEFAULT true,
        "warranty_details" text,
        "has_extended_warranty_options" boolean DEFAULT false,
        "extended_warranty_details" text,
        "offers_door_delivery" boolean DEFAULT false,
        "has_service_center" boolean DEFAULT false,
        "service_center" text,
        "service_center_at_same_location" boolean DEFAULT false,
        "service_center_distance_km" numeric(6, 2),
        "service_center_capacity_per_day" integer,
        "has_express_service" boolean DEFAULT false,
        "has_mobile_service" boolean DEFAULT false,
        "has_pickup_drop_service" boolean DEFAULT false,
        "offers_cost_estimate_before_service" boolean DEFAULT false,
        "has_brand_trained_technicians" boolean DEFAULT false,
        "trained_technician_count" integer,
        "has_spare_parts" boolean DEFAULT false,
        "spare_parts_inventory_value_npr" numeric(14, 2),
        "offers_fast_moving_parts" boolean DEFAULT false,
        "has_oem_parts" boolean DEFAULT true,
        "has_aftermarket_parts" boolean DEFAULT false,
        "spare_parts_delivery_timeline_days" numeric(5, 2),
        "has_accessories_shop" boolean DEFAULT false,
        "accessory_types" jsonb DEFAULT '[]'::jsonb,
        "offer_custom_accessories" boolean DEFAULT false,
        "has_dedicated_customer_service" boolean DEFAULT false,
        "customer_service_staff_count" integer,
        "has_24_hour_helpline" boolean DEFAULT false,
        "helpline_number" text,
        "has_road_assistance" boolean DEFAULT false,
        "road_assistance_details" text,
        "has_customer_feedback_system" boolean DEFAULT false,
        "average_customer_satisfaction_rating" numeric(3, 1),
        "average_monthly_visitors" integer,
        "average_monthly_inquiries" integer,
        "average_monthly_sales_count" integer,
        "annual_sales_count_previous_year" integer,
        "annual_sales_growth_percent" numeric(5, 2),
        "market_share_percentage" numeric(5, 2),
        "sales_target_achievement_percent" numeric(5, 2),
        "top_selling_segment" text,
        "business_volume" "business_volume",
        "peak_sales_months" text,
        "low_sales_months" text,
        "total_staff_count" integer,
        "sales_staff_count" integer,
        "administrative_staff_count" integer,
        "technical_staff_count" integer,
        "female_staff_count" integer,
        "staff_training_frequency" text,
        "has_incentive_program" boolean DEFAULT true,
        "incentive_program_details" text,
        "marketing_budget_percentage" numeric(5, 2),
        "advertising_channels" jsonb DEFAULT '[]'::jsonb,
        "has_loyalty_program" boolean DEFAULT false,
        "loyalty_program_details" text,
        "organizes_community_events" boolean DEFAULT false,
        "community_event_details" text,
        "has_car_shows_participation" boolean DEFAULT false,
        "car_show_details" text,
        "has_crm" boolean DEFAULT false,
        "crm_system" text,
        "has_digital_sales_tools" boolean DEFAULT false,
        "digital_sales_tool_details" text,
        "has_online_booking_system" boolean DEFAULT false,
        "has_virtual_showroom_tour" boolean DEFAULT false,
        "has_digital_catalog" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT true,
        "cctv_camera_count" integer,
        "has_security_personnel" boolean DEFAULT true,
        "security_personnel_count" integer,
        "has_fire_safety_system" boolean DEFAULT true,
        "fire_safety_equipment" text,
        "has_parking" boolean DEFAULT true,
        "customer_parking_spaces" integer,
        "staff_parking_spaces" integer,
        "has_display_vehicle_parking" boolean DEFAULT true,
        "display_vehicle_parking_capacity" integer,
        "has_ev_charging_station" boolean DEFAULT false,
        "ev_charging_station_count" integer,
        "annual_turnover_npr" numeric(18, 2),
        "profit_margin_percentage" numeric(5, 2),
        "inventory_value_npr" numeric(18, 2),
        "average_inventory_days" integer,
        "payment_methods_accepted" jsonb DEFAULT '[]'::jsonb,
        "accepts_digital_payments" boolean DEFAULT true,
        "digital_payment_options" jsonb DEFAULT '[]'::jsonb,
        "offer_emi_options" boolean DEFAULT true,
        "minimum_down_payment_percentage" numeric(5, 2),
        "has_green_initiatives" boolean DEFAULT false,
        "green_initiative_details" text,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_details" text,
        "uses_renewable_energy" boolean DEFAULT false,
        "renewable_energy_details" text,
        "has_water_conservation" boolean DEFAULT false,
        "water_conservation_details" text,
        "offers_paperless_transactions" boolean DEFAULT false,
        "has_all_required_permits" boolean DEFAULT true,
        "required_permits" jsonb DEFAULT '[]'::jsonb,
        "last_compliance_check_date" date,
        "compliance_issues" text,
        "regulatory_challenges" text,
        "expansion_plans" text,
        "upcoming_vehicle_models" jsonb DEFAULT '[]'::jsonb,
        "planned_facility_upgrades" text,
        "future_investment_plans_npr" numeric(18, 2),
        "anticipated_market_trends" text,
        "major_challenges" text,
        "competitor_analysis" text,
        "nearest_competitor_distance_km" numeric(6, 2),
        "market_differentiators" text,
        "employment_generated" integer,
        "local_employment_percentage" integer,
        "contribution_to_local_economy_npr" numeric(18, 2),
        "community_development_initiatives" text,
        "linked_service_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_spare_parts_dealers" jsonb DEFAULT '[]'::jsonb,
        "linked_financial_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_insurance_providers" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "showroom_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_financial_institution" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "institution_type" "financial_institution_type" NOT NULL,
        "ownership_type" "financial_institution_ownership" NOT NULL,
        "branch_size" "branch_size" NOT NULL,
        "service_level" "branch_service_level" NOT NULL,
        "description" text,
        "short_description" text,
        "parent_organization_name" text,
        "parent_organization_id" varchar(36),
        "branch_code" varchar(50),
        "branch_manager_name" text,
        "logo_url" text,
        "swift_code" varchar(20),
        "licensed_by" text,
        "license_number" varchar(50),
        "license_issued_date" date,
        "license_renewal_date" date,
        "pan_number" varchar(20),
        "registration_number" varchar(50),
        "registration_date" date,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "toll_free_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_url" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "linkedin_url" text,
        "youtube_channel" text,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "is_open_24_hours" boolean DEFAULT false,
        "has_extended_hours" boolean DEFAULT false,
        "extended_hours_details" text,
        "total_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "other_gender_staff_count" integer,
        "building_ownership" text,
        "floor_area_sq_m" numeric(10, 2),
        "number_of_counters" integer,
        "number_of_cabins" integer,
        "has_customer_waiting_area" boolean DEFAULT true,
        "customer_waiting_capacity" integer,
        "has_online_banking" boolean DEFAULT true,
        "has_mobile_banking" boolean DEFAULT true,
        "has_internet_banking" boolean DEFAULT true,
        "has_qr_payments" boolean DEFAULT false,
        "has_credit_card_service" boolean DEFAULT false,
        "has_debit_card_service" boolean DEFAULT true,
        "online_banking_url" text,
        "mobile_app_name" text,
        "mobile_app_download_url" text,
        "has_atm" boolean DEFAULT false,
        "atm_count" integer,
        "atm_24_hours" boolean DEFAULT false,
        "atm_locations_description" text,
        "supported_atm_networks" text,
        "offers_savings_accounts" boolean DEFAULT true,
        "offers_current_accounts" boolean DEFAULT true,
        "offers_fixed_deposits" boolean DEFAULT true,
        "offers_recurring_deposits" boolean DEFAULT true,
        "offers_micro_financing_loans" boolean DEFAULT false,
        "offers_home_loans" boolean DEFAULT false,
        "offers_vehicle_loans" boolean DEFAULT false,
        "offers_education_loans" boolean DEFAULT false,
        "offers_business_loans" boolean DEFAULT false,
        "offers_agriculture_loans" boolean DEFAULT false,
        "offers_remittance_services" boolean DEFAULT true,
        "offers_insurance_services" boolean DEFAULT false,
        "offers_locker" boolean DEFAULT false,
        "locker_count" integer,
        "offers_foreign_exchange" boolean DEFAULT false,
        "offers_investment_services" boolean DEFAULT false,
        "offers_merchant_services" boolean DEFAULT false,
        "offers_pension_services" boolean DEFAULT false,
        "offers_advisory_services" boolean DEFAULT false,
        "specialized_services" text,
        "established_date" date,
        "total_deposit_amount_npr" numeric(18, 2),
        "total_loan_amount_npr" numeric(18, 2),
        "total_customer_count" integer,
        "annual_transaction_count" integer,
        "average_monthly_transaction_count" integer,
        "as_of_date" date,
        "has_wheelchair_access" boolean DEFAULT false,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_public_transport_nearby" boolean DEFAULT true,
        "has_braille_services" boolean DEFAULT false,
        "has_sign_language_staff" boolean DEFAULT false,
        "distance_from_city_center_km" numeric(5, 2),
        "has_security_guard" boolean DEFAULT true,
        "security_guard_count" integer,
        "has_cctv" boolean DEFAULT true,
        "cctv_camera_count" integer,
        "has_emergency_alarm" boolean DEFAULT true,
        "has_branchless_services" boolean DEFAULT false,
        "branchless_service_details" text,
        "branchless_service_points" integer,
        "has_financial_literacy_programs" boolean DEFAULT false,
        "financial_literacy_details" text,
        "has_specialized_programs_for_women" boolean DEFAULT false,
        "women_programs_details" text,
        "has_digital_financial_education" boolean DEFAULT false,
        "digital_financial_education_details" text,
        "customer_support_phone" text,
        "customer_support_email" text,
        "has_in_person_customer_support" boolean DEFAULT true,
        "has_virtual_customer_support" boolean DEFAULT false,
        "customer_support_hours" text,
        "has_complaint_box" boolean DEFAULT true,
        "target_group" text,
        "group_lending_methodology" text,
        "self_help_groups_count" integer,
        "center_meeting_frequency" text,
        "field_officer_count" integer,
        "linked_parent_organization" jsonb DEFAULT '[]'::jsonb,
        "linked_branches" jsonb DEFAULT '[]'::jsonb,
        "linked_atms" jsonb DEFAULT '[]'::jsonb,
        "linked_agents" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "catchment_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_haat_bazaar" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "frequency" "haat_bazaar_frequency" NOT NULL,
        "scale" "haat_bazaar_scale" NOT NULL,
        "primary_product" "haat_bazaar_primary_product" NOT NULL,
        "operating_space" "operating_space" NOT NULL,
        "description" text,
        "short_description" text,
        "established_year" integer,
        "operating_days" text,
        "registration_status" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "contact_person" text,
        "contact_phone" text,
        "alternate_phone" text,
        "start_time" time,
        "end_time" time,
        "peak_hours" text,
        "setup_time" time,
        "total_area_sq_m" numeric(12, 2),
        "has_designated_boundary" boolean DEFAULT false,
        "has_permanent_structures" boolean DEFAULT false,
        "has_covered_area" boolean DEFAULT false,
        "covered_area_percent" integer,
        "has_drainage_system" boolean DEFAULT false,
        "has_electricity" boolean DEFAULT false,
        "electricity_type" text,
        "has_water_supply" boolean DEFAULT false,
        "water_supply_type" text,
        "estimated_vendor_count" integer,
        "registered_vendor_count" integer,
        "regular_vendor_count" integer,
        "seasonal_vendor_count" integer,
        "female_vendor_percent" integer,
        "vendors_from_other_districts_percent" integer,
        "vendor_registration_fee_npr" numeric(10, 2),
        "daily_tax_per_vendor_npr" numeric(10, 2),
        "average_vendor_earning_per_day_npr" numeric(10, 2),
        "agricultural_produce_sold_types" text,
        "livestock_sold_types" text,
        "handicraft_sold_types" text,
        "manufactured_goods_sold_types" text,
        "food_service_types" text,
        "has_ready_to_eat_food" boolean DEFAULT true,
        "has_live_animal_trading" boolean DEFAULT false,
        "specialized_products" text,
        "local_specialties" text,
        "service_leverage" text,
        "estimated_daily_footfall" integer,
        "peak_season_months" text,
        "low_season_months" text,
        "visitor_demographics" text,
        "estimated_daily_transaction_volume_npr" numeric(18, 2),
        "average_purchase_value_npr" numeric(10, 2),
        "economic_importance" text,
        "managed_by" text,
        "has_market_committee" boolean DEFAULT false,
        "market_committee_details" text,
        "has_tax_collection" boolean DEFAULT false,
        "tax_collection_method" text,
        "estimated_tax_revenue_per_event_npr" numeric(14, 2),
        "annual_revenue_estimate_npr" numeric(18, 2),
        "revenue_used_for" text,
        "has_public_toilets" boolean DEFAULT false,
        "toilet_count" integer,
        "has_handwashing_stations" boolean DEFAULT false,
        "handwashing_station_count" integer,
        "has_waste_collection" boolean DEFAULT false,
        "waste_collection_details" text,
        "has_designated_parking_space" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_loading_unloading_area" boolean DEFAULT false,
        "has_resting_area" boolean DEFAULT false,
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_nearest_city_km" numeric(6, 2),
        "accessibility_rating" text,
        "public_transport_availability" text,
        "road_condition" text,
        "security_arrangement" text,
        "has_security_personnel" boolean DEFAULT false,
        "security_personnel_count" integer,
        "has_fire_safety_measures" boolean DEFAULT false,
        "safety_issues" text,
        "cultural_significance" text,
        "traditional_practices" text,
        "social_gathering_importance" text,
        "community_events" text,
        "source_of_products" text,
        "product_destinations" text,
        "supply_chain_role" text,
        "connected_markets" text,
        "all_weather_operational" boolean DEFAULT false,
        "weather_vulnerabilities" text,
        "seasonal_variations" text,
        "major_challenges" text,
        "infrastructure_needs" text,
        "development_plans" text,
        "support_required_from" text,
        "linked_market_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_agriculture_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_transport_routes" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "market_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_hotel_resort" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "hotel_type" "hotel_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "nearest_landmark" text,
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "distance_from_airport_km" numeric(6, 2),
        "distance_from_bus_station_km" numeric(6, 2),
        "gps_coordinates" text,
        "established_year" integer,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_vat_number" varchar(20),
        "tourism_license_number" varchar(50),
        "star_rating" "hotel_star_rating",
        "management_type" "hotel_management_type",
        "chain_affiliation" text,
        "managing_company" text,
        "size_category" "hotel_size_category",
        "phone_number" text,
        "alternate_phone_number" text,
        "emergency_contact_number" text,
        "reservation_phone" text,
        "email" text,
        "reservation_email" text,
        "website_url" text,
        "facebook_page" text,
        "instagram_handle" text,
        "twitter_handle" text,
        "trip_advisor_url" text,
        "booking_com_url" text,
        "other_online_listings" text,
        "owner_name" text,
        "owner_contact_details" text,
        "general_manager_name" text,
        "general_manager_contact" text,
        "total_area_sq_m" numeric(10, 2),
        "building_area_sq_m" numeric(10, 2),
        "total_floors" integer,
        "building_age" integer,
        "last_renovation_year" integer,
        "architecture_style" text,
        "building_materials" text,
        "has_elevator" boolean DEFAULT false,
        "elevator_count" integer,
        "has_disability_access" boolean DEFAULT false,
        "total_room_count" integer,
        "standard_room_count" integer,
        "deluxe_room_count" integer,
        "suite_room_count" integer,
        "family_room_count" integer,
        "dormitory_bed_count" integer,
        "total_bed_count" integer,
        "maximum_occupancy" integer,
        "extra_bed_available" boolean DEFAULT true,
        "children_policy" text,
        "pet_policy" text,
        "room_amenities" text,
        "has_room_service" boolean DEFAULT false,
        "room_service_hours" text,
        "has_wifi" boolean DEFAULT false,
        "wifi_coverage" text,
        "has_air_conditioned_rooms" boolean DEFAULT false,
        "air_conditioned_room_count" integer,
        "has_attached_bathrooms" boolean DEFAULT true,
        "attached_bathroom_count" integer,
        "has_hot_water" boolean DEFAULT false,
        "hot_water_availability" text,
        "average_room_rate_npr" numeric(10, 2),
        "standard_room_rate_npr" numeric(10, 2),
        "deluxe_room_rate_npr" numeric(10, 2),
        "suite_room_rate_npr" numeric(10, 2),
        "average_annual_occupancy_percent" numeric(5, 2),
        "peak_season_months" text,
        "low_season_months" text,
        "peak_season_occupancy_percent" numeric(5, 2),
        "low_season_occupancy_percent" numeric(5, 2),
        "average_stay_duration_days" numeric(4, 2),
        "domestic_guest_percentage" integer,
        "international_guest_percentage" integer,
        "business_traveler_percentage" integer,
        "leisure_traveler_percentage" integer,
        "top_foreigner_nationalities" text,
        "average_guest_age" integer,
        "has_restaurant" boolean DEFAULT false,
        "restaurant_count" integer,
        "restaurant_names" text,
        "restaurant_capacity" integer,
        "cuisine_types" text,
        "has_bar" boolean DEFAULT false,
        "bar_count" integer,
        "bar_names" text,
        "has_cafeteria" boolean DEFAULT false,
        "has_rooftop_dining" boolean DEFAULT false,
        "has_breakfast_included" boolean DEFAULT false,
        "has_meal_plans" boolean DEFAULT false,
        "meal_plan_options" text,
        "special_dietary_options_available" boolean DEFAULT false,
        "special_dietary_options" text,
        "has_swimming_pool" boolean DEFAULT false,
        "swimming_pool_count" integer,
        "has_kids_pool" boolean DEFAULT false,
        "has_gym" boolean DEFAULT false,
        "has_spa" boolean DEFAULT false,
        "spa_services" text,
        "has_yoga" boolean DEFAULT false,
        "has_garden" boolean DEFAULT false,
        "garden_area_sq_m" numeric(10, 2),
        "has_indoor_games" boolean DEFAULT false,
        "indoor_game_types" text,
        "has_outdoor_games" boolean DEFAULT false,
        "outdoor_game_types" text,
        "has_kids_play_area" boolean DEFAULT false,
        "has_casino" boolean DEFAULT false,
        "recreational_activities" text,
        "has_conference_room" boolean DEFAULT false,
        "conference_room_count" integer,
        "largest_conference_capacity" integer,
        "has_banquet_hall" boolean DEFAULT false,
        "banquet_hall_count" integer,
        "largest_banquet_capacity" integer,
        "has_business_center" boolean DEFAULT false,
        "meeting_room_count" integer,
        "event_spaces" text,
        "event_services_offered" text,
        "wedding_facilities_available" boolean DEFAULT false,
        "has_24_hour_front_desk" boolean DEFAULT false,
        "has_concierge_service" boolean DEFAULT false,
        "has_laundry_service" boolean DEFAULT false,
        "has_room_cleaning" boolean DEFAULT true,
        "room_cleaning_frequency" text,
        "has_tour_desk_service" boolean DEFAULT false,
        "tour_services" text,
        "has_currency_exchange" boolean DEFAULT false,
        "has_airport_pickup" boolean DEFAULT false,
        "airport_pickup_fee_npr" numeric(10, 2),
        "has_childcare" boolean DEFAULT false,
        "has_language_translation" boolean DEFAULT false,
        "languages_supported" text,
        "has_parking" boolean DEFAULT false,
        "parking_space_count" integer,
        "parking_fee_npr" numeric(10, 2),
        "has_valet_parking" boolean DEFAULT false,
        "parking_type" text,
        "has_car_rental" boolean DEFAULT false,
        "has_bicycle_rental" boolean DEFAULT false,
        "has_shuttle_service" boolean DEFAULT false,
        "shuttle_service_details" text,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "female_staff_count" integer,
        "local_staff_percentage" integer,
        "staff_training_program" boolean DEFAULT false,
        "staff_accommodation_provided" boolean DEFAULT false,
        "has_24_hour_security" boolean DEFAULT false,
        "security_personnel_count" integer,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_fire_safety_system" boolean DEFAULT false,
        "fire_safety_equipment" text,
        "has_emergency_exits" boolean DEFAULT false,
        "has_sprinkler_system" boolean DEFAULT false,
        "has_smoke_detectors" boolean DEFAULT false,
        "has_first_aid_facilities" boolean DEFAULT false,
        "has_doctor_on_call" boolean DEFAULT false,
        "nearest_hospital_km" numeric(6, 2),
        "emergency_response_plan" boolean DEFAULT false,
        "has_energy_conservation_measures" boolean DEFAULT false,
        "energy_conservation_details" text,
        "has_water_conservation_measures" boolean DEFAULT false,
        "water_conservation_details" text,
        "has_waste_management_system" boolean DEFAULT false,
        "waste_management_details" text,
        "has_renewable_energy_source" boolean DEFAULT false,
        "renewable_energy_details" text,
        "has_paper_reduction_policy" boolean DEFAULT false,
        "uses_local_food" boolean DEFAULT false,
        "local_food_percentage" integer,
        "has_green_certification" boolean DEFAULT false,
        "green_certification_type" text,
        "estimated_annual_revenue_npr" numeric(18, 2),
        "average_room_revenue_percentage" integer,
        "average_food_revenue_percentage" integer,
        "average_other_revenue_percentage" integer,
        "payment_methods_accepted" text,
        "accepts_credit_cards" boolean DEFAULT false,
        "accepts_digital_payments" boolean DEFAULT false,
        "digital_payment_options" text,
        "has_reward_program" boolean DEFAULT false,
        "reward_program_details" text,
        "has_online_booking_system" boolean DEFAULT false,
        "online_booking_platforms" text,
        "online_booking_percentage" integer,
        "walk_in_booking_percentage" integer,
        "agent_booking_percentage" integer,
        "average_booking_lead_time_days" integer,
        "cancellation_policy" text,
        "average_rating" numeric(3, 1),
        "total_review_count" integer,
        "positive_review_percentage" integer,
        "negative_review_percentage" integer,
        "major_positive_aspects" text,
        "major_negative_aspects" text,
        "has_quality_management_system" boolean DEFAULT false,
        "guest_satisfaction_measurement" text,
        "local_attractions" text,
        "cultural_significance" text,
        "community_engagement_programs" text,
        "local_employment_created" integer,
        "economic_impact_details" text,
        "cultural_preservation_efforts" text,
        "expansion_plans" text,
        "renovation_plans" text,
        "new_service_plans" text,
        "sustainability_goals" text,
        "major_challenges" text,
        "planned_improvements" text,
        "competitor_analysis" text,
        "market_positioning" text,
        "license_renewal_date" date,
        "last_inspection_date" date,
        "regulatoy_compliance_status" text,
        "tax_compliance_status" text,
        "linked_attractions" jsonb DEFAULT '[]'::jsonb,
        "linked_tour_operators" jsonb DEFAULT '[]'::jsonb,
        "linked_transport_providers" jsonb DEFAULT '[]'::jsonb,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "property_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_cooperative" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "cooperative_type" "cooperative_type" NOT NULL,
        "cooperative_scale" "cooperative_scale" NOT NULL,
        "primary_business_focus" "primary_business_focus" NOT NULL,
        "description" text,
        "short_description" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "pan_number" varchar(20),
        "logo_url" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "fax_number" text,
        "email" text,
        "website_url" text,
        "facebook_url" text,
        "other_social_media" text,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "building_ownership" text,
        "floor_area_sq_m" numeric(10, 2),
        "has_counters" boolean DEFAULT true,
        "counter_count" integer,
        "has_waiting_area" boolean DEFAULT true,
        "total_member_count" integer,
        "male_member_count" integer,
        "female_member_count" integer,
        "other_gender_member_count" integer,
        "dalit_member_count" integer,
        "janajati_member_count" integer,
        "brahmin_chhetri_member_count" integer,
        "madhesi_member_count" integer,
        "muslim_member_count" integer,
        "other_ethnicity_member_count" integer,
        "membership_fee_npr" numeric(10, 2),
        "minimum_mandatory_savings_npr" numeric(10, 2),
        "monthly_saving_requirement_npr" numeric(10, 2),
        "board_member_count" integer,
        "female_board_member_count" integer,
        "board_election_frequency_years" integer,
        "last_board_election_date" date,
        "chairperson_name" text,
        "manager_name" text,
        "has_accounts_committee" boolean DEFAULT true,
        "has_loan_committee" boolean DEFAULT true,
        "has_education_committee" boolean DEFAULT false,
        "other_committees" text,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "contract_staff_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "established_date" date,
        "fiscal_year_end" varchar(10),
        "share_capital_npr" numeric(18, 2),
        "reserve_fund_npr" numeric(18, 2),
        "total_savings_npr" numeric(18, 2),
        "total_loans_npr" numeric(18, 2),
        "total_assets_npr" numeric(18, 2),
        "last_year_profit_npr" numeric(18, 2),
        "annual_turnover_npr" numeric(18, 2),
        "non_performing_loan_percentage" numeric(5, 2),
        "last_audit_date" date,
        "is_audited" boolean DEFAULT true,
        "auditor_name" text,
        "savings_products" text,
        "loan_products" text,
        "insurance_services" text,
        "remittance_services" text,
        "saving_interest_rate_range" text,
        "loan_interest_rate_range" text,
        "has_digital_banking" boolean DEFAULT false,
        "has_mobile_banking" boolean DEFAULT false,
        "has_sms_alerts" boolean DEFAULT false,
        "uses_computerized_accounting" boolean DEFAULT false,
        "accounting_software" text,
        "agricultural_sectors_served" text,
        "major_crops_supported" text,
        "provides_agriculture_inputs" boolean DEFAULT false,
        "agricultural_input_services" text,
        "provides_technical_support" boolean DEFAULT false,
        "technical_support_details" text,
        "has_market_linkages" boolean DEFAULT false,
        "market_linkage_details" text,
        "has_buyback_guarantee" boolean DEFAULT false,
        "major_markets" text,
        "provides_training_to_members" boolean DEFAULT false,
        "training_frequency" text,
        "training_types" text,
        "financial_literacy_programs" text,
        "is_affiliated_with_federation" boolean DEFAULT false,
        "federation_affiliation_details" text,
        "network_memberships" text,
        "community_service_programs" text,
        "corporate_social_responsibility_activities" text,
        "major_challenges" text,
        "future_plans" text,
        "business_expansion_plans" text,
        "women_empowerment_programs" text,
        "women_entrepreneurship_activities" text,
        "health_services_offered" text,
        "health_infrastructure" text,
        "education_services_offered" text,
        "scholarship_programs" text,
        "has_security_guard" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "linked_federations" jsonb DEFAULT '[]'::jsonb,
        "linked_cooperatives" jsonb DEFAULT '[]'::jsonb,
        "linked_businesses" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "service_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_market_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "market_type" "market_center_type" NOT NULL,
        "market_scale" "market_scale" NOT NULL,
        "ownership_type" "market_ownership" NOT NULL,
        "market_structure" "market_structure" NOT NULL,
        "description" text,
        "short_description" text,
        "established_year" integer,
        "registration_number" varchar(50),
        "registered_with" text,
        "pan_number" varchar(20),
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "management_office_phone" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "facebook_url" text,
        "other_social_media" text,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_day" text,
        "has_seasonal_schedule" boolean DEFAULT false,
        "seasonal_schedule_details" text,
        "total_area_sq_m" numeric(12, 2),
        "built_up_area_sq_m" numeric(12, 2),
        "open_space_area_sq_m" numeric(12, 2),
        "building_floors" integer,
        "total_shops" integer,
        "total_stalls" integer,
        "occupied_shops" integer,
        "vacant_shops" integer,
        "minimum_shop_area_sq_m" numeric(8, 2),
        "maximum_shop_area_sq_m" numeric(8, 2),
        "has_open_vending_space" boolean DEFAULT false,
        "open_vending_spot_count" integer,
        "has_warehouse" boolean DEFAULT false,
        "warehouse_area_sq_m" numeric(10, 2),
        "loading_unloading_area_sq_m" numeric(10, 2),
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_supply" boolean DEFAULT true,
        "water_source_type" text,
        "has_public_toilets" boolean DEFAULT true,
        "public_toilet_count" integer,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_disabled_accessible_toilets" boolean DEFAULT false,
        "has_waste_management_system" boolean DEFAULT false,
        "waste_management_details" text,
        "has_fire_safety_system" boolean DEFAULT false,
        "fire_safety_details" text,
        "has_parking" boolean DEFAULT false,
        "parking_capacity" integer,
        "has_bike_parking" boolean DEFAULT false,
        "bike_parking_capacity" integer,
        "is_wheelchair_accessible" boolean DEFAULT false,
        "public_transport_accessibility" text,
        "retail_shop_count" integer,
        "wholesale_shop_count" integer,
        "food_service_count" integer,
        "grocery_shop_count" integer,
        "clothing_store_count" integer,
        "electronics_shop_count" integer,
        "appliance_shop_count" integer,
        "furniture_store_count" integer,
        "hardware_store_count" integer,
        "cosmetics_store_count" integer,
        "phone_shop_count" integer,
        "services_shop_count" integer,
        "banking_service_count" integer,
        "entertainment_venue_count" integer,
        "other_business_types" text,
        "estimated_daily_visitors_count" integer,
        "estimated_monthly_transaction_volume_npr" numeric(18, 2),
        "average_rent_per_sqm_npr" numeric(10, 2),
        "average_shop_size_square_meters" numeric(8, 2),
        "average_shop_deposit_npr" numeric(12, 2),
        "total_employment_estimate" integer,
        "management_type" text,
        "management_company_name" text,
        "has_management_committee" boolean DEFAULT false,
        "management_committee_details" text,
        "security_personnel_count" integer,
        "cleaning_staff_count" integer,
        "has_market_association" boolean DEFAULT false,
        "market_association_name" text,
        "has_atm" boolean DEFAULT false,
        "atm_count" integer,
        "has_food_court" boolean DEFAULT false,
        "food_court_capacity" integer,
        "has_child_care_center" boolean DEFAULT false,
        "has_rest_area" boolean DEFAULT false,
        "has_prayer_room" boolean DEFAULT false,
        "has_wifi" boolean DEFAULT false,
        "has_taxi_stand" boolean DEFAULT false,
        "has_information_center" boolean DEFAULT false,
        "other_amenities" text,
        "has_security_guard" boolean DEFAULT false,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "is_eco_friendly" boolean DEFAULT false,
        "eco_friendly_features" text,
        "has_rainwater_harvesting" boolean DEFAULT false,
        "has_solar_power" boolean DEFAULT false,
        "major_challenges" text,
        "planned_improvements" text,
        "expansion_plans" text,
        "linked_business_associations" jsonb DEFAULT '[]'::jsonb,
        "linked_markets" jsonb DEFAULT '[]'::jsonb,
        "linked_transport_hubs" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "market_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_vegetable_market" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "market_type" "market_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "nearest_landmark" text,
        "established_year" integer,
        "management_type" "market_management_type" NOT NULL,
        "managing_entity" text,
        "registration_number" varchar(50),
        "registered_with" text,
        "market_frequency" "market_frequency",
        "weekly_schedule" text,
        "operating_hours" text,
        "seasonality_details" text,
        "total_area_sq_m" numeric(10, 2),
        "covered_area_sq_m" numeric(10, 2),
        "open_area_sq_m" numeric(10, 2),
        "total_stall_count" integer,
        "permanent_stall_count" integer,
        "temporary_stall_count" integer,
        "average_stall_size_sq_m" numeric(6, 2),
        "registered_vendor_count" integer,
        "average_daily_vendor_count" integer,
        "male_vendor_count" integer,
        "female_vendor_count" integer,
        "vendor_organization_exists" boolean DEFAULT false,
        "vendor_organization_name" text,
        "vendor_organization_member_count" integer,
        "primary_products_traded" text,
        "organic_produce_available" boolean DEFAULT false,
        "local_produce_percentage" integer,
        "imported_produce_percentage" integer,
        "average_daily_trade_volume_kg" numeric(10, 2),
        "peak_trading_months" text,
        "low_trading_months" text,
        "average_daily_customer_count" integer,
        "weekly_peak_days" text,
        "daily_peak_hours" text,
        "infrastructure_condition" "infrastructure_condition",
        "has_roof" boolean DEFAULT false,
        "has_concrete_floor" boolean DEFAULT false,
        "has_drainage_system" boolean DEFAULT false,
        "has_separate_section" boolean DEFAULT false,
        "separate_section_details" text,
        "has_storage_facilities" boolean DEFAULT false,
        "storage_facilities_details" text,
        "has_cold_storage" boolean DEFAULT false,
        "cold_storage_capacity_kg" numeric(10, 2),
        "has_electricity" boolean DEFAULT false,
        "has_water_supply" boolean DEFAULT false,
        "water_source_type" text,
        "has_toilets" boolean DEFAULT false,
        "toilet_count" integer,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_handwashing_stations" boolean DEFAULT false,
        "handwashing_station_count" integer,
        "has_waste_management_system" boolean DEFAULT false,
        "waste_management_details" text,
        "waste_collection_frequency" text,
        "has_food_safety_measures" boolean DEFAULT false,
        "food_safety_level" "food_safety_level",
        "has_quality_control_system" boolean DEFAULT false,
        "quality_control_details" text,
        "has_weighing_equipment" boolean DEFAULT false,
        "weighing_equipment_details" text,
        "has_pesticide_testing_facility" boolean DEFAULT false,
        "stall_rental_fee_structure" text,
        "average_monthly_stall_rent_npr" numeric(10, 2),
        "has_entrance_fee" boolean DEFAULT false,
        "entrance_fee_npr" numeric(6, 2),
        "annual_revenue_npr" numeric(14, 2),
        "financial_management_system" text,
        "revenue_collection" text,
        "loading_unloading_facilities" boolean DEFAULT false,
        "loading_unloading_details" text,
        "has_designated_parking_area" boolean DEFAULT false,
        "parking_capacity" integer,
        "transport_availability" text,
        "major_supply_routes" text,
        "has_market_information_system" boolean DEFAULT false,
        "market_information_details" text,
        "has_price_display_boards" boolean DEFAULT false,
        "has_microfinance_services" boolean DEFAULT false,
        "microfinance_service_details" text,
        "has_veterinary_services" boolean DEFAULT false,
        "has_agriculture_extension_services" boolean DEFAULT false,
        "has_security_personnel" boolean DEFAULT false,
        "security_personnel_count" integer,
        "has_cctv" boolean DEFAULT false,
        "cctv_camera_count" integer,
        "has_market_management_committee" boolean DEFAULT false,
        "management_committee_details" text,
        "management_staff_count" integer,
        "has_designated_manager" boolean DEFAULT false,
        "manager_contact_info" text,
        "has_dispute_resolution_mechanism" boolean DEFAULT false,
        "environmental_concerns" text,
        "waste_generation_per_day_kg" numeric(8, 2),
        "waste_segregation_practices" text,
        "recycling_initiatives" text,
        "employment_generated" integer,
        "women_participation_percentage" integer,
        "marginalized_groups_participation" text,
        "accessibility_for_disabled" text,
        "has_operating_guidelines" boolean DEFAULT false,
        "has_vendor_registration_system" boolean DEFAULT false,
        "inspection_frequency" text,
        "last_inspection_date" date,
        "compliance_with_regulations" text,
        "major_challenges" text,
        "planned_improvements" text,
        "development_needs" text,
        "success_stories" text,
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "access_road_condition" text,
        "public_transport_accessibility" text,
        "contact_person_name" text,
        "contact_person_designation" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "has_online_presence" boolean DEFAULT false,
        "website_url" text,
        "facebook_page" text,
        "other_social_media" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_farmer_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_cooperatives" jsonb DEFAULT '[]'::jsonb,
        "linked_transport_providers" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "market_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_disaster_management_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "center_type" "disaster_center_type" NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_year" integer,
        "management_type" "disaster_center_management" NOT NULL,
        "operational_status" "operational_status" NOT NULL,
        "registration_number" varchar(50),
        "registered_with" text,
        "coverage_area_description" text,
        "population_covered" integer,
        "head_officer_name" text,
        "head_officer_position" text,
        "phone_number" text,
        "emergency_phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "radio_frequency" text,
        "is_open_24_hours" boolean DEFAULT true,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "facility_condition" "facility_condition",
        "total_area_sq_m" numeric(10, 2),
        "building_area_sq_m" numeric(10, 2),
        "construction_year" integer,
        "last_renovated_year" integer,
        "total_floors" integer,
        "total_rooms" integer,
        "has_emergency_operation_room" boolean DEFAULT false,
        "has_control_room" boolean DEFAULT false,
        "has_meeting_room" boolean DEFAULT false,
        "has_training_room" boolean DEFAULT false,
        "has_warehouse" boolean DEFAULT false,
        "warehouse_capacity_sqm" numeric(10, 2),
        "has_shelter_space" boolean DEFAULT false,
        "shelter_capacity_persons" integer,
        "has_kitchen" boolean DEFAULT false,
        "has_dormitory" boolean DEFAULT false,
        "dormitory_capacity_persons" integer,
        "has_emergency_vehicles" boolean DEFAULT false,
        "emergency_vehicle_types" text,
        "emergency_vehicle_count" integer,
        "has_disaster_response_equipment" boolean DEFAULT false,
        "equipment_details" text,
        "has_search_rescue_equipment" boolean DEFAULT false,
        "search_rescue_equipment_details" text,
        "has_early_warning_system" boolean DEFAULT false,
        "early_warning_system_details" text,
        "has_emergency_communication_system" boolean DEFAULT false,
        "communication_system_details" text,
        "has_disaster_management_plan" boolean DEFAULT false,
        "disaster_management_plan_details" text,
        "has_emergency_shelter_kit" boolean DEFAULT false,
        "shelter_kit_count" integer,
        "has_emergency_food_supply" boolean DEFAULT false,
        "food_supply_details" text,
        "has_medical_supplies" boolean DEFAULT false,
        "medical_supplies_details" text,
        "total_staff_count" integer,
        "permanent_staff_count" integer,
        "temporary_staff_count" integer,
        "volunteer_count" integer,
        "trained_responder_count" integer,
        "search_rescue_personnel_count" integer,
        "medical_team_member_count" integer,
        "fire_fighter_count" integer,
        "logistics_team_count" integer,
        "communication_team_count" integer,
        "admin_staff_count" integer,
        "staff_training_frequency" text,
        "has_electricity" boolean DEFAULT true,
        "has_power_backup" boolean DEFAULT true,
        "power_backup_type" text,
        "power_backup_capacity_kw" numeric(8, 2),
        "has_fuel_storage" boolean DEFAULT false,
        "fuel_storage_capacity_liters" integer,
        "has_water_supply" boolean DEFAULT true,
        "water_storage_capacity_liters" integer,
        "has_toilets" boolean DEFAULT true,
        "toilet_count" integer,
        "has_showers" boolean DEFAULT false,
        "shower_count" integer,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_backup" boolean DEFAULT false,
        "internet_backup_type" text,
        "has_satellite_phone" boolean DEFAULT false,
        "satellite_phone_count" integer,
        "provides_disaster_response" boolean DEFAULT true,
        "provides_search_rescue" boolean DEFAULT false,
        "provides_emergency_shelter" boolean DEFAULT false,
        "provides_emergency_food_relief" boolean DEFAULT false,
        "provides_first_aid" boolean DEFAULT false,
        "provides_trauma_support" boolean DEFAULT false,
        "provides_disaster_training" boolean DEFAULT false,
        "provides_awareness_programs" boolean DEFAULT false,
        "provides_community_drills" boolean DEFAULT false,
        "provides_early_warning" boolean DEFAULT false,
        "provides_hazard_mapping" boolean DEFAULT false,
        "provides_vulnerability_assessment" boolean DEFAULT false,
        "service_details" text,
        "flood_response_capability" boolean DEFAULT false,
        "earthquake_response_capability" boolean DEFAULT false,
        "landslide_response_capability" boolean DEFAULT false,
        "fire_response_capability" boolean DEFAULT false,
        "cyclone_response_capability" boolean DEFAULT false,
        "avalanche_response_capability" boolean DEFAULT false,
        "drought_response_capability" boolean DEFAULT false,
        "epidemic_response_capability" boolean DEFAULT false,
        "other_response_capabilities" text,
        "coordinates_with_local_government" boolean DEFAULT true,
        "coordinates_with_provincial_government" boolean DEFAULT false,
        "coordinates_with_federal_government" boolean DEFAULT false,
        "coordinates_with_ngos" boolean DEFAULT false,
        "coordinates_with_security_forces" boolean DEFAULT true,
        "coordinates_with_international_agencies" boolean DEFAULT false,
        "part_of_disaster_network" boolean DEFAULT false,
        "network_details" text,
        "has_emergency_protocols" boolean DEFAULT true,
        "protocol_details" text,
        "major_disasters_responded" jsonb DEFAULT '[]'::jsonb,
        "disaster_response_frequency" text,
        "yearly_response_count" integer,
        "last_major_response_date" date,
        "last_major_response_details" text,
        "annual_budget_npr" numeric(18, 2),
        "funding_sources" text,
        "government_funding_percentage" integer,
        "donor_funding_percentage" integer,
        "has_emergency_fund" boolean DEFAULT false,
        "emergency_fund_amount_npr" numeric(14, 2),
        "monitoring_mechanism" text,
        "last_evaluation_date" date,
        "evaluation_results" text,
        "major_challenges" text,
        "resource_needs" text,
        "equipment_needs" text,
        "training_needs" text,
        "expansion_plans" text,
        "capacity_enhancement_plans" text,
        "funding_requirements" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_police_stations" jsonb DEFAULT '[]'::jsonb,
        "linked_fire_stations" jsonb DEFAULT '[]'::jsonb,
        "facebook_page" text,
        "twitter_handle" text,
        "other_social_media" text,
        "location_point" geometry (Point, 4326),
        "coverage_area" geometry (MultiPolygon, 4326),
        "facility_area" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_fire_incident" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "incident_type" "fire_incident_type" NOT NULL,
        "severity" "fire_incident_severity" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "incident_date" date NOT NULL,
        "incident_time" timestamp,
        "reported_time" timestamp,
        "response_time" timestamp,
        "contained_time" timestamp,
        "extinguished_time" timestamp,
        "incident_description" text,
        "probable_cause" text,
        "fire_source" text,
        "affected_area_sqm" numeric(10, 2),
        "casualties_count" integer DEFAULT 0,
        "injuries_count" integer DEFAULT 0,
        "missing_count" integer DEFAULT 0,
        "affected_families_count" integer DEFAULT 0,
        "affected_population_count" integer DEFAULT 0,
        "displaced_count" integer DEFAULT 0,
        "animals_lost_count" integer DEFAULT 0,
        "property_damage_description" text,
        "estimated_loss_npr" numeric(14, 2),
        "residential_structures_damaged" integer DEFAULT 0,
        "commercial_structures_damaged" integer DEFAULT 0,
        "public_buildings_damaged" integer DEFAULT 0,
        "vehicles_damaged" integer DEFAULT 0,
        "infrastructure_damage_details" text,
        "response_agencies" jsonb DEFAULT '[]'::jsonb,
        "fire_fighters_deployed" integer DEFAULT 0,
        "fire_engines_deployed" integer DEFAULT 0,
        "water_tankers_used" integer DEFAULT 0,
        "police_forces_deployed" integer DEFAULT 0,
        "ambulances_deployed" integer DEFAULT 0,
        "rescue_teams_deployed" integer DEFAULT 0,
        "volunteer_count" integer DEFAULT 0,
        "response_description" text,
        "water_sources_used" text,
        "special_equipment_used" text,
        "evacuation_required" boolean DEFAULT false,
        "evacuation_details" text,
        "evacuation_center_used" boolean DEFAULT false,
        "evacuation_center_details" text,
        "relief_provided_description" text,
        "relief_agencies" jsonb DEFAULT '[]'::jsonb,
        "compensation_provided_npr" numeric(14, 2),
        "rehabilitation_measures" text,
        "recovery_status" text,
        "response_delay_factors" text,
        "water_supply_challenges" text,
        "access_challenges" text,
        "other_challenges" text,
        "lessons_learned" text,
        "recommended_preventions" text,
        "follow_up_actions" text,
        "was_insured" boolean DEFAULT false,
        "insurance_details" text,
        "insurance_claim_amount_npr" numeric(14, 2),
        "legal_proceeding_initiated" boolean DEFAULT false,
        "legal_details" text,
        "has_photos" boolean DEFAULT false,
        "has_incident_report" boolean DEFAULT false,
        "has_news_coverage" boolean DEFAULT false,
        "media_links" jsonb DEFAULT '[]'::jsonb,
        "report_links" jsonb DEFAULT '[]'::jsonb,
        "linked_fire_stations" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_police_stations" jsonb DEFAULT '[]'::jsonb,
        "linked_disaster_management_centers" jsonb DEFAULT '[]'::jsonb,
        "notes" text,
        "investigation_status" text,
        "case_closure_status" text,
        "location_point" geometry (Point, 4326),
        "affected_area" geometry (Polygon, 4326),
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_flooded_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "location_description" text,
        "flood_severity" "flood_severity" NOT NULL,
        "flood_frequency" "flood_frequency",
        "primary_flood_cause" "flood_cause",
        "secondary_flood_causes" text,
        "most_recent_flood_date" date,
        "last_major_flood_date" date,
        "area_affected_sq_km" numeric(10, 6),
        "maximum_depth_m" numeric(6, 2),
        "average_depth_m" numeric(6, 2),
        "flood_duration_hours" integer,
        "typical_inundation_period_days" numeric(5, 1),
        "water_source_name" text,
        "water_source_type" text,
        "flood_return_period_years" integer,
        "rainfall_mm" numeric(7, 2),
        "rainfall_duration_hours" integer,
        "rainfall_intensity_mm_per_hour" numeric(7, 2),
        "peak_water_level_m" numeric(6, 2),
        "normal_water_level_m" numeric(6, 2),
        "peak_discharge_cumecs" numeric(10, 2),
        "soil_infiltration_rate" text,
        "population_affected" integer,
        "households_affected" integer,
        "casualties_count" integer,
        "injuries_count" integer,
        "missing_persons_count" integer,
        "displaced_people_count" integer,
        "buildings_damaged_count" integer,
        "buildings_destroyed_count" integer,
        "schools_affected_count" integer,
        "health_facilities_affected_count" integer,
        "crops_affected_hectares" numeric(10, 2),
        "crop_damage_value_npr" numeric(14, 2),
        "livestock_lost_count" integer,
        "agricultural_land_affected_hectares" numeric(10, 2),
        "forest_area_affected_hectares" numeric(10, 2),
        "businesses_affected_count" integer,
        "total_economic_loss_npr" numeric(18, 2),
        "roads_affected_km" numeric(8, 2),
        "bridges_damaged_count" integer,
        "water_supply_systems_affected" text,
        "electrical_infrastructure_affected" text,
        "communication_systems_affected" text,
        "irrigation_systems_affected" text,
        "vulnerability_factors" text,
        "critical_facilities_at_risk" text,
        "settlement_pattern_issues" text,
        "land_use_contributing_factors" text,
        "population_at_risk" integer,
        "future_risk_projection" text,
        "climate_change_considerations" text,
        "is_monitored" boolean DEFAULT false,
        "monitoring_methods" text,
        "monitoring_frequency" text,
        "water_level_monitoring_stations" text,
        "has_flood_forecasting_system" boolean DEFAULT false,
        "forecasting_system_details" text,
        "early_warning_system_details" text,
        "warning_dissemination_methods" text,
        "evacuation_plans" text,
        "structural_measures_implemented" text,
        "non_structural_measures_implemented" text,
        "flood_defense_type" text,
        "embankment_details" text,
        "embankment_length_km" numeric(8, 2),
        "drainage_system_improvements" text,
        "retention_basins_details" text,
        "floodplain_management" text,
        "land_use_regulations" text,
        "emergency_response_actions" text,
        "evacuation_effectiveness" text,
        "temporary_shelter_details" text,
        "relief_measures" text,
        "rehabilitation_measures" text,
        "recovery_time_months" numeric(5, 1),
        "compensation_provided_npr" numeric(14, 2),
        "lead_agency" text,
        "supporting_agencies" text,
        "local_disaster_management_committee" text,
        "local_contact_person" text,
        "local_contact_phone" text,
        "community_preparedness" text,
        "community_awareness_programs" text,
        "local_knowledge_and_practices" text,
        "community_based_early_warning" text,
        "community_drills" text,
        "environmental_impacts" text,
        "water_contamination_issues" text,
        "ecological_changes" text,
        "soil_erosion_impacts" text,
        "sediment_deposition" text,
        "mitigation_measures_cost_npr" numeric(14, 2),
        "annual_maintenance_cost_npr" numeric(14, 2),
        "insurance_coverage_details" text,
        "allocated_disaster_fund_npr" numeric(14, 2),
        "reconstruction_status" text,
        "infrastructure_repair_status" text,
        "housing_reconstruction_status" text,
        "pending_reconstruction_needs" text,
        "linked_disaster_management_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_evacuation_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_rivers" jsonb DEFAULT '[]'::jsonb,
        "linked_river_erosion_areas" jsonb DEFAULT '[]'::jsonb,
        "scientific_studies_conducted" text,
        "research_institutions_involved" text,
        "historical_flood_data" text,
        "flood_documentation" text,
        "flood_risk_models" text,
        "additional_notes" text,
        "seasonal_considerations" text,
        "reference_materials" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "flood_plain" geometry (Polygon, 4326),
        "flood_extent" geometry (Polygon, 4326),
        "drainage_system" geometry (MultiLineString, 4326),
        "flood_defense_structures" geometry (MultiLineString, 4326),
        "evacuation_routes" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_forest_fire" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "location_description" text,
        "forest_name" text,
        "forest_type" "forest_type",
        "forest_ownership" text,
        "forest_fire_severity" "forest_fire_severity" NOT NULL,
        "forest_fire_status" "forest_fire_status" NOT NULL,
        "forest_fire_cause" "forest_fire_cause",
        "ignition_point_description" text,
        "start_date" date,
        "start_time" time,
        "containment_date" date,
        "extinguished_date" date,
        "duration_hours" integer,
        "area_affected_hectares" numeric(10, 2),
        "perimeter_km" numeric(8, 2),
        "spread_rate_km_per_hour" numeric(6, 2),
        "flame_height_m" numeric(6, 2),
        "fire_intensity" text,
        "temperature_c" numeric(5, 2),
        "humidity" integer,
        "wind_speed_kmh" numeric(6, 1),
        "wind_direction" text,
        "precipitation_mm" numeric(6, 2),
        "drought_conditions" text,
        "fuel_moisture_content" text,
        "fuel_type" text,
        "casualties_count" integer,
        "injuries_count" integer,
        "evacuations_count" integer,
        "buildings_destroyed_count" integer,
        "livestock_lost_count" integer,
        "critical_infrastructure_affected" text,
        "economic_loss_estimate_npr" numeric(14, 2),
        "timber_volume_affected_cubic_m" numeric(14, 2),
        "carbon_release_estimate_tons" numeric(14, 2),
        "endangered_species_affected" text,
        "habitat_destruction" text,
        "soil_erosion_risk" text,
        "watershed_impact" text,
        "biodiversity_loss" text,
        "regeneration_prospect" text,
        "long_term_ecological_impact" text,
        "air_quality_impact" text,
        "detection_method" text,
        "detection_time" timestamp,
        "reporting_delay_minutes" integer,
        "initial_response_time" timestamp,
        "response_time_minutes" integer,
        "suppression_methods" text,
        "equipment_used" text,
        "firefighters_count" integer,
        "water_sources_used" text,
        "water_used_liters" numeric(14, 2),
        "aircraft_deployment" boolean DEFAULT false,
        "aircraft_details" text,
        "firebreaks_created_km" numeric(8, 2),
        "control_strategies" text,
        "logistical_challenges" text,
        "lead_response_agency" text,
        "supporting_agencies" text,
        "community_involvement" text,
        "coordination_effectiveness" text,
        "incident_commander_name" text,
        "command_structure" text,
        "pre_fire_preparedness" text,
        "existing_prevention_measures" text,
        "early_warning_system_details" text,
        "fire_danger_rating_system" boolean DEFAULT false,
        "fire_breaks_pre_existing" boolean DEFAULT false,
        "community_awareness_level" text,
        "prevention_campaigns" text,
        "post_fire_management_plan" text,
        "rehabilitation_measures" text,
        "revegetation_plans" text,
        "soil_stabilization_measures" text,
        "community_recovery_initiatives" text,
        "compensation_provided_npr" numeric(14, 2),
        "suppression_cost_npr" numeric(14, 2),
        "rehabilitation_cost_npr" numeric(14, 2),
        "funding_sources_for_rehabilitation" text,
        "insurance_coverage" text,
        "risk_factors" text,
        "vulnerable_areas" text,
        "recurrence_risk" text,
        "climate_change_considerations" text,
        "post_fire_monitoring" text,
        "monitoring_frequency" text,
        "hotspot_identification" text,
        "satellite_surveillance" boolean DEFAULT false,
        "ground_patrols" boolean DEFAULT false,
        "fire_watch_towers" boolean DEFAULT false,
        "fire_watch_tower_count" integer,
        "community_training" text,
        "public_education_campaigns" text,
        "volunteer_firefighter_count" integer,
        "local_fire_response_team" boolean DEFAULT false,
        "local_fire_response_team_details" text,
        "linked_disaster_management_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_water_sources" jsonb DEFAULT '[]'::jsonb,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_forest_areas" jsonb DEFAULT '[]'::jsonb,
        "scientific_studies_conducted" text,
        "research_institutions_involved" text,
        "fire_data_collection" text,
        "lessons_learned" text,
        "additional_notes" text,
        "historical_fire_patterns" text,
        "reference_materials" text,
        "image_documentation" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "ignition_point" geometry (Point, 4326),
        "burn_area" geometry (Polygon, 4326),
        "fire_perimeter" geometry (LineString, 4326),
        "firebreak_lines" geometry (MultiLineString, 4326),
        "evacuation_zones" geometry (MultiPolygon, 4326),
        "firespread_time_zones" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_landslide_affected_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "location_description" text,
        "nearest_landmark" text,
        "landslide_type" "landslide_type" NOT NULL,
        "severity" "landslide_severity" NOT NULL,
        "status" "landslide_status" NOT NULL,
        "trigger_mechanism" "trigger_mechanism",
        "initial_occurrence_date" date,
        "most_recent_activity_date" date,
        "area_sq_km" numeric(10, 6),
        "length_m" numeric(10, 2),
        "width_m" numeric(10, 2),
        "depth_m" numeric(8, 2),
        "volume_estimate_cubic_m" numeric(14, 2),
        "slope_angle_degrees" numeric(5, 2),
        "elevation_range_m" text,
        "aspect_direction" text,
        "geological_formation" text,
        "rock_types" text,
        "soil_types" text,
        "groundwater_conditions" text,
        "casualties_count" integer,
        "injuries_count" integer,
        "missing_persons_count" integer,
        "affected_families_count" integer,
        "displaced_people_count" integer,
        "lives_endangered_count" integer,
        "buildings_damaged_count" integer,
        "buildings_destroyed_count" integer,
        "roads_damaged_km" numeric(8, 2),
        "bridges_damaged_count" integer,
        "critical_infrastructure_damaged" text,
        "economic_loss_estimate_npr" numeric(14, 2),
        "agricultural_land_damaged_hectares" numeric(10, 2),
        "forest_area_damaged_hectares" numeric(10, 2),
        "risk_level" text,
        "future_risk_assessment" text,
        "vulnerable_structures" text,
        "potential_impact_zone" text,
        "estimated_risk_population" integer,
        "is_being_monitored" boolean DEFAULT false,
        "monitoring_methods" text,
        "monitoring_frequency" text,
        "last_inspection_date" date,
        "movement_rate_mm_per_year" numeric(8, 2),
        "has_early_warning_system" boolean DEFAULT false,
        "early_warning_system_details" text,
        "mitigation_measures_taken" text,
        "mitigation_effectiveness" text,
        "proposed_future_measures" text,
        "stabilization_methods_used" text,
        "drainage_improvements" text,
        "vegetation_management" text,
        "evacuation_plan_exists" boolean DEFAULT false,
        "evacuation_plan_details" text,
        "emergency_response_actions" text,
        "recovery_efforts" text,
        "relief_provided_details" text,
        "resettlement_details" text,
        "compensation_provided_npr" numeric(14, 2),
        "lead_agency" text,
        "supporting_agencies" text,
        "local_contact_person" text,
        "local_contact_phone" text,
        "environmental_impacts" text,
        "hydrological_changes" text,
        "proximity_to_water_bodies" text,
        "scientific_studies_conducted" text,
        "research_institutions_involved" text,
        "has_geotechnical_data" boolean DEFAULT false,
        "has_drone_imagery" boolean DEFAULT false,
        "has_satellite_imagery" boolean DEFAULT false,
        "community_awareness_level" text,
        "community_mitigation_participation" text,
        "community_training_conducted" boolean DEFAULT false,
        "community_training_details" text,
        "estimated_mitigation_cost_npr" numeric(14, 2),
        "allocated_budget_npr" numeric(14, 2),
        "funding_source" text,
        "linked_disaster_management_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_evacuation_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "additional_notes" text,
        "historical_incidents" text,
        "reference_materials" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "affected_area" geometry (Polygon, 4326),
        "danger_zone" geometry (Polygon, 4326),
        "monitoring_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_river_erosion_area" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "ward_number" integer,
        "location" text,
        "location_description" text,
        "river_name" text NOT NULL,
        "river_section" text,
        "river_type" "river_type",
        "erosion_severity" "erosion_severity" NOT NULL,
        "erosion_status" "erosion_status" NOT NULL,
        "initial_occurrence_date" date,
        "most_recent_assessment_date" date,
        "affected_length_m" numeric(10, 2),
        "eroded_area_sq_m" numeric(14, 2),
        "average_erosion_rate_m_per_year" numeric(6, 2),
        "maximum_erosion_rate_m_per_year" numeric(6, 2),
        "bank_height_m" numeric(6, 2),
        "channel_width_m" numeric(8, 2),
        "average_water_velocity_mps" numeric(6, 2),
        "river_bed_material" text,
        "river_bank_material" text,
        "average_flow_cumecs_dry" numeric(10, 3),
        "average_flow_cumecs_wet" numeric(10, 3),
        "flood_frequency" text,
        "last_major_flood_date" date,
        "flood_recurrence" text,
        "sediment_load_description" text,
        "land_area_lost_sq_m" numeric(14, 2),
        "agricultural_land_lost_sq_m" numeric(14, 2),
        "residential_land_lost_sq_m" numeric(14, 2),
        "forest_land_lost_sq_m" numeric(14, 2),
        "public_land_lost_sq_m" numeric(14, 2),
        "affected_families_count" integer,
        "displaced_people_count" integer,
        "buildings_at_risk_count" integer,
        "buildings_lost_count" integer,
        "infrastructure_affected" text,
        "roads_affected_km" numeric(8, 2),
        "bridges_affected" text,
        "water_supply_affected" text,
        "irrigation_canals_affected_km" numeric(8, 2),
        "electrical_infrastructure_affected" text,
        "economic_loss_estimate_npr" numeric(14, 2),
        "risk_level" text,
        "future_risk_assessment" text,
        "vulnerable_structures" text,
        "potential_impact_zone" text,
        "estimated_risk_population" integer,
        "is_being_monitored" boolean DEFAULT false,
        "monitoring_methods" text,
        "monitoring_frequency" text,
        "last_inspection_date" date,
        "has_river_gauges" boolean DEFAULT false,
        "gauge_locations" text,
        "has_early_warning_system" boolean DEFAULT false,
        "early_warning_system_details" text,
        "mitigation_measures_taken" text,
        "mitigation_effectiveness" text,
        "embankment_details" text,
        "embankment_length_m" numeric(10, 2),
        "gabion_boxes_installed" boolean DEFAULT false,
        "gabion_box_length_m" numeric(10, 2),
        "bio_engineering_solutions" text,
        "channel_regulation_works" text,
        "spurs_details" text,
        "spurs_count" integer,
        "vegetation_planting" text,
        "other_control_measures" text,
        "proposed_future_measures" text,
        "emergency_response_actions" text,
        "recovery_efforts" text,
        "relief_provided_details" text,
        "resettlement_details" text,
        "compensation_provided_npr" numeric(14, 2),
        "lead_agency" text,
        "supporting_agencies" text,
        "local_contact_person" text,
        "local_contact_phone" text,
        "community_awareness_level" text,
        "community_mitigation_participation" text,
        "community_training_conducted" boolean DEFAULT false,
        "community_training_details" text,
        "environmental_impacts" text,
        "biodiversity_impacts" text,
        "aquatic_ecosystem_changes" text,
        "water_quality_changes" text,
        "sedimentation_issues" text,
        "estimated_mitigation_cost_npr" numeric(14, 2),
        "allocated_budget_npr" numeric(14, 2),
        "funding_source" text,
        "annual_maintenance_cost_npr" numeric(14, 2),
        "linked_disaster_management_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_health_facilities" jsonb DEFAULT '[]'::jsonb,
        "linked_evacuation_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_roads" jsonb DEFAULT '[]'::jsonb,
        "linked_settlements" jsonb DEFAULT '[]'::jsonb,
        "linked_rivers" jsonb DEFAULT '[]'::jsonb,
        "linked_flooded_areas" jsonb DEFAULT '[]'::jsonb,
        "scientific_studies_conducted" text,
        "research_institutions_involved" text,
        "historical_erosion_data" text,
        "additional_notes" text,
        "seasonal_variations" text,
        "reference_materials" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "affected_area" geometry (Polygon, 4326),
        "erosion_line" geometry (LineString, 4326),
        "protection_structures" geometry (MultiLineString, 4326),
        "monitoring_points" geometry (MultiPoint, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_electricity_generation_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "generation_type" "generation_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "river_basin" text,
        "river_name" text,
        "capacity_mw" numeric(10, 3) NOT NULL,
        "operational_status" "operational_status" NOT NULL,
        "commissioned_date" date,
        "license_number" varchar(50),
        "licensing_authority" text,
        "license_issue_date" date,
        "license_expiry_date" date,
        "ownership_type" "ownership_type" NOT NULL,
        "owner_organization" text,
        "operator_organization" text,
        "design_discharge_cumecs" numeric(10, 3),
        "gross_head_m" numeric(10, 2),
        "net_head_m" numeric(10, 2),
        "turbine_type" text,
        "turbine_count" integer,
        "generator_capacity_kva" numeric(10, 2),
        "generator_type" text,
        "generator_count" integer,
        "transformer_count" integer,
        "main_transformer_capacity_mva" numeric(10, 2),
        "has_reservoir" boolean DEFAULT false,
        "reservoir_capacity_million_cubic_meters" numeric(12, 3),
        "has_dam" boolean DEFAULT false,
        "dam_height_m" numeric(8, 2),
        "dam_length_m" numeric(8, 2),
        "dam_type" text,
        "canal_length_meters" numeric(10, 2),
        "has_penstock" boolean DEFAULT false,
        "penstock_length_meters" numeric(10, 2),
        "penstock_diameter_meters" numeric(6, 2),
        "penstock_material" text,
        "design_efficiency_percent" numeric(5, 2),
        "is_micro_hydro" boolean DEFAULT false,
        "service_area_details" text,
        "households_served" integer,
        "beneficiary_population" integer,
        "community_contribution" text,
        "annual_generation_gwh" numeric(12, 3),
        "design_energy_gwh" numeric(12, 3),
        "power_factor_percent" numeric(5, 2),
        "grid_connected" boolean DEFAULT true,
        "voltage_level_kv" integer NOT NULL,
        "transmission_line_details" text,
        "transmission_line_length_km" numeric(8, 2),
        "interconnection_substation" text,
        "environmental_impact_assessment" boolean DEFAULT false,
        "environmental_mitigation_measures" text,
        "minimum_flow_release_percent" numeric(5, 2),
        "fish_ladder" boolean DEFAULT false,
        "tree_planting_compensation" integer,
        "carbon_offset_tons_per_year" numeric(10, 2),
        "total_staff_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "security_staff_count" integer,
        "local_employment_count" integer,
        "total_project_cost_npr" numeric(18, 2),
        "annual_revenue_million_npr" numeric(14, 2),
        "power_purchase_agreement" boolean DEFAULT false,
        "power_purchase_rate_npr_per_unit" numeric(8, 4),
        "power_purchase_agreement_expiry_date" date,
        "royalty_payment_million_npr" numeric(14, 2),
        "has_security_system" boolean DEFAULT true,
        "security_system_details" text,
        "has_fire_safety_measures" boolean DEFAULT true,
        "fire_safety_details" text,
        "emergency_response_plan" boolean DEFAULT false,
        "safety_trainings" text,
        "has_accident_history" boolean DEFAULT false,
        "accident_details" text,
        "maintenance_schedule" text,
        "last_major_maintenance" date,
        "planned_outages" text,
        "performance_issues" text,
        "upgrade_plans" text,
        "refurbishment_history" text,
        "local_benefit_sharing_mechanism" text,
        "community_development_programs" text,
        "local_complaint_mechanism" text,
        "corporate_social_responsibility" text,
        "access_road_condition" text,
        "accessibility_details" text,
        "nearest_town_distance_km" numeric(6, 2),
        "has_scada" boolean DEFAULT false,
        "automation_level" text,
        "remote_operation_capability" boolean DEFAULT false,
        "monitoring_system" text,
        "plant_manager_name" text,
        "contact_phone" text,
        "emergency_contact_phone" text,
        "email" text,
        "website_url" text,
        "operational_challenges" text,
        "environmental_challenges" text,
        "social_challenges" text,
        "technical_challenges" text,
        "expansion_plans" text,
        "future_capacity_mw" numeric(10, 3),
        "rehabilitation_needs" text,
        "linked_substations" jsonb DEFAULT '[]'::jsonb,
        "linked_transformers" jsonb DEFAULT '[]'::jsonb,
        "linked_water_bodies" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "facility_area" geometry (Polygon, 4326),
        "reservoir_area" geometry (Polygon, 4326),
        "service_area_coverage" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_electricity_substation" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "substation_type" "substation_type" NOT NULL,
        "substation_class" "substation_class" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "primary_voltage_kv" integer NOT NULL,
        "secondary_voltage_kv" integer NOT NULL,
        "transformation_capacity_mva" numeric(10, 2) NOT NULL,
        "operational_status" "operational_status" NOT NULL,
        "commissioned_date" date,
        "ownership_type" "ownership_type" NOT NULL,
        "owner_organization" text,
        "operator_organization" text,
        "bus_configuration" text,
        "number_of_bays" integer,
        "number_of_transformers" integer,
        "transformer_details" text,
        "has_capacitor_banks" boolean DEFAULT false,
        "capacitor_banks_details" text,
        "has_reactors" boolean DEFAULT false,
        "reactors_details" text,
        "has_switchgear" boolean DEFAULT true,
        "switchgear_type" text,
        "breaker_count" integer,
        "breaker_type" text,
        "disconnector_count" integer,
        "has_earth_switch" boolean DEFAULT true,
        "has_surge_arresters" boolean DEFAULT true,
        "surge_arrester_details" text,
        "has_metering_equipment" boolean DEFAULT true,
        "metering_equipment_details" text,
        "has_protection_relays" boolean DEFAULT true,
        "protection_relays_type" text,
        "reliability_index" numeric(5, 2),
        "incoming_feeders" integer,
        "outgoing_feeders" integer,
        "incoming_transmission_lines" text,
        "outgoing_transmission_lines" text,
        "connected_generation_sources" text,
        "connected_substations" text,
        "grid_connectivity" boolean DEFAULT true,
        "isolation_capability" boolean DEFAULT true,
        "total_area_sq_m" numeric(10, 2),
        "has_boundary_wall" boolean DEFAULT true,
        "has_control_building" boolean DEFAULT true,
        "building_condition" text,
        "construction_year" integer,
        "last_renovated_year" integer,
        "control_type" text,
        "has_scada" boolean DEFAULT false,
        "scada_system_details" text,
        "has_remote_control" boolean DEFAULT false,
        "has_distance_telemetry" boolean DEFAULT false,
        "communication_system" text,
        "has_dcs" boolean DEFAULT false,
        "automation_level" text,
        "monitoring_parameters" text,
        "has_fire_protection" boolean DEFAULT true,
        "fire_protection_system" text,
        "has_lightning_protection" boolean DEFAULT true,
        "lightning_protection_details" text,
        "security_system" text,
        "has_cctv" boolean DEFAULT false,
        "has_perimeter_alarm" boolean DEFAULT false,
        "has_manned_security" boolean DEFAULT true,
        "security_personnel_count" integer,
        "emergency_response_procedure" boolean DEFAULT false,
        "safety_trainings" text,
        "accident_history" text,
        "grounding_system" text,
        "grounding_resistance_ohm" numeric(6, 2),
        "insulation_coordination_level" text,
        "basic_insulation_level_kv" integer,
        "power_quality_monitoring" boolean DEFAULT false,
        "harmonic_distortion_percent" numeric(5, 2),
        "voltage_regulation_percent" numeric(5, 2),
        "power_factor_correction" boolean DEFAULT false,
        "power_factor_value" numeric(4, 2),
        "total_staff_count" integer,
        "technical_staff_count" integer,
        "administrative_staff_count" integer,
        "security_staff_count" integer,
        "operational_shifts" integer,
        "staffing_per_shift" integer,
        "has_sound_proofing" boolean DEFAULT false,
        "noise_level_db" numeric(5, 2),
        "oil_containment_system" boolean DEFAULT false,
        "oil_containment_details" text,
        "pcb_status" text,
        "sf6_gas_amount_kg" numeric(8, 2),
        "environmental_impact_assessment" boolean DEFAULT false,
        "environmental_mitigation_measures" text,
        "maintenance_schedule" text,
        "last_major_maintenance" date,
        "planned_outages" text,
        "unplanned_outages" text,
        "maintenance_responsibility" text,
        "condition_monitoring_system" text,
        "predictive_maintenance_capability" boolean DEFAULT false,
        "total_project_cost_npr" numeric(18, 2),
        "annual_operating_cost_npr" numeric(14, 2),
        "annual_maintenance_cost_npr" numeric(14, 2),
        "depreciation_schedule" text,
        "asset_life_years" integer,
        "peak_load_mw" numeric(10, 2),
        "average_load_mw" numeric(10, 2),
        "load_factor" numeric(5, 2),
        "load_growth_rate_percent" numeric(5, 2),
        "load_profile" text,
        "annual_outage_hours" numeric(8, 2),
        "planned_outage_hours" numeric(8, 2),
        "unplanned_outage_hours" numeric(8, 2),
        "saidi_minutes_per_year" numeric(8, 2),
        "saifi_interruptions_per_year" numeric(6, 2),
        "main_failure_causes" text,
        "access_road_condition" text,
        "accessibility_details" text,
        "nearest_town_distance_km" numeric(6, 2),
        "available_transportation_modes" text,
        "has_water_supply" boolean DEFAULT true,
        "has_sanitation" boolean DEFAULT true,
        "has_backup_power_supply" boolean DEFAULT true,
        "backup_power_type" text,
        "has_staff_accommodation" boolean DEFAULT false,
        "in_charge_person_name" text,
        "contact_phone" text,
        "emergency_contact_phone" text,
        "email" text,
        "operational_challenges" text,
        "technical_challenges" text,
        "maintenance_challenges" text,
        "security_challenges" text,
        "upgrade_plans" text,
        "expansion_plans" text,
        "future_capacity_mva" numeric(10, 2),
        "linked_generation_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_transformers" jsonb DEFAULT '[]'::jsonb,
        "linked_substations" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "facility_area" geometry (Polygon, 4326),
        "service_area_coverage" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_electricity_transformer" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "transformer_type" "transformer_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "installed_at_substation_id" varchar(36),
        "installed_at_substation_name" text,
        "is_pole_mount" boolean DEFAULT false,
        "is_ground_mount" boolean DEFAULT false,
        "has_dedicated_enclosure" boolean DEFAULT false,
        "serial_number" varchar(100),
        "manufacturer" text,
        "manufacturing_year" integer,
        "capacity_kva" numeric(10, 2) NOT NULL,
        "primary_voltage_v" integer NOT NULL,
        "secondary_voltage_v" integer NOT NULL,
        "tertiary_voltage_v" integer,
        "phases" integer NOT NULL,
        "frequency_hz" integer NOT NULL,
        "operational_status" "operational_status" NOT NULL,
        "installation_date" date,
        "commissioned_date" date,
        "ownership_type" "ownership_type" NOT NULL,
        "owner_organization" text,
        "operator_organization" text,
        "impedance_percent" numeric(5, 2),
        "cooling_type" "transformer_cooling" NOT NULL,
        "insulation_type" "insulation_type" NOT NULL,
        "insulation_class" text,
        "temperature_rise_limit_celsius" integer,
        "vector_group" text,
        "tap_changer_type" text,
        "tap_positions" integer,
        "tap_range" text,
        "no_load_losses_watts" numeric(10, 2),
        "load_losses_watts" numeric(10, 2),
        "efficiency_percent" numeric(5, 2),
        "weight_kg" numeric(10, 2),
        "oil_weight_kg" numeric(10, 2),
        "oil_type" text,
        "has_bushings" boolean DEFAULT true,
        "bushing_type" text,
        "has_conservator" boolean DEFAULT false,
        "has_breather_system" boolean DEFAULT false,
        "has_buchholz_relay" boolean DEFAULT false,
        "has_pressure_relief_device" boolean DEFAULT false,
        "has_oil_level_indicator" boolean DEFAULT false,
        "has_temperature_indicator" boolean DEFAULT false,
        "has_cooling_fans" boolean DEFAULT false,
        "has_oil_pump" boolean DEFAULT false,
        "has_fuses" boolean DEFAULT false,
        "fuse_rating" text,
        "has_circuit_breaker" boolean DEFAULT false,
        "circuit_breaker_type" text,
        "has_lightning_arresters" boolean DEFAULT false,
        "lightning_arrester_type" text,
        "has_earthing_protection" boolean DEFAULT true,
        "earthing_details" text,
        "has_overload_protection" boolean DEFAULT true,
        "has_short_circuit_protection" boolean DEFAULT true,
        "has_meter" boolean DEFAULT false,
        "meter_type" text,
        "has_remote_monitoring" boolean DEFAULT false,
        "monitoring_parameters" text,
        "has_alarm_system" boolean DEFAULT false,
        "alarm_system_details" text,
        "maximum_load_kva" numeric(10, 2),
        "average_load_kva" numeric(10, 2),
        "load_factor_percent" numeric(5, 2),
        "number_of_consumers" integer,
        "peak_load_time" text,
        "load_profile" text,
        "maintenance_schedule" text,
        "last_maintenance_date" date,
        "maintenance_responsibility" text,
        "oil_test_frequency" text,
        "last_oil_test" date,
        "oil_condition" text,
        "insulation_resistance_mega_ohms" numeric(10, 2),
        "last_insulation_test" date,
        "acquisition_cost_npr" numeric(14, 2),
        "installation_cost_npr" numeric(14, 2),
        "annual_maintenance_cost_npr" numeric(14, 2),
        "depreciation" text,
        "estimated_life_years" integer,
        "remaining_life_years" integer,
        "environmentally_certified" boolean DEFAULT false,
        "environmental_certification_type" text,
        "pcb_free" boolean DEFAULT true,
        "containment_system" boolean DEFAULT false,
        "containment_details" text,
        "noise_level_db" numeric(5, 2),
        "fenced_enclosure" boolean DEFAULT false,
        "locked_enclosure" boolean DEFAULT false,
        "warning_signs_posted" boolean DEFAULT true,
        "security_measures" text,
        "fire_protection" text,
        "accident_history" text,
        "residential_area_served" boolean DEFAULT false,
        "commercial_area_served" boolean DEFAULT false,
        "industrial_area_served" boolean DEFAULT false,
        "service_area_description" text,
        "households_served" integer,
        "responsible_person_name" text,
        "contact_phone" text,
        "emergency_contact_phone" text,
        "email" text,
        "operational_issues" text,
        "overloading_issues" boolean DEFAULT false,
        "voltage_fluctuation_issues" boolean DEFAULT false,
        "frequent_failures" boolean DEFAULT false,
        "failure_causes" text,
        "replacement_planned" boolean DEFAULT false,
        "planned_replacement_year" integer,
        "upgrade_planned" boolean DEFAULT false,
        "planned_upgrade_capacity_kva" numeric(10, 2),
        "linked_substation" jsonb DEFAULT '[]'::jsonb,
        "linked_poles" jsonb DEFAULT '[]'::jsonb,
        "linked_feeders" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "service_area_coverage" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_brick_industry" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "kiln_type" "brick_kiln_type" NOT NULL,
        "status" "brick_industry_status" NOT NULL,
        "technology_level" "brick_technology_level",
        "established_year" integer,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "vat_number" varchar(20),
        "registration_authority" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark_description" text,
        "owner_name" text,
        "manager_name" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "total_land_area_sqm" numeric(12, 2),
        "kiln_area_sqm" numeric(12, 2),
        "molde_area_sqm" numeric(12, 2),
        "drying_area_sqm" numeric(12, 2),
        "storage_area_sqm" numeric(12, 2),
        "chimney_height_m" numeric(6, 2),
        "chimney_diameter_m" numeric(6, 2),
        "has_stack_emission_control" boolean DEFAULT false,
        "emission_control_details" text,
        "annual_production_capacity_count" integer,
        "actual_annual_production_count" integer,
        "capacity_utilization_percent" numeric(5, 2),
        "operational_months_per_year" integer,
        "operational_days_per_season" integer,
        "seasonal_start_month" text,
        "seasonal_end_month" text,
        "primary_brick_type" text,
        "brick_size_standards" text,
        "brick_colors" text,
        "specialized_bricks" text,
        "brick_quality_standards" text,
        "has_brick_testing" boolean DEFAULT false,
        "testing_facilities" text,
        "clay_source_type" text,
        "distance_to_clay_source_km" numeric(6, 2),
        "annual_clay_consumption_tons" numeric(10, 2),
        "has_permission_for_clay_sourcing" boolean DEFAULT false,
        "other_raw_materials" text,
        "raw_material_sourcing_challenges" text,
        "primary_fuel_type" text,
        "secondary_fuel_type" text,
        "annual_fuel_consumption_tons" numeric(10, 2),
        "fuel_source_details" text,
        "fuel_cost_per_ton_npr" numeric(10, 2),
        "electricity_consumption_kwh" numeric(10, 2),
        "has_alt_energy_source" boolean DEFAULT false,
        "alt_energy_source_details" text,
        "water_source_type" text,
        "water_consumption_liters_per_day" numeric(10, 2),
        "has_water_conservation_measures" boolean DEFAULT false,
        "water_conservation_details" text,
        "permanent_employees" integer,
        "seasonal_employees" integer,
        "male_employees" integer,
        "female_employees" integer,
        "child_labor_issues" text,
        "local_employee_percentage" numeric(5, 2),
        "migrant_employee_percentage" numeric(5, 2),
        "migrant_employee_origin" text,
        "has_molding_machines" boolean DEFAULT false,
        "manual_molding_workers" integer,
        "machine_molding_workers" integer,
        "housing_provided" boolean DEFAULT true,
        "housing_condition" text,
        "drinking_water_provided" boolean DEFAULT true,
        "sanitation_facilities" text,
        "safety_equipment_provided" boolean DEFAULT false,
        "safety_measures" text,
        "health_issues_reported" text,
        "wage_rate_per_thousand_bricks_npr" numeric(10, 2),
        "environmental_clearance_status" text,
        "has_environmental_assessment" boolean DEFAULT false,
        "air_pollution_level" "air_pollution_level",
        "has_pollution_control_measures" boolean DEFAULT false,
        "pollution_control_measures_details" text,
        "dust_suppression_methods" text,
        "topsoil_preservation_method" text,
        "land_reclamation_plan" boolean DEFAULT false,
        "land_reclamation_details" text,
        "setup_investment_npr" numeric(14, 2),
        "annual_operating_cost_npr" numeric(14, 2),
        "annual_turnover_npr" numeric(14, 2),
        "annual_profit_npr" numeric(14, 2),
        "average_selling_price_per_brick_npr" numeric(6, 2),
        "has_bank_loan" boolean DEFAULT false,
        "loan_amount_npr" numeric(14, 2),
        "major_markets" text,
        "brick_transport_method" text,
        "has_own_transport_vehicles" boolean DEFAULT false,
        "transport_vehicle_count" integer,
        "average_monthly_dispatch_thousands" integer,
        "storage_capacity_thousands" integer,
        "supply_chain_challenges" text,
        "has_molding_machinery" boolean DEFAULT false,
        "molding_machinery_type" text,
        "has_mechanized_clay_sourcing" boolean DEFAULT false,
        "has_mechanized_transport" boolean DEFAULT false,
        "fuel_efficiency_measures" text,
        "energy_conservation_measures" text,
        "has_operating_permit" boolean DEFAULT true,
        "permit_validity_date" date,
        "last_inspection_date" date,
        "inspection_authority" text,
        "compliance_status" text,
        "regulatory_issues_faced" text,
        "upgradation_history" text,
        "future_upgradation_plans" text,
        "cleaner_production_interest" boolean DEFAULT false,
        "technical_assistance_needs" text,
        "annual_co2_emissions_tons" numeric(10, 2),
        "has_emission_reduction_targets" boolean DEFAULT false,
        "emission_reduction_details" text,
        "climate_change_vulnerability" text,
        "adaptation_measures" text,
        "relation_with_local_community" text,
        "community_complaints_received" text,
        "community_development_initiatives" text,
        "has_csr" boolean DEFAULT false,
        "csr_activities" text,
        "industry_association_membership" text,
        "government_support_received" boolean DEFAULT false,
        "government_support_details" text,
        "ngo_support_received" boolean DEFAULT false,
        "ngo_support_details" text,
        "major_challenges" text,
        "policy_constraints" text,
        "technology_constraints" text,
        "financial_constraints" text,
        "market_constraints" text,
        "expansion_plans" text,
        "diversification_plans" text,
        "sustainability_plans" text,
        "succession_planning" text,
        "linked_construction_projects" jsonb DEFAULT '[]'::jsonb,
        "linked_builder_suppliers" jsonb DEFAULT '[]'::jsonb,
        "linked_transporters" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "facility_boundary" geometry (Polygon, 4326),
        "kiln_location" geometry (Point, 4326),
        "chimney_location" geometry (Point, 4326),
        "clay_sourcing_area" geometry (MultiPolygon, 4326),
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_dairy_industry" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "industry_type" "dairy_industry_type" NOT NULL,
        "operation_scale" "dairy_operation_scale" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "establishment_status" "establishment_status" DEFAULT 'OPERATIONAL',
        "established_year" integer,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "vat_registered" boolean DEFAULT false,
        "has_food_license" boolean DEFAULT false,
        "food_license_number" varchar(50),
        "ownership_type" text,
        "owner_name" text,
        "owner_contact_number" text,
        "owner_email" text,
        "is_woman_owned" boolean DEFAULT false,
        "is_cooperative_owned" boolean DEFAULT false,
        "cooperative_details" text,
        "farmer_involvement" text,
        "contact_person" text,
        "contact_position" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "total_land_area_sqm" numeric(10, 2),
        "covered_area_sqm" numeric(10, 2),
        "building_count" integer,
        "building_ownership" text,
        "monthly_rent_npr" numeric(10, 2),
        "processing_area_sqm" numeric(10, 2),
        "storage_area_sqm" numeric(10, 2),
        "cold_storage_area_sqm" numeric(10, 2),
        "milk_source" "milk_source" NOT NULL,
        "daily_milk_collection_liters" numeric(10, 2),
        "milk_collection_centers" integer,
        "milk_collection_center_locations" text,
        "serving_farmer_count" integer,
        "average_milk_price_per_liter_npr" numeric(8, 2),
        "milk_procurement_system" text,
        "milk_quality_testing_method" text,
        "milk_preservation_method" text,
        "has_chilling_facility" boolean DEFAULT false,
        "chilling_capacity_liters" numeric(10, 2),
        "daily_processing_capacity_liters" numeric(10, 2),
        "actual_daily_processing_liters" numeric(10, 2),
        "operating_days_per_week" integer,
        "operating_hours_per_day" integer,
        "seasonality_pattern" text,
        "peak_season_months" text,
        "lean_season_months" text,
        "products_manufactured" text,
        "main_product_types" text,
        "packaging_types" text,
        "shelf_life_days" integer,
        "has_own_brand" boolean DEFAULT false,
        "brand_names" text,
        "production_capacity_details" text,
        "product_certifications" text,
        "has_premium_products" boolean DEFAULT false,
        "premium_product_details" text,
        "has_pasteurization" boolean DEFAULT true,
        "pasteurization_method" text,
        "has_homogenization" boolean DEFAULT false,
        "has_automated_processing" boolean DEFAULT false,
        "automation_level" text,
        "major_equipment_types" text,
        "laboratory_facilities" text,
        "quality_testing_equipment" text,
        "packaging_equipment" text,
        "refrigeration_capacity" text,
        "technical_support_available" text,
        "total_employees" integer,
        "permanent_employees" integer,
        "temporary_employees" integer,
        "male_employees" integer,
        "female_employees" integer,
        "technical_staff" integer,
        "quality_control_staff" integer,
        "administrative_staff" integer,
        "has_food_technology_expert" boolean DEFAULT false,
        "staff_training_programs" text,
        "initial_investment_npr" numeric(14, 2),
        "annual_turnover_npr" numeric(14, 2),
        "annual_profit_npr" numeric(14, 2),
        "has_loan_financing" boolean DEFAULT false,
        "loan_amount_npr" numeric(14, 2),
        "loan_source_details" text,
        "receives_subsidies" boolean DEFAULT false,
        "subsidy_details" text,
        "has_quality_control_system" boolean DEFAULT true,
        "quality_standards" text,
        "has_haccp" boolean DEFAULT false,
        "has_iso" boolean DEFAULT false,
        "iso_certification_type" text,
        "quality_testing_frequency" text,
        "products_return_rate" numeric(5, 2),
        "has_laboratory_testing" boolean DEFAULT false,
        "laboratory_testing_details" text,
        "has_electricity" boolean DEFAULT true,
        "electricity_source" text,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "water_source_type" text,
        "water_storage_capacity_liters" integer,
        "water_treatment_system" text,
        "waste_management_system" text,
        "has_cold_chain" boolean DEFAULT true,
        "cold_storage_capacity_liters" numeric(10, 2),
        "refrigerated_transport_vehicles" integer,
        "temperature_monitoring_system" text,
        "marketing_channels" text,
        "distribution_network" text,
        "geographical_coverage" text,
        "export_markets_if_any" text,
        "has_direct_retailing" boolean DEFAULT false,
        "retail_outlet_count" integer,
        "major_buyers" text,
        "customer_segments" text,
        "major_challenges" text,
        "competition_details" text,
        "seasonal_challenges" text,
        "milk_supply_challenges" text,
        "quality_challenges" text,
        "market_challenges" text,
        "received_technical_support" text,
        "government_support_received" text,
        "ngo_support_received" text,
        "support_needed" text,
        "training_needs" text,
        "expansion_plans" text,
        "product_diversification_plans" text,
        "technology_upgrade_plans" text,
        "market_expansion_plans" text,
        "waste_generated_types" text,
        "waste_disposal_methods" text,
        "has_renewable_energy_use" boolean DEFAULT false,
        "renewable_energy_details" text,
        "environmental_concerns" text,
        "environmental_certifications" text,
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "road_access_quality" text,
        "new_product_development" text,
        "research_collaborations" text,
        "innovation_initiatives" text,
        "food_safety_measures" text,
        "workplace_safety_measures" text,
        "has_regular_food_safety_inspection" boolean DEFAULT false,
        "inspection_frequency" text,
        "last_inspection_date" date,
        "member_of_dairy_association" boolean DEFAULT false,
        "association_details" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_farmer_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_milk_collection_centers" jsonb DEFAULT '[]'::jsonb,
        "linked_retailers" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "premises_boundary" geometry (Polygon, 4326),
        "building_footprints" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_furniture_industry" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "industry_type" "furniture_industry_type" NOT NULL,
        "operation_scale" "operation_scale" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "establishment_status" "establishment_status" DEFAULT 'OPERATIONAL',
        "established_year" integer,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "vat_registered" boolean DEFAULT false,
        "ownership_type" text,
        "owner_name" text,
        "owner_contact_number" text,
        "owner_email" text,
        "is_woman_owned" boolean DEFAULT false,
        "is_minority_owned" boolean DEFAULT false,
        "ownership_ethnicity" text,
        "contact_person" text,
        "contact_position" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "total_land_area_sqm" numeric(10, 2),
        "covered_area_sqm" numeric(10, 2),
        "open_area_sqm" numeric(10, 2),
        "building_count" integer,
        "building_ownership" text,
        "monthly_rent_npr" numeric(10, 2),
        "has_showroom" boolean DEFAULT false,
        "showroom_area_sqm" numeric(10, 2),
        "has_workshop" boolean DEFAULT true,
        "workshop_area_sqm" numeric(10, 2),
        "has_storage" boolean DEFAULT true,
        "storage_area_sqm" numeric(10, 2),
        "production_volume_category" "production_volume",
        "monthly_production_capacity" text,
        "major_products_produced" text,
        "product_categories" text,
        "materials_sourcing" text,
        "major_raw_materials" text,
        "wood_types" text,
        "other_materials" text,
        "quality_standards" text,
        "certifications" text,
        "operating_hours" text,
        "working_days" text,
        "has_power_tools" boolean DEFAULT true,
        "power_tool_details" text,
        "has_woodworking_machines" boolean DEFAULT true,
        "woodworking_machine_types" text,
        "has_finishing_equipment" boolean DEFAULT true,
        "finishing_equipment_details" text,
        "has_upholstery_equipment" boolean DEFAULT false,
        "upholstery_equipment_details" text,
        "has_cnc_machines" boolean DEFAULT false,
        "cnc_machine_count" integer,
        "estimated_equipment_value_npr" numeric(14, 2),
        "total_employees" integer,
        "permanent_employees" integer,
        "temporary_employees" integer,
        "male_employees" integer,
        "female_employees" integer,
        "other_gender_employees" integer,
        "skilled_laborers" integer,
        "unskilled_laborers" integer,
        "average_monthly_wage_npr" numeric(10, 2),
        "employees_benefits" text,
        "has_training_programs" boolean DEFAULT false,
        "training_program_details" text,
        "investment_amount_npr" numeric(14, 2),
        "annual_turnover_npr" numeric(14, 2),
        "annual_profit_npr" numeric(14, 2),
        "export_percentage" numeric(5, 2),
        "domestic_sale_percentage" numeric(5, 2),
        "has_loan_facility" boolean DEFAULT false,
        "loan_amount_npr" numeric(14, 2),
        "financing_source" text,
        "has_electricity" boolean DEFAULT true,
        "electricity_source" text,
        "power_capacity_kw" numeric(10, 2),
        "has_water_supply" boolean DEFAULT true,
        "water_source" text,
        "has_waste_management" boolean DEFAULT false,
        "waste_management_type" text,
        "has_fire_safety_system" boolean DEFAULT false,
        "fire_safety_details" text,
        "has_dust_collection" boolean DEFAULT false,
        "dust_collection_details" text,
        "has_ventilation_system" boolean DEFAULT false,
        "ventilation_system_details" text,
        "major_markets" text,
        "sales_channels" text,
        "has_retail_outlet" boolean DEFAULT false,
        "retail_outlet_count" integer,
        "retail_outlet_locations" text,
        "export_markets" text,
        "major_customers" text,
        "offer_custom_orders" boolean DEFAULT true,
        "has_online_presence" boolean DEFAULT false,
        "e_commerce_details" text,
        "marketing_strategies" text,
        "supply_chain_challenges" text,
        "raw_material_source_region" text,
        "imported_material_percentage" numeric(5, 2),
        "local_material_percentage" numeric(5, 2),
        "main_suppliers_details" text,
        "inventory_management_system" text,
        "has_in_house_design" boolean DEFAULT false,
        "design_capabilities" text,
        "new_product_frequency" text,
        "innovation_practices" text,
        "uses_cad_software" boolean DEFAULT false,
        "cad_software_details" text,
        "uses_sustainable_materials" boolean DEFAULT false,
        "sustainable_materials_details" text,
        "uses_renewable_energy" boolean DEFAULT false,
        "renewable_energy_details" text,
        "has_wood_source_certification" boolean DEFAULT false,
        "wood_certification_type" text,
        "environmental_challenges" text,
        "environmental_initiatives" text,
        "major_challenges" text,
        "government_support_received" text,
        "support_needed" text,
        "future_expansion_plans" text,
        "competition_challenges" text,
        "community_engagement_activities" text,
        "apprenticeship_programs" boolean DEFAULT false,
        "apprenticeship_details" text,
        "collaborations_with_other_businesses" text,
        "industry_association_memberships" text,
        "has_computerized_system" boolean DEFAULT false,
        "software_used" text,
        "digital_marketing_channels" text,
        "online_ordering_system" boolean DEFAULT false,
        "has_health_safety_certification" boolean DEFAULT false,
        "safety_measures" text,
        "accident_history_last_year" integer,
        "worker_insurance_provided" boolean DEFAULT false,
        "complaints_received_last_year" integer,
        "distance_from_main_road_km" numeric(6, 2),
        "distance_from_city_or_bazar_km" numeric(6, 2),
        "public_transport_accessibility" text,
        "road_access_quality" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_industries" jsonb DEFAULT '[]'::jsonb,
        "linked_suppliers_companies" jsonb DEFAULT '[]'::jsonb,
        "linked_retailers" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "premises_boundary" geometry (Polygon, 4326),
        "building_footprints" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_government_announced_industrial_sector" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "sector_type" "industrial_sector_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "announcement_date" date,
        "established_date" date,
        "operational_date" date,
        "government_decree_number" varchar(50),
        "development_status" "development_status" NOT NULL,
        "implementing_agency" text,
        "managing_authority" text,
        "master_plan_exists" boolean DEFAULT false,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "facebook_page" text,
        "twitter_handle" text,
        "director_name" text,
        "director_contact_number" text,
        "management_structure" text,
        "has_management_board" boolean DEFAULT false,
        "management_board_details" text,
        "total_land_area_hectares" numeric(10, 2),
        "developed_area_hectares" numeric(10, 2),
        "undeveloped_area_hectares" numeric(10, 2),
        "expandable_area_hectares" numeric(10, 2),
        "green_area_hectares" numeric(10, 2),
        "land_acquisition_status" text,
        "land_ownership_pattern" text,
        "land_disputes_exists" boolean DEFAULT false,
        "land_disputes_details" text,
        "total_plots" integer,
        "allocated_plots" integer,
        "available_plots" integer,
        "plot_size_ranges_sqm" text,
        "total_industries_operating" integer,
        "total_industries_under_construction" integer,
        "plot_allocation_process" text,
        "land_lease_rate_per_sqm_npr" numeric(10, 2),
        "land_purchase_rate_per_sqm_npr" numeric(10, 2),
        "focus_industry_types" text,
        "allowed_industry_types" text,
        "restricted_industry_types" text,
        "major_industries_present" text,
        "flagship_industries" text,
        "road_infrastructure_status" "facility_condition",
        "internal_roads_km" numeric(6, 2),
        "has_access_to_highway" boolean DEFAULT false,
        "distance_to_highway_km" numeric(6, 2),
        "water_supply_status" "facility_condition",
        "water_supply_capacity_liters_per_day" integer,
        "electricity_supply_status" "facility_condition",
        "power_supply_capacity_mw" numeric(8, 2),
        "has_dedicated_power_substation" boolean DEFAULT false,
        "power_substation_capacity_mva" numeric(8, 2),
        "waste_management_status" "facility_condition",
        "waste_treatment_facilities_details" text,
        "internet_connectivity_status" "facility_condition",
        "has_industrial_sewerage" boolean DEFAULT false,
        "sewerage_capacity" text,
        "distance_to_nearest_city_km" numeric(6, 2),
        "nearest_city_name" text,
        "distance_to_airport_km" numeric(6, 2),
        "nearest_airport_name" text,
        "distance_to_railway_km" numeric(6, 2),
        "nearest_railway_station_name" text,
        "distance_to_dry_port_km" numeric(6, 2),
        "nearest_dry_port_name" text,
        "has_transportation_facilities" boolean DEFAULT false,
        "transportation_facilities_details" text,
        "has_customs_clearance_center" boolean DEFAULT false,
        "has_warehouse_facilities" boolean DEFAULT false,
        "warehouse_capacity_details" text,
        "has_logistics_center" boolean DEFAULT false,
        "has_administrative_building" boolean DEFAULT false,
        "has_bank_branches" boolean DEFAULT false,
        "bank_branches_count" integer,
        "has_customs_office" boolean DEFAULT false,
        "has_one_stop_service_center" boolean DEFAULT false,
        "one_stop_services_details" text,
        "has_training_center" boolean DEFAULT false,
        "has_conference_center" boolean DEFAULT false,
        "has_exhibition_center" boolean DEFAULT false,
        "has_research_facilities" boolean DEFAULT false,
        "has_health_facilities" boolean DEFAULT false,
        "has_fire_station" boolean DEFAULT false,
        "has_business_incubation_center" boolean DEFAULT false,
        "has_business_accelerator" boolean DEFAULT false,
        "has_consulting_services" boolean DEFAULT false,
        "has_labor_recruitment_center" boolean DEFAULT false,
        "has_housing_facilities" boolean DEFAULT false,
        "housing_units_count" integer,
        "has_schools" boolean DEFAULT false,
        "has_daycare_facilities" boolean DEFAULT false,
        "has_shopping_facilities" boolean DEFAULT false,
        "has_recreational_facilities" boolean DEFAULT false,
        "total_investment_amount_npr" numeric(18, 2),
        "foreign_investment_amount_npr" numeric(18, 2),
        "domestic_investment_amount_npr" numeric(18, 2),
        "annual_production_value_npr" numeric(18, 2),
        "annual_export_value_npr" numeric(18, 2),
        "total_jobs_created" integer,
        "direct_employment_count" integer,
        "indirect_employment_count" integer,
        "expected_additional_jobs" integer,
        "contribution_to_local_economy_details" text,
        "tax_incentives" text,
        "custom_duty_exemptions" text,
        "land_subsidies" text,
        "infrastructure_subsidies" text,
        "other_incentives" text,
        "eligibility_requirements" text,
        "applicable_laws" text,
        "special_regulations" text,
        "environmental_compliance_requirements" text,
        "has_environmental_monitoring" boolean DEFAULT false,
        "environmental_monitoring_details" text,
        "development_phase" text,
        "development_timeline_years" integer,
        "current_development_status" text,
        "total_development_cost_npr" numeric(18, 2),
        "invested_amount_so_far_npr" numeric(18, 2),
        "funding_sources_for_development" text,
        "has_expansion_plans" boolean DEFAULT false,
        "expansion_plans_details" text,
        "major_challenges" text,
        "infrastructure_challenges" text,
        "regulatory_challenges" text,
        "market_access_challenges" text,
        "human_resource_challenges" text,
        "impact_on_local_community" text,
        "community_development_initiatives" text,
        "local_skill_development_programs" text,
        "has_displacement_issues" boolean DEFAULT false,
        "displacement_mitigation_measures" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "linked_industries" jsonb DEFAULT '[]'::jsonb,
        "linked_municipality_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_government_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_research_centers" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "sector_boundary" geometry (Polygon, 4326),
        "infrastructure_network" geometry (MultiLineString, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_mill" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "mill_type" "mill_type" NOT NULL,
        "power_source" "mill_power_source" NOT NULL,
        "operational_status" "mill_operational_status" NOT NULL,
        "technology_level" "mill_technology_level",
        "established_year" integer,
        "registration_number" varchar(50),
        "registration_authority" text,
        "is_pan_registered" boolean DEFAULT false,
        "pan_number" varchar(20),
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark_description" text,
        "owner_name" text,
        "operator_name" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "operation_hours_start" time,
        "operation_hours_end" time,
        "operational_days_per_week" integer,
        "is_seasonal_operation" boolean DEFAULT false,
        "seasonal_operation_details" text,
        "weekly_off_day" text,
        "processing_capacity" text,
        "processing_capacity_kg_per_hour" numeric(8, 2),
        "average_daily_production_kg" numeric(8, 2),
        "average_monthly_production_kg" numeric(10, 2),
        "rice_varieties_processed" text,
        "byproduct_utilization" text,
        "has_parboiling_unit" boolean DEFAULT false,
        "has_moisture_testing_equipment" boolean DEFAULT false,
        "has_color_sorter" boolean DEFAULT false,
        "polishing_type" text,
        "oil_seeds_processed" text,
        "oil_extraction_efficiency_percent" numeric(5, 2),
        "oil_filtering_process" text,
        "oil_storage_capacity_liters" numeric(10, 2),
        "water_source_name" text,
        "distance_from_water_source_m" numeric(8, 2),
        "water_flow_rate_liters_per_second" numeric(8, 2),
        "is_traditional_ghatta" boolean DEFAULT false,
        "is_improved_ghatta" boolean DEFAULT false,
        "improvement_type" text,
        "turbine_type" text,
        "grains_processed" text,
        "spices_processed" text,
        "grinding_mechanism_type" text,
        "stone_type" text,
        "facility_area_sqm" numeric(10, 2),
        "building_type" text,
        "building_ownership" text,
        "has_storage_facility" boolean DEFAULT false,
        "storage_capacity_kg" numeric(10, 2),
        "has_weighing_scale" boolean DEFAULT false,
        "weighing_scale_type" text,
        "main_machinery_type" text,
        "machinery_brand" text,
        "machinery_origin" text,
        "machinery_age_years" integer,
        "machinery_condition" text,
        "last_maintenance_date" date,
        "maintenance_frequency" text,
        "has_spare_part_stock" boolean DEFAULT false,
        "power_consumption_kwh" numeric(8, 2),
        "fuel_consumption_liters_per_month" numeric(8, 2),
        "water_consumption_liters_per_day" numeric(10, 2),
        "has_energy_efficiency_measures" boolean DEFAULT false,
        "energy_efficiency_details" text,
        "permanent_employees" integer,
        "temporary_employees" integer,
        "family_members_involved" integer,
        "male_employees" integer,
        "female_employees" integer,
        "skill_requirements" text,
        "customer_base" text,
        "service_area_radius_km" numeric(6, 2),
        "villages_served" text,
        "households_served" integer,
        "has_home_delivery" boolean DEFAULT false,
        "major_competitors" text,
        "services_offered" text,
        "processing_charge_details" text,
        "average_processing_charge_per_kg_npr" numeric(6, 2),
        "payment_methods" text,
        "has_in_kind_payment" boolean DEFAULT false,
        "in_kind_payment_details" text,
        "setup_investment_npr" numeric(12, 2),
        "monthly_operating_cost_npr" numeric(10, 2),
        "monthly_income_npr" numeric(10, 2),
        "profitability_status" text,
        "has_business_loan" boolean DEFAULT false,
        "loan_source_details" text,
        "has_quality_control_measures" boolean DEFAULT false,
        "quality_control_details" text,
        "hygienic_conditions" text,
        "has_waste_management_system" boolean DEFAULT false,
        "waste_management_details" text,
        "has_safety_measures" boolean DEFAULT false,
        "safety_measure_details" text,
        "operational_challenges" text,
        "maintenance_challenges" text,
        "marketing_challenges" text,
        "upgradation_needs" text,
        "receives_government_support" boolean DEFAULT false,
        "government_support_details" text,
        "receives_ngo_support" boolean DEFAULT false,
        "ngo_support_details" text,
        "training_received" text,
        "training_needs" text,
        "historical_significance" text,
        "cultural_significance" text,
        "traditional_practices" text,
        "modernization_steps" text,
        "has_expansion_plans" boolean DEFAULT false,
        "expansion_details" text,
        "has_modernization_plans" boolean DEFAULT false,
        "modernization_details" text,
        "successor_available" boolean DEFAULT false,
        "environmental_impact" text,
        "pollution_mitigation" text,
        "waste_utilization" text,
        "ecofriendly_measures" text,
        "employment_generation" text,
        "service_to_farmers" text,
        "women_involvement" text,
        "contribution_to_local_economy" text,
        "linked_farmers" jsonb DEFAULT '[]'::jsonb,
        "linked_agri_businesses" jsonb DEFAULT '[]'::jsonb,
        "linked_markets" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_textile_industry" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "industry_type" "textile_industry_type" NOT NULL,
        "operation_scale" "textile_operation_scale" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark" text,
        "establishment_status" "establishment_status" DEFAULT 'OPERATIONAL',
        "established_year" integer,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "registered_with" text,
        "registration_date" date,
        "last_renewal_date" date,
        "vat_registered" boolean DEFAULT false,
        "ownership_type" text,
        "owner_name" text,
        "owner_contact_number" text,
        "owner_email" text,
        "is_woman_owned" boolean DEFAULT false,
        "is_minority_owned" boolean DEFAULT false,
        "ownership_ethnicity" text,
        "contact_person" text,
        "contact_position" text,
        "contact_phone" text,
        "alternate_contact_phone" text,
        "contact_email" text,
        "website_url" text,
        "total_land_area_sqm" numeric(10, 2),
        "covered_area_sqm" numeric(10, 2),
        "factory_floor_area_sqm" numeric(10, 2),
        "storage_area_sqm" numeric(10, 2),
        "building_count" integer,
        "building_ownership" text,
        "monthly_rent_npr" numeric(10, 2),
        "has_showroom" boolean DEFAULT false,
        "showroom_area_sqm" numeric(10, 2),
        "production_volume_category" "textile_production_volume",
        "raw_materials_used" text,
        "main_fiber_types" text,
        "production_capacity_kg_per_day" numeric(10, 2),
        "actual_production_kg_per_day" numeric(10, 2),
        "production_capacity_units_per_day" integer,
        "major_product_categories" text,
        "traditional_designs_used" text,
        "modern_designs_ratio" numeric(5, 2),
        "traditional_designs_ratio" numeric(5, 2),
        "spinning_capacity_kg_per_day" numeric(10, 2),
        "weaving_looms_count" integer,
        "loom_types" text,
        "yarn_count_range" text,
        "fabric_types_produce" text,
        "garment_types_produced" text,
        "daily_production_capacity_pieces" integer,
        "sewing_machine_count" integer,
        "cutting_tables_count" integer,
        "has_pattern_making_facility" boolean DEFAULT false,
        "has_computerized_design" boolean DEFAULT false,
        "dyeing_capacity_kg_per_day" numeric(10, 2),
        "dyeing_process_types" text,
        "finishing_process_types" text,
        "printing_capacity_m_per_day" numeric(10, 2),
        "printing_techniques_used" text,
        "major_machinery_types" text,
        "has_modern_machinery" boolean DEFAULT false,
        "machinery_condition" text,
        "machinery_age_ten_years" boolean DEFAULT false,
        "automation_level" text,
        "maintenance_frequency" text,
        "estimated_machinery_value_npr" numeric(14, 2),
        "total_employees" integer,
        "permanent_employees" integer,
        "temporary_employees" integer,
        "male_employees" integer,
        "female_employees" integer,
        "other_gender_employees" integer,
        "skilled_laborers" integer,
        "unskilled_laborers" integer,
        "designers_count" integer,
        "quality_control_staff_count" integer,
        "average_monthly_wage_npr" numeric(10, 2),
        "employees_benefits" text,
        "has_training_programs" boolean DEFAULT false,
        "training_program_details" text,
        "employee_retention_rate_percent" numeric(5, 2),
        "initial_investment_npr" numeric(14, 2),
        "annual_turnover_npr" numeric(14, 2),
        "annual_profit_npr" numeric(14, 2),
        "export_percentage" numeric(5, 2),
        "domestic_sale_percentage" numeric(5, 2),
        "has_loan_financing" boolean DEFAULT false,
        "loan_amount_npr" numeric(14, 2),
        "financing_sources" text,
        "receives_subsidies" boolean DEFAULT false,
        "subsidy_details" text,
        "raw_material_source_domestic" numeric(5, 2),
        "raw_material_source_imported" numeric(5, 2),
        "import_source_countries" text,
        "raw_material_challenges" text,
        "inventory_management_system" text,
        "average_raw_material_inventory_days" integer,
        "average_finished_goods_inventory_days" integer,
        "has_electricity" boolean DEFAULT true,
        "electricity_source" text,
        "power_capacity_kw" numeric(10, 2),
        "monthly_electricity_consumption_units" integer,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_water_treatment" boolean DEFAULT false,
        "water_consumption_liters_per_day" integer,
        "has_effluent_treatment" boolean DEFAULT false,
        "effluent_treatment_details" text,
        "has_quality_control_department" boolean DEFAULT false,
        "quality_control_processes" text,
        "quality_standards" text,
        "has_iso_certification" boolean DEFAULT false,
        "iso_certification_type" text,
        "other_certifications" text,
        "quality_issues_percent" numeric(5, 2),
        "major_markets" text,
        "export_markets" text,
        "export_product_types" text,
        "domestic_market_regions" text,
        "distribution_channels" text,
        "has_direct_retail" boolean DEFAULT false,
        "retail_outlets" integer,
        "major_client_types" text,
        "retail_price_range_npr" text,
        "brand_position" text,
        "major_competitors" text,
        "has_registered_brands" boolean DEFAULT false,
        "brand_names" text,
        "marketing_channels" text,
        "has_online_presence" boolean DEFAULT false,
        "e_commerce_presence" text,
        "social_media_presence" text,
        "participates_in_exhibitions" boolean DEFAULT false,
        "exhibition_details" text,
        "has_in_house_design" boolean DEFAULT false,
        "design_renewal_frequency" text,
        "innovation_focus" text,
        "uses_trend_forecast" boolean DEFAULT false,
        "collaborates_with_designers" boolean DEFAULT false,
        "designer_collaboration_details" text,
        "new_product_development_frequency" text,
        "major_business_challenges" text,
        "infrastructure_challenges" text,
        "market_challenges" text,
        "skill_challenges" text,
        "competition_challenges" text,
        "government_support_received" text,
        "government_support_needed" text,
        "industry_association_support" text,
        "expansion_plans" text,
        "diversification_plans" text,
        "technology_upgrade_plans" text,
        "market_expansion_plans" text,
        "sustainability_plans" text,
        "waste_generation_types" text,
        "waste_management_practices" text,
        "has_environmental_policy" boolean DEFAULT false,
        "environmental_challenges" text,
        "water_conservation_measures" text,
        "energy_conservation_measures" text,
        "uses_renewable_energy" boolean DEFAULT false,
        "renewable_energy_details" text,
        "labor_compliance_measures" text,
        "has_child_labor_policy" boolean DEFAULT false,
        "workplace_health_safety_measures" text,
        "community_engagement" text,
        "fair_trade_involvement" boolean DEFAULT false,
        "preserves_traditional_techniques" boolean DEFAULT false,
        "traditional_techniques_details" text,
        "employs_artisans" boolean DEFAULT false,
        "artisan_count" integer,
        "cultural_significance" text,
        "linked_ward_offices" jsonb DEFAULT '[]'::jsonb,
        "linked_industries" jsonb DEFAULT '[]'::jsonb,
        "linked_suppliers" jsonb DEFAULT '[]'::jsonb,
        "linked_retailers" jsonb DEFAULT '[]'::jsonb,
        "linked_exporters" jsonb DEFAULT '[]'::jsonb,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "location_point" geometry (Point, 4326),
        "premises_boundary" geometry (Polygon, 4326),
        "building_footprints" geometry (MultiPolygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_research_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "name_in_local_language" text,
        "description" text,
        "center_type" "research_center_type" NOT NULL,
        "ward_number" integer,
        "location" text,
        "address" text,
        "established_date" date,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "license_number" varchar(50),
        "management_type" "research_center_management" NOT NULL,
        "parent_organization" text,
        "affiliated_institutions" text,
        "research_focus" text,
        "vision_statement" text,
        "mission_statement" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "fax_number" text,
        "facebook_page" text,
        "twitter_handle" text,
        "instagram_handle" text,
        "linked_in_page" text,
        "youtube_channel" text,
        "head_name" text,
        "head_designation" text,
        "head_qualification" text,
        "head_contact_number" text,
        "head_email" text,
        "has_governing_body" boolean DEFAULT false,
        "governing_body_details" text,
        "has_advisory_committee" boolean DEFAULT false,
        "advisory_committee_details" text,
        "opening_time" time,
        "closing_time" time,
        "weekly_off_days" text,
        "total_land_area_sqm" numeric(10, 2),
        "covered_area_sqm" numeric(10, 2),
        "total_building_count" integer,
        "building_condition" "research_facility_condition",
        "construction_year" integer,
        "last_renovation_year" integer,
        "has_compound_wall" boolean DEFAULT false,
        "has_laboratories" boolean DEFAULT false,
        "laboratory_count" integer,
        "laboratory_types" text,
        "has_advanced_equipment" boolean DEFAULT false,
        "major_equipment_list" text,
        "has_field_research_facilities" boolean DEFAULT false,
        "field_research_details" text,
        "has_library" boolean DEFAULT false,
        "library_collection_size" integer,
        "has_database" boolean DEFAULT false,
        "database_details" text,
        "has_conference_hall" boolean DEFAULT false,
        "conference_hall_capacity" integer,
        "has_seminar_rooms" boolean DEFAULT false,
        "seminar_room_count" integer,
        "has_training_facilities" boolean DEFAULT false,
        "training_facilities_details" text,
        "has_hostel" boolean DEFAULT false,
        "hostel_capacity" integer,
        "has_canteen" boolean DEFAULT false,
        "facility_condition" "research_facility_condition",
        "has_electricity" boolean DEFAULT true,
        "electricity_source_type" text,
        "has_power_backup" boolean DEFAULT false,
        "power_backup_type" text,
        "has_drinking_water" boolean DEFAULT true,
        "water_source_type" text,
        "has_toilets" boolean DEFAULT true,
        "toilets_count" integer,
        "has_separate_toilets_for_genders" boolean DEFAULT false,
        "has_internet_connectivity" boolean DEFAULT false,
        "internet_type" text,
        "internet_speed" text,
        "has_wifi" boolean DEFAULT false,
        "total_staff_count" integer,
        "research_staff_count" integer,
        "administrative_staff_count" integer,
        "technical_staff_count" integer,
        "support_staff_count" integer,
        "phd_holders_count" integer,
        "masters_holders_count" integer,
        "bachelors_holders_count" integer,
        "male_staff_count" integer,
        "female_staff_count" integer,
        "other_gender_staff_count" integer,
        "part_time_researchers_count" integer,
        "internship_positions_count" integer,
        "current_research_projects" integer,
        "completed_research_projects" integer,
        "major_research_areas" text,
        "publications_count" integer,
        "patents_filed_count" integer,
        "patents_granted_count" integer,
        "annual_research_budget_npr" numeric(18, 2),
        "research_collaborations" text,
        "international_collaborations" text,
        "conducts_periodical_publications" boolean DEFAULT false,
        "periodical_publication_details" text,
        "conducts_seminars" boolean DEFAULT false,
        "seminar_frequency" text,
        "conducts_trainings" boolean DEFAULT false,
        "training_details" text,
        "conducts_public_outreach" boolean DEFAULT false,
        "public_outreach_details" text,
        "has_open_access_policy" boolean DEFAULT false,
        "annual_budget_npr" numeric(18, 2),
        "funding_source" "funding_source",
        "government_funding_percentage" numeric(5, 2),
        "private_funding_percentage" numeric(5, 2),
        "donor_funding_percentage" numeric(5, 2),
        "self_generated_funding_percentage" numeric(5, 2),
        "major_donors" text,
        "has_endowment_fund" boolean DEFAULT false,
        "endowment_fund_size_npr" numeric(18, 2),
        "major_research_findings" text,
        "policy_influence_details" text,
        "community_impact" text,
        "awards" text,
        "recognitions" text,
        "research_challenges" text,
        "infrastructure_challenges" text,
        "funding_challenges" text,
        "human_resource_challenges" text,
        "development_plans" text,
        "academic_partners" text,
        "industry_partners" text,
        "government_partners" text,
        "ngo_partners" text,
        "international_partners" text,
        "community_service_programs" text,
        "technology_transfer_activities" text,
        "farmer_engagement_programs" text,
        "industry_engagement_programs" text,
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "linked_institutions" jsonb DEFAULT '[]'::jsonb,
        "linked_universities" jsonb DEFAULT '[]'::jsonb,
        "linked_industries" jsonb DEFAULT '[]'::jsonb,
        "linked_government_offices" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "campus_boundary" geometry (Polygon, 4326),
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_traditional_workshop" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "workshop_type" "traditional_workshop_type" NOT NULL,
        "heritage_significance" "heritage_significance",
        "knowledge_transmission_status" "knowledge_transmission",
        "established_year" integer,
        "generations_in_business" integer,
        "registration_number" varchar(50),
        "is_informal_sector" boolean DEFAULT true,
        "registration_authority" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark_description" text,
        "master_craftsman_name" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "main_crafts_produced" text,
        "traditional_techniques_used" text,
        "raw_materials_used" text,
        "raw_material_sources" text,
        "traditional_tools_used" text,
        "modern_tools_adopted" text,
        "products_per_month" integer,
        "production_capacity" text,
        "quality_standards" text,
        "product_price_range_npr" text,
        "has_custom_orders" boolean DEFAULT true,
        "community_significance" text,
        "cultural_practices_associated" text,
        "ethnic_community_associated" text,
        "traditional_knowledge_details" text,
        "unique_craft_features" text,
        "historical_notes" text,
        "intangible_heritage_elements" text,
        "total_artisans" integer,
        "master_craftsmen" integer,
        "apprentices" integer,
        "family_members_involved" integer,
        "hired_artisans" integer,
        "male_artisans" integer,
        "female_artisans" integer,
        "youth_involved" integer,
        "workshop_area_sqm" numeric(10, 2),
        "has_traditional_structure" boolean DEFAULT false,
        "building_type" text,
        "is_home_based_workshop" boolean DEFAULT true,
        "has_display_area" boolean DEFAULT false,
        "display_area_sqm" numeric(10, 2),
        "has_storage" boolean DEFAULT false,
        "storage_area_sqm" numeric(10, 2),
        "market_coverage" text,
        "major_markets" text,
        "sells_to_tourists" boolean DEFAULT false,
        "tourist_percentage" numeric(5, 2),
        "has_export_market" boolean DEFAULT false,
        "export_markets" text,
        "marketing_channels" text,
        "selling_locations" text,
        "has_online_sales" boolean DEFAULT false,
        "online_platforms_used" text,
        "average_monthly_income_npr" numeric(10, 2),
        "profitability_status" text,
        "seasonal_income_variation" text,
        "has_access_to_credit" boolean DEFAULT false,
        "credit_source_details" text,
        "has_insurance" boolean DEFAULT false,
        "knowledge_transfer_method" text,
        "apprenticeship_system" text,
        "has_structured_training" boolean DEFAULT false,
        "training_details" text,
        "teaches_in_schools" boolean DEFAULT false,
        "documentation_of_techniques" boolean DEFAULT false,
        "documentation_details" text,
        "major_challenges" text,
        "modern_competition_impact" text,
        "raw_material_challenges" text,
        "marketing_challenges" text,
        "skill_transfer_challenges" text,
        "financial_challenges" text,
        "government_support_received" boolean DEFAULT false,
        "government_support_details" text,
        "ngo_support_received" boolean DEFAULT false,
        "ngo_support_details" text,
        "association_membership" text,
        "certification_received" text,
        "awards_received" text,
        "media_exposure" text,
        "modern_adaptations" text,
        "design_innovations" text,
        "technology_integration" text,
        "new_materials_adopted" text,
        "product_diversification" text,
        "conservation_initiatives" text,
        "documentation_projects" text,
        "revival_efforts" text,
        "collaboration_with_institutions" text,
        "successor_available" boolean DEFAULT false,
        "successor_details" text,
        "continuity_prospects" text,
        "expansion_plans" text,
        "diversification_plans" text,
        "future_challenges" text,
        "tourist_visits_per_month" integer,
        "offers_demonstrations" boolean DEFAULT false,
        "offers_workshops" boolean DEFAULT false,
        "working_with_tour_operators" boolean DEFAULT false,
        "tourism_potential_assessment" text,
        "has_trademark_registered" boolean DEFAULT false,
        "has_geographical_indication" boolean DEFAULT false,
        "intellectual_property_challenges" text,
        "faces_counterfeiting" boolean DEFAULT false,
        "linked_cultural_groups" jsonb DEFAULT '[]'::jsonb,
        "linked_tourism_sites" jsonb DEFAULT '[]'::jsonb,
        "linked_markets" jsonb DEFAULT '[]'::jsonb,
        "linked_workshops" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "building_footprint" geometry (Polygon, 4326),
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_industry" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "name" text NOT NULL,
        "slug" text NOT NULL,
        "description" text,
        "industry_scale" "industry_scale" NOT NULL,
        "industry_type" "industry_type" NOT NULL,
        "industry_status" "industry_status" NOT NULL,
        "established_date" date,
        "registration_number" varchar(50),
        "pan_number" varchar(20),
        "vat_number" varchar(20),
        "product_categories" text,
        "main_products" text,
        "secondary_products" text,
        "industrial_classification" text,
        "ward_number" integer,
        "location" text,
        "address" text,
        "landmark_description" text,
        "contact_person" text,
        "designation" text,
        "phone_number" text,
        "alternate_phone_number" text,
        "email" text,
        "website_url" text,
        "facebook_page" text,
        "linkedin_page" text,
        "other_social_media" text,
        "ownership_type" "ownership_type" NOT NULL,
        "owner_name" text,
        "affiliated_group" text,
        "foreign_investment_percent" numeric(5, 2),
        "foreign_investment_country" text,
        "family_owned_business" boolean DEFAULT false,
        "is_formally_registered" boolean DEFAULT true,
        "registration_authority" text,
        "total_land_area_sqm" numeric(12, 2),
        "built_up_area_sqm" numeric(12, 2),
        "production_area_sqm" numeric(12, 2),
        "storage_area_sqm" numeric(12, 2),
        "office_area_sqm" numeric(12, 2),
        "land_ownership" text,
        "building_count" integer,
        "construction_year" integer,
        "total_employees" integer,
        "permanent_employees" integer,
        "contract_employees" integer,
        "seasonal_employees" integer,
        "male_employees" integer,
        "female_employees" integer,
        "other_gender_employees" integer,
        "technical_staff" integer,
        "administrative_staff" integer,
        "skilled_labor" integer,
        "unskilled_labor" integer,
        "foreign_employees" integer,
        "local_employees" integer,
        "minimum_wage_adherence" boolean DEFAULT true,
        "production_capacity_per_year" text,
        "actual_production_per_year" text,
        "capacity_utilization_percent" numeric(5, 2),
        "working_hours_per_day" numeric(4, 1),
        "working_days_per_week" integer,
        "shifts_per_day" integer,
        "has_quality_control_system" boolean DEFAULT false,
        "quality_standards" text,
        "quality_certifications" text,
        "product_testing" boolean DEFAULT false,
        "testing_facilities" text,
        "technology_level" "technology_level",
        "key_machinery_types" text,
        "machinery_import_sources" text,
        "has_proprietary_technology" boolean DEFAULT false,
        "automation_level" text,
        "research_development_activities" text,
        "has_computerized_systems" boolean DEFAULT false,
        "maintenance_system" text,
        "main_raw_materials" text,
        "raw_material_sources" text,
        "imported_raw_materials_percent" numeric(5, 2),
        "local_raw_materials_percent" numeric(5, 2),
        "raw_material_storage_facilities" text,
        "market_coverage" text,
        "major_markets" text,
        "exporting_countries" text,
        "export_percentage" numeric(5, 2),
        "marketing_channels" text,
        "distribution_network" text,
        "major_clients" text,
        "has_web_based_sales" boolean DEFAULT false,
        "competitive_advantage" text,
        "capital_investment_npr" numeric(18, 2),
        "fixed_investment_npr" numeric(18, 2),
        "working_capital_npr" numeric(18, 2),
        "annual_turnover_npr" numeric(18, 2),
        "annual_profit_npr" numeric(18, 2),
        "financing_source" text,
        "bank_loan_npr" numeric(18, 2),
        "subsidies_received_npr" numeric(18, 2),
        "subsidy_type" text,
        "tax_exemptions" text,
        "power_source_type" text,
        "power_consumption_kwh" numeric(12, 2),
        "has_backup_power" boolean DEFAULT false,
        "backup_power_type" text,
        "water_source_type" text,
        "water_consumption_liters_per_day" numeric(12, 2),
        "fuel_types_used" text,
        "monthly_fuel_consumption" text,
        "has_environmental_clearance" boolean DEFAULT false,
        "environmental_clearance_details" text,
        "pollution_level" "pollution_level",
        "waste_generation_types" text,
        "waste_management_system" text,
        "effluent_treatment_plant" boolean DEFAULT false,
        "air_pollution_control_measures" text,
        "has_environmental_monitoring" boolean DEFAULT false,
        "environmental_compliance_status" text,
        "carbon_footprint_initiatives" text,
        "has_occupational_safety" boolean DEFAULT false,
        "safety_equipment_provided" boolean DEFAULT false,
        "safety_training_frequency" text,
        "accident_records_last_year" integer,
        "has_fire_safety_equipment" boolean DEFAULT false,
        "has_emergency_exits" boolean DEFAULT false,
        "labor_law_compliance" boolean DEFAULT true,
        "has_employee_insurance" boolean DEFAULT false,
        "has_employee_health_check" boolean DEFAULT false,
        "industry_association_member" boolean DEFAULT false,
        "association_names" text,
        "receives_government_support" boolean DEFAULT false,
        "government_support_type" text,
        "receives_ngo_support" boolean DEFAULT false,
        "ngo_support_details" text,
        "linkages_with_academia" text,
        "expansion_plans" text,
        "diversification_plans" text,
        "modernization_plans" text,
        "investment_plans" text,
        "major_challenges" text,
        "infrastructural_needs" text,
        "policy_needs" text,
        "financial_needs" text,
        "marketing_needs" text,
        "technical_needs" text,
        "community_impact" text,
        "environmental_impact" text,
        "economic_impact" text,
        "job_creation_impact" text,
        "skill_development_contribution" text,
        "local_economy_contribution" text,
        "last_inspection_date" date,
        "inspection_authority" text,
        "inspection_findings" text,
        "compliance_status" text,
        "renewal_requirements" text,
        "has_csr_activities" boolean DEFAULT false,
        "csr_activities_details" text,
        "csr_budget_npr" numeric(18, 2),
        "community_development_initiatives" text,
        "linked_industrial_areas" jsonb DEFAULT '[]'::jsonb,
        "linked_raw_material_suppliers" jsonb DEFAULT '[]'::jsonb,
        "linked_distributors" jsonb DEFAULT '[]'::jsonb,
        "linked_retailers" jsonb DEFAULT '[]'::jsonb,
        "location_point" geometry (Point, 4326),
        "premises_boundary" geometry (Polygon, 4326),
        "building_footprints" geometry (MultiPolygon, 4326),
        "meta_title" text,
        "meta_description" text,
        "keywords" text,
        "is_active" boolean DEFAULT true,
        "is_verified" boolean DEFAULT false,
        "verification_date" timestamp,
        "verified_by" varchar(36),
        "created_at" timestamp DEFAULT NOW(),
        "updated_at" timestamp DEFAULT NOW(),
        "created_by" varchar(36),
        "updated_by" varchar(36)
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_cooking_fuel" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "cooking_fuel" "cooking_fuel_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_electricity_source" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "electricity_source" "electricity_source_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_facilities" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "facility" "facility_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_house_map_passed" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "map_passed_status" "map_passed_status_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_household_floor" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "floor_type" "floor_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_household_roof" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "roof_type" "roof_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_road_status" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "road_status" "road_status_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_time_to_active_road" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "time_to_active_road" "time_to_active_road_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_time_to_market_center" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "time_to_market_center" "time_to_market_center_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_time_to_public_transport" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "time_to_public_transport" "time_to_public_transport_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_age_gender_wise_first_marriage_age" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "first_marriage_age_group" "first_marriage_age_group" NOT NULL,
        "gender" "gender_type" NOT NULL,
        "population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_disabled_population" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "disabled_population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_drinking_water_source" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "drinking_water_source" "drinking_water_source_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_old_age_population_and_single_women" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "male_old_age_population" integer NOT NULL,
        "female_old_age_population" integer NOT NULL,
        "single_women_population" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_solid_waste_management" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "solid_waste_management" "solid_waste_management_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_toilet_type" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "toilet_type" "toilet_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
CREATE TABLE IF NOT EXISTS
    "acme_ward_wise_water_purification" (
        "id" varchar(36) PRIMARY KEY NOT NULL,
        "ward_number" integer NOT NULL,
        "water_purification" "water_purification_type" NOT NULL,
        "households" integer NOT NULL,
        "updated_at" timestamp DEFAULT now(),
        "created_at" timestamp DEFAULT now()
    );

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_area_requests" ADD CONSTRAINT "acme_area_requests_area_id_acme_areas_id_fk" FOREIGN KEY ("area_id") REFERENCES "public"."acme_areas"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_area_requests" ADD CONSTRAINT "acme_area_requests_user_id_acme_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_area_status_view" ADD CONSTRAINT "acme_area_status_view_ward_acme_wards_ward_number_fk" FOREIGN KEY ("ward") REFERENCES "public"."acme_wards"("ward_number") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_area_status_view" ADD CONSTRAINT "acme_area_status_view_assigned_to_acme_users_id_fk" FOREIGN KEY ("assigned_to") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_area_status_view" ADD CONSTRAINT "acme_area_status_view_completed_by_acme_users_id_fk" FOREIGN KEY ("completed_by") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_areas" ADD CONSTRAINT "acme_areas_ward_acme_wards_ward_number_fk" FOREIGN KEY ("ward") REFERENCES "public"."acme_wards"("ward_number") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_areas" ADD CONSTRAINT "acme_areas_assigned_to_acme_users_id_fk" FOREIGN KEY ("assigned_to") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_enumerator_assignments" ADD CONSTRAINT "acme_enumerator_assignments_area_id_acme_areas_id_fk" FOREIGN KEY ("area_id") REFERENCES "public"."acme_areas"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_enumerator_assignments" ADD CONSTRAINT "acme_enumerator_assignments_assigned_to_acme_users_id_fk" FOREIGN KEY ("assigned_to") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_point_requests" ADD CONSTRAINT "acme_point_requests_enumerator_id_acme_users_id_fk" FOREIGN KEY ("enumerator_id") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_odk_survey_attachments" ADD CONSTRAINT "acme_odk_survey_attachments_data_id_acme_odk_survey_data_id_fk" FOREIGN KEY ("data_id") REFERENCES "public"."acme_odk_survey_data"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_odk_survey_data" ADD CONSTRAINT "acme_odk_survey_data_form_id_acme_odk_survey_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."acme_odk_survey_forms"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_building_edit_requests" ADD CONSTRAINT "product_building_edit_requests_building_id_product_buildings_id_fk" FOREIGN KEY ("building_id") REFERENCES "public"."product_buildings"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_building_tokens" ADD CONSTRAINT "product_building_tokens_area_id_acme_areas_id_fk" FOREIGN KEY ("area_id") REFERENCES "public"."acme_areas"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_buildings" ADD CONSTRAINT "product_buildings_area_id_acme_areas_id_fk" FOREIGN KEY ("area_id") REFERENCES "public"."acme_areas"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_buildings" ADD CONSTRAINT "product_buildings_user_id_acme_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_buildings" ADD CONSTRAINT "product_buildings_ward_id_acme_wards_ward_number_fk" FOREIGN KEY ("ward_id") REFERENCES "public"."acme_wards"("ward_number") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_buildings" ADD CONSTRAINT "product_buildings_building_token_product_building_tokens_token_fk" FOREIGN KEY ("building_token") REFERENCES "public"."product_building_tokens"("token") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_business_animal_products" ADD CONSTRAINT "product_business_animal_products_business_id_acme_khajura_business_id_fk" FOREIGN KEY ("business_id") REFERENCES "public"."acme_khajura_business"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_business_animals" ADD CONSTRAINT "product_business_animals_business_id_acme_khajura_business_id_fk" FOREIGN KEY ("business_id") REFERENCES "public"."acme_khajura_business"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_business_crops" ADD CONSTRAINT "product_business_crops_business_id_acme_khajura_business_id_fk" FOREIGN KEY ("business_id") REFERENCES "public"."acme_khajura_business"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_khajura_business_edit_requests" ADD CONSTRAINT "acme_khajura_business_edit_requests_business_id_acme_khajura_business_id_fk" FOREIGN KEY ("business_id") REFERENCES "public"."acme_khajura_business"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_entity_media" ADD CONSTRAINT "acme_entity_media_media_id_acme_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."acme_media"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_agricultural_land" ADD CONSTRAINT "product_agricultural_land_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_animal_product" ADD CONSTRAINT "product_animal_product_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_animal" ADD CONSTRAINT "product_animal_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_crop" ADD CONSTRAINT "product_crop_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_death" ADD CONSTRAINT "product_death_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_family" ADD CONSTRAINT "product_family_area_id_acme_areas_id_fk" FOREIGN KEY ("area_id") REFERENCES "public"."acme_areas"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_family" ADD CONSTRAINT "product_family_user_id_acme_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."acme_users"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_family" ADD CONSTRAINT "product_family_ward_id_acme_wards_ward_number_fk" FOREIGN KEY ("ward_id") REFERENCES "public"."acme_wards"("ward_number") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_family" ADD CONSTRAINT "product_family_building_token_product_building_tokens_token_fk" FOREIGN KEY ("building_token") REFERENCES "public"."product_building_tokens"("token") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_family_edit_requests" ADD CONSTRAINT "product_family_edit_requests_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "product_individual" ADD CONSTRAINT "product_individual_family_id_product_family_id_fk" FOREIGN KEY ("family_id") REFERENCES "public"."product_family"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_khajura_household_edit_requests" ADD CONSTRAINT "acme_khajura_household_edit_requests_household_id_acme_khajura_households_id_fk" FOREIGN KEY ("household_id") REFERENCES "public"."acme_khajura_households"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_khajura_individual_edit_requests" ADD CONSTRAINT "acme_khajura_individual_edit_requests_individual_id_acme_khajura_individuals_id_fk" FOREIGN KEY ("individual_id") REFERENCES "public"."acme_khajura_individuals"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
DO $$ BEGIN
 ALTER TABLE "acme_khajura_individuals" ADD CONSTRAINT "acme_khajura_individuals_parent_id_acme_khajura_households_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."acme_khajura_households"("id") ON DELETE no action ON UPDATE no action;
EXCEPTION
 WHEN duplicate_object THEN null;
END $$;

--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "session_user_idx" ON "acme_sessions" USING btree ("user_id");

--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "user_email_idx" ON "acme_users" USING btree ("user_name");

--> statement-breakpoint
CREATE INDEX IF NOT EXISTS "ward_number_idx" ON "acme_wards" USING btree ("ward_number");

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM public.acme_users WHERE id = 'sx9kfrgnnxjabu3wp4mbt') THEN
        INSERT INTO
            public.acme_users (
                id,
                user_name,
                "name",
                hashed_password,
                phone_number,
                email,
                avatar,
                ward_number,
                "role",
                is_active,
                created_at,
                updated_at
            )
        VALUES
            (
                'sx9kfrgnnxjabu3wp4mbt',
                'admin',
                'Suresh Sahu',
                'a86b1dbc9dc5187f404c5bc2032346b0:2d2ae70b65913284d72b78572f3049f0e2504d81a9b278855cbdf8f67e23966d3273fdcc9e9f8314b49a01761486638609e24cb0d430cd6c264a626c98464fe3',
                '9843016335',
                'ito.khajuramun@gmail.com',
                NULL,
                1,
                'superadmin'::public."roles",
                true,
                '2025-01-21 11:31:27.615',
                '2025-01-21 11:31:27.615'
            );
    END IF;
END
$$;