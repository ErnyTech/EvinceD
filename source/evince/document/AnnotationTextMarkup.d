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


module evince.document.AnnotationTextMarkup;

private import evince.document.Annotation;
private import evince.document.AnnotationMarkupIF;
private import evince.document.AnnotationMarkupT;
private import evince.document.Page;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class AnnotationTextMarkup : Annotation, AnnotationMarkupIF
{
	/** the main Gtk struct */
	protected EvAnnotationTextMarkup* evAnnotationTextMarkup;

	/** Get the main Gtk struct */
	public EvAnnotationTextMarkup* getAnnotationTextMarkupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evAnnotationTextMarkup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evAnnotationTextMarkup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvAnnotationTextMarkup* evAnnotationTextMarkup, bool ownedRef = false)
	{
		this.evAnnotationTextMarkup = evAnnotationTextMarkup;
		super(cast(EvAnnotation*)evAnnotationTextMarkup, ownedRef);
	}

	// add the AnnotationMarkup capabilities
	mixin AnnotationMarkupT!(EvAnnotationTextMarkup);


	/** */
	public static GType getType()
	{
		return ev_annotation_text_markup_get_type();
	}

	/** */
	public this(Page page)
	{
		auto __p = ev_annotation_text_markup_highlight_new((page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by highlight_new");
		}

		this(cast(EvAnnotationTextMarkup*) __p, true);
	}

	/** */
	public this(Page page)
	{
		auto __p = ev_annotation_text_markup_squiggly_new((page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by squiggly_new");
		}

		this(cast(EvAnnotationTextMarkup*) __p, true);
	}

	/** */
	public this(Page page)
	{
		auto __p = ev_annotation_text_markup_strike_out_new((page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by strike_out_new");
		}

		this(cast(EvAnnotationTextMarkup*) __p, true);
	}

	/** */
	public this(Page page)
	{
		auto __p = ev_annotation_text_markup_underline_new((page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by underline_new");
		}

		this(cast(EvAnnotationTextMarkup*) __p, true);
	}

	/** */
	public EvAnnotationTextMarkupType getMarkupType()
	{
		return ev_annotation_text_markup_get_markup_type(evAnnotationTextMarkup);
	}

	/** */
	public bool setMarkupType(EvAnnotationTextMarkupType markupType)
	{
		return ev_annotation_text_markup_set_markup_type(evAnnotationTextMarkup, markupType) != 0;
	}
}
