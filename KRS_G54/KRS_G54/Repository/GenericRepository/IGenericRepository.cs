namespace KRS_G54.Repository.GenericRepository
{
	public interface IGenericRepository<T> where T : class
	{
		T Find(int entity);
		void Add(T entity);
		void Update(T entity);
		void Delete(T entity);
		void Delete(int entity);
		IList<T> GetAll();
		void Save();
	}
}
