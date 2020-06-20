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


module evince.document.c.types;

public import cairo.c.types;
public import gdk.c.types;
public import gdkpixbuf.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import pango.c.types;


public alias void* EvBackendPage;

public alias GDestroyNotify EvBackendPageDestroyFunc;

public enum EvAnnotationTextIcon
{
	NOTE = 0,
	COMMENT = 1,
	KEY = 2,
	HELP = 3,
	NEW_PARAGRAPH = 4,
	PARAGRAPH = 5,
	INSERT = 6,
	CROSS = 7,
	CIRCLE = 8,
	UNKNOWN = 9,
}
alias EvAnnotationTextIcon AnnotationTextIcon;

public enum EvAnnotationTextMarkupType
{
	HIGHLIGHT = 0,
	STRIKE_OUT = 1,
	UNDERLINE = 2,
	SQUIGGLY = 3,
}
alias EvAnnotationTextMarkupType AnnotationTextMarkupType;

public enum EvAnnotationType
{
	UNKNOWN = 0,
	TEXT = 1,
	ATTACHMENT = 2,
	TEXT_MARKUP = 3,
}
alias EvAnnotationType AnnotationType;

public enum EvAnnotationsSaveMask
{
	NONE = 0,
	CONTENTS = 1,
	COLOR = 2,
	AREA = 4,
	LABEL = 8,
	OPACITY = 16,
	POPUP_RECT = 32,
	POPUP_IS_OPEN = 64,
	TEXT_IS_OPEN = 128,
	TEXT_ICON = 256,
	ATTACHMENT = 512,
	TEXT_MARKUP_TYPE = 1024,
	ALL = 2047,
}
alias EvAnnotationsSaveMask AnnotationsSaveMask;

public enum EvCompressionType
{
	NONE = 0,
	BZIP2 = 1,
	GZIP = 2,
	LZMA = 3,
}
alias EvCompressionType CompressionType;

public enum EvDocumentError
{
	INVALID = 0,
	UNSUPPORTED_CONTENT = 1,
	ENCRYPTED = 2,
}
alias EvDocumentError DocumentError;

public enum EvDocumentInfoFields
{
	TITLE = 1,
	FORMAT = 2,
	AUTHOR = 4,
	SUBJECT = 8,
	KEYWORDS = 16,
	LAYOUT = 32,
	CREATOR = 64,
	PRODUCER = 128,
	CREATION_DATE = 256,
	MOD_DATE = 512,
	LINEARIZED = 1024,
	START_MODE = 2048,
	UI_HINTS = 4096,
	PERMISSIONS = 8192,
	N_PAGES = 16384,
	SECURITY = 32768,
	PAPER_SIZE = 65536,
	LICENSE = 131072,
}
alias EvDocumentInfoFields DocumentInfoFields;

public enum EvDocumentLayout
{
	SINGLE_PAGE = 0,
	ONE_COLUMN = 1,
	TWO_COLUMN_LEFT = 2,
	TWO_COLUMN_RIGHT = 3,
	TWO_PAGE_LEFT = 4,
	TWO_PAGE_RIGHT = 5,
}
alias EvDocumentLayout DocumentLayout;

public enum EvDocumentLoadFlags
{
	NONE = 0,
	NO_CACHE = 1,
}
alias EvDocumentLoadFlags DocumentLoadFlags;

public enum EvDocumentMode
{
	NONE = 0,
	USE_OC = 1,
	USE_THUMBS = 2,
	FULL_SCREEN = 3,
	USE_ATTACHMENTS = 4,
	PRESENTATION = 3,
}
alias EvDocumentMode DocumentMode;

public enum EvDocumentPermissions
{
	OK_TO_PRINT = 1,
	OK_TO_MODIFY = 2,
	OK_TO_COPY = 4,
	OK_TO_ADD_NOTES = 8,
	FULL = 15,
}
alias EvDocumentPermissions DocumentPermissions;

public enum EvDocumentUIHints
{
	HIDE_TOOLBAR = 1,
	HIDE_MENUBAR = 2,
	HIDE_WINDOWUI = 4,
	FIT_WINDOW = 8,
	CENTER_WINDOW = 16,
	DISPLAY_DOC_TITLE = 32,
	DIRECTION_RTL = 64,
}
alias EvDocumentUIHints DocumentUIHints;

