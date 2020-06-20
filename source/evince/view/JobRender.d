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


module evince.view.JobRender;

private import evince.document.Document;
private import evince.document.Rectangle;
private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import gdk.Color;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class JobRender : Job
{
	/** the main Gtk struct */
	protected EvJobRender* evJobRender;

	/** Get the main Gtk struct */
	public EvJobRender* getJobRenderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobRender;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobRender;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobRender* evJobRender, bool ownedRef = false)
	{
		this.evJobRender = evJobRender;
		super(cast(EvJob*)evJobRender, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_render_get_type();
	}

	/** */
	public this(Document document, int page, int rotation, double scale, int width, int height)
	{
		auto __p = ev_job_render_new((document is null) ? null : document.getDocumentStruct(), page, rotation, scale, width, height);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobRender*) __p, true);
	}

	/** */
	public void setSelectionInfo(Rectangle selectionPoints, EvSelectionStyle selectionStyle, Color text, Color base)
	{
		ev_job_render_set_selection_info(evJobRender, (selectionPoints is null) ? null : selectionPoints.getRectangleStruct(), selectionStyle, (text is null) ? null : text.getColorStruct(), (base is null) ? null : base.getColorStruct());
	}
}
