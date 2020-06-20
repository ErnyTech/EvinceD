/*
 * This file is part of EvinceD.
 * EvinceD is based on GtkD.
 *
 * EvinceD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * EvinceD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with EvinceD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt


module evince.view.JobLoad;

private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class JobLoad : Job
{
	/** the main Gtk struct */
	protected EvJobLoad* evJobLoad;

	/** Get the main Gtk struct */
	public EvJobLoad* getJobLoadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobLoad;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobLoad;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobLoad* evJobLoad, bool ownedRef = false)
	{
		this.evJobLoad = evJobLoad;
		super(cast(EvJob*)evJobLoad, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_load_get_type();
	}

	/** */
	public this(string uri)
	{
		auto __p = ev_job_load_new(Str.toStringz(uri));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobLoad*) __p, true);
	}

	/** */
	public void setPassword(string password)
	{
		ev_job_load_set_password(evJobLoad, Str.toStringz(password));
	}

	/** */
	public void setUri(string uri)
	{
		ev_job_load_set_uri(evJobLoad, Str.toStringz(uri));
	}
}
