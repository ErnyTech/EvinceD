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


module evince.document.AnnotationText;

private import evince.document.Annotation;
private import evince.document.AnnotationMarkupIF;
private import evince.document.AnnotationMarkupT;
private import evince.document.Page;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class AnnotationText : Annotation, AnnotationMarkupIF
{
	/** the main Gtk struct */
	protected EvAnnotationText* evAnnotationText;

	/** Get the main Gtk struct */
	public EvAnnotationText* getAnnotationTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evAnnotationText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evAnnotationText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvAnnotationText* evAnnotationText, bool ownedRef = false)
	{
		this.evAnnotationText = evAnnotationText;
		super(cast(EvAnnotation*)evAnnotationText, ownedRef);
	}

	// add the AnnotationMarkup capabilities
	mixin AnnotationMarkupT!(EvAnnotationText);


	/** */
	public static GType getType()
	{
		return ev_annotation_text_get_type();
	}

	/** */
	public this(Page page)
	{
		auto __p = ev_annotation_text_new((page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvAnnotationText*) __p, true);
	}

	/** */
	public EvAnnotationTextIcon getIcon()
	{
		return ev_annotation_text_get_icon(evAnnotationText);
	}

	/** */
	public bool getIsOpen()
	{
		return ev_annotation_text_get_is_open(evAnnotationText) != 0;
	}

	/** */
	public bool setIcon(EvAnnotationTextIcon icon)
	{
		return ev_annotation_text_set_icon(evAnnotationText, icon) != 0;
	}

	/** */
	public bool setIsOpen(bool isOpen)
	{
		return ev_annotation_text_set_is_open(evAnnotationText, isOpen) != 0;
	}
}
