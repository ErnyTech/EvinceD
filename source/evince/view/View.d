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


module evince.view.View;

private import evince.document.Annotation;
private import evince.document.Link;
private import evince.document.LinkAction;
private import evince.document.SourceLink;
private import evince.view.DocumentModel;
private import evince.view.JobFind;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Border;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Container;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;
private import std.algorithm;


/** */
public class View : Container, ScrollableIF
{
	/** the main Gtk struct */
	protected EvView* evView;

	/** Get the main Gtk struct */
	public EvView* getViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvView* evView, bool ownedRef = false)
	{
		this.evView = evView;
		super(cast(GtkContainer*)evView, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(EvView);


	/** */
	public static GType getType()
	{
		return ev_view_get_type();
	}

	/** */
	public this()
	{
		auto __p = ev_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvView*) __p);
	}

	/**
	 * Adds a Text Markup annotation (defaulting to a 'highlight' one) to
	 * the currently selected text on the document.
	 *
	 * When the selected text spans more than one page, it will add a
	 * corresponding annotation for each page that contains selected text.
	 *
	 * Returns: %TRUE if annotations were added successfully, %FALSE otherwise.
	 *
	 * Since: 3.30
	 */
	public bool addTextMarkupAnnotationForSelectedText()
	{
		return ev_view_add_text_markup_annotation_for_selected_text(evView) != 0;
	}

	/** */
	public void autoscrollStart()
	{
		ev_view_autoscroll_start(evView);
	}

	/** */
	public void autoscrollStop()
	{
		ev_view_autoscroll_stop(evView);
	}

	/** */
	public void beginAddAnnotation(EvAnnotationType annotType)
	{
		ev_view_begin_add_annotation(evView, annotType);
	}

	/** */
	public bool canZoomIn()
	{
		return ev_view_can_zoom_in(evView) != 0;
	}

	/** */
	public bool canZoomOut()
	{
		return ev_view_can_zoom_out(evView) != 0;
	}

	/** */
	public void cancelAddAnnotation()
	{
		ev_view_cancel_add_annotation(evView);
	}

	/** */
	public void copy()
	{
		ev_view_copy(evView);
	}

	/** */
	public void copyLinkAddress(LinkAction action)
	{
		ev_view_copy_link_address(evView, (action is null) ? null : action.getLinkActionStruct());
	}

	/** */
	public void findCancel()
	{
		ev_view_find_cancel(evView);
	}

	/** */
	public void findNext()
	{
		ev_view_find_next(evView);
	}

	/** */
	public void findPrevious()
	{
		ev_view_find_previous(evView);
	}

	/**
	 * Restart the current search operation from the given @page.
	 *
	 * Params:
	 *     page = a page index
	 *
	 * Since: 3.12
	 */
	public void findRestart(int page)
	{
		ev_view_find_restart(evView, page);
	}

	/** */
	public void findSearchChanged()
	{
		ev_view_find_search_changed(evView);
	}

	/** */
	public void findSetHighlightSearch(bool value)
	{
		ev_view_find_set_highlight_search(evView, value);
	}

	/**
	 * FIXME
	 *
	 * Since: 3.10
	 */
	public void findSetResult(int page, int result)
	{
		ev_view_find_set_result(evView, page, result);
	}

	/** */
	public void findStarted(JobFind job)
	{
		ev_view_find_started(evView, (job is null) ? null : job.getJobFindStruct());
	}

	/** */
	public void focusAnnotation(EvMapping* annotMapping)
	{
		ev_view_focus_annotation(evView, annotMapping);
	}

	/** */
	public bool getAllowLinksChangeZoom()
	{
		return ev_view_get_allow_links_change_zoom(evView) != 0;
	}

	/** */
	public bool getEnableSpellchecking()
	{
		return ev_view_get_enable_spellchecking(evView) != 0;
	}

	/** */
	public bool getHasSelection()
	{
		return ev_view_get_has_selection(evView) != 0;
	}

	/** */
	public bool getPageExtents(int page, GdkRectangle* pageArea, Border border)
	{
		return ev_view_get_page_extents(evView, page, pageArea, (border is null) ? null : border.getBorderStruct()) != 0;
	}

	/** */
	public bool getPageExtentsForBorder(int page, Border border, GdkRectangle* pageArea)
	{
		return ev_view_get_page_extents_for_border(evView, page, (border is null) ? null : border.getBorderStruct(), pageArea) != 0;
	}

	/**
	 * Returns a pointer to a constant string containing the selected
	 * text in the view.
	 *
	 * The value returned may be NULL if there is no selected text.
	 *
	 * Returns: The string representing selected text.
	 *
	 * Since: 3.30
	 */
	public string getSelectedText()
	{
		auto retStr = ev_view_get_selected_text(evView);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public void handleLink(Link link)
	{
		ev_view_handle_link(evView, (link is null) ? null : link.getLinkStruct());
	}

	/** */
	public void hideCursor()
	{
		ev_view_hide_cursor(evView);
	}

	/** */
	public void highlightForwardSearch(SourceLink link)
	{
		ev_view_highlight_forward_search(evView, (link is null) ? null : link.getSourceLinkStruct());
	}

	/** */
	public bool isCaretNavigationEnabled()
	{
		return ev_view_is_caret_navigation_enabled(evView) != 0;
	}

	/**
	 * Returns: %TRUE iff the view is currently loading a document
	 *
	 * Since: 3.8
	 */
	public bool isLoading()
	{
		return ev_view_is_loading(evView) != 0;
	}

	/** */
	public bool nextPage()
	{
		return ev_view_next_page(evView) != 0;
	}

	/** */
	public bool previousPage()
	{
		return ev_view_previous_page(evView) != 0;
	}

	/** */
	public void reload()
	{
		ev_view_reload(evView);
	}

	/** */
	public void removeAnnotation(Annotation annot)
	{
		ev_view_remove_annotation(evView, (annot is null) ? null : annot.getAnnotationStruct());
	}

	/** */
	public void scroll(GtkScrollType scroll, bool horizontal)
	{
		ev_view_scroll(evView, scroll, horizontal);
	}

	/** */
	public void selectAll()
	{
		ev_view_select_all(evView);
	}

	/** */
	public void setAllowLinksChangeZoom(bool allowed)
	{
		ev_view_set_allow_links_change_zoom(evView, allowed);
	}

	/** */
	public void setCaretCursorPosition(uint page, uint offset)
	{
		ev_view_set_caret_cursor_position(evView, page, offset);
	}

	/**
	 * Enables or disables caret navigation mode for the document.
	 *
	 * Params:
	 *     enabled = whether to enable caret navigation mode
	 *
	 * Since: 3.10
	 */
	public void setCaretNavigationEnabled(bool enabled)
	{
		ev_view_set_caret_navigation_enabled(evView, enabled);
	}

	/** */
	public void setEnableSpellchecking(bool spellcheck)
	{
		ev_view_set_enable_spellchecking(evView, spellcheck);
	}

	/** */
	public void setLoading(bool loading)
	{
		ev_view_set_loading(evView, loading);
	}

	/** */
	public void setModel(DocumentModel model)
	{
		ev_view_set_model(evView, (model is null) ? null : model.getDocumentModelStruct());
	}

	/**
	 * Sets the maximum size in bytes that will be used to cache
	 * rendered pages. Use 0 to disable caching rendered pages.
	 *
	 * Note that this limit doesn't affect the current visible page range,
	 * which will always be rendered. In order to limit the total memory used
	 * you have to use ev_document_model_set_max_scale() too.
	 *
	 * Params:
	 *     cacheSize = size in bytes
	 */
	public void setPageCacheSize(size_t cacheSize)
	{
		ev_view_set_page_cache_size(evView, cacheSize);
	}

	/** */
	public void showCursor()
	{
		ev_view_show_cursor(evView);
	}

	/**
	 * Returns: whether the document supports caret navigation
	 *
	 * Since: 3.10
	 */
	public bool supportsCaretNavigation()
	{
		return ev_view_supports_caret_navigation(evView) != 0;
	}

	/** */
	public void zoomIn()
	{
		ev_view_zoom_in(evView);
	}

	/** */
	public void zoomOut()
	{
		ev_view_zoom_out(evView);
	}

	/** */
	gulong addOnActivate(void delegate(View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnAnnotAdded(void delegate(Annotation, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "annot-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnAnnotRemoved(void delegate(Annotation, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "annot-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnCursorMoved(void delegate(int, int, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cursor-moved", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnExternalLink(void delegate(ObjectG, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "external-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnHandleLink(void delegate(ObjectG, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "handle-link", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnLayersChanged(void delegate(View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "layers-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnMoveCursor(bool delegate(GtkMovementStep, int, bool, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnPopup(void delegate(void*, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popup", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnScroll(void delegate(GtkScrollType, GtkOrientation, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "scroll", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSelectionChanged(void delegate(View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selection-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSyncSource(void delegate(SourceLink, View) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "sync-source", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
