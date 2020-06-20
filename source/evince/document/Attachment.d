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


module evince.document.Attachment;

private import evince.document.c.functions;
public  import evince.document.c.types;
private import gdk.Screen;
private import gio.FileIF;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class Attachment : ObjectG
{
	/** the main Gtk struct */
	protected EvAttachment* evAttachment;

	/** Get the main Gtk struct */
	public EvAttachment* getAttachmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evAttachment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evAttachment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvAttachment* evAttachment, bool ownedRef = false)
	{
		this.evAttachment = evAttachment;
		super(cast(GObject*)evAttachment, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_attachment_get_type();
	}

	/** */
	public this(string name, string description, GTime mtime, GTime ctime, size_t size, void* data)
	{
		auto __p = ev_attachment_new(Str.toStringz(name), Str.toStringz(description), mtime, ctime, size, data);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvAttachment*) __p, true);
	}

	/** */
	public static GQuark errorQuark()
	{
		return ev_attachment_error_quark();
	}

	/** */
	public GTime getCreationDate()
	{
		return ev_attachment_get_creation_date(evAttachment);
	}

	/** */
	public string getDescription()
	{
		return Str.toString(ev_attachment_get_description(evAttachment));
	}

	/** */
	public string getMimeType()
	{
		return Str.toString(ev_attachment_get_mime_type(evAttachment));
	}

	/** */
	public GTime getModificationDate()
	{
		return ev_attachment_get_modification_date(evAttachment);
	}

	/** */
	public string getName()
	{
		return Str.toString(ev_attachment_get_name(evAttachment));
	}

	/** */
	public bool open(Screen screen, uint timestamp)
	{
		GError* err = null;

		auto __p = ev_attachment_open(evAttachment, (screen is null) ? null : screen.getScreenStruct(), timestamp, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/** */
	public bool save(FileIF file)
	{
		GError* err = null;

		auto __p = ev_attachment_save(evAttachment, (file is null) ? null : file.getFileStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
