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


module evince.document.SelectionT;

public  import cairo.Region;
public  import cairo.Surface;
public  import evince.document.Page;
public  import evince.document.Rectangle;
public  import evince.document.RenderContext;
public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import gdk.Color;
public  import glib.Str;


/** */
public template SelectionT(TStruct)
{
	/** Get the main Gtk struct */
	public EvSelection* getSelectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvSelection*)getStruct();
	}


	/** */
	public string getSelectedText(Page page, EvSelectionStyle style, Rectangle points)
	{
		auto retStr = ev_selection_get_selected_text(getSelectionStruct(), (page is null) ? null : page.getPageStruct(), style, (points is null) ? null : points.getRectangleStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public Region getSelectionRegion(RenderContext rc, EvSelectionStyle style, Rectangle points)
	{
		auto __p = ev_selection_get_selection_region(getSelectionStruct(), (rc is null) ? null : rc.getRenderContextStruct(), style, (points is null) ? null : points.getRectangleStruct());

		if(__p is null)
		{
			return null;
		}

		return new Region(cast(cairo_region_t*) __p);
	}

	/** */
	public void renderSelection(RenderContext rc, Surface surface, Rectangle points, Rectangle oldPoints, EvSelectionStyle style, Color text, Color base)
	{
		ev_selection_render_selection(getSelectionStruct(), (rc is null) ? null : rc.getRenderContextStruct(), (surface is null) ? null : surface.getSurfaceStruct(), (points is null) ? null : points.getRectangleStruct(), (oldPoints is null) ? null : oldPoints.getRectangleStruct(), style, (text is null) ? null : text.getColorStruct(), (base is null) ? null : base.getColorStruct());
	}
}
