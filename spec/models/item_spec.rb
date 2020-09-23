require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '商品出品がうまくいくとき' do
      it 'image,name,explanation,category_id,status_id,fee_id,area_id,day_id,priceが存在すれば登録できる' do
        expect(@item).to be_valid
      end
    end

    context '商品出品がうまくいかないとき' do
      it 'imageが空だと登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが空だと登録できない' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'explanationが空では登録できない' do
        @item.explanation = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Explanation can't be blank")
      end
      it 'category_idが空では登録できない' do
        @item.category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Category is not a number', "Category can't be blank")
      end
      it 'status_idが空では登録できない' do
        @item.status_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Status is not a number', "Status can't be blank")
      end
      it 'fee_idが空では登録できない' do
        @item.fee_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Fee is not a number', "Fee can't be blank")
      end
      it 'area_idが空では登録できない' do
        @item.area_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Area is not a number', "Area can't be blank")
      end
      it 'day_idが空では登録できない' do
        @item.day_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('Day is not a number', "Day can't be blank")
      end
      it 'priceが空では登録できない' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'priceが半角数字でなければ登録できない' do
        @item.price = 'あア亜aA１'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
      it 'priceが300以下であれば登録できない' do
        @item.price = '111'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it 'priceが9999999以上であれば登録できない' do
        @item.price = '11111111'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than or equal to 9999999')
      end
    end
  end
end
