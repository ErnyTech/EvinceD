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


module evince.view.JobFonts;

private import evince.document.Document;
private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/** */
public class JobFonts : Job
{
	/** the main Gtk struct */
	protected EvJobFonts* evJobFonts;

	/** Get the main Gtk struct */
	public EvJobFonts* getJobFontsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobFonts;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobFonts;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobFonts* evJobFonts, bool ownedRef = false)
	{
		this.evJobFonts = evJobFonts;
		super(cast(EvJob*)evJobFonts, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_fonts_get_type();
	}

	/** */
	public this(Document document)
	{
		auto __p = ev_job_fonts_new((document is null) ? null : document.getDocumentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobFonts*) __p, true);
	}

	/** */
	gulong addOnUpdated(void delegate(double, JobFonts) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "updated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
