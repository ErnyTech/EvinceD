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


module evince.document.MappingList;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gtkd.Loader;


/** */
public class MappingList
{
	/** the main Gtk struct */
	protected EvMappingList* evMappingList;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public EvMappingList* getMappingListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evMappingList;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)evMappingList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvMappingList* evMappingList, bool ownedRef = false)
	{
		this.evMappingList = evMappingList;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_EVINCEDOCUMENT) && ownedRef )
			ev_mapping_list_unref(evMappingList);
	}


	/** */
	public static GType getType()
	{
		return ev_mapping_list_get_type();
	}

	/**
	 *
	 * Params:
	 *     page = page index for this mapping
	 *     list = a #GList of data for the page
	 *     dataDestroyFunc = function to free a list element
	 * Returns: an #EvMappingList
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint page, ListG list, GDestroyNotify dataDestroyFunc)
	{
		auto __p = ev_mapping_list_new(page, (list is null) ? null : list.getListGStruct(), dataDestroyFunc);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvMappingList*) __p);
	}

	/**
	 *
	 * Params:
	 *     data = mapping data to find
	 * Returns: an #EvMapping
	 */
	public EvMapping* find(void* data)
	{
		return ev_mapping_list_find(evMappingList, data);
	}

	/**
	 *
	 * Params:
	 *     data = mapping data to find
	 *     func = function to use for equality check
	 * Returns: an #EvMapping
	 */
	public EvMapping* findCustom(void* data, GCompareFunc func)
	{
		return ev_mapping_list_find_custom(evMappingList, data, func);
	}

	/**
	 *
	 * Params:
	 *     x = X coordinate
	 *     y = Y coordinate
	 * Returns: the #EvMapping in the list at coordinates (x, y)
	 *
	 * Since: 3.12
	 */
	public EvMapping* get(double x, double y)
	{
		return ev_mapping_list_get(evMappingList, x, y);
	}

	/**
	 *
	 * Params:
	 *     x = X coordinate
	 *     y = Y coordinate
	 * Returns: the data of a mapping in the list at coordinates (x, y)
	 */
	public void* getData(double x, double y)
	{
		return ev_mapping_list_get_data(evMappingList, x, y);
	}

	/**
	 * Returns: the data for this mapping list
	 */
	public ListG getList()
	{
		auto __p = ev_mapping_list_get_list(evMappingList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/** */
	public uint getPage()
	{
		return ev_mapping_list_get_page(evMappingList);
	}

	/** */
	public uint length()
	{
		return ev_mapping_list_length(evMappingList);
	}

	/**
	 *
	 * Params:
	 *     n = the position to retrieve
	 * Returns: the #Evmapping at position @n in @mapping_list
	 */
	public EvMapping* nth(uint n)
	{
		return ev_mapping_list_nth(evMappingList, n);
	}

	alias doref = ref_;
	/** */
	public MappingList ref_()
	{
		auto __p = ev_mapping_list_ref(evMappingList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MappingList)(cast(EvMappingList*) __p, true);
	}

	/** */
	public void remove(EvMapping* mapping)
	{
		ev_mapping_list_remove(evMappingList, mapping);
	}

	/** */
	public void unref()
	{
		ev_mapping_list_unref(evMappingList);
	}
}