public enum EvFileExporterCapabilities
{
	PAGE_SET = 1,
	COPIES = 2,
	COLLATE = 4,
	REVERSE = 8,
	SCALE = 16,
	GENERATE_PDF = 32,
	GENERATE_PS = 64,
	PREVIEW = 128,
	NUMBER_UP = 256,
}
alias EvFileExporterCapabilities FileExporterCapabilities;

public enum EvFileExporterFormat
{
	UNKNOWN = 0,
	PS = 1,
	PDF = 2,
}
alias EvFileExporterFormat FileExporterFormat;

public enum EvFindOptions
{
	DEFAULT = 0,
	CASE_SENSITIVE = 1,
	WHOLE_WORDS_ONLY = 2,
}
alias EvFindOptions FindOptions;

public enum EvFormFieldButtonType
{
	PUSH = 0,
	CHECK = 1,
	RADIO = 2,
}
alias EvFormFieldButtonType FormFieldButtonType;

public enum EvFormFieldChoiceType
{
	COMBO = 0,
	LIST = 1,
}
alias EvFormFieldChoiceType FormFieldChoiceType;

public enum EvFormFieldTextType
{
	NORMAL = 0,
	MULTILINE = 1,
	FILE_SELECT = 2,
}
alias EvFormFieldTextType FormFieldTextType;

public enum EvLinkActionType
{
	GOTO_DEST = 0,
	GOTO_REMOTE = 1,
	EXTERNAL_URI = 2,
	LAUNCH = 3,
	NAMED = 4,
	LAYERS_STATE = 5,
}
alias EvLinkActionType LinkActionType;

public enum EvLinkDestType
{
	PAGE = 0,
	XYZ = 1,
	FIT = 2,
	FITH = 3,
	FITV = 4,
	FITR = 5,
	NAMED = 6,
	PAGE_LABEL = 7,
	UNKNOWN = 8,
}
alias EvLinkDestType LinkDestType;

public enum EvSelectionStyle
{
	GLYPH = 0,
	WORD = 1,
	LINE = 2,
}
alias EvSelectionStyle SelectionStyle;

public enum EvTransitionEffectAlignment
{
	HORIZONTAL = 0,
	VERTICAL = 1,
}
alias EvTransitionEffectAlignment TransitionEffectAlignment;

public enum EvTransitionEffectDirection
{
	INWARD = 0,
	OUTWARD = 1,
}
alias EvTransitionEffectDirection TransitionEffectDirection;

public enum EvTransitionEffectType
{
	REPLACE = 0,
	SPLIT = 1,
	BLINDS = 2,
	BOX = 3,
	WIPE = 4,
	DISSOLVE = 5,
	GLITTER = 6,
	FLY = 7,
	PUSH = 8,
	COVER = 9,
	UNCOVER = 10,
	FADE = 11,
}
alias EvTransitionEffectType TransitionEffectType;

struct EvAnnotation;

struct EvAnnotationAttachment;

struct EvAnnotationAttachmentClass;

struct EvAnnotationClass;

struct EvAnnotationMarkup;

struct EvAnnotationMarkupInterface;

struct EvAnnotationText;

struct EvAnnotationTextClass;

struct EvAnnotationTextMarkup;

struct EvAnnotationTextMarkupClass;

struct EvAsyncRenderer;

struct EvAsyncRendererInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) void function(EvAsyncRenderer* renderer, GdkPixbuf* pixbuf) renderFinished;
	/** */
	extern(C) void function(EvAsyncRenderer* renderer, int page, double scale, int rotation) renderPixbuf;
}

struct EvAttachment
{
	GObject baseInstance;
}

struct EvAttachmentClass
{
	GObjectClass baseClass;
}

struct EvDocument
{
	GObject base;
	EvDocumentPrivate* priv;
}

struct EvDocumentAnnotations;

struct EvDocumentAnnotationsInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) EvMappingList* function(EvDocumentAnnotations* documentAnnots, EvPage* page) getAnnotations;
	/** */
	extern(C) int function(EvDocumentAnnotations* documentAnnots) documentIsModified;
	/** */
	extern(C) void function(EvDocumentAnnotations* documentAnnots, EvAnnotation* annot, EvRectangle* rect) addAnnotation;
	/** */
	extern(C) void function(EvDocumentAnnotations* documentAnnots, EvAnnotation* annot, EvAnnotationsSaveMask mask) saveAnnotation;
	/** */
	extern(C) void function(EvDocumentAnnotations* documentAnnots, EvAnnotation* annot) removeAnnotation;
}

struct EvDocumentAttachments;

struct EvDocumentAttachmentsInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) int function(EvDocumentAttachments* documentAttachments) hasAttachments;
	/**
	 *
	 * Params:
	 *     documentAttachments = an #EvDocumentAttachments
	 * Returns: a list of #EvAttachment objects
	 */
	extern(C) GList* function(EvDocumentAttachments* documentAttachments) getAttachments;
}

struct EvDocumentBackendInfo
{
	const(char)* name;
	const(char)* version_;
}

struct EvDocumentClass
{
	GObjectClass baseClass;
	/**
	 *
	 * Params:
	 *     document = a #EvDocument
	 *     uri = the document's URI
	 * Returns: %TRUE on success, or %FALSE on failure.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(EvDocument* document, const(char)* uri, GError** err) load;
	/**
	 *
	 * Params:
	 *     document = a #EvDocument
	 *     uri = the target URI
	 * Returns: %TRUE on success, or %FALSE on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(EvDocument* document, const(char)* uri, GError** err) save;
	/** */
	extern(C) int function(EvDocument* document) getNPages;
	/**
	 *
	 * Params:
	 *     document = a #EvDocument
	 *     index = index of page
	 * Returns: Newly created #EvPage for the given index.
	 */
	extern(C) EvPage* function(EvDocument* document, int index) getPage;
	/** */
	extern(C) void function(EvDocument* document, EvPage* page, double* width, double* height) getPageSize;
	/** */
	extern(C) char* function(EvDocument* document, EvPage* page) getPageLabel;
	/** */
	extern(C) cairo_surface_t* function(EvDocument* document, EvRenderContext* rc) render;
	/**
	 *
	 * Params:
	 *     document = an #EvDocument
	 *     rc = an #EvRenderContext
	 * Returns: a #GdkPixbuf
	 */
	extern(C) GdkPixbuf* function(EvDocument* document, EvRenderContext* rc) getThumbnail;
	/**
	 *
	 * Params:
	 *     document = a #EvDocument
	 * Returns: a #EvDocumentInfo
	 */
	extern(C) EvDocumentInfo* function(EvDocument* document) getInfo;
	/** */
	extern(C) int function(EvDocument* document, EvDocumentBackendInfo* info) getBackendInfo;
	/** */
	extern(C) int function(EvDocument* document) supportSynctex;
	/**
	 *
	 * Params:
	 *     document = a #EvDocument
	 *     stream = a #GInputStream
	 *     flags = flags from #EvDocumentLoadFlags
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: %TRUE if loading succeeded, or %FALSE on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(EvDocument* document, GInputStream* stream, EvDocumentLoadFlags flags, GCancellable* cancellable, GError** err) loadStream;
	/**
	 *
	 * Params:
	 *     document = a #EvDocument
	 *     file = a #GFile
	 *     flags = flags from #EvDocumentLoadFlags
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: %TRUE if loading succeeded, or %FALSE on error with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(EvDocument* document, GFile* file, EvDocumentLoadFlags flags, GCancellable* cancellable, GError** err) loadGfile;
	/**
	 *
	 * Params:
	 *     document = an #EvDocument
	 *     rc = an #EvRenderContext
	 * Returns: a #cairo_surface_t
	 */
	extern(C) cairo_surface_t* function(EvDocument* document, EvRenderContext* rc) getThumbnailSurface;
}

struct EvDocumentFind;

struct EvDocumentFindInterface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     documentFind = an #EvDocumentFind
	 *     page = an #EvPage
	 *     text = text to find
	 *     caseSensitive = whether to match the string case
	 * Returns: a list of results
	 */
	extern(C) GList* function(EvDocumentFind* documentFind, EvPage* page, const(char)* text, int caseSensitive) findText;
	/**
	 *
	 * Params:
	 *     documentFind = an #EvDocumentFind
	 *     page = an #EvPage
	 *     text = text to find
	 *     options = a set of #EvFindOptions
	 * Returns: a list of results
	 */
	extern(C) GList* function(EvDocumentFind* documentFind, EvPage* page, const(char)* text, EvFindOptions options) findTextWithOptions;
	/** */
	extern(C) EvFindOptions function(EvDocumentFind* documentFind) getSupportedOptions;
}

