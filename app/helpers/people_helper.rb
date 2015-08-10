module PeopleHelper

def gravatar_for (person)
    gravatar_id = Digest::MD5::hexdigest(person.email.upcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
end
