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


module evince.view.JobLoadStream;

private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import gio.InputStream;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A job class to load a #EvDocument from a #GInputStream.
 *
 * Since: 3.6
 */
public class JobLoadStream : Job
{
	/** the main Gtk struct */
	protected EvJobLoadStream* evJobLoadStream;

	/** Get the main Gtk struct */
	public EvJobLoadStream* getJobLoadStreamStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobLoadStream;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobLoadStream;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobLoadStream* evJobLoadStream, bool ownedRef = false)
	{
		this.evJobLoadStream = evJobLoadStream;
		super(cast(EvJob*)evJobLoadStream, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_load_stream_get_type();
	}

	/** */
	public this(InputStream stream, EvDocumentLoadFlags flags)
	{
		auto __p = ev_job_load_stream_new((stream is null) ? null : stream.getInputStreamStruct(), flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobLoadStream*) __p, true);
	}

	/** */
	public void setLoadFlags(EvDocumentLoadFlags flags)
	{
		ev_job_load_stream_set_load_flags(evJobLoadStream, flags);
	}

	/** */
	public void setPassword(string password)
	{
		ev_job_load_stream_set_password(evJobLoadStream, Str.toStringz(password));
	}

	/** */
	public void setStream(InputStream stream)
	{
		ev_job_load_stream_set_stream(evJobLoadStream, (stream is null) ? null : stream.getInputStreamStruct());
	}
}
