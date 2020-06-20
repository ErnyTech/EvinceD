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


module evince.view.JobPageData;

private import evince.document.Document;
private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class JobPageData : Job
{
	/** the main Gtk struct */
	protected EvJobPageData* evJobPageData;

	/** Get the main Gtk struct */
	public EvJobPageData* getJobPageDataStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobPageData;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobPageData;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobPageData* evJobPageData, bool ownedRef = false)
	{
		this.evJobPageData = evJobPageData;
		super(cast(EvJob*)evJobPageData, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_page_data_get_type();
	}

	/** */
	public this(Document document, int page, EvJobPageDataFlags flags)
	{
		auto __p = ev_job_page_data_new((document is null) ? null : document.getDocumentStruct(), page, flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobPageData*) __p, true);
	}
}
