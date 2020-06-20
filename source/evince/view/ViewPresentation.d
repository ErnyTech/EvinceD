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


module evince.view.ViewPresentation;

private import evince.document.Document;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Widget;
private import std.algorithm;


/** */
public class ViewPresentation : Widget
{
	/** the main Gtk struct */
	protected EvViewPresentation* evViewPresentation;

	/** Get the main Gtk struct */
	public EvViewPresentation* getViewPresentationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evViewPresentation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evViewPresentation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvViewPresentation* evViewPresentation, bool ownedRef = false)
	{
		this.evViewPresentation = evViewPresentation;
		super(cast(GtkWidget*)evViewPresentation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_view_presentation_get_type();
	}

	/** */
	public this(Document document, uint currentPage, uint rotation, bool invertedColors)
	{
		auto __p = ev_view_presentation_new((document is null) ? null : document.getDocumentStruct(), currentPage, rotation, invertedColors);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvViewPresentation*) __p);
	}

	/** */
	public uint getCurrentPage()
	{
		return ev_view_presentation_get_current_page(evViewPresentation);
	}

	/** */
	public uint getRotation()
	{
		return ev_view_presentation_get_rotation(evViewPresentation);
	}

	/** */
	public void nextPage()
	{
		ev_view_presentation_next_page(evViewPresentation);
	}

	/** */
	public void previousPage()
	{
		ev_view_presentation_previous_page(evViewPresentation);
	}

	/** */
	public void setRotation(int rotation)
	{
		ev_view_presentation_set_rotation(evViewPresentation, rotation);
	}

	/** */
	gulong addOnChangePage(void delegate(GtkScrollType, ViewPresentation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-page", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnExternalLink(void delegate(ObjectG, ViewPresentation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "external-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnFinished(void delegate(ViewPresentation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
