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


module evince.document.DocumentLicense;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gtkd.Loader;


/** */
public final class DocumentLicense
{
	/** the main Gtk struct */
	protected EvDocumentLicense* evDocumentLicense;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public EvDocumentLicense* getDocumentLicenseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evDocumentLicense;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)evDocumentLicense;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvDocumentLicense* evDocumentLicense, bool ownedRef = false)
	{
		this.evDocumentLicense = evDocumentLicense;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_EVINCEDOCUMENT) && ownedRef )
			ev_document_license_free(evDocumentLicense);
	}


	/** */
	public @property string text()
	{
		return Str.toString(evDocumentLicense.text);
	}

	/** Ditto */
	public @property void text(string value)
	{
		evDocumentLicense.text = Str.toStringz(value);
	}

	/** */
	public @property string uri()
	{
		return Str.toString(evDocumentLicense.uri);
	}

	/** Ditto */
	public @property void uri(string value)
	{
		evDocumentLicense.uri = Str.toStringz(value);
	}

	/** */
	public @property string webStatement()
	{
		return Str.toString(evDocumentLicense.webStatement);
	}

	/** Ditto */
	public @property void webStatement(string value)
	{
		evDocumentLicense.webStatement = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return ev_document_license_get_type();
	}

	/** */
	public this()
	{
		auto __p = ev_document_license_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvDocumentLicense*) __p);
	}

	/** */
	public DocumentLicense copy()
	{
		auto __p = ev_document_license_copy(evDocumentLicense);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DocumentLicense)(cast(EvDocumentLicense*) __p, true);
	}

	/** */
	public void free()
	{
		ev_document_license_free(evDocumentLicense);
		ownedRef = false;
	}

	/** */
	public string getText()
	{
		return Str.toString(ev_document_license_get_text(evDocumentLicense));
	}

	/** */
	public string getUri()
	{
		return Str.toString(ev_document_license_get_uri(evDocumentLicense));
	}

	/** */
	public string getWebStatement()
	{
		return Str.toString(ev_document_license_get_web_statement(evDocumentLicense));
	}
}
