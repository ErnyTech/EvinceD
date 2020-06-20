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


module evince.document.LinkAction;

private import evince.document.EvinceLayer;
private import evince.document.LinkDest;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class LinkAction : ObjectG
{
	/** the main Gtk struct */
	protected EvLinkAction* evLinkAction;

	/** Get the main Gtk struct */
	public EvLinkAction* getLinkActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evLinkAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evLinkAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvLinkAction* evLinkAction, bool ownedRef = false)
	{
		this.evLinkAction = evLinkAction;
		super(cast(GObject*)evLinkAction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_link_action_get_type();
	}

	/** */
	public this(LinkDest dest)
	{
		auto __p = ev_link_action_new_dest((dest is null) ? null : dest.getLinkDestStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_dest");
		}

		this(cast(EvLinkAction*) __p, true);
	}

	/** */
	public this(string uri)
	{
		auto __p = ev_link_action_new_external_uri(Str.toStringz(uri));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_external_uri");
		}

		this(cast(EvLinkAction*) __p, true);
	}

	/** */
	public this(string filename, string params)
	{
		auto __p = ev_link_action_new_launch(Str.toStringz(filename), Str.toStringz(params));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_launch");
		}

		this(cast(EvLinkAction*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     showList = a list of #EvLayer objects
	 *     hideList = a list of #EvLayer objects
	 *     toggleList = a list of #EvLayer objects
	 * Returns: a new #EvLinkAction
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG showList, ListG hideList, ListG toggleList)
	{
		auto __p = ev_link_action_new_layers_state((showList is null) ? null : showList.getListGStruct(), (hideList is null) ? null : hideList.getListGStruct(), (toggleList is null) ? null : toggleList.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_layers_state");
		}

		this(cast(EvLinkAction*) __p, true);
	}

	/** */
	public this(string name)
	{
		auto __p = ev_link_action_new_named(Str.toStringz(name));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_named");
		}

		this(cast(EvLinkAction*) __p, true);
	}

	/** */
	public this(LinkDest dest, string filename)
	{
		auto __p = ev_link_action_new_remote((dest is null) ? null : dest.getLinkDestStruct(), Str.toStringz(filename));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_remote");
		}

		this(cast(EvLinkAction*) __p, true);
	}

	/**
	 * Checks whether @a and @b are equal.
	 *
	 * Params:
	 *     b = a #EvLinkAction
	 *
	 * Returns: %TRUE iff @a and @b are equal
	 *
	 * Since: 3.8
	 */
	public bool equal(LinkAction b)
	{
		return ev_link_action_equal(evLinkAction, (b is null) ? null : b.getLinkActionStruct()) != 0;
	}

	/** */
	public EvLinkActionType getActionType()
	{
		return ev_link_action_get_action_type(evLinkAction);
	}

	/**
	 * Returns: an #EvLinkDest
	 */
	public LinkDest getDest()
	{
		auto __p = ev_link_action_get_dest(evLinkAction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(LinkDest)(cast(EvLinkDest*) __p);
	}

	/** */
	public string getFilename()
	{
		return Str.toString(ev_link_action_get_filename(evLinkAction));
	}

	/**
	 * Returns: a list of #EvLayer objects
	 */
	public ListG getHideList()
	{
		auto __p = ev_link_action_get_hide_list(evLinkAction);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/** */
	public string getName()
	{
		return Str.toString(ev_link_action_get_name(evLinkAction));
	}

	/** */
	public string getParams()
	{
		return Str.toString(ev_link_action_get_params(evLinkAction));
	}

	/**
	 * Returns: a list of #EvLayer objects
	 */
	public ListG getShowList()
	{
		auto __p = ev_link_action_get_show_list(evLinkAction);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns: a list of #EvLayer objects
	 */
	public ListG getToggleList()
	{
		auto __p = ev_link_action_get_toggle_list(evLinkAction);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/** */
	public string getUri()
	{
		return Str.toString(ev_link_action_get_uri(evLinkAction));
	}
}
