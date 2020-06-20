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


module evince.document.LinkDest;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class LinkDest : ObjectG
{
	/** the main Gtk struct */
	protected EvLinkDest* evLinkDest;

	/** Get the main Gtk struct */
	public EvLinkDest* getLinkDestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evLinkDest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evLinkDest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvLinkDest* evLinkDest, bool ownedRef = false)
	{
		this.evLinkDest = evLinkDest;
		super(cast(GObject*)evLinkDest, ownedRef);
	}

	/** */
	public double getLeft(bool* changeLeft)
	{
		int c_changeLeft;
		auto result = ev_link_dest_get_left(evLinkDest, &c_changeLeft);

		if (changeLeft) {
		 *changeLeft = c_changeLeft == 0 ? false : true;
		}

	return result;
}

/** */
public double getTop(bool* changeTop)
{
	int c_changeTop;
	auto result = ev_link_dest_get_top(evLinkDest, &c_changeTop);

	if (changeTop) {
	 *changeTop = c_changeTop == 0 ? false : true;
	}

return result;
}

/** */
public double getZoom(bool* changeZoom)
{
	int c_changeZoom;
	auto result = ev_link_dest_get_zoom(evLinkDest, &c_changeZoom);

	if (changeZoom) {
	 *changeZoom = c_changeZoom == 0 ? false : true;
	}

return result;
}

/**
 */

/** */
public static GType getType()
{
	return ev_link_dest_get_type();
}

/** */
public this(int page)
{
	auto __p = ev_link_dest_new_fit(page);

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_fit");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(int page, double top, bool changeTop)
{
	auto __p = ev_link_dest_new_fith(page, top, changeTop);

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_fith");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(int page, double left, double bottom, double right, double top)
{
	auto __p = ev_link_dest_new_fitr(page, left, bottom, right, top);

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_fitr");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(int page, double left, bool changeLeft)
{
	auto __p = ev_link_dest_new_fitv(page, left, changeLeft);

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_fitv");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(string namedDest)
{
	auto __p = ev_link_dest_new_named(Str.toStringz(namedDest));

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_named");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(int page)
{
	auto __p = ev_link_dest_new_page(page);

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_page");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(string pageLabel)
{
	auto __p = ev_link_dest_new_page_label(Str.toStringz(pageLabel));

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_page_label");
	}

	this(cast(EvLinkDest*) __p, true);
}

/** */
public this(int page, double left, double top, double zoom, bool changeLeft, bool changeTop, bool changeZoom)
{
	auto __p = ev_link_dest_new_xyz(page, left, top, zoom, changeLeft, changeTop, changeZoom);

	if(__p is null)
	{
		throw new ConstructionException("null returned by new_xyz");
	}

	this(cast(EvLinkDest*) __p, true);
}

/**
 * Checks whether @a and @b are equal.
 *
 * Params:
 *     b = a #EvLinkDest
 *
 * Returns: %TRUE iff @a and @b are equal
 *
 * Since: 3.8
 */
public bool equal(LinkDest b)
{
	return ev_link_dest_equal(evLinkDest, (b is null) ? null : b.getLinkDestStruct()) != 0;
}

/** */
public double getBottom()
{
	return ev_link_dest_get_bottom(evLinkDest);
}

/** */
public EvLinkDestType getDestType()
{
	return ev_link_dest_get_dest_type(evLinkDest);
}

/** */
public string getNamedDest()
{
	return Str.toString(ev_link_dest_get_named_dest(evLinkDest));
}

/** */
public int getPage()
{
	return ev_link_dest_get_page(evLinkDest);
}

/** */
public string getPageLabel()
{
	return Str.toString(ev_link_dest_get_page_label(evLinkDest));
}

/** */
public double getRight()
{
	return ev_link_dest_get_right(evLinkDest);
}
}
