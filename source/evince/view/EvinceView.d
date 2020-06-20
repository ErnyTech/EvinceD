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


module evince.view.EvinceView;

private import evince.view.c.functions;
public  import evince.view.c.types;
private import gdk.Screen;


/** */
public struct EvinceView
{

	/**
	 * Creates a new icon factory, adding the base stock icons to it.
	 */
	public static void stockIconsInit()
	{
		ev_stock_icons_init();
	}

	/** */
	public static void stockIconsSetScreen(Screen screen)
	{
		ev_stock_icons_set_screen((screen is null) ? null : screen.getScreenStruct());
	}

	/** */
	public static void stockIconsShutdown()
	{
		ev_stock_icons_shutdown();
	}
}
