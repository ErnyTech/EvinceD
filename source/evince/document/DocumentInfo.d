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


module evince.document.DocumentInfo;

private import evince.document.DocumentLicense;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtkd.Loader;


/** */
public final class DocumentInfo
{
	/** the main Gtk struct */
	protected EvDocumentInfo* evDocumentInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public EvDocumentInfo* getDocumentInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evDocumentInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)evDocumentInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvDocumentInfo* evDocumentInfo, bool ownedRef = false)
	{
		this.evDocumentInfo = evDocumentInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_EVINCEDOCUMENT) && ownedRef )
			ev_document_info_free(evDocumentInfo);
	}


	/** */
	public @property string title()
	{
		return Str.toString(evDocumentInfo.title);
	}

	/** Ditto */
	public @property void title(string value)
	{
		evDocumentInfo.title = Str.toStringz(value);
	}

	/** */
	public @property string format()
	{
		return Str.toString(evDocumentInfo.format);
	}

	/** Ditto */
	public @property void format(string value)
	{
		evDocumentInfo.format = Str.toStringz(value);
	}

	/** */
	public @property string author()
	{
		return Str.toString(evDocumentInfo.author);
	}

	/** Ditto */
	public @property void author(string value)
	{
		evDocumentInfo.author = Str.toStringz(value);
	}

	/** */
	public @property string subject()
	{
		return Str.toString(evDocumentInfo.subject);
	}

	/** Ditto */
	public @property void subject(string value)
	{
		evDocumentInfo.subject = Str.toStringz(value);
	}

	/** */
	public @property string keywords()
	{
		return Str.toString(evDocumentInfo.keywords);
	}

	/** Ditto */
	public @property void keywords(string value)
	{
		evDocumentInfo.keywords = Str.toStringz(value);
	}

	/** */
	public @property string creator()
	{
		return Str.toString(evDocumentInfo.creator);
	}

	/** Ditto */
	public @property void creator(string value)
	{
		evDocumentInfo.creator = Str.toStringz(value);
	}

	/** */
	public @property string producer()
	{
		return Str.toString(evDocumentInfo.producer);
	}

	/** Ditto */
	public @property void producer(string value)
	{
		evDocumentInfo.producer = Str.toStringz(value);
	}

	/** */
	public @property string linearized()
	{
		return Str.toString(evDocumentInfo.linearized);
	}

	/** Ditto */
	public @property void linearized(string value)
	{
		evDocumentInfo.linearized = Str.toStringz(value);
	}

	/** */
	public @property string security()
	{
		return Str.toString(evDocumentInfo.security);
	}

	/** Ditto */
	public @property void security(string value)
	{
		evDocumentInfo.security = Str.toStringz(value);
	}

	/** */
	public @property GTime creationDate()
	{
		return evDocumentInfo.creationDate;
	}

	/** Ditto */
	public @property void creationDate(GTime value)
	{
		evDocumentInfo.creationDate = value;
	}

	/** */
	public @property GTime modifiedDate()
	{
		return evDocumentInfo.modifiedDate;
	}

	/** Ditto */
	public @property void modifiedDate(GTime value)
	{
		evDocumentInfo.modifiedDate = value;
	}

	/** */
	public @property EvDocumentLayout layout()
	{
		return evDocumentInfo.layout;
	}

	/** Ditto */
	public @property void layout(EvDocumentLayout value)
	{
		evDocumentInfo.layout = value;
	}

	/** */
	public @property EvDocumentMode mode()
	{
		return evDocumentInfo.mode;
	}

	/** Ditto */
	public @property void mode(EvDocumentMode value)
	{
		evDocumentInfo.mode = value;
	}

	/** */
	public @property uint uiHints()
	{
		return evDocumentInfo.uiHints;
	}

	/** Ditto */
	public @property void uiHints(uint value)
	{
		evDocumentInfo.uiHints = value;
	}

	/** */
	public @property uint permissions()
	{
		return evDocumentInfo.permissions;
	}

	/** Ditto */
	public @property void permissions(uint value)
	{
		evDocumentInfo.permissions = value;
	}

	/** */
	public @property int nPages()
	{
		return evDocumentInfo.nPages;
	}

	/** Ditto */
	public @property void nPages(int value)
	{
		evDocumentInfo.nPages = value;
	}

	/** */
	public @property double paperHeight()
	{
		return evDocumentInfo.paperHeight;
	}

	/** Ditto */
	public @property void paperHeight(double value)
	{
		evDocumentInfo.paperHeight = value;
	}

	/** */
	public @property double paperWidth()
	{
		return evDocumentInfo.paperWidth;
	}

	/** Ditto */
	public @property void paperWidth(double value)
	{
		evDocumentInfo.paperWidth = value;
	}

	/** */
	public @property DocumentLicense license()
	{
		return ObjectG.getDObject!(DocumentLicense)(evDocumentInfo.license, false);
	}

	/** Ditto */
	public @property void license(DocumentLicense value)
	{
		evDocumentInfo.license = value.getDocumentLicenseStruct();
	}

	/** */
	public @property uint fieldsMask()
	{
		return evDocumentInfo.fieldsMask;
	}

	/** Ditto */
	public @property void fieldsMask(uint value)
	{
		evDocumentInfo.fieldsMask = value;
	}

	/** */
	public static GType getType()
	{
		return ev_document_info_get_type();
	}

	/** */
	public DocumentInfo copy()
	{
		auto __p = ev_document_info_copy(evDocumentInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DocumentInfo)(cast(EvDocumentInfo*) __p, true);
	}

	/** */
	public void free()
	{
		ev_document_info_free(evDocumentInfo);
		ownedRef = false;
	}
}
