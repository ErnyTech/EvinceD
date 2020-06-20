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


module evince.view.DocumentModel;

private import evince.document.Document;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/** */
public class DocumentModel : ObjectG
{
	/** the main Gtk struct */
	protected EvDocumentModel* evDocumentModel;

	/** Get the main Gtk struct */
	public EvDocumentModel* getDocumentModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evDocumentModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evDocumentModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvDocumentModel* evDocumentModel, bool ownedRef = false)
	{
		this.evDocumentModel = evDocumentModel;
		super(cast(GObject*)evDocumentModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_document_model_get_type();
	}

	/** */
	public this()
	{
		auto __p = ev_document_model_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvDocumentModel*) __p, true);
	}

	/** */
	public this(Document document)
	{
		auto __p = ev_document_model_new_with_document((document is null) ? null : document.getDocumentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_document");
		}

		this(cast(EvDocumentModel*) __p, true);
	}

	/** */
	public bool getContinuous()
	{
		return ev_document_model_get_continuous(evDocumentModel) != 0;
	}

	/**
	 * Returns the #EvDocument referenced by the model.
	 *
	 * Returns: a #EvDocument
	 */
	public Document getDocument()
	{
		auto __p = ev_document_model_get_document(evDocumentModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Document)(cast(EvDocument*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use ev_document_model_get_page_layout() instead
	 *
	 * Returns: whether the document model's page layout is set to
	 *     %EV_PAGE_LAYOUT_DUAL.
	 */
	public bool getDualPage()
	{
		return ev_document_model_get_dual_page(evDocumentModel) != 0;
	}

	/** */
	public bool getDualPageOddPagesLeft()
	{
		return ev_document_model_get_dual_page_odd_pages_left(evDocumentModel) != 0;
	}

	/** */
	public bool getFullscreen()
	{
		return ev_document_model_get_fullscreen(evDocumentModel) != 0;
	}

	/** */
	public bool getInvertedColors()
	{
		return ev_document_model_get_inverted_colors(evDocumentModel) != 0;
	}

	/** */
	public double getMaxScale()
	{
		return ev_document_model_get_max_scale(evDocumentModel);
	}

	/** */
	public double getMinScale()
	{
		return ev_document_model_get_min_scale(evDocumentModel);
	}

	/** */
	public int getPage()
	{
		return ev_document_model_get_page(evDocumentModel);
	}

	/**
	 * Returns: the document model's page layout
	 *
	 * Since: 3.8
	 */
	public EvPageLayout getPageLayout()
	{
		return ev_document_model_get_page_layout(evDocumentModel);
	}

	/** */
	public int getRotation()
	{
		return ev_document_model_get_rotation(evDocumentModel);
	}

	/** */
	public bool getRtl()
	{
		return ev_document_model_get_rtl(evDocumentModel) != 0;
	}

	/** */
	public double getScale()
	{
		return ev_document_model_get_scale(evDocumentModel);
	}

	/** */
	public EvSizingMode getSizingMode()
	{
		return ev_document_model_get_sizing_mode(evDocumentModel);
	}

	/** */
	public void setContinuous(bool continuous)
	{
		ev_document_model_set_continuous(evDocumentModel, continuous);
	}

	/** */
	public void setDocument(Document document)
	{
		ev_document_model_set_document(evDocumentModel, (document is null) ? null : document.getDocumentStruct());
	}

	/**
	 * Sets the document model's page layout to %EV_PAGE_LAYOUT_SINGLE or
	 * %EV_PAGE_LAYOUT_DUAL.
	 *
	 * Deprecated: Use ev_document_model_set_page_layout() instead
	 *
	 * Params:
	 *     dualPage = whether to enable dual page mode
	 */
	public void setDualPage(bool dualPage)
	{
		ev_document_model_set_dual_page(evDocumentModel, dualPage);
	}

	/** */
	public void setDualPageOddPagesLeft(bool oddLeft)
	{
		ev_document_model_set_dual_page_odd_pages_left(evDocumentModel, oddLeft);
	}

	/** */
	public void setFullscreen(bool fullscreen)
	{
		ev_document_model_set_fullscreen(evDocumentModel, fullscreen);
	}

	/** */
	public void setInvertedColors(bool invertedColors)
	{
		ev_document_model_set_inverted_colors(evDocumentModel, invertedColors);
	}

	/** */
	public void setMaxScale(double maxScale)
	{
		ev_document_model_set_max_scale(evDocumentModel, maxScale);
	}

	/** */
	public void setMinScale(double minScale)
	{
		ev_document_model_set_min_scale(evDocumentModel, minScale);
	}

	/** */
	public void setPage(int page)
	{
		ev_document_model_set_page(evDocumentModel, page);
	}

	/** */
	public void setPageByLabel(string pageLabel)
	{
		ev_document_model_set_page_by_label(evDocumentModel, Str.toStringz(pageLabel));
	}

	/**
	 * Sets the document model's page layout to @layout.
	 *
	 * Params:
	 *     layout = a #EvPageLayout
	 *
	 * Since: 3.8
	 */
	public void setPageLayout(EvPageLayout layout)
	{
		ev_document_model_set_page_layout(evDocumentModel, layout);
	}

	/** */
	public void setRotation(int rotation)
	{
		ev_document_model_set_rotation(evDocumentModel, rotation);
	}

	/** */
	public void setRtl(bool rtl)
	{
		ev_document_model_set_rtl(evDocumentModel, rtl);
	}

	/** */
	public void setScale(double scale)
	{
		ev_document_model_set_scale(evDocumentModel, scale);
	}

	/** */
	public void setSizingMode(EvSizingMode mode)
	{
		ev_document_model_set_sizing_mode(evDocumentModel, mode);
	}

	/** */
	gulong addOnPageChanged(void delegate(int, int, DocumentModel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
