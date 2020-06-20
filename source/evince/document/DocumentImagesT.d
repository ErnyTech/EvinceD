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


module evince.document.DocumentImagesT;

public  import evince.document.Image;
public  import evince.document.MappingList;
public  import evince.document.Page;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import gdkpixbuf.Pixbuf;
public  import gobject.ObjectG;


/** */
public template DocumentImagesT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentImages* getDocumentImagesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentImages*)getStruct();
	}


	/**
	 *
	 * Params:
	 *     image = an #EvImage
	 * Returns: a #GdkPixbuf
	 */
	public Pixbuf getImage(Image image)
	{
		auto __p = ev_document_images_get_image(getDocumentImagesStruct(), (image is null) ? null : image.getImageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/** */
	public MappingList getImageMapping(Page page)
	{
		auto __p = ev_document_images_get_image_mapping(getDocumentImagesStruct(), (page is null) ? null : page.getPageStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MappingList)(cast(EvMappingList*) __p, true);
	}
}
