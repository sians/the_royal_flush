def index
  if params 5:query].present?
    condition = 'movies.title ilike :query ' \
              'or syllabus ilike :query' \
              'or directores.first_name ilike :query '\
              'or directores.last_name ilike :query'

    @movies = Movies.where(condition, query: "%#{params[:query]}%").joins[:director]
  else
    @movies = Movie.all
  end
end
