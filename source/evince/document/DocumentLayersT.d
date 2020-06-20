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


module evince.document.DocumentLayersT;

public  import evince.document.EvinceLayer;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import gobject.ObjectG;
public  import gtk.TreeModelIF;


/** */
public template DocumentLayersT(TStruct)
{
	/** Get the main Gtk struct */
	public EvDocumentLayers* getDocumentLayersStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvDocumentLayers*)getStruct();
	}


	/**
	 * Returns: a #GtkTreeModel
	 */
	public TreeModelIF getLayers()
	{
		auto __p = ev_document_layers_get_layers(getDocumentLayersStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p, true);
	}

	/** */
	public bool hasLayers()
	{
		return ev_document_layers_has_layers(getDocumentLayersStruct()) != 0;
	}

	/** */
	public void hideLayer(EvinceLayer layer)
	{
		ev_document_layers_hide_layer(getDocumentLayersStruct(), (layer is null) ? null : layer.getEvinceLayerStruct());
	}

	/** */
	public bool layerIsVisible(EvinceLayer layer)
	{
		return ev_document_layers_layer_is_visible(getDocumentLayersStruct(), (layer is null) ? null : layer.getEvinceLayerStruct()) != 0;
	}

	/** */
	public void showLayer(EvinceLayer layer)
	{
		ev_document_layers_show_layer(getDocumentLayersStruct(), (layer is null) ? null : layer.getEvinceLayerStruct());
	}
}
