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


module evince.document.DocumentTransitionT;

public  import evince.document.TransitionEffect;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import gobject.ObjectG;


/** */
public template DocumentTransitionT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentTransition* getDocumentTransitionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentTransition*)getStruct();
	}


	/**
	 *
	 * Params:
	 *     page = a page index
	 * Returns: an #EvTransitionEffect
	 */
	public TransitionEffect getEffect(int page)
	{
		auto __p = ev_document_transition_get_effect(getDocumentTransitionStruct(), page);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TransitionEffect)(cast(EvTransitionEffect*) __p, true);
	}

	/** */
	public double getPageDuration(int page)
	{
		return ev_document_transition_get_page_duration(getDocumentTransitionStruct(), page);
	}
}
