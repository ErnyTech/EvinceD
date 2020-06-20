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


module evince.view.JobThumbnail;

private import evince.document.Document;
private import evince.view.Job;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/** */
public class JobThumbnail : Job
{
	/** the main Gtk struct */
	protected EvJobThumbnail* evJobThumbnail;

	/** Get the main Gtk struct */
	public EvJobThumbnail* getJobThumbnailStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evJobThumbnail;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evJobThumbnail;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvJobThumbnail* evJobThumbnail, bool ownedRef = false)
	{
		this.evJobThumbnail = evJobThumbnail;
		super(cast(EvJob*)evJobThumbnail, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_job_thumbnail_get_type();
	}

	/** */
	public this(Document document, int page, int rotation, double scale)
	{
		auto __p = ev_job_thumbnail_new((document is null) ? null : document.getDocumentStruct(), page, rotation, scale);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvJobThumbnail*) __p, true);
	}

	/** */
	public this(Document document, int page, int rotation, int targetWidth, int targetHeight)
	{
		auto __p = ev_job_thumbnail_new_with_target_size((document is null) ? null : document.getDocumentStruct(), page, rotation, targetWidth, targetHeight);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_target_size");
		}

		this(cast(EvJobThumbnail*) __p, true);
	}

	/** */
	public void setHasFrame(bool hasFrame)
	{
		ev_job_thumbnail_set_has_frame(evJobThumbnail, hasFrame);
	}

	/**
	 * Set the desired output format for the generated thumbnail
	 *
	 * Params:
	 *     format = a #EvJobThumbnailFormat
	 *
	 * Since: 3.14
	 */
	public void setOutputFormat(EvJobThumbnailFormat format)
	{
		ev_job_thumbnail_set_output_format(evJobThumbnail, format);
	}
}
