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


module evince.document.AsyncRendererT;

public  import evince.document.c.functions;
public  import evince.document.c.types;
public  import gdkpixbuf.Pixbuf;
public  import gobject.Signals;
public  import std.algorithm;


/** */
public template AsyncRendererT(TStruct)
{
	/** Get the main Gtk struct */
	public EvAsyncRenderer* getAsyncRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvAsyncRenderer*)getStruct();
	}


	/** */
	public void renderPixbuf(int page, double scale, int rotation)
	{
		ev_async_renderer_render_pixbuf(getAsyncRendererStruct(), page, scale, rotation);
	}

	/** */
	gulong addOnRenderFinished(void delegate(Pixbuf, AsyncRendererIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "render-finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}