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


module evince.document.Media;

private import evince.document.Page;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class Media : ObjectG
{
	/** the main Gtk struct */
	protected EvMedia* evMedia;

	/** Get the main Gtk struct */
	public EvMedia* getMediaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evMedia;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evMedia;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvMedia* evMedia, bool ownedRef = false)
	{
		this.evMedia = evMedia;
		super(cast(GObject*)evMedia, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_media_get_type();
	}

	/** */
	public this(Page page, string uri)
	{
		auto __p = ev_media_new_for_uri((page is null) ? null : page.getPageStruct(), Str.toStringz(uri));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_uri");
		}

		this(cast(EvMedia*) __p, true);
	}

	/** */
	public uint getPageIndex()
	{
		return ev_media_get_page_index(evMedia);
	}

	/** */
	public bool getShowControls()
	{
		return ev_media_get_show_controls(evMedia) != 0;
	}

	/** */
	public string getUri()
	{
		return Str.toString(ev_media_get_uri(evMedia));
	}

	/** */
	public void setShowControls(bool showControls)
	{
		ev_media_set_show_controls(evMedia, showControls);
	}
}
