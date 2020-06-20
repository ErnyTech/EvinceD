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


module evince.document.EvinceDocument;

private import evince.document.Document;
private import evince.document.Rectangle;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import gio.FileIF;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;


/** */
public struct EvinceDocument
{

	/** */
	public static ListG backendsManagerGetAllTypesInfo()
	{
		auto __p = ev_backends_manager_get_all_types_info();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 *
	 * Params:
	 *     mimeType = a mime type hint
	 * Returns: a new #EvDocument
	 */
	public static Document backendsManagerGetDocument(string mimeType)
	{
		auto __p = ev_backends_manager_get_document(Str.toStringz(mimeType));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Document)(cast(EvDocument*) __p, true);
	}

	/** */
	public static string backendsManagerGetDocumentModuleName(Document document)
	{
		return Str.toString(ev_backends_manager_get_document_module_name((document is null) ? null : document.getDocumentStruct()));
	}

	/** */
	public static EvTypeInfo* backendsManagerGetDocumentTypeInfo(Document document)
	{
		return ev_backends_manager_get_document_type_info((document is null) ? null : document.getDocumentStruct());
	}

	/**
	 * Compresses the file at @uri.
	 *
	 * If @type is %EV_COMPRESSION_NONE, it does nothing and returns %NULL.
	 *
	 * Otherwise, it returns the filename of a
	 * temporary file containing the compressed data from the file at @uri.
	 *
	 * On error it returns %NULL and fills in @error.
	 *
	 * It is the caller's responsibility to unlink the temp file after use.
	 *
	 * Params:
	 *     uri = a file URI
	 *     type = the compression type
	 *
	 * Returns: a newly allocated string URI, or %NULL on error
	 *
	 * Throws: GException on failure.
	 */
	public static string fileCompress(string uri, EvCompressionType type)
	{
		GError* err = null;

		auto retStr = ev_file_compress(Str.toStringz(uri), type, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Performs a g_file_copy_attributes() with %G_FILE_COPY_ALL_METADATA
	 * from @from to @to.
	 *
	 * Params:
	 *     from = the source URI
	 *     to = the target URI
	 *
	 * Returns: %TRUE if the attributes were copied successfully, %FALSE otherwise.
	 *
	 * Since: 3.4
	 *
	 * Throws: GException on failure.
	 */
	public static bool fileCopyMetadata(string from, string to)
	{
		GError* err = null;

		auto __p = ev_file_copy_metadata(Str.toStringz(from), Str.toStringz(to), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 * Params:
	 *     uri = the URI
	 *     fast = whether to use fast MIME type detection
	 * Returns: a newly allocated string with the MIME type of the file at
	 *     @uri, or %NULL on error or if the MIME type could not be determined
	 *
	 * Throws: GException on failure.
	 */
	public static string fileGetMimeType(string uri, bool fast)
	{
		GError* err = null;

		auto retStr = ev_file_get_mime_type(Str.toStringz(uri), fast, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public static bool fileIsTemp(FileIF file)
	{
		return ev_file_is_temp((file is null) ? null : file.getFileStruct()) != 0;
	}

	/**
	 * Uncompresses the file at @uri.
	 *
	 * If @type is %EV_COMPRESSION_NONE, it does nothing and returns %NULL.
	 *
	 * Otherwise, it returns the filename of a
	 * temporary file containing the decompressed data from the file at @uri.
	 * On error it returns %NULL and fills in @error.
	 *
	 * It is the caller's responsibility to unlink the temp file after use.
	 *
	 * Params:
	 *     uri = a file URI
	 *     type = the compression type
	 *
	 * Returns: a newly allocated string URI, or %NULL on error
	 *
	 * Throws: GException on failure.
	 */
	public static string fileUncompress(string uri, EvCompressionType type)
	{
		GError* err = null;

		auto retStr = ev_file_uncompress(Str.toStringz(uri), type, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a temp directory in the evince temp directory.
	 *
	 * Params:
	 *     tmpl = a template string; must end in 'XXXXXX'
	 *
	 * Returns: a newly allocated string with the temp directory name, or %NULL
	 *     on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public static string mkdtemp(string tmpl)
	{
		GError* err = null;

		auto retStr = ev_mkdtemp(Str.toStringz(tmpl), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a temp file in the evince temp directory.
	 *
	 * Params:
	 *     tmpl = a template string; must contain 'XXXXXX', but not necessarily as a suffix
	 *     fileName = a location to store the filename of the temp file
	 *
	 * Returns: a file descriptor to the newly created temp file name, or %-1
	 *     on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public static int mkstemp(string tmpl, string[] fileName)
	{
		GError* err = null;

		auto __p = ev_mkstemp(Str.toStringz(tmpl), Str.toStringzArray(fileName), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Creates a temp #GFile in the evince temp directory. See ev_mkstemp() for more information.
	 *
	 * Params:
	 *     tmpl = a template string; must contain 'XXXXXX', but not necessarily as a suffix
	 *
	 * Returns: a newly allocated #GFile for the newly created temp file name, or %NULL
	 *     on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public static FileIF mkstempFile(string tmpl)
	{
		GError* err = null;

		auto __p = ev_mkstemp_file(Str.toStringz(tmpl), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}

	/** */
	public static string getLocaleDir()
	{
		return Str.toString(ev_get_locale_dir());
	}

	/**
	 * Initializes the evince document library, and binds the evince
	 * gettext domain.
	 *
	 * You must call this before calling any other function in the evince
	 * document library.
	 *
	 * Returns: %TRUE if any backends were found; %FALSE otherwise
	 */
	public static bool init()
	{
		return ev_init() != 0;
	}

	/** */
	public static int rectCmp(Rectangle a, Rectangle b)
	{
		return ev_rect_cmp((a is null) ? null : a.getRectangleStruct(), (b is null) ? null : b.getRectangleStruct());
	}

	/**
	 * Shuts the evince document library down.
	 */
	public static void shutdown()
	{
		ev_shutdown();
	}

	/** */
	public static void tmpFileUnlink(FileIF file)
	{
		ev_tmp_file_unlink((file is null) ? null : file.getFileStruct());
	}

	/** */
	public static void tmpFilenameUnlink(string filename)
	{
		ev_tmp_filename_unlink(Str.toStringz(filename));
	}

	/** */
	public static void tmpUriUnlink(string uri)
	{
		ev_tmp_uri_unlink(Str.toStringz(uri));
	}

	/**
	 * Performs a g_file_copy() from @from to @to.
	 *
	 * Params:
	 *     from = the source URI
	 *     to = the target URI
	 *
	 * Returns: %TRUE on success, or %FALSE on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public static bool xferUriSimple(string from, string to)
	{
		GError* err = null;

		auto __p = ev_xfer_uri_simple(Str.toStringz(from), Str.toStringz(to), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
