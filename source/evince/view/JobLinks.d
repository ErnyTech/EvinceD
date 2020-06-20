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


module evince.view.JobLinks;

private import evince.document.Document;
private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.TreeModelIF;


/** */
public class JobLinks : Job
{
	/** the main Gtk struct */
	protected EvJobLinks* evJobLinks;

	/** Get the main Gtk struct */
	public EvJobLinks* getJobLinksStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobLinks;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobLinks;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobLinks* evJobLinks, bool ownedRef = false)
	{
		this.evJobLinks = evJobLinks;
		super(cast(EvJob*)evJobLinks, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_links_get_type();
	}

	/** */
	public this(Document document)
	{
		auto __p = ev_job_links_new((document is null) ? null : document.getDocumentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobLinks*) __p, true);
	}

	/**
	 * Get a #GtkTreeModel loaded with the links
	 *
	 * Returns: The #GtkTreeModel loaded
	 *
	 * Since: 3.6
	 */
	public TreeModelIF getModel()
	{
		auto __p = ev_job_links_get_model(evJobLinks);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}
}
