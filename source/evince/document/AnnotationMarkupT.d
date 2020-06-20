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


module evince.document.AnnotationMarkupT;

public  import evince.document.Rectangle;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.Str;


/** */
public template AnnotationMarkupT(TStruct)
{
	/** Get the main Gtk struct */
	public EvAnnotationMarkup* getAnnotationMarkupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvAnnotationMarkup*)getStruct();
	}


	/** */
	public bool canHavePopup()
	{
		return ev_annotation_markup_can_have_popup(getAnnotationMarkupStruct()) != 0;
	}

	/** */
	public string getLabel()
	{
		return Str.toString(ev_annotation_markup_get_label(getAnnotationMarkupStruct()));
	}

	/** */
	public double getOpacity()
	{
		return ev_annotation_markup_get_opacity(getAnnotationMarkupStruct());
	}

	/** */
	public bool getPopupIsOpen()
	{
		return ev_annotation_markup_get_popup_is_open(getAnnotationMarkupStruct()) != 0;
	}

	/** */
	public void getRectangle(Rectangle evRect)
	{
		ev_annotation_markup_get_rectangle(getAnnotationMarkupStruct(), (evRect is null) ? null : evRect.getRectangleStruct());
	}

	/** */
	public bool hasPopup()
	{
		return ev_annotation_markup_has_popup(getAnnotationMarkupStruct()) != 0;
	}

	/** */
	public bool setHasPopup(bool hasPopup)
	{
		return ev_annotation_markup_set_has_popup(getAnnotationMarkupStruct(), hasPopup) != 0;
	}

	/** */
	public bool setLabel(string label)
	{
		return ev_annotation_markup_set_label(getAnnotationMarkupStruct(), Str.toStringz(label)) != 0;
	}

	/** */
	public bool setOpacity(double opacity)
	{
		return ev_annotation_markup_set_opacity(getAnnotationMarkupStruct(), opacity) != 0;
	}

	/** */
	public bool setPopupIsOpen(bool isOpen)
	{
		return ev_annotation_markup_set_popup_is_open(getAnnotationMarkupStruct(), isOpen) != 0;
	}

	/** */
	public bool setRectangle(Rectangle evRect)
	{
		return ev_annotation_markup_set_rectangle(getAnnotationMarkupStruct(), (evRect is null) ? null : evRect.getRectangleStruct()) != 0;
	}
}
