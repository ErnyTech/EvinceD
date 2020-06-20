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


module evince.document.FileExporterT;

public  import evince.document.RenderContext;
public  import evince.document.c.functions;
public  import evince.document.c.types;


/** */
public template FileExporterT(TStruct)
{
	/** Get the main Gtk struct */
	public EvFileExporter* getFileExporterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(EvFileExporter*)getStruct();
	}


	/** */
	public void begin(EvFileExporterContext* fc)
	{
		ev_file_exporter_begin(getFileExporterStruct(), fc);
	}

	/** */
	public void beginPage()
	{
		ev_file_exporter_begin_page(getFileExporterStruct());
	}

	/** */
	public void doPage(RenderContext rc)
	{
		ev_file_exporter_do_page(getFileExporterStruct(), (rc is null) ? null : rc.getRenderContextStruct());
	}

	/** */
	public void end()
	{
		ev_file_exporter_end(getFileExporterStruct());
	}

	/** */
	public void endPage()
	{
		ev_file_exporter_end_page(getFileExporterStruct());
	}

	/** */
	public EvFileExporterCapabilities getCapabilities()
	{
		return ev_file_exporter_get_capabilities(getFileExporterStruct());
	}
}
