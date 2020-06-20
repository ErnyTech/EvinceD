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


module evince.view.c.types;

public import cairo.c.types;
public import evince.document.c.types;
public import gdk.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;


public enum EvJobPageDataFlags
{
	NONE = 0,
	LINKS = 1,
	TEXT = 2,
	TEXT_MAPPING = 4,
	TEXT_LAYOUT = 8,
	TEXT_ATTRS = 16,
	TEXT_LOG_ATTRS = 32,
	IMAGES = 64,
	FORMS = 128,
	ANNOTS = 256,
	MEDIA = 512,
	ALL = 1023,
}
alias EvJobPageDataFlags JobPageDataFlags;

public enum EvJobPriority
{
	PRIORITY_URGENT = 0,
	PRIORITY_HIGH = 1,
	PRIORITY_LOW = 2,
	PRIORITY_NONE = 3,
	N_PRIORITIES = 4,
}
alias EvJobPriority JobPriority;

public enum EvJobRunMode
{
	THREAD = 0,
	MAIN_LOOP = 1,
}
alias EvJobRunMode JobRunMode;

public enum EvJobThumbnailFormat
{
	PIXBUF = 0,
	SURFACE = 1,
}
alias EvJobThumbnailFormat JobThumbnailFormat;

public enum EvPageLayout
{
	SINGLE = 0,
	DUAL = 1,
	AUTOMATIC = 2,
}
alias EvPageLayout PageLayout;

public enum EvSizingMode
{
	/**
	 * Since: 3.8
	 */
	FIT_PAGE = 0,
	/**
	 * Same as %EV_SIZING_FIT_PAGE. Deprecated:
	 */
	BEST_FIT = 0,
	FIT_WIDTH = 1,
	FREE = 2,
	/**
	 * Since: 3.8
	 */
	AUTOMATIC = 3,
}
alias EvSizingMode SizingMode;

struct EvDocumentModel;

struct EvDocumentModelClass
{
	GObjectClass parentClass;
}

struct EvJob
{
	GObject parent;
	EvDocument* document;
	EvJobRunMode runMode;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "cancelled", 1,
		uint, "finished", 1,
		uint, "failed", 1,
		uint, "", 29
	));
	GError* error;
	GCancellable* cancellable;
	uint idleFinishedId;
	uint idleCancelledId;
}

struct EvJobAnnots
{
	EvJob parent;
	GList* annots;
}

struct EvJobAnnotsClass
{
	EvJobClass parentClass;
}

struct EvJobAttachments
{
	EvJob parent;
	GList* attachments;
}

struct EvJobAttachmentsClass
{
	EvJobClass parentClass;
}

struct EvJobClass
{
	GObjectClass parentClass;
	/** */
	extern(C) int function(EvJob* job) run;
	/** */
	extern(C) void function(EvJob* job) cancelled;
	/** */
	extern(C) void function(EvJob* job) finished;
}

struct EvJobExport
{
	EvJob parent;
	int page;
	EvRenderContext* rc;
}

struct EvJobExportClass
{
	EvJobClass parentClass;
}

struct EvJobFind
{
	EvJob parent;
	int startPage;
	int currentPage;
	int nPages;
	GList** pages;
	char* text;
	bool caseSensitive;
	bool hasResults;
	EvFindOptions options;
}

struct EvJobFindClass
{
	EvJobClass parentClass;
	/** */
	extern(C) void function(EvJobFind* job, int page) updated;
}

struct EvJobFonts
{
	EvJob parent;
	bool scanCompleted;
}

struct EvJobFontsClass
{
	EvJobClass parentClass;
	/** */
	extern(C) void function(EvJobFonts* job, double progress) updated;
}

struct EvJobLayers
{
	EvJob parent;
	GtkTreeModel* model;
}

struct EvJobLayersClass
{
	EvJobClass parentClass;
}

struct EvJobLinks
{
	EvJob parent;
	GtkTreeModel* model;
}

