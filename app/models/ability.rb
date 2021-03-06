class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities

    user ||= Usuario.new #guest user

    # if user.role == 'Admin'
    #   can :manage, :all
    # else
    #   can :read, :all
    #
    # end

    # role = user.role
    # case role # was case obj.class
    #   when 'Admin'
    #     can :manage, :all
    #     #can :create, Horario
    #   when 'Operador'
    #     #can :manage, Report
    #     can :manage, Capture
    #     can :manage, Information
    #     can :manage, InformationMailer
    #   else # Consulta
    #     # can :read, :all
    # end

    if user.role == "Admin"
      can :manage, :all
    else
      # can :read, :all
      # can :create, Comment
      # can :update, Comment do |comment|
      #   comment.try(:user) == user || user.role?(:moderator)
      # end
      if user.role == "Consulta"
        can :sent, Report
        can :query, Report
        # can :update, Article do |article|
        #   article.try(:user) == user
        # end
      end
      if user.role == "Operador"
        can :manage, Capture
        can :daily, InformationMailer
        can :send_mail, Information
        can :resend_mail, Information
        can :new, Information
        can :create, Information
        can :new, Information
        can :edit, Information
        can :update, Information
        can :read, Information
        can :new, Notification
        can :edit, Notification
        can :update, Notification
        can :destroy, Notification
        can :create, Notification
        can :checkin, Checkin
        can :checkout, Checkin
        can :read, Call
        can :new, Call
      end
      if user.role == "Supervisor"
        can :manage, Capture
        can :daily, InformationMailer
        can :send_mail, Information
        can :resend_mail, Information
        can :new, Information
        can :create, Information
        can :new, Information
        can :edit, Information
        can :update, Information
        can :read, Information
        can :new, Notification
        can :edit, Notification
        can :update, Notification
        can :destroy, Notification
        can :create, Notification
        can :checkin, Checkin
        can :checkout, Checkin
        can :read, Call
        can :new, Call
        can :manage, Report
      end
    end

=begin
      can :update, Article
      You can pass :manage to represent any action and :all to represent any object.
                                                                can :manage, Article  # user can perform any action on the article
      can :read, :all       # user can read any object
      can :manage, :all
=end


  end
end
