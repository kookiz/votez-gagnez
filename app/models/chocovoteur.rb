class Chocovoteur < ApplicationRecord
    
    validates_presence_of :pseudo, presence: true, uniqueness: true, :message => "Entrez votre Pseudo"
    
    after_commit :notify_pusher, on: [:create, :update]
    def notify_pusher
    Pusher.trigger('chocovoteur', 'new', self.as_json)
    end 
end
