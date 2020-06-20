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


module evince.document.SourceLink;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtkd.Loader;


/** */
public final class SourceLink
{
	/** the main Gtk struct */
	protected EvSourceLink* evSourceLink;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public EvSourceLink* getSourceLinkStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evSourceLink;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)evSourceLink;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvSourceLink* evSourceLink, bool ownedRef = false)
	{
		this.evSourceLink = evSourceLink;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_EVINCEDOCUMENT) && ownedRef )
			ev_source_link_free(evSourceLink);
	}


	/** */
	public @property string filename()
	{
		return Str.toString(evSourceLink.filename);
	}

	/** Ditto */
	public @property void filename(string value)
	{
		evSourceLink.filename = Str.toStringz(value);
	}

	/** */
	public @property int line()
	{
		return evSourceLink.line;
	}

	/** Ditto */
	public @property void line(int value)
	{
		evSourceLink.line = value;
	}

	/** */
	public @property int col()
	{
		return evSourceLink.col;
	}

	/** Ditto */
	public @property void col(int value)
	{
		evSourceLink.col = value;
	}

	/** */
	public static GType getType()
	{
		return ev_source_link_get_type();
	}

	/** */
	public this(string filename, int line, int col)
	{
		auto __p = ev_source_link_new(Str.toStringz(filename), line, col);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvSourceLink*) __p);
	}

	/** */
	public SourceLink copy()
	{
		auto __p = ev_source_link_copy(evSourceLink);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceLink)(cast(EvSourceLink*) __p, true);
	}

	/** */
	public void free()
	{
		ev_source_link_free(evSourceLink);
		ownedRef = false;
	}
}
