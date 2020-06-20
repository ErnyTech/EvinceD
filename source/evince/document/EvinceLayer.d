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


module evince.document.EvinceLayer;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class EvinceLayer : ObjectG
{
	/** the main Gtk struct */
	protected EvLayer* evLayer;

	/** Get the main Gtk struct */
	public EvLayer* getEvinceLayerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evLayer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evLayer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvLayer* evLayer, bool ownedRef = false)
	{
		this.evLayer = evLayer;
		super(cast(GObject*)evLayer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_layer_get_type();
	}

	/** */
	public this(bool isParent, int rbGroup)
	{
		auto __p = ev_layer_new(isParent, rbGroup);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvLayer*) __p, true);
	}

	/** */
	public int getRbGroup()
	{
		return ev_layer_get_rb_group(evLayer);
	}

	/** */
	public bool isParent()
	{
		return ev_layer_is_parent(evLayer) != 0;
	}
}
