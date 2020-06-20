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


module evince.view.JobFind;

private import evince.document.Document;
private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/** */
public class JobFind : Job
{
	/** the main Gtk struct */
	protected EvJobFind* evJobFind;

	/** Get the main Gtk struct */
	public EvJobFind* getJobFindStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobFind;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobFind;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobFind* evJobFind, bool ownedRef = false)
	{
		this.evJobFind = evJobFind;
		super(cast(EvJob*)evJobFind, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_find_get_type();
	}

	/** */
	public this(Document document, int startPage, int nPages, string text, bool caseSensitive)
	{
		auto __p = ev_job_find_new((document is null) ? null : document.getDocumentStruct(), startPage, nPages, Str.toStringz(text), caseSensitive);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobFind*) __p, true);
	}

	/** */
	public int getNResults(int pages)
	{
		return ev_job_find_get_n_results(evJobFind, pages);
	}

	/**
	 * Returns: the job's find options
	 *
	 * Since: 3.6
	 */
	public EvFindOptions getOptions()
	{
		return ev_job_find_get_options(evJobFind);
	}

	/** */
	public double getProgress()
	{
		return ev_job_find_get_progress(evJobFind);
	}

	/**
	 * Returns: a #GList of #GList<!-- -->s containing #EvRectangle<!-- -->s
	 */
	public ListG getResults()
	{
		auto __p = ev_job_find_get_results(evJobFind);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/** */
	public bool hasResults()
	{
		return ev_job_find_has_results(evJobFind) != 0;
	}

	/** */
	public void setOptions(EvFindOptions options)
	{
		ev_job_find_set_options(evJobFind, options);
	}

	/** */
	gulong addOnUpdated(void delegate(int, JobFind) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "updated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
