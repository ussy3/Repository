class Modelname < ApplicationRecord
    validates :fieldone , length: { maximum: 32 } , presence: true
    validates :fieldtwo , length: { maximum: 256} , presence: true
    validates :fieldthree , length: { maximum: 9} , presence: true
    validates :age , length: { maximum: 3} , presence: false
    validates :lot,length:{maximum:99},presence:false
end
