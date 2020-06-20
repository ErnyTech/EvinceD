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


module evince.document.FormField;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import gobject.ObjectG;


/** */
public class FormField : ObjectG
{
	/** the main Gtk struct */
	protected EvFormField* evFormField;

	/** Get the main Gtk struct */
	public EvFormField* getFormFieldStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evFormField;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evFormField;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvFormField* evFormField, bool ownedRef = false)
	{
		this.evFormField = evFormField;
		super(cast(GObject*)evFormField, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_form_field_get_type();
	}
}
