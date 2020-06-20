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


module evince.document.RenderContext;

private import evince.document.Page;
private import evince.document.c.functions;
public  import evince.document.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class RenderContext : ObjectG
{
	/** the main Gtk struct */
	protected EvRenderContext* evRenderContext;

	/** Get the main Gtk struct */
	public EvRenderContext* getRenderContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evRenderContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evRenderContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvRenderContext* evRenderContext, bool ownedRef = false)
	{
		this.evRenderContext = evRenderContext;
		super(cast(GObject*)evRenderContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_render_context_get_type();
	}

	/** */
	public this(Page page, int rotation, double scale)
	{
		auto __p = ev_render_context_new((page is null) ? null : page.getPageStruct(), rotation, scale);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvRenderContext*) __p, true);
	}

	/** */
	public void computeScaledSize(double widthPoints, double heightPoints, int* scaledWidth, int* scaledHeight)
	{
		ev_render_context_compute_scaled_size(evRenderContext, widthPoints, heightPoints, scaledWidth, scaledHeight);
	}

	/** */
	public void computeScales(double widthPoints, double heightPoints, double* scaleX, double* scaleY)
	{
		ev_render_context_compute_scales(evRenderContext, widthPoints, heightPoints, scaleX, scaleY);
	}

	/** */
	public void computeTransformedSize(double widthPoints, double heightPoints, int* transformedWidth, int* transformedHeight)
	{
		ev_render_context_compute_transformed_size(evRenderContext, widthPoints, heightPoints, transformedWidth, transformedHeight);
	}

	/** */
	public void setPage(Page page)
	{
		ev_render_context_set_page(evRenderContext, (page is null) ? null : page.getPageStruct());
	}

	/** */
	public void setRotation(int rotation)
	{
		ev_render_context_set_rotation(evRenderContext, rotation);
	}

	/** */
	public void setScale(double scale)
	{
		ev_render_context_set_scale(evRenderContext, scale);
	}

	/** */
	public void setTargetSize(int targetWidth, int targetHeight)
	{
		ev_render_context_set_target_size(evRenderContext, targetWidth, targetHeight);
	}
}
