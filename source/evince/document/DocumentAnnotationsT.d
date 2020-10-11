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


module evince.document.DocumentAnnotationsT;

public  import evince.document.Annotation;
public  import evince.document.MappingList;
public  import evince.document.Page;
public  import evince.document.Rectangle;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import gobject.ObjectG;


/** */
public template DocumentAnnotationsT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentAnnotations* getDocumentAnnotationsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentAnnotations*)getStruct();
	}


	/** */
	public void addAnnotation(Annotation annot, Rectangle rect)
	{
		ev_document_annotations_add_annotation(getDocumentAnnotationsStruct(), (annot is null) ? null : annot.getAnnotationStruct(), (rect is null) ? null : rect.getRectangleStruct());
	}

	/** */
	public bool canAddAnnotation()
	{
		return ev_document_annotations_can_add_annotation(getDocumentAnnotationsStruct()) != 0;
	}

	/** */
	public bool canRemoveAnnotation()
	{
		return ev_document_annotations_can_remove_annotation(getDocumentAnnotationsStruct()) != 0;
	}

	/** */
	public bool documentIsModified()
	{
		return ev_document_annotations_document_is_modified(getDocumentAnnotationsStruct()) != 0;
	}

	/** */
	public MappingList getAnnotations(Page page)
	{
		auto __p = ev_document_annotations_get_annotations(getDocumentAnnotationsStruct(), (page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MappingList)(cast(EvMappingList*) __p, true);
	}

	/** */
	public EvAnnotationsOverMarkup overMarkup(Annotation annot, double x, double y)
	{
		return ev_document_annotations_over_markup(getDocumentAnnotationsStruct(), (annot is null) ? null : annot.getAnnotationStruct(), x, y);
	}

	/** */
	public void removeAnnotation(Annotation annot)
	{
		ev_document_annotations_remove_annotation(getDocumentAnnotationsStruct(), (annot is null) ? null : annot.getAnnotationStruct());
	}

	/** */
	public void saveAnnotation(Annotation annot, EvAnnotationsSaveMask mask)
	{
		ev_document_annotations_save_annotation(getDocumentAnnotationsStruct(), (annot is null) ? null : annot.getAnnotationStruct(), mask);
	}
}
