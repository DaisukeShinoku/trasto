module User::StoryCommentsHelper

  def shallow_args(parent, child)
    child.try(:new_record?) ? [parent, child] : child
  end

  def shallow_args2(parent, child, mago)
    mago.try(:new_record?) ? [parent, child, mago] : mago
  end
end
