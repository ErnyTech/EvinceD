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


module evince.document.Document;

private import cairo.Context;
private import cairo.Surface;
private import evince.document.DocumentInfo;
private import evince.document.Page;
private import evince.document.RenderContext;
private import evince.document.SourceLink;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import gdk.Screen;
private import gdkpixbuf.Pixbuf;
private import gio.Cancellable;
private import gio.FileIF;
private import gio.InputStream;
private import glib.ErrorG;
private import glib.GException;
private import glib.Mutex;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Border;
private import gtk.Widget;


/** */
public class Document : ObjectG
{
	/** the main Gtk struct */
	protected EvDocument* evDocument;

	/** Get the main Gtk struct */
	public EvDocument* getDocumentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evDocument;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evDocument;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvDocument* evDocument, bool ownedRef = false)
	{
		this.evDocument = evDocument;
		super(cast(GObject*)evDocument, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_document_get_type();
	}

	/** */
	public static void docMutexLock()
	{
		ev_document_doc_mutex_lock();
	}

	/** */
	public static bool docMutexTrylock()
	{
		return ev_document_doc_mutex_trylock() != 0;
	}

	/** */
	public static void docMutexUnlock()
	{
		ev_document_doc_mutex_unlock();
	}

	/**
	 * Adds some file filters to @chooser.
	 *
	 * Always add a "All documents" format.
	 *
	 * If @document is not %NULL, adds a #GtkFileFilter for @document's MIME type.
	 *
	 * If @document is %NULL, adds a #GtkFileFilter for each document type that evince
	 * can handle.
	 *
	 * Params:
	 *     chooser = a #GtkFileChooser
	 *     document = a #EvDocument, or %NULL
	 */
	public static void factoryAddFilters(Widget chooser, Document document)
	{
		ev_document_factory_add_filters((chooser is null) ? null : chooser.getWidgetStruct(), (document is null) ? null : document.getDocumentStruct());
	}

	/**
	 * Creates a #EvDocument for the document at @uri; or, if no backend handling
	 * the document's type is found, or an error occurred on opening the document,
	 * returns %NULL and fills in @error.
	 * If the document is encrypted, it is returned but also @error is set to
	 * %EV_DOCUMENT_ERROR_ENCRYPTED.
	 *
	 * Params:
	 *     uri = an URI
	 *
	 * Returns: a new #EvDocument, or %NULL
	 *
	 * Throws: GException on failure.
	 */
	public static Document factoryGetDocument(string uri)
	{
		GError* err = null;

		auto __p = ev_document_factory_get_document(Str.toStringz(uri), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Document)(cast(EvDocument*) __p, true);
	}

	/**
	 * Synchronously creates a #EvDocument for the document at @file; or, if no
	 * backend handling the document's type is found, or an error occurred on
	 * opening the document, returns %NULL and fills in @error.
	 * If the document is encrypted, it is returned but also @error is set to
	 * %EV_DOCUMENT_ERROR_ENCRYPTED.
	 *
	 * Params:
	 *     file = a #GFile
	 *     flags = flags from #EvDocumentLoadFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #EvDocument, or %NULL
	 *
	 * Since: 3.6
	 *
	 * Throws: GException on failure.
	 */
	public static Document factoryGetDocumentForGfile(FileIF file, EvDocumentLoadFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = ev_document_factory_get_document_for_gfile((file is null) ? null : file.getFileStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Document)(cast(EvDocument*) __p, true);
	}

	/**
	 * Synchronously creates a #EvDocument for the document from @stream; or, if no
	 * backend handling the document's type is found, or an error occurred
	 * on opening the document, returns %NULL and fills in @error.
	 * If the document is encrypted, it is returned but also @error is set to
	 * %EV_DOCUMENT_ERROR_ENCRYPTED.
	 *
	 * If @mime_type is non-%NULL, this overrides any type inferred from the stream.
	 * If the mime type cannot be inferred from the stream, and @mime_type is %NULL,
	 * an error is returned.
	 *
	 * Params:
	 *     stream = a #GInputStream
	 *     mimeType = a mime type hint
	 *     flags = flags from #EvDocumentLoadFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #EvDocument, or %NULL
	 *
	 * Since: 3.6
	 *
	 * Throws: GException on failure.
	 */
	public static Document factoryGetDocumentForStream(InputStream stream, string mimeType, EvDocumentLoadFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = ev_document_factory_get_document_for_stream((stream is null) ? null : stream.getInputStreamStruct(), Str.toStringz(mimeType), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Document)(cast(EvDocument*) __p, true);
	}

	/**
	 * Creates a #EvDocument for the document at @uri; or, if no backend handling
	 * the document's type is found, or an error occurred on opening the document,
	 * returns %NULL and fills in @error.
	 * If the document is encrypted, it is returned but also @error is set to
	 * %EV_DOCUMENT_ERROR_ENCRYPTED.
	 *
	 * Params:
	 *     uri = an URI
	 *     flags = flags from #EvDocumentLoadFlags
	 *
	 * Returns: a new #EvDocument, or %NULL
	 *
	 * Throws: GException on failure.
	 */
	public static Document factoryGetDocumentFull(string uri, EvDocumentLoadFlags flags)
	{
		GError* err = null;

		auto __p = ev_document_factory_get_document_full(Str.toStringz(uri), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Document)(cast(EvDocument*) __p, true);
	}

	/** */
	public static void fcMutexLock()
	{
		ev_document_fc_mutex_lock();
	}

	/** */
	public static bool fcMutexTrylock()
	{
		return ev_document_fc_mutex_trylock() != 0;
	}

	/** */
	public static void fcMutexUnlock()
	{
		ev_document_fc_mutex_unlock();
	}

	/** */
	public static Mutex getDocMutex()
	{
		auto __p = ev_document_get_doc_mutex();

		if(__p is null)
		{
			return null;
		}

		return new Mutex(cast(GMutex*) __p);
	}

	/** */
	public static Mutex getFcMutex()
	{
		auto __p = ev_document_get_fc_mutex();

		if(__p is null)
		{
			return null;
		}

		return new Mutex(cast(GMutex*) __p);
	}

	/** */
	public static string miscFormatDate(GTime utime)
	{
		auto retStr = ev_document_misc_format_date(utime);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     width = the desired width
	 *     height = the desired height
	 *     invertedColors = whether to invert colors
	 * Returns: a #GdkPixbuf
	 */
	public static Pixbuf miscGetLoadingThumbnail(int width, int height, bool invertedColors)
	{
		auto __p = ev_document_misc_get_loading_thumbnail(width, height, invertedColors);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/** */
	public static void miscGetPageBorderSize(int pageWidth, int pageHeight, Border border)
	{
		ev_document_misc_get_page_border_size(pageWidth, pageHeight, (border is null) ? null : border.getBorderStruct());
	}

	/**
	 * Get the pointer's x and y position relative to @widget.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *     x = the pointer's "x" position, or -1 if the position is not
	 *         available
	 *     y = the pointer's "y" position, or -1 if the position is not
	 *         available
	 */
	public static void miscGetPointerPosition(Widget widget, out int x, out int y)
	{
		ev_document_misc_get_pointer_position((widget is null) ? null : widget.getWidgetStruct(), &x, &y);
	}

	/**
	 *
	 *
	 * Deprecated: This uses a deprecated GDK API. Use
	 * ev_document_misc_get_widget_dpi() instead, which uses GDK's per-monitor
	 * information.
	 *
	 * Params:
	 *     screen = a #GtkScreen
	 *
	 * Returns: The DPI of @screen, or 96 if the DPI is not available
	 */
	public static double miscGetScreenDpi(Screen screen)
	{
		return ev_document_misc_get_screen_dpi((screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 *
	 * Params:
	 *     width = the desired width
	 *     height = the desired height
	 *     sourcePixbuf = a #GdkPixbuf
	 * Returns: a #GdkPixbuf
	 */
	public static Pixbuf miscGetThumbnailFrame(int width, int height, Pixbuf sourcePixbuf)
	{
		auto __p = ev_document_misc_get_thumbnail_frame(width, height, (sourcePixbuf is null) ? null : sourcePixbuf.getPixbufStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 * Returns DPI for monitor on which given widget has been realized.
	 * Returns DPI of primary monitor or DPI of first monitor in the list inside
	 * of GdkDisplay if the widget has not been realized yet.
	 * Returns 96 as fallback value.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Returns: DPI as gdouble
	 */
	public static double miscGetWidgetDpi(Widget widget)
	{
		return ev_document_misc_get_widget_dpi((widget is null) ? null : widget.getWidgetStruct());
	}

	/** */
	public static void miscInvertPixbuf(Pixbuf pixbuf)
	{
		ev_document_misc_invert_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
	}

	/** */
	public static void miscInvertSurface(Surface surface)
	{
		ev_document_misc_invert_surface((surface is null) ? null : surface.getSurfaceStruct());
	}

	/** */
	public static void miscPaintOnePage(Context cr, Widget widget, GdkRectangle* area, Border border, bool highlight, bool invertedColors)
	{
		ev_document_misc_paint_one_page((cr is null) ? null : cr.getContextStruct(), (widget is null) ? null : widget.getWidgetStruct(), area, (border is null) ? null : border.getBorderStruct(), highlight, invertedColors);
	}

	/**
	 *
	 * Params:
	 *     surface = a #cairo_surface_t
	 * Returns: a #GdkPixbuf
	 */
	public static Pixbuf miscPixbufFromSurface(Surface surface)
	{
		auto __p = ev_document_misc_pixbuf_from_surface((surface is null) ? null : surface.getSurfaceStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget to use for style information
	 *     width = the desired width
	 *     height = the desired height
	 *     invertedColors = whether to invert colors
	 * Returns: a #GdkPixbuf
	 *
	 * Since: 3.8
	 */
	public static Pixbuf miscRenderLoadingThumbnail(Widget widget, int width, int height, bool invertedColors)
	{
		auto __p = ev_document_misc_render_loading_thumbnail((widget is null) ? null : widget.getWidgetStruct(), width, height, invertedColors);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget to use for style information
	 *     width = the desired width
	 *     height = the desired height
	 *     invertedColors = whether to invert colors
	 * Returns: a #cairo_surface_t
	 *
	 * Since: 3.14
	 */
	public static Surface miscRenderLoadingThumbnailSurface(Widget widget, int width, int height, bool invertedColors)
	{
		auto __p = ev_document_misc_render_loading_thumbnail_surface((widget is null) ? null : widget.getWidgetStruct(), width, height, invertedColors);

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget to use for style information
	 *     sourceSurface = a #cairo_surface_t
	 *     width = the desired width
	 *     height = the desired height
	 * Returns: a #cairo_surface_t
	 *
	 * Since: 3.14
	 */
	public static Surface miscRenderThumbnailSurfaceWithFrame(Widget widget, Surface sourceSurface, int width, int height)
	{
		auto __p = ev_document_misc_render_thumbnail_surface_with_frame((widget is null) ? null : widget.getWidgetStruct(), (sourceSurface is null) ? null : sourceSurface.getSurfaceStruct(), width, height);

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/**
	 *
	 * Params:
	 *     widget = a #GtkWidget to use for style information
	 *     sourcePixbuf = a #GdkPixbuf
	 * Returns: a #GdkPixbuf
	 *
	 * Since: 3.8
	 */
	public static Pixbuf miscRenderThumbnailWithFrame(Widget widget, Pixbuf sourcePixbuf)
	{
		auto __p = ev_document_misc_render_thumbnail_with_frame((widget is null) ? null : widget.getWidgetStruct(), (sourcePixbuf is null) ? null : sourcePixbuf.getPixbufStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/** */
	public static Surface miscSurfaceFromPixbuf(Pixbuf pixbuf)
	{
		auto __p = ev_document_misc_surface_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/** */
	public static Surface miscSurfaceRotateAndScale(Surface surface, int destWidth, int destHeight, int destRotation)
	{
		auto __p = ev_document_misc_surface_rotate_and_scale((surface is null) ? null : surface.getSurfaceStruct(), destWidth, destHeight, destRotation);

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/** */
	public bool checkDimensions()
	{
		return ev_document_check_dimensions(evDocument) != 0;
	}

	/** */
	public bool findPageByLabel(string pageLabel, int* pageIndex)
	{
		return ev_document_find_page_by_label(evDocument, Str.toStringz(pageLabel), pageIndex) != 0;
	}

	/** */
	public bool getBackendInfo(EvDocumentBackendInfo* info)
	{
		return ev_document_get_backend_info(evDocument, info) != 0;
	}

	/**
	 * Returns the #EvDocumentInfo for the document.
	 *
	 * Returns: a #EvDocumentInfo
	 */
	public DocumentInfo getInfo()
	{
		auto __p = ev_document_get_info(evDocument);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DocumentInfo)(cast(EvDocumentInfo*) __p);
	}

	/** */
	public int getMaxLabelLen()
	{
		return ev_document_get_max_label_len(evDocument);
	}

	/** */
	public void getMaxPageSize(double* width, double* height)
	{
		ev_document_get_max_page_size(evDocument, width, height);
	}

	/** */
	public void getMinPageSize(double* width, double* height)
	{
		ev_document_get_min_page_size(evDocument, width, height);
	}

	/**
	 * Returns: %TRUE iff the document has been modified.
	 *
	 *     You can monitor changes to the modification state by connecting to the
	 *     notify::modified signal on @document.
	 *
	 * Since: 3.28
	 */
	public bool getModified()
	{
		return ev_document_get_modified(evDocument) != 0;
	}

	/** */
	public int getNPages()
	{
		return ev_document_get_n_pages(evDocument);
	}

	/**
	 *
	 * Params:
	 *     index = index of page
	 * Returns: Newly created #EvPage for the given index.
	 */
	public Page getPage(int index)
	{
		auto __p = ev_document_get_page(evDocument, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Page)(cast(EvPage*) __p, true);
	}

	/** */
	public string getPageLabel(int pageIndex)
	{
		auto retStr = ev_document_get_page_label(evDocument, pageIndex);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public void getPageSize(int pageIndex, out double width, out double height)
	{
		ev_document_get_page_size(evDocument, pageIndex, &width, &height);
	}

	/** */
	public ulong getSize()
	{
		return ev_document_get_size(evDocument);
	}

	/**
	 *
	 * Params:
	 *     rc = an #EvRenderContext
	 * Returns: a #GdkPixbuf
	 */
	public Pixbuf getThumbnail(RenderContext rc)
	{
		auto __p = ev_document_get_thumbnail(evDocument, (rc is null) ? null : rc.getRenderContextStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Pixbuf)(cast(GdkPixbuf*) __p, true);
	}

	/**
	 *
	 * Params:
	 *     rc = an #EvRenderContext
	 * Returns: a #cairo_surface_t
	 *
	 * Since: 3.14
	 */
	public Surface getThumbnailSurface(RenderContext rc)
	{
		auto __p = ev_document_get_thumbnail_surface(evDocument, (rc is null) ? null : rc.getRenderContextStruct());

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/** */
	public string getTitle()
	{
		return Str.toString(ev_document_get_title(evDocument));
	}

	/** */
	public string getUri()
	{
		return Str.toString(ev_document_get_uri(evDocument));
	}

	/** */
	public bool hasSynctex()
	{
		return ev_document_has_synctex(evDocument) != 0;
	}

	/** */
	public bool hasTextPageLabels()
	{
		return ev_document_has_text_page_labels(evDocument) != 0;
	}

	/** */
	public bool isPageSizeUniform()
	{
		return ev_document_is_page_size_uniform(evDocument) != 0;
	}

	/**
	 * Loads @document from @uri.
	 *
	 * On failure, %FALSE is returned and @error is filled in.
	 * If the document is encrypted, EV_DEFINE_ERROR_ENCRYPTED is returned.
	 * If the backend cannot load the specific document, EV_DOCUMENT_ERROR_INVALID
	 * is returned. If the backend does not support the format for the document's
	 * contents, EV_DOCUMENT_ERROR_UNSUPPORTED_CONTENT is returned. Other errors
	 * are possible too, depending on the backend used to load the document and
	 * the URI, e.g. #GIOError, #GFileError, and #GConvertError.
	 *
	 * Params:
	 *     uri = the document's URI
	 *
	 * Returns: %TRUE on success, or %FALSE on failure.
	 *
	 * Throws: GException on failure.
	 */
	public bool load(string uri)
	{
		GError* err = null;

		auto __p = ev_document_load(evDocument, Str.toStringz(uri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Loads @document from @uri.
	 *
	 * On failure, %FALSE is returned and @error is filled in.
	 * If the document is encrypted, EV_DEFINE_ERROR_ENCRYPTED is returned.
	 * If the backend cannot load the specific document, EV_DOCUMENT_ERROR_INVALID
	 * is returned. Other errors are possible too, depending on the backend
	 * used to load the document and the URI, e.g. #GIOError, #GFileError, and
	 * #GConvertError.
	 *
	 * Params:
	 *     uri = the document's URI
	 *     flags = flags from #EvDocumentLoadFlags
	 *
	 * Returns: %TRUE on success, or %FALSE on failure.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFull(string uri, EvDocumentLoadFlags flags)
	{
		GError* err = null;

		auto __p = ev_document_load_full(evDocument, Str.toStringz(uri), flags, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Synchronously loads the document from @file.
	 * See ev_document_load() for more information.
	 *
	 * Params:
	 *     file = a #GFile
	 *     flags = flags from #EvDocumentLoadFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if loading succeeded, or %FALSE on error with @error filled in
	 *
	 * Since: 3.6
	 *
	 * Throws: GException on failure.
	 */
	public bool loadGfile(FileIF file, EvDocumentLoadFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = ev_document_load_gfile(evDocument, (file is null) ? null : file.getFileStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Synchronously loads the document from @stream.
	 * See ev_document_load() for more information.
	 *
	 * Params:
	 *     stream = a #GInputStream
	 *     flags = flags from #EvDocumentLoadFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if loading succeeded, or %FALSE on error with @error filled in
	 *
	 * Since: 3.6
	 *
	 * Throws: GException on failure.
	 */
	public bool loadStream(InputStream stream, EvDocumentLoadFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = ev_document_load_stream(evDocument, (stream is null) ? null : stream.getInputStreamStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/** */
	public Surface render(RenderContext rc)
	{
		auto __p = ev_document_render(evDocument, (rc is null) ? null : rc.getRenderContextStruct());

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/**
	 * Saves @document to @uri.
	 *
	 * Params:
	 *     uri = the target URI
	 *
	 * Returns: %TRUE on success, or %FALSE on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool save(string uri)
	{
		GError* err = null;

		auto __p = ev_document_save(evDocument, Str.toStringz(uri), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Set the @document modification state as @modified.
	 *
	 * Params:
	 *     modified = a boolean value to set the document as modified or not.
	 *
	 * Since: 3.28
	 */
	public void setModified(bool modified)
	{
		ev_document_set_modified(evDocument, modified);
	}

	/**
	 * Peforms a Synctex backward search to obtain the TeX input file, line and
	 * (possibly) column  corresponding to the  position (@x,@y) (in 72dpi
	 * coordinates) in the  @page of @document.
	 *
	 * Params:
	 *     pageIndex = the target page
	 *     x = X coordinate
	 *     y = Y coordinate
	 *
	 * Returns: A pointer to the EvSourceLink structure that holds the result. @NULL if synctex
	 *     is not enabled for the document or no result is found.
	 *     The EvSourceLink pointer should be freed with g_free after it is used.
	 */
	public SourceLink synctexBackwardSearch(int pageIndex, float x, float y)
	{
		auto __p = ev_document_synctex_backward_search(evDocument, pageIndex, x, y);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SourceLink)(cast(EvSourceLink*) __p, true);
	}

	/**
	 * Peforms a Synctex forward search to obtain the area in the document
	 * corresponding to the position (line and column in @source_link) in
	 * the source Tex file.
	 *
	 * Params:
	 *     sourceLink = a #EvSourceLink
	 *
	 * Returns: An EvMapping with the page number and area corresponfing to
	 *     the given line in the source file. It must be free with g_free when done
	 */
	public EvMapping* synctexForwardSearch(SourceLink sourceLink)
	{
		return ev_document_synctex_forward_search(evDocument, (sourceLink is null) ? null : sourceLink.getSourceLinkStruct());
	}
}
