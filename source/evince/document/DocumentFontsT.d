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


module evince.document.DocumentFontsT;

public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import glib.Str;
public  import gtk.TreeModelIF;


/** */
public template DocumentFontsT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentFonts* getDocumentFontsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentFonts*)getStruct();
	}


	/** */
	public void fillModel(TreeModelIF model)
	{
		ev_document_fonts_fill_model(getDocumentFontsStruct(), (model is null) ? null : model.getTreeModelStruct());
	}

	/** */
	public string getFontsSummary()
	{
		return Str.toString(ev_document_fonts_get_fonts_summary(getDocumentFontsStruct()));
	}

	/** */
	public double getProgress()
	{
		return ev_document_fonts_get_progress(getDocumentFontsStruct());
	}

	/** */
	public bool scan(int nPages)
	{
		return ev_document_fonts_scan(getDocumentFontsStruct(), nPages) != 0;
	}
}
