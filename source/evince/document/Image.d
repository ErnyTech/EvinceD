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


module evince.document.Image;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class Image : ObjectG
{
	/** the main Gtk struct */
	protected EvImage* evImage;

	/** Get the main Gtk struct */
	public EvImage* getImageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evImage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evImage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvImage* evImage, bool ownedRef = false)
	{
		this.evImage = evImage;
		super(cast(GObject*)evImage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_image_get_type();
	}

	/** */
	public this(int page, int imgId)
	{
		auto __p = ev_image_new(page, imgId);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvImage*) __p, true);
	}

	/** */
	public this(Pixbuf pixbuf)
	{
		auto __p = ev_image_new_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_pixbuf");
		}

		this(cast(EvImage*) __p, true);
	}

	/** */
	public int getId()
	{
		return ev_image_get_id(evImage);
	}

	/** */
	public int getPage()
	{
		return ev_image_get_page(evImage);
	}

	/**
	 * Returns: a #GdkPixbuf
	 */
	public Pixbuf getPixbuf()
	{
		auto __p = ev_image_get_pixbuf(evImage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p);
	}

	/** */
	public string getTmpUri()
	{
		return Str.toString(ev_image_get_tmp_uri(evImage));
	}

	/** */
	public string saveTmp(Pixbuf pixbuf)
	{
		return Str.toString(ev_image_save_tmp(evImage, (pixbuf is null) ? null : pixbuf.getPixbufStruct()));
	}
}
