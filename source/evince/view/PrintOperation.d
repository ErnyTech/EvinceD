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


module evince.view.PrintOperation;

private import evince.document.Document;
private import evince.view.c.functions;
public  import evince.view.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.PageSetup;
private import gtk.PrintSettings;
private import gtk.Window;
private import std.algorithm;


/** */
public class PrintOperation : ObjectG
{
	/** the main Gtk struct */
	protected EvPrintOperation* evPrintOperation;

	/** Get the main Gtk struct */
	public EvPrintOperation* getPrintOperationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return evPrintOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)evPrintOperation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (EvPrintOperation* evPrintOperation, bool ownedRef = false)
	{
		this.evPrintOperation = evPrintOperation;
		super(cast(GObject*)evPrintOperation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return ev_print_operation_get_type();
	}

	/** */
	public this(Document document)
	{
		auto __p = ev_print_operation_new((document is null) ? null : document.getDocumentStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(EvPrintOperation*) __p, true);
	}

	/** */
	public static bool existsForDocument(Document document)
	{
		return ev_print_operation_exists_for_document((document is null) ? null : document.getDocumentStruct()) != 0;
	}

	/** */
	public void cancel()
	{
		ev_print_operation_cancel(evPrintOperation);
	}

	/**
	 * Returns: a #GtkPageSetup
	 */
	public PageSetup getDefaultPageSetup()
	{
		auto __p = ev_print_operation_get_default_page_setup(evPrintOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PageSetup)(cast(GtkPageSetup*) __p);
	}

	/** */
	public bool getEmbedPageSetup()
	{
		return ev_print_operation_get_embed_page_setup(evPrintOperation) != 0;
	}

	/** */
	public void getError()
	{
		GError* err = null;

		ev_print_operation_get_error(evPrintOperation, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/** */
	public string getJobName()
	{
		return Str.toString(ev_print_operation_get_job_name(evPrintOperation));
	}

	/**
	 * Returns: a #GtkPrintSettings
	 */
	public PrintSettings getPrintSettings()
	{
		auto __p = ev_print_operation_get_print_settings(evPrintOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PrintSettings)(cast(GtkPrintSettings*) __p);
	}

	/** */
	public double getProgress()
	{
		return ev_print_operation_get_progress(evPrintOperation);
	}

	/** */
	public string getStatus()
	{
		return Str.toString(ev_print_operation_get_status(evPrintOperation));
	}

	/** */
	public void run(Window parent)
	{
		ev_print_operation_run(evPrintOperation, (parent is null) ? null : parent.getWindowStruct());
	}

	/** */
	public void setCurrentPage(int currentPage)
	{
		ev_print_operation_set_current_page(evPrintOperation, currentPage);
	}

	/** */
	public void setDefaultPageSetup(PageSetup pageSetup)
	{
		ev_print_operation_set_default_page_setup(evPrintOperation, (pageSetup is null) ? null : pageSetup.getPageSetupStruct());
	}

	/** */
	public void setEmbedPageSetup(bool embed)
	{
		ev_print_operation_set_embed_page_setup(evPrintOperation, embed);
	}

	/** */
	public void setJobName(string jobName)
	{
		ev_print_operation_set_job_name(evPrintOperation, Str.toStringz(jobName));
	}

	/** */
	public void setPrintSettings(PrintSettings printSettings)
	{
		ev_print_operation_set_print_settings(evPrintOperation, (printSettings is null) ? null : printSettings.getPrintSettingsStruct());
	}

	/** */
	gulong addOnBeginPrint(void delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin-print", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnDone(void delegate(GtkPrintOperationResult, PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "done", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnStatusChanged(void delegate(PrintOperation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "status-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