struct EvDocumentFonts;

struct EvDocumentFontsInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) int function(EvDocumentFonts* documentFonts, int nPages) scan;
	/** */
	extern(C) double function(EvDocumentFonts* documentFonts) getProgress;
	/** */
	extern(C) void function(EvDocumentFonts* documentFonts, GtkTreeModel* model) fillModel;
	/** */
	extern(C) const(char)* function(EvDocumentFonts* documentFonts) getFontsSummary;
}

struct EvDocumentForms;

struct EvDocumentFormsInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) EvMappingList* function(EvDocumentForms* documentForms, EvPage* page) getFormFields;
	/** */
	extern(C) int function(EvDocumentForms* documentForms) documentIsModified;
	/** */
	extern(C) char* function(EvDocumentForms* documentForms, EvFormField* field) formFieldTextGetText;
	/** */
	extern(C) void function(EvDocumentForms* documentForms, EvFormField* field, const(char)* text) formFieldTextSetText;
	/** */
	extern(C) int function(EvDocumentForms* documentForms, EvFormField* field) formFieldButtonGetState;
	/** */
	extern(C) void function(EvDocumentForms* documentForms, EvFormField* field, int state) formFieldButtonSetState;
	/** */
	extern(C) char* function(EvDocumentForms* documentForms, EvFormField* field, int index) formFieldChoiceGetItem;
	/** */
	extern(C) int function(EvDocumentForms* documentForms, EvFormField* field) formFieldChoiceGetNItems;
	/** */
	extern(C) int function(EvDocumentForms* documentForms, EvFormField* field, int index) formFieldChoiceIsItemSelected;
	/** */
	extern(C) void function(EvDocumentForms* documentForms, EvFormField* field, int index) formFieldChoiceSelectItem;
	/** */
	extern(C) void function(EvDocumentForms* documentForms, EvFormField* field, int index) formFieldChoiceToggleItem;
	/** */
	extern(C) void function(EvDocumentForms* documentForms, EvFormField* field) formFieldChoiceUnselectAll;
	/** */
	extern(C) void function(EvDocumentForms* documentForms, EvFormField* field, const(char)* text) formFieldChoiceSetText;
	/** */
	extern(C) char* function(EvDocumentForms* documentForms, EvFormField* field) formFieldChoiceGetText;
}

struct EvDocumentImages;

struct EvDocumentImagesInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) EvMappingList* function(EvDocumentImages* documentImages, EvPage* page) getImageMapping;
	/**
	 *
	 * Params:
	 *     documentImages = an #EvDocumentImages
	 *     image = an #EvImage
	 * Returns: a #GdkPixbuf
	 */
	extern(C) GdkPixbuf* function(EvDocumentImages* documentImages, EvImage* image) getImage;
}

struct EvDocumentInfo
{
	char* title;
	char* format;
	char* author;
	char* subject;
	char* keywords;
	char* creator;
	char* producer;
	char* linearized;
	char* security;
	GTime creationDate;
	GTime modifiedDate;
	EvDocumentLayout layout;
	EvDocumentMode mode;
	uint uiHints;
	uint permissions;
	int nPages;
	double paperHeight;
	double paperWidth;
	EvDocumentLicense* license;
	uint fieldsMask;
}

struct EvDocumentLayers;

struct EvDocumentLayersInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) int function(EvDocumentLayers* documentLayers) hasLayers;
	/**
	 *
	 * Params:
	 *     documentLayers = an #EvDocumentLayers
	 * Returns: a #GtkTreeModel
	 */
	extern(C) GtkTreeModel* function(EvDocumentLayers* documentLayers) getLayers;
	/** */
	extern(C) void function(EvDocumentLayers* documentLayers, EvLayer* layer) showLayer;
	/** */
	extern(C) void function(EvDocumentLayers* documentLayers, EvLayer* layer) hideLayer;
	/** */
	extern(C) int function(EvDocumentLayers* documentLayers, EvLayer* layer) layerIsVisible;
}