struct EvJobLinksClass
{
	EvJobClass parentClass;
}

struct EvJobLoad
{
	EvJob parent;
	char* uri;
	char* password;
}

struct EvJobLoadClass
{
	EvJobClass parentClass;
}

struct EvJobLoadGFile
{
	EvJob parent;
	char* password;
	GFile* gfile;
	EvDocumentLoadFlags flags;
}

struct EvJobLoadGFileClass
{
	EvJobClass parentClass;
}

struct EvJobLoadStream
{
	EvJob parent;
	char* password;
	GInputStream* stream;
	EvDocumentLoadFlags flags;
}

struct EvJobLoadStreamClass
{
	EvJobClass parentClass;
}

struct EvJobPageData
{
	EvJob parent;
	int page;
	EvJobPageDataFlags flags;
	EvMappingList* linkMapping;
	EvMappingList* imageMapping;
	EvMappingList* formFieldMapping;
	EvMappingList* annotMapping;
	EvMappingList* mediaMapping;
	cairo_region_t* textMapping;
	char* text;
	EvRectangle* textLayout;
	uint textLayoutLength;
	PangoAttrList* textAttrs;
	PangoLogAttr* textLogAttrs;
	gulong textLogAttrsLength;
}

struct EvJobPageDataClass
{
	EvJobClass parentClass;
}

struct EvJobPrint
{
	EvJob parent;
	int page;
	cairo_t* cr;
}

struct EvJobPrintClass
{
	EvJobClass parentClass;
}

struct EvJobRender
{
	EvJob parent;
	int page;
	int rotation;
	double scale;
	bool pageReady;
	int targetWidth;
	int targetHeight;
	cairo_surface_t* surface;
	bool includeSelection;
	cairo_surface_t* selection;
	cairo_region_t* selectionRegion;
	EvRectangle selectionPoints;
	EvSelectionStyle selectionStyle;
	GdkColor base;
	GdkColor text;
}

struct EvJobRenderClass
{
	EvJobClass parentClass;
}

struct EvJobSave
{
	EvJob parent;
	char* uri;
	char* documentUri;
}

struct EvJobSaveClass
{
	EvJobClass parentClass;
}

struct EvJobThumbnail
{
	EvJob parent;
	int page;
	int rotation;
	double scale;
	int targetWidth;
	int targetHeight;
	GdkPixbuf* thumbnail;
	bool hasFrame;
	EvJobThumbnailFormat format;
	cairo_surface_t* thumbnailSurface;
}

struct EvJobThumbnailClass
{
	EvJobClass parentClass;
}

struct EvPrintOperation;

struct EvPrintOperationClass;

struct EvView;

struct EvViewClass;

struct EvViewPresentation;

struct EvViewPresentationClass;

/**
 * StockIds
 */
public enum StockID
{
	ANNOT_SQUIGGLY = "annotations-squiggly-symbolic",
	ANNOT_TEXT = "annotations-text-symbolic",
	ATTACHMENT = "mail-attachment",
	CLOSE = "close",
	FIND_UNSUPPORTED = "find-unsupported-symbolic",
	INVERTED_COLORS = "inverted",
	OUTLINE = "outline-symbolic",
	RESIZE_SE = "resize-se",
	RESIZE_SW = "resize-sw",
	ROTATE_LEFT = "object-rotate-left",
	ROTATE_RIGHT = "object-rotate-right",
	RUN_PRESENTATION = "x-office-presentation",
	SEND_TO = "document-send",
	VIEW_CONTINUOUS = "view-page-continuous",
	VIEW_DUAL = "view-page-facing",
	VIEW_SIDEBAR = "view-sidebar-symbolic",
	VISIBLE = "visible-symbolic",
	ZOOM = "zoom",
	ZOOM_PAGE = "zoom-fit-height",
	ZOOM_WIDTH = "zoom-fit-width",
}
