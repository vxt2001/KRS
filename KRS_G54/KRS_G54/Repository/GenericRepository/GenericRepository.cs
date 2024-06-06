using KRS_G54.Models;
using Microsoft.EntityFrameworkCore;

namespace KRS_G54.Repository.GenericRepository
{
	public class GenericRepository<T> : IGenericRepository<T> where T : class
	{
		protected readonly abcContext context;
		protected DbSet<T> dbSet;

		public GenericRepository(abcContext context = null)
		{
			this.context = context ?? new abcContext();
			dbSet = this.context.Set<T>();
		}
		public void Add(T entity)
		{
			dbSet.Add(entity);
		}

		public void Delete(T entity)
		{
			if (context.Entry(entity).State == EntityState.Detached)
			{
				dbSet.Attach(entity);
			}
			dbSet.Remove(entity);
		}

		public void Delete(int id)
		{
			T entityToDelete = dbSet.Find(id);
			Delete(entityToDelete);
		}

		public T Find(int id)
		{
			return dbSet.Find(id);
		}

		public IList<T> GetAll()
		{
			return dbSet.ToList();
		}

		public void Update(T entity)
		{
			dbSet.Attach(entity);
			context.Entry(entity).State = EntityState.Modified;
		}
		public void Save()
		{
			context.SaveChanges();
		}
		private bool disposed = false;
		protected virtual void Dispose(bool disposing)
		{
			if (!this.disposed)
			{
				if (disposing)
				{
					context.Dispose();
				}
			}
			this.disposed = true;
		}
		public void Dispose()
		{
			Dispose(true);
			GC.SuppressFinalize(this);
		}
	}
}
