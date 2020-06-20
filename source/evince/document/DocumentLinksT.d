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


module evince.document.DocumentLinksT;

public  import evince.document.Link;
public  import evince.document.LinkDest;
public  import evince.document.MappingList;
public  import evince.document.Page;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gtk.TreeModelIF;


/** */
public template DocumentLinksT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentLinks* getDocumentLinksStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentLinks*)getStruct();
	}


	/**
	 *
	 * Params:
	 *     linkName = the link name
	 * Returns: an #EvLinkDest
	 */
	public LinkDest findLinkDest(string linkName)
	{
		auto __p = ev_document_links_find_link_dest(getDocumentLinksStruct(), Str.toStringz(linkName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LinkDest)(cast(EvLinkDest*) __p, true);
	}

	/** */
	public int findLinkPage(string linkName)
	{
		return ev_document_links_find_link_page(getDocumentLinksStruct(), Str.toStringz(linkName));
	}

	/** */
	public int getDestPage(LinkDest dest)
	{
		return ev_document_links_get_dest_page(getDocumentLinksStruct(), (dest is null) ? null : dest.getLinkDestStruct());
	}

	/** */
	public string getDestPageLabel(LinkDest dest)
	{
		auto retStr = ev_document_links_get_dest_page_label(getDocumentLinksStruct(), (dest is null) ? null : dest.getLinkDestStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public int getLinkPage(Link link)
	{
		return ev_document_links_get_link_page(getDocumentLinksStruct(), (link is null) ? null : link.getLinkStruct());
	}

	/** */
	public string getLinkPageLabel(Link link)
	{
		auto retStr = ev_document_links_get_link_page_label(getDocumentLinksStruct(), (link is null) ? null : link.getLinkStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public MappingList getLinks(Page page)
	{
		auto __p = ev_document_links_get_links(getDocumentLinksStruct(), (page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MappingList)(cast(EvMappingList*) __p, true);
	}

	/**
	 * Returns: a #GtkTreeModel
	 */
	public TreeModelIF getLinksModel()
	{
		auto __p = ev_document_links_get_links_model(getDocumentLinksStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p, true);
	}

	/** */
	public bool hasDocumentLinks()
	{
		return ev_document_links_has_document_links(getDocumentLinksStruct()) != 0;
	}
}
