import java.io.Serializable;
public class Counter implements Serializable
{
	int count=0;
	public Counter()
	{
		count = 0;
	}
	public int getCount()
	{
		count++;
		return this.count;
	}
	public void setCount(int count)
	{
		this.count=count;
	}
}