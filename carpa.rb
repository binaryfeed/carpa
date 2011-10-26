#!/usr/bin/env ruby

require 'prawn'

class Offer < Prawn::Document
  # 8.5 x 11 inches = 612 x 792 points
  def initialize(options={}, &block)
    super(:margin => 0, &block)
    font_families.update("Deja Vu Sans" => {
      :normal => "public/fonts/DejaVuSans.ttf"
    })
  end
  
  def highlight(box)
    fill_color "ffff00"
    fill_rectangle [box[0], box[1]], box[2], box[3]
  end
  
  def write(box, s, f="Courier")
    bounding_box [box[0], box[1]], :width => box[2], :height => box[3] do
      font f, :size => 9
      fill_color "110066"
      text s
    end
  end
  
  def check(box)
    bounding_box [box[0], box[1]], :width => 14, :height => 14 do
      font "Deja Vu Sans", :size => 14
      fill_color "110066"
      text "\u2713"
    end
  end
  
  def page01
    image "public/contract/ca-rpa-jei-01.jpg", :width => 612, :height => 792
    
    offer_date = [464.64, 711, 112, 8.35]
    buyer = [158.6, 691, 382, 8.35]
    property_description = [278.05, 681, 298.11, 8.35]
    property_description_2 = [58.32, 671, 212.66, 8.35]
    parcel_number = [360.29, 671, 174.11, 8.35]
    situated_in = [58.32, 660, 216, 8.35]
    county = [321.2, 660, 165, 8.35]
    purchase_price_text = [187.68, 650, 386.67, 8.35]
    purchase_price_text_2 = [58.32, 640, 370, 8.35]
    purchase_price_numeric = [472, 640, 96.5, 8.35]
    close_of_escrow_date = [191, 630, 205, 8.35]
    close_of_escrow_cbx = [435, 630]
    close_of_escrow_days = [446.79, 630, 40, 8.35]
    listing_agent = [109, 527, 355, 8.35]
    seller_exclusive_cbx = [114, 517]
    buyer_seller_cbx = [215, 517]
    selling_agent = [109, 506, 319.25, 8.35]
    # MORE
    footer_agent = [63, 56, 141, 8.35]
    footer_phone = [233.25, 56, 90, 8.35]
    footer_fax = [344.61, 56, 230.4, 8.35]
    footer_broker = [63, 47.5, 369, 8.35]

    write offer_date, Time.now.strftime("%Y-%B-%d")
    write buyer, "BUYER NAME"
    write property_description, "PROPERTY DESCRIPTION"
    write property_description_2, "(CONTINUATION)"
    write parcel_number, "PARCEL NUMBER"
    write situated_in, "SITUATED IN"
    write county, "COUNTY"
    write purchase_price_text, "PURCHASE PRICE TEXT"
    write purchase_price_text_2, "(CONTINUATION)"
    write purchase_price_numeric, "$123,456.78"
    write close_of_escrow_date, "CLOSE OF ESCROW DATE"
    check close_of_escrow_cbx
    write close_of_escrow_days, "60"
    write listing_agent, "LISTING AGENT"
    check seller_exclusive_cbx
    check buyer_seller_cbx
    write selling_agent, "SELLING AGENT"
  end
  
  def page02
    image "public/contract/ca-rpa-jei-02.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page03
    image "public/contract/ca-rpa-jei-03.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page04
    image "public/contract/ca-rpa-jei-04.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page05
    image "public/contract/ca-rpa-jei-05.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page06
    image "public/contract/ca-rpa-jei-06.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page07
    image "public/contract/ca-rpa-jei-07.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page08
    image "public/contract/ca-rpa-jei-08.jpg", :width => 612, :height => 792

    property_address = [103, 768, 303, 20]
  end
  
  def page09
    image "public/contract/ca-rpa-jei-09.jpg", :width => 612, :height => 792

    property_address = [103.5, 704, 419, 8.35]
    # MORE
    footer_agent = [63, 51, 141, 9]
    footer_phone = [233.25, 51, 90, 9]
    footer_fax = [344.61, 51, 230.4, 9]
    footer_broker = [63, 41, 369, 9]
  end
  
  def page10
    image "public/contract/ca-rpa-jei-10.jpg", :width => 612, :height => 792

    property_address = [97.5, 765, 357.22, 8.35]
  end
  
  def write_pages
    page01
    start_new_page
    page02
    start_new_page
    page03
    start_new_page
    page04
    start_new_page
    page05
    start_new_page
    page06
    start_new_page
    page07
    start_new_page
    page08
    start_new_page
    page09
    start_new_page
    page10
  end
end
