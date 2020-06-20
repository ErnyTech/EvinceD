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


module evince.document.Rectangle;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtkd.Loader;


/** */
public final class Rectangle
{
	/** the main Gtk struct */
	protected EvRectangle* evRectangle;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public EvRectangle* getRectangleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evRectangle;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)evRectangle;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvRectangle* evRectangle, bool ownedRef = false)
	{
		this.evRectangle = evRectangle;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_EVINCEDOCUMENT) && ownedRef )
			ev_rectangle_free(evRectangle);
	}


	/** */
	public @property double x1()
	{
		return evRectangle.x1;
	}

	/** Ditto */
	public @property void x1(double value)
	{
		evRectangle.x1 = value;
	}

	/** */
	public @property double y1()
	{
		return evRectangle.y1;
	}

	/** Ditto */
	public @property void y1(double value)
	{
		evRectangle.y1 = value;
	}

	/** */
	public @property double x2()
	{
		return evRectangle.x2;
	}

	/** Ditto */
	public @property void x2(double value)
	{
		evRectangle.x2 = value;
	}

	/** */
	public @property double y2()
	{
		return evRectangle.y2;
	}

	/** Ditto */
	public @property void y2(double value)
	{
		evRectangle.y2 = value;
	}

	/** */
	public static GType getType()
	{
		return ev_rectangle_get_type();
	}

	/** */
	public this()
	{
		auto __p = ev_rectangle_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvRectangle*) __p);
	}

	/** */
	public Rectangle copy()
	{
		auto __p = ev_rectangle_copy(evRectangle);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Rectangle)(cast(EvRectangle*) __p, true);
	}

	/** */
	public void free()
	{
		ev_rectangle_free(evRectangle);
		ownedRef = false;
	}
}
