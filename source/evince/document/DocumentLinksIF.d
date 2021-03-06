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


module evince.document.DocumentLinksIF;

private import evince.document.Link;
private import evince.document.LinkDest;
private import evince.document.MappingList;
private import evince.document.Page;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.TreeModelIF;


/** */
public interface DocumentLinksIF{
	/** Get the main Gtk struct */
	public EvDocumentLinks* getDocumentLinksStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return ev_document_links_get_type();
	}

	/**
	 *
	 * Params:
	 *     linkName = the link name
	 * Returns: an #EvLinkDest
	 */
	public LinkDest findLinkDest(string linkName);

	/** */
	public int findLinkPage(string linkName);

	/** */
	public int getDestPage(LinkDest dest);

	/** */
	public string getDestPageLabel(LinkDest dest);

	/** */
	public int getLinkPage(Link link);

	/** */
	public string getLinkPageLabel(Link link);

	/** */
	public MappingList getLinks(Page page);

	/**
	 * Returns: a #GtkTreeModel
	 */
	public TreeModelIF getLinksModel();

	/** */
	public bool hasDocumentLinks();
}
