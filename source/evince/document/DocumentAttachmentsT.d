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


module evince.document.DocumentAttachmentsT;

public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.ListG;


/** */
public template DocumentAttachmentsT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentAttachments* getDocumentAttachmentsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentAttachments*)getStruct();
	}


	/**
	 * Returns: a list of #EvAttachment objects
	 */
	public ListG getAttachments()
	{
		auto __p = ev_document_attachments_get_attachments(getDocumentAttachmentsStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/** */
	public bool hasAttachments()
	{
		return ev_document_attachments_has_attachments(getDocumentAttachmentsStruct()) != 0;
	}
}
