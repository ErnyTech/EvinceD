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


module evince.document.DocumentFindT;

public  import evince.document.Page;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.ListG;
public  import glib.Str;


/** */
public template DocumentFindT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentFind* getDocumentFindStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentFind*)getStruct();
	}


	/**
	 *
	 * Params:
	 *     page = an #EvPage
	 *     text = text to find
	 *     caseSensitive = whether to match the string case
	 * Returns: a list of results
	 */
	public ListG findText(Page page, string text, bool caseSensitive)
	{
		auto __p = ev_document_find_find_text(getDocumentFindStruct(), (page is null) ? null : page.getPageStruct(), Str.toStringz(text), caseSensitive);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     page = an #EvPage
	 *     text = text to find
	 *     options = a set of #EvFindOptions
	 * Returns: a list of results
	 */
	public ListG findTextWithOptions(Page page, string text, EvFindOptions options)
	{
		auto __p = ev_document_find_find_text_with_options(getDocumentFindStruct(), (page is null) ? null : page.getPageStruct(), Str.toStringz(text), options);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/** */
	public EvFindOptions getSupportedOptions()
	{
		return ev_document_find_get_supported_options(getDocumentFindStruct());
	}
}
