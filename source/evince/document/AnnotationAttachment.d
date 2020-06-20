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


module evince.document.AnnotationAttachment;

private import evince.document.Annotation;
private import evince.document.AnnotationMarkupIF;
private import evince.document.AnnotationMarkupT;
private import evince.document.Attachment;
private import evince.document.Page;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class AnnotationAttachment : Annotation, AnnotationMarkupIF
{
	/** the main Gtk struct */
	protected EvAnnotationAttachment* evAnnotationAttachment;

	/** Get the main Gtk struct */
	public EvAnnotationAttachment* getAnnotationAttachmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evAnnotationAttachment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evAnnotationAttachment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvAnnotationAttachment* evAnnotationAttachment, bool ownedRef = false)
	{
		this.evAnnotationAttachment = evAnnotationAttachment;
		super(cast(EvAnnotation*)evAnnotationAttachment, ownedRef);
	}

	// add the AnnotationMarkup capabilities
	mixin AnnotationMarkupT!(EvAnnotationAttachment);


	/** */
	public static GType getType()
	{
		return ev_annotation_attachment_get_type();
	}

	/** */
	public this(Page page, Attachment attachment)
	{
		auto __p = ev_annotation_attachment_new((page is null) ? null : page.getPageStruct(), (attachment is null) ? null : attachment.getAttachmentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvAnnotationAttachment*) __p, true);
	}

	/**
	 * Returns: an #EvAttachment
	 */
	public Attachment getAttachment()
	{
		auto __p = ev_annotation_attachment_get_attachment(evAnnotationAttachment);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Attachment)(cast(EvAttachment*) __p);
	}

	/** */
	public bool setAttachment(Attachment attachment)
	{
		return ev_annotation_attachment_set_attachment(evAnnotationAttachment, (attachment is null) ? null : attachment.getAttachmentStruct()) != 0;
	}
}
