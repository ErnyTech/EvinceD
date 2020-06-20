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


module evince.view.JobLoadGFile;

private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A job class to load a #EvDocument from a #GFile.
 *
 * Since: 3.6
 */
public class JobLoadGFile : Job
{
	/** the main Gtk struct */
	protected EvJobLoadGFile* evJobLoadGFile;

	/** Get the main Gtk struct */
	public EvJobLoadGFile* getJobLoadGFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobLoadGFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobLoadGFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobLoadGFile* evJobLoadGFile, bool ownedRef = false)
	{
		this.evJobLoadGFile = evJobLoadGFile;
		super(cast(EvJob*)evJobLoadGFile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_load_gfile_get_type();
	}

	/** */
	public this(FileIF gfile, EvDocumentLoadFlags flags)
	{
		auto __p = ev_job_load_gfile_new((gfile is null) ? null : gfile.getFileStruct(), flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobLoadGFile*) __p, true);
	}

	/** */
	public void setGfile(FileIF gfile)
	{
		ev_job_load_gfile_set_gfile(evJobLoadGFile, (gfile is null) ? null : gfile.getFileStruct());
	}

	/** */
	public void setLoadFlags(EvDocumentLoadFlags flags)
	{
		ev_job_load_gfile_set_load_flags(evJobLoadGFile, flags);
	}

	/** */
	public void setPassword(string password)
	{
		ev_job_load_gfile_set_password(evJobLoadGFile, Str.toStringz(password));
	}
}