struct EvDocumentLicense
{
	char* text;
	char* uri;
	char* webStatement;
}

struct EvDocumentLinks;

struct EvDocumentLinksInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) int function(EvDocumentLinks* documentLinks) hasDocumentLinks;
	/**
	 *
	 * Params:
	 *     documentLinks = an #EvDocumentLinks
	 * Returns: a #GtkTreeModel
	 */
	extern(C) GtkTreeModel* function(EvDocumentLinks* documentLinks) getLinksModel;
	/** */
	extern(C) EvMappingList* function(EvDocumentLinks* documentLinks, EvPage* page) getLinks;
	/**
	 *
	 * Params:
	 *     documentLinks = an #EvDocumentLinks
	 *     linkName = the link name
	 * Returns: an #EvLinkDest
	 */
	extern(C) EvLinkDest* function(EvDocumentLinks* documentLinks, const(char)* linkName) findLinkDest;
	/** */
	extern(C) int function(EvDocumentLinks* documentLinks, const(char)* linkName) findLinkPage;
}

struct EvDocumentMedia;

struct EvDocumentMediaInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) EvMappingList* function(EvDocumentMedia* documentMedia, EvPage* page) getMediaMapping;
}

struct EvDocumentPrint;

struct EvDocumentPrintInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) void function(EvDocumentPrint* documentPrint, EvPage* page, cairo_t* cr) printPage;
}

struct EvDocumentPrivate;

struct EvDocumentSecurity;

struct EvDocumentSecurityInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) int function(EvDocumentSecurity* documentSecurity) hasDocumentSecurity;
	/** */
	extern(C) void function(EvDocumentSecurity* documentSecurity, const(char)* password) setPassword;
}

struct EvDocumentText;

struct EvDocumentTextInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) cairo_region_t* function(EvDocumentText* documentText, EvPage* page) getTextMapping;
	/** */
	extern(C) char* function(EvDocumentText* documentText, EvPage* page) getText;
	/** */
	extern(C) int function(EvDocumentText* documentText, EvPage* page, EvRectangle** areas, uint* nAreas) getTextLayout;
	/**
	 *
	 * Params:
	 *     documentText = a #EvDocumentText
	 *     page = a #EvPage
	 * Returns: a newly created #PangoAttrList
	 */
	extern(C) PangoAttrList* function(EvDocumentText* documentText, EvPage* page) getTextAttrs;
}

struct EvDocumentTransition;

struct EvDocumentTransitionInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) double function(EvDocumentTransition* documentTrans, int page) getPageDuration;
	/**
	 *
	 * Params:
	 *     documentTrans = an #EvDocumentTransition
	 *     page = a page index
	 * Returns: an #EvTransitionEffect
	 */
	extern(C) EvTransitionEffect* function(EvDocumentTransition* documentTrans, int page) getEffect;
}

struct EvFileExporter;

struct EvFileExporterContext
{
	EvFileExporterFormat format;
	const(char)* filename;
	int firstPage;
	int lastPage;
	double paperWidth;
	double paperHeight;
	bool duplex;
	int pagesPerSheet;
}

struct EvFileExporterInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) void function(EvFileExporter* exporter, EvFileExporterContext* fc) begin;
	/** */
	extern(C) void function(EvFileExporter* exporter) beginPage;
	/** */
	extern(C) void function(EvFileExporter* exporter, EvRenderContext* rc) doPage;
	/** */
	extern(C) void function(EvFileExporter* exporter) endPage;
	/** */
	extern(C) void function(EvFileExporter* exporter) end;
	/** */
	extern(C) EvFileExporterCapabilities function(EvFileExporter* exporter) getCapabilities;
}

struct EvFormField
{
	GObject parent;
	int id;
	bool isReadOnly;
	double fontSize;
	EvLink* activationLink;
	EvPage* page;
	bool changed;
}

struct EvFormFieldButton
{
	EvFormField parent;
	EvFormFieldButtonType type;
	bool state;
}

struct EvFormFieldButtonClass
{
	EvFormFieldClass parentClass;
}

