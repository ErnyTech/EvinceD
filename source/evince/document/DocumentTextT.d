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


module evince.document.DocumentTextT;

public  import cairo.Region;
public  import evince.document.Page;
public  import evince.document.Rectangle;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.Str;
public  import gobject.ObjectG;
public  import pango.PgAttributeList;


/** */
public template DocumentTextT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentText* getDocumentTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentText*)getStruct();
	}


	/** */
	public string getText(Page page)
	{
		auto retStr = ev_document_text_get_text(getDocumentTextStruct(), (page is null) ? null : page.getPageStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * FIXME
	 *
	 * Params:
	 *     page = a #EvPage
	 *
	 * Returns: a newly created #PangoAttrList
	 *
	 * Since: 3.10
	 */
	public PgAttributeList getTextAttrs(Page page)
	{
		auto __p = ev_document_text_get_text_attrs(getDocumentTextStruct(), (page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgAttributeList)(cast(PangoAttrList*) __p, true);
	}

	/** */
	public bool getTextLayout(Page page, Rectangle areas, uint* nAreas)
	{
		return ev_document_text_get_text_layout(getDocumentTextStruct(), (page is null) ? null : page.getPageStruct(), (areas is null) ? null : areas.getRectangleStruct(), nAreas) != 0;
	}

	/** */
	public Region getTextMapping(Page page)
	{
		auto __p = ev_document_text_get_text_mapping(getDocumentTextStruct(), (page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			return null;
		}

		return new Region(cast(cairo_region_t*) __p);
	}
}