struct EvFormFieldChoice
{
	EvFormField parent;
	EvFormFieldChoiceType type;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		bool, "multiSelect", 1,
		bool, "isEditable", 1,
		bool, "doSpellCheck", 1,
		bool, "commitOnSelChange", 1,
		uint, "", 28
	));
	GList* selectedItems;
	char* text;
}

struct EvFormFieldChoiceClass
{
	EvFormFieldClass parentClass;
}

struct EvFormFieldClass
{
	GObjectClass parentClass;
}

struct EvFormFieldSignature
{
	EvFormField parent;
}

struct EvFormFieldSignatureClass
{
	EvFormFieldClass parentClass;
}

struct EvFormFieldText
{
	EvFormField parent;
	EvFormFieldTextType type;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		bool, "doSpellCheck", 1,
		bool, "doScroll", 1,
		bool, "comb", 1,
		bool, "isRichText", 1,
		uint, "", 28
	));
	bool isPassword;
	int maxLen;
	char* text;
}

struct EvFormFieldTextClass
{
	EvFormFieldClass parentClass;
}

struct EvImage
{
	GObject baseInstance;
	EvImagePrivate* priv;
}

struct EvImageClass
{
	GObjectClass baseClass;
}

struct EvImagePrivate;

struct EvLayer
{
	GObject baseInstance;
	EvLayerPrivate* priv;
}

struct EvLayerClass
{
	GObjectClass baseClass;
}

struct EvLayerPrivate;

struct EvLink;

struct EvLinkAction;

struct EvLinkActionClass;

struct EvLinkActionPrivate;

struct EvLinkClass;

struct EvLinkDest;

struct EvLinkDestClass;

struct EvLinkDestPrivate;

struct EvLinkPrivate;

struct EvMapping
{
	EvRectangle area;
	void* data;
}

struct EvMappingList;

struct EvMedia
{
	GObject baseInstance;
	EvMediaPrivate* priv;
}

struct EvMediaClass
{
	GObjectClass baseClass;
}

struct EvMediaPrivate;

struct EvPage
{
	GObject baseInstance;
	int index;
	EvBackendPage backendPage;
	EvBackendPageDestroyFunc backendDestroyFunc;
}

struct EvPageClass
{
	GObjectClass baseClass;
}

struct EvPoint
{
	double x;
	double y;
}

struct EvRectangle
{
	double x1;
	double y1;
	double x2;
	double y2;
}

struct EvRenderContext
{
	GObject parent;
	EvPage* page;
	int rotation;
	double scale;
	int targetWidth;
	int targetHeight;
}

struct EvRenderContextClass
{
	GObjectClass klass;
}

struct EvSelection;

struct EvSelectionInterface
{
	GTypeInterface baseIface;
	/** */
	extern(C) void function(EvSelection* selection, EvRenderContext* rc, cairo_surface_t** surface, EvRectangle* points, EvRectangle* oldPoints, EvSelectionStyle style, GdkColor* text, GdkColor* base) renderSelection;
	/** */
	extern(C) char* function(EvSelection* selection, EvPage* page, EvSelectionStyle style, EvRectangle* points) getSelectedText;
	/** */
	extern(C) cairo_region_t* function(EvSelection* selection, EvRenderContext* rc, EvSelectionStyle style, EvRectangle* points) getSelectionRegion;
}

struct EvSourceLink
{
	char* filename;
	int line;
	int col;
}

struct EvTransitionEffect
{
	GObject parentInstance;
}

struct EvTransitionEffectClass
{
	GObjectClass parentClass;
}

struct EvTypeInfo
{
	const(char)* desc;
	char** mimeTypes;
}

/**
 * The major version number of the EV library
 * (e.g. in version 3.1.4 this is 3).
 */
enum MAJOR_VERSION = 3;
alias EV_MAJOR_VERSION = MAJOR_VERSION;

/**
 * The micro version number of the EV library
 * (e.g. in version 3.1.4 this is 4).
 */
enum MICRO_VERSION = 6;
alias EV_MICRO_VERSION = MICRO_VERSION;

/**
 * The minor version number of the EV library
 * (e.g. in version 3.1.4 this is 1).
 */
enum MINOR_VERSION = 36;
alias EV_MINOR_VERSION = MINOR_VERSION;
